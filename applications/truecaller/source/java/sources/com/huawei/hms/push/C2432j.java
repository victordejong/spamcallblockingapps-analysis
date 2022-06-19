package com.huawei.hms.push;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.huawei.hms.common.PackageConstants;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.support.log.HMSLog;
import java.util.ArrayList;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.push.j */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/j.class */
public class C2432j {

    /* renamed from: a */
    public static final String[] f7725a = {"url", "app", "cosa", "rp"};

    /* renamed from: b */
    public Context f7726b;

    /* renamed from: c */
    public C2433k f7727c;

    public C2432j(Context context, C2433k c2433k) {
        this.f7726b = context;
        this.f7727c = c2433k;
    }

    /* renamed from: b */
    public static boolean m37338b(String str) {
        for (String str2 : f7725a) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final String m37340a(String str) {
        int i;
        String str2;
        try {
            int indexOf = str.indexOf(63);
            if (indexOf == -1) {
                return str;
            }
            String[] split = str.substring(indexOf + 1).split(ContainerUtils.FIELD_DELIMITER);
            ArrayList arrayList = new ArrayList();
            for (String str3 : split) {
                if (!str3.startsWith("h_w_hiapp_referrer") && !str3.startsWith("h_w_gp_referrer")) {
                    arrayList.add(str3);
                }
            }
            StringBuilder sb = new StringBuilder();
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                sb.append((String) arrayList.get(i2));
                if (i2 < arrayList.size() - 1) {
                    sb.append(ContainerUtils.FIELD_DELIMITER);
                }
            }
            if (arrayList.size() == 0) {
                str2 = str.substring(0, indexOf);
            } else {
                str2 = str.substring(0, i) + sb.toString();
            }
            return str2;
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("delete referrer exception.");
            m8728C.append(e.toString());
            HMSLog.m37195e("PushSelfShowLog", m8728C.toString());
            return str;
        }
    }

    /* renamed from: a */
    public final void m37341a() {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("enter launchApp, appPackageName =");
            sb.append(this.f7727c.m37326d());
            HMSLog.m37193i("PushSelfShowLog", sb.toString());
            if (C2439q.m37257c(this.f7726b, this.f7727c.m37326d())) {
                m37339b();
            } else {
                m37336d();
            }
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("launchApp error:");
            m8728C.append(e.toString());
            HMSLog.m37195e("PushSelfShowLog", m8728C.toString());
        }
    }

    /* renamed from: b */
    public final void m37339b() {
        Intent intent;
        boolean z;
        HMSLog.m37193i("PushSelfShowLog", "run into launchCosaApp");
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("enter launchExistApp cosa, appPackageName =");
            sb.append(this.f7727c.m37326d());
            sb.append(",and msg.intentUri is ");
            sb.append(this.f7727c.m37308n());
            HMSLog.m37193i("PushSelfShowLog", sb.toString());
            Intent m37259b = C2439q.m37259b(this.f7726b, this.f7727c.m37326d());
            if (this.f7727c.m37308n() != null) {
                try {
                    Intent parseUri = Intent.parseUri(this.f7727c.m37308n(), 0);
                    parseUri.setSelector(null);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Intent.parseUri(msg.intentUri, 0), action:");
                    sb2.append(parseUri.getAction());
                    HMSLog.m37193i("PushSelfShowLog", sb2.toString());
                    boolean booleanValue = C2439q.m37262a(this.f7726b, this.f7727c.m37326d(), parseUri).booleanValue();
                    intent = m37259b;
                    z = booleanValue;
                    if (booleanValue) {
                        intent = parseUri;
                        z = booleanValue;
                    }
                } catch (Exception e) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("intentUri error.");
                    sb3.append(e.toString());
                    HMSLog.m37192w("PushSelfShowLog", sb3.toString());
                    intent = m37259b;
                    z = false;
                }
            } else {
                intent = m37259b;
                z = false;
                if (this.f7727c.m37334a() != null) {
                    Intent intent2 = new Intent(this.f7727c.m37334a());
                    intent = m37259b;
                    z = false;
                    if (C2439q.m37262a(this.f7726b, this.f7727c.m37326d(), intent2).booleanValue()) {
                        z = false;
                        intent = intent2;
                    }
                }
            }
            if (intent == null) {
                HMSLog.m37193i("PushSelfShowLog", "launchCosaApp,intent == null");
                return;
            }
            intent.setPackage(this.f7727c.m37326d());
            if (z) {
                intent.addFlags(268435456);
            } else {
                intent.setFlags(805437440);
            }
            this.f7726b.startActivity(intent);
        } catch (Exception e2) {
            StringBuilder m8728C = C22128a.m8728C("launch Cosa App exception.");
            m8728C.append(e2.toString());
            HMSLog.m37195e("PushSelfShowLog", m8728C.toString());
        }
    }

    /* renamed from: c */
    public void m37337c() {
        C2433k c2433k;
        HMSLog.m37198d("PushSelfShowLog", "enter launchNotify()");
        if (this.f7726b == null || (c2433k = this.f7727c) == null) {
            HMSLog.m37198d("PushSelfShowLog", "launchNotify  context or msg is null");
        } else if ("app".equals(c2433k.m37316i())) {
            m37341a();
        } else if ("cosa".equals(this.f7727c.m37316i())) {
            m37339b();
        } else if ("rp".equals(this.f7727c.m37316i())) {
            HMSLog.m37192w("PushSelfShowLog", this.f7727c.m37316i() + " not support rich message.");
        } else if ("url".equals(this.f7727c.m37316i())) {
            HMSLog.m37192w("PushSelfShowLog", this.f7727c.m37316i() + " not support URL.");
        } else {
            HMSLog.m37198d("PushSelfShowLog", this.f7727c.m37316i() + " is not exist in hShowType");
        }
    }

    /* renamed from: d */
    public final void m37336d() {
        try {
            StringBuilder sb = new StringBuilder();
            if (!TextUtils.isEmpty(this.f7727c.m37308n())) {
                sb.append("&referrer=");
                sb.append(Uri.encode(m37340a(this.f7727c.m37308n())));
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("market://details?id=");
            sb2.append(this.f7727c.m37326d());
            sb2.append((Object) sb);
            String sb3 = sb2.toString();
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(sb3));
            intent.setPackage(PackageConstants.SERVICES_PACKAGE_APPMARKET);
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setData(Uri.parse(sb3));
            intent2.setPackage("com.android.vending");
            if (C2439q.m37262a(this.f7726b, "com.android.vending", intent2).booleanValue()) {
                intent2.setFlags(402653184);
                HMSLog.m37193i("PushSelfShowLog", "open google play store's app.");
                this.f7726b.startActivity(intent2);
            } else if (!C2439q.m37262a(this.f7726b, PackageConstants.SERVICES_PACKAGE_APPMARKET, intent).booleanValue()) {
                HMSLog.m37193i("PushSelfShowLog", "open app detail by browser.");
                m37335e();
            } else {
                intent.setFlags(402653184);
                HMSLog.m37193i("PushSelfShowLog", "open HiApp's app.");
                this.f7726b.startActivity(intent);
            }
        } catch (Exception e) {
            HMSLog.m37195e("PushSelfShowLog", "open market app detail failed,exception:" + e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0120  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m37335e() {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.push.C2432j.m37335e():void");
    }
}

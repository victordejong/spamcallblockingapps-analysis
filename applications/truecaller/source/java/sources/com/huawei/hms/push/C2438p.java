package com.huawei.hms.push;

import android.content.Context;
import android.content.Intent;
import com.huawei.hms.support.log.HMSLog;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.push.p */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/p.class */
public class C2438p extends Thread {

    /* renamed from: a */
    public Context f7766a;

    /* renamed from: b */
    public C2433k f7767b;

    public C2438p(Context context, C2433k c2433k) {
        this.f7766a = context;
        this.f7767b = c2433k;
    }

    /* renamed from: a */
    public static Intent m37271a(Context context, C2433k c2433k) {
        Intent intent;
        if (c2433k == null) {
            return null;
        }
        Intent m37259b = C2439q.m37259b(context, c2433k.m37326d());
        if (c2433k.m37308n() != null) {
            try {
                Intent parseUri = Intent.parseUri(c2433k.m37308n(), 0);
                parseUri.setSelector(null);
                StringBuilder sb = new StringBuilder();
                sb.append("Intent.parseUri(msg.intentUri, 0), action:");
                sb.append(parseUri.getAction());
                HMSLog.m37198d("PushSelfShowLog", sb.toString());
                intent = m37259b;
                if (C2439q.m37262a(context, c2433k.m37326d(), parseUri).booleanValue()) {
                    intent = parseUri;
                }
            } catch (Exception e) {
                StringBuilder m8728C = C22128a.m8728C("intentUri error,");
                m8728C.append(e.toString());
                HMSLog.m37192w("PushSelfShowLog", m8728C.toString());
                intent = m37259b;
            }
        } else {
            intent = m37259b;
            if (c2433k.m37334a() != null) {
                Intent intent2 = new Intent(c2433k.m37334a());
                intent = m37259b;
                if (C2439q.m37262a(context, c2433k.m37326d(), intent2).booleanValue()) {
                    intent = intent2;
                }
            }
            intent.setPackage(c2433k.m37326d());
        }
        return intent;
    }

    /* renamed from: a */
    public final boolean m37272a(Context context) {
        return C2439q.m37257c(context, this.f7767b.m37326d());
    }

    /* renamed from: b */
    public final boolean m37270b(Context context) {
        if ("cosa".equals(this.f7767b.m37316i())) {
            return m37272a(context);
        }
        return true;
    }

    /* renamed from: b */
    public final boolean m37269b(Context context, C2433k c2433k) {
        boolean z;
        if (!"cosa".equals(c2433k.m37316i()) || m37271a(context, c2433k) != null) {
            z = false;
        } else {
            HMSLog.m37198d("PushSelfShowLog", "launchCosaApp,intent == null");
            z = true;
        }
        return z;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        HMSLog.m37193i("PushSelfShowLog", "enter run()");
        try {
            if (!m37270b(this.f7766a) || m37269b(this.f7766a, this.f7767b)) {
                return;
            }
            C2437o.m37285a(this.f7766a, this.f7767b);
        } catch (Exception e) {
            HMSLog.m37195e("PushSelfShowLog", e.toString());
        }
    }
}

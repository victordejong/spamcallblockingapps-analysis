package p081h.p203i.p204a.p224e.p254g;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import java.util.MissingFormatArgumentException;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONException;
/* renamed from: h.i.a.e.g.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/g/c.class */
public final class C7134c {

    /* renamed from: d */
    public static C7134c f17238d;

    /* renamed from: a */
    public final Context f17239a;

    /* renamed from: b */
    public String f17240b;

    /* renamed from: c */
    public final AtomicInteger f17241c = new AtomicInteger((int) SystemClock.elapsedRealtime());

    public C7134c(Context context) {
        this.f17239a = context.getApplicationContext();
    }

    /* renamed from: a */
    public static C7134c m21038a(Context context) {
        C7134c cVar;
        synchronized (C7134c.class) {
            try {
                if (f17238d == null) {
                    f17238d = new C7134c(context);
                }
                cVar = f17238d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cVar;
    }

    /* renamed from: b */
    public static String m21035b(Bundle bundle, String str) {
        String string = bundle.getString(str);
        String str2 = string;
        if (string == null) {
            str2 = bundle.getString(str.replace("gcm.n.", "gcm.notification."));
        }
        return str2;
    }

    /* renamed from: a */
    public final Bundle m21039a() {
        ApplicationInfo applicationInfo;
        try {
            applicationInfo = this.f17239a.getPackageManager().getApplicationInfo(this.f17239a.getPackageName(), 128);
        } catch (PackageManager.NameNotFoundException e) {
            applicationInfo = null;
        }
        return (applicationInfo == null || applicationInfo.metaData == null) ? Bundle.EMPTY : applicationInfo.metaData;
    }

    /* renamed from: a */
    public final String m21036a(Bundle bundle, String str) {
        StringBuilder sb;
        String b = m21035b(bundle, str);
        if (!TextUtils.isEmpty(b)) {
            return b;
        }
        String valueOf = String.valueOf(str);
        String b2 = m21035b(bundle, "_loc_key".length() != 0 ? valueOf.concat("_loc_key") : new String(valueOf));
        if (TextUtils.isEmpty(b2)) {
            return null;
        }
        Resources resources = this.f17239a.getResources();
        int identifier = resources.getIdentifier(b2, "string", this.f17239a.getPackageName());
        if (identifier == 0) {
            String valueOf2 = String.valueOf(str);
            String substring = ("_loc_key".length() != 0 ? valueOf2.concat("_loc_key") : new String(valueOf2)).substring(6);
            StringBuilder sb2 = new StringBuilder(String.valueOf(substring).length() + 49 + String.valueOf(b2).length());
            sb2.append(substring);
            sb2.append(" resource not found: ");
            sb2.append(b2);
            sb2.append(" Default value will be used.");
            sb2.toString();
            return null;
        }
        String valueOf3 = String.valueOf(str);
        String b3 = m21035b(bundle, "_loc_args".length() != 0 ? valueOf3.concat("_loc_args") : new String(valueOf3));
        if (TextUtils.isEmpty(b3)) {
            return resources.getString(identifier);
        }
        try {
            JSONArray jSONArray = new JSONArray(b3);
            Object[] objArr = new String[jSONArray.length()];
            for (int i = 0; i < objArr.length; i++) {
                objArr[i] = jSONArray.opt(i);
            }
            return resources.getString(identifier, objArr);
        } catch (MissingFormatArgumentException e) {
            sb = new StringBuilder(String.valueOf(b2).length() + 58 + String.valueOf(b3).length());
            sb.append("Missing format argument for ");
            sb.append(b2);
            sb.append(": ");
            sb.append(b3);
            sb.append(" Default value will be used.");
            sb.toString();
            return null;
        } catch (JSONException e2) {
            String valueOf4 = String.valueOf(str);
            String substring2 = ("_loc_args".length() != 0 ? valueOf4.concat("_loc_args") : new String(valueOf4)).substring(6);
            sb = new StringBuilder(String.valueOf(substring2).length() + 41 + String.valueOf(b3).length());
            sb.append("Malformed ");
            sb.append(substring2);
            sb.append(": ");
            sb.append(b3);
            sb.append("  Default value will be used.");
            sb.toString();
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x03a6  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x03b5  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x03c5  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x03d4  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x03e0  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0418  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m21037a(android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 1092
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p254g.C7134c.m21037a(android.os.Bundle):boolean");
    }
}

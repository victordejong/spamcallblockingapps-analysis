package p193e.p194a.p1365y.p1386d;

import android.net.Uri;
/* renamed from: e.a.y.d.l */
/* loaded from: classes9-dex2jar.jar:e/a/y/d/l.class */
public final class C21719l {

    /* renamed from: a */
    public static final Uri f60509a = Uri.parse("content://com.truecaller.flashsdk.provider/flash_state");

    /* renamed from: b */
    public static final Uri f60510b = Uri.parse("content://com.truecaller.flashsdk.provider/flash_cache");

    /* renamed from: c */
    public static final Uri f60511c = Uri.parse("content://com.truecaller.flashsdk.provider/cacheNumbers");

    static {
        StringBuilder sb = new StringBuilder();
        sb.append("content://");
        sb.append("com.truecaller.flashsdk.provider");
        sb.append("/currentFlashes");
        Uri.parse(sb.toString());
    }
}

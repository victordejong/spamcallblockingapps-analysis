package p131c.p372f.p373a.p374a.p375a.p385n;

import android.text.TextUtils;
import android.util.Log;
import com.mopub.mobileads.VastExtensionXmlManager;
/* renamed from: c.f.a.a.a.n.c */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/n/c.class */
public class C6455c {
    /* renamed from: a */
    public static void m20824a(String str) {
        if (!TextUtils.isEmpty(str)) {
            Log.e(VastExtensionXmlManager.AVID, str);
        }
    }

    /* renamed from: a */
    public static void m20823a(String str, Exception exc) {
        if (!TextUtils.isEmpty(str) || exc != null) {
            Log.e(VastExtensionXmlManager.AVID, str, exc);
        }
    }
}

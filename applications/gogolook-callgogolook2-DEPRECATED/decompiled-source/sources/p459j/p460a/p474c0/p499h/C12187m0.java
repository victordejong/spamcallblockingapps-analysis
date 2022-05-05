package p459j.p460a.p474c0.p499h;

import android.net.Uri;
import android.provider.Settings;
import android.text.TextUtils;
import gogolook.callgogolook2.R$string;
import p459j.p460a.p474c0.AbstractC11516a;
/* renamed from: j.a.c0.h.m0 */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/m0.class */
public class C12187m0 {
    /* renamed from: a */
    public static Uri m6860a(String str) {
        String str2 = str;
        if (str == null) {
            str2 = AbstractC12178k.m6912b().mo6907a(AbstractC11516a.m9413n().mo9412a().getString(R$string.notification_sound_pref_key), (String) null);
        }
        if (!TextUtils.isEmpty(str2)) {
            return Uri.parse(str2);
        }
        if (str2 == null) {
            return Settings.System.DEFAULT_NOTIFICATION_URI;
        }
        return null;
    }
}

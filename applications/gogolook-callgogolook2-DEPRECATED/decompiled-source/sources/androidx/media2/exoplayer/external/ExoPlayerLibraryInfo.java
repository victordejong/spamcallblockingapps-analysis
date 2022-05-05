package androidx.media2.exoplayer.external;

import androidx.annotation.RestrictTo;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.HashSet;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/ExoPlayerLibraryInfo.class */
public final class ExoPlayerLibraryInfo {
    public static final boolean ASSERTIONS_ENABLED = true;
    public static final boolean GL_ASSERTIONS_ENABLED = false;
    public static final String TAG = "ExoPlayer";
    public static final boolean TRACE_ENABLED = true;
    public static final String VERSION = "2.10.1";
    public static final int VERSION_INT = 2010001;
    public static final String VERSION_SLASHY = "ExoPlayerLib/2.10.1";
    public static final HashSet<String> registeredModules = new HashSet<>();
    public static String registeredModulesString = "goog.exo.core";

    public static void registerModule(String str) {
        synchronized (ExoPlayerLibraryInfo.class) {
            try {
                if (registeredModules.add(str)) {
                    String str2 = registeredModulesString;
                    StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 2 + String.valueOf(str).length());
                    sb.append(str2);
                    sb.append(UserProfile.CARD_CATE_SEPARATOR);
                    sb.append(str);
                    registeredModulesString = sb.toString();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String registeredModules() {
        String str;
        synchronized (ExoPlayerLibraryInfo.class) {
            try {
                str = registeredModulesString;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }
}

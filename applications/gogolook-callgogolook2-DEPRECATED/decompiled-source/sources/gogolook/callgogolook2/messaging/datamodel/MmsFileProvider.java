package gogolook.callgogolook2.messaging.datamodel;

import android.content.Context;
import android.net.Uri;
import java.io.File;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p499h.C12153d0;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/MmsFileProvider.class */
public class MmsFileProvider extends FileProvider {
    /* renamed from: a */
    public static Uri m27763a() {
        Uri b = FileProvider.m27787b("gogolook.callgogolook2.messaging.datamodel.MmsFileProvider", null);
        File b2 = m27759b(b.getPath());
        if (!FileProvider.m27789a(b2)) {
            C12153d0.m6987b("MessagingApp", "Failed to create temp file " + b2.getAbsolutePath());
        }
        return b;
    }

    /* renamed from: a */
    public static File m27762a(Context context) {
        return new File(context.getCacheDir(), "rawmms");
    }

    /* renamed from: b */
    public static File m27760b(Uri uri) {
        return m27759b(uri.getPath());
    }

    /* renamed from: b */
    public static File m27759b(String str) {
        File a = m27762a(AbstractC11516a.m9413n().mo9412a());
        return new File(a, str + ".dat");
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.FileProvider
    /* renamed from: a */
    public File mo27761a(String str, String str2) {
        return m27759b(str);
    }
}

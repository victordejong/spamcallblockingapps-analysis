package androidx.core.net;

import android.net.Uri;
import java.io.File;
import kotlin.Metadata;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\u001a\n\u0010��\u001a\u00020\u0001*\u00020\u0002\u001a\r\u0010\u0003\u001a\u00020\u0002*\u00020\u0001H\u0086\b\u001a\r\u0010\u0003\u001a\u00020\u0002*\u00020\u0004H\u0086\b¨\u0006\u0005"}, m815d2 = {"toFile", "Ljava/io/File;", "Landroid/net/Uri;", "toUri", "", "core-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/core/net/UriKt.class */
public final class UriKt {
    public static final File toFile(Uri uri) {
        C15149k.m377b(uri, "$this$toFile");
        if (C15149k.m384a((Object) uri.getScheme(), (Object) "file")) {
            String path = uri.getPath();
            if (path != null) {
                return new File(path);
            }
            throw new IllegalArgumentException(("Uri path is null: " + uri).toString());
        }
        throw new IllegalArgumentException(("Uri lacks 'file' scheme: " + uri).toString());
    }

    public static final Uri toUri(File file) {
        C15149k.m377b(file, "$this$toUri");
        Uri fromFile = Uri.fromFile(file);
        C15149k.m383a((Object) fromFile, "Uri.fromFile(this)");
        return fromFile;
    }

    public static final Uri toUri(String str) {
        C15149k.m377b(str, "$this$toUri");
        Uri parse = Uri.parse(str);
        C15149k.m383a((Object) parse, "Uri.parse(this)");
        return parse;
    }
}

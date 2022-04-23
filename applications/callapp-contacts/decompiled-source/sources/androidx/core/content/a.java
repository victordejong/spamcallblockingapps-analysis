package androidx.core.content;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.OperationCanceledException;
/* loaded from: classes-dex2jar.jar:androidx/core/content/a.class */
public final class a {
    private a() {
    }

    public static Cursor a(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, androidx.core.os.a aVar) {
        Object c2;
        if (Build.VERSION.SDK_INT >= 16) {
            if (aVar != null) {
                try {
                    c2 = aVar.c();
                } catch (Exception e) {
                    if (e instanceof OperationCanceledException) {
                        throw new androidx.core.os.OperationCanceledException();
                    }
                    throw e;
                }
            } else {
                c2 = null;
            }
            return contentResolver.query(uri, strArr, str, strArr2, str2, (CancellationSignal) c2);
        } else if (aVar == null || !aVar.a()) {
            return contentResolver.query(uri, strArr, str, strArr2, str2);
        } else {
            throw new androidx.core.os.OperationCanceledException();
        }
    }
}

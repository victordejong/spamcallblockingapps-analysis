package androidx.core.content;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.OperationCanceledException;
import androidx.core.p004os.CancellationSignal;
/* loaded from: classes-dex2jar.jar:androidx/core/content/ContentResolverCompat.class */
public final class ContentResolverCompat {
    private ContentResolverCompat() {
    }

    /* renamed from: a */
    public static Cursor m19679a(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        Object b;
        if (Build.VERSION.SDK_INT >= 16) {
            if (cancellationSignal != null) {
                try {
                    b = cancellationSignal.m19448b();
                } catch (Exception e) {
                    if (e instanceof OperationCanceledException) {
                        throw new androidx.core.p004os.OperationCanceledException();
                    }
                    throw e;
                }
            } else {
                b = null;
            }
            return contentResolver.query(uri, strArr, str, strArr2, str2, (android.os.CancellationSignal) b);
        }
        if (cancellationSignal != null) {
            cancellationSignal.m19445e();
        }
        return contentResolver.query(uri, strArr, str, strArr2, str2);
    }
}

package androidx.core.content;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.CancellationSignal;
import androidx.core.p037os.C0856a;
import androidx.core.p037os.OperationCanceledException;
/* renamed from: androidx.core.content.a */
/* loaded from: classes-dex2jar.jar:androidx/core/content/a.class */
public final class C0788a {
    private C0788a() {
    }

    /* renamed from: a */
    public static Cursor m44505a(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, C0856a c0856a) {
        Object m44300c;
        if (Build.VERSION.SDK_INT < 16) {
            if (c0856a != null && c0856a.m44303a()) {
                throw new OperationCanceledException();
            }
            return contentResolver.query(uri, strArr, str, strArr2, str2);
        }
        if (c0856a != null) {
            try {
                m44300c = c0856a.m44300c();
            } catch (Exception e) {
                if (!(e instanceof android.os.OperationCanceledException)) {
                    throw e;
                }
                throw new OperationCanceledException();
            }
        } else {
            m44300c = null;
        }
        return contentResolver.query(uri, strArr, str, strArr2, str2, (CancellationSignal) m44300c);
    }
}

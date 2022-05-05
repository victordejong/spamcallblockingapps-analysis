package androidx.core.view.inputmethod;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.text.TextUtils;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:androidx/core/view/inputmethod/InputConnectionCompat.class */
public final class InputConnectionCompat {

    /* renamed from: androidx.core.view.inputmethod.InputConnectionCompat$1 */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/inputmethod/InputConnectionCompat$1.class */
    class C02361 extends InputConnectionWrapper {

        /* renamed from: a */
        final /* synthetic */ OnCommitContentListener f3355a;

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public boolean commitContent(InputContentInfo inputContentInfo, int i, Bundle bundle) {
            if (this.f3355a.m18947a(InputContentInfoCompat.m18946a(inputContentInfo), i, bundle)) {
                return true;
            }
            return super.commitContent(inputContentInfo, i, bundle);
        }
    }

    /* renamed from: androidx.core.view.inputmethod.InputConnectionCompat$2 */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/inputmethod/InputConnectionCompat$2.class */
    class C02372 extends InputConnectionWrapper {

        /* renamed from: a */
        final /* synthetic */ OnCommitContentListener f3356a;

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public boolean performPrivateCommand(String str, Bundle bundle) {
            if (InputConnectionCompat.m18948a(str, bundle, this.f3356a)) {
                return true;
            }
            return super.performPrivateCommand(str, bundle);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener.class */
    public interface OnCommitContentListener {
        /* renamed from: a */
        boolean m18947a(InputContentInfoCompat inputContentInfoCompat, int i, Bundle bundle);
    }

    /* renamed from: a */
    static boolean m18948a(@Nullable String str, @NonNull Bundle bundle, @NonNull OnCommitContentListener onCommitContentListener) {
        boolean z;
        ResultReceiver resultReceiver;
        Throwable th;
        ResultReceiver resultReceiver2;
        if (bundle == null) {
            return false;
        }
        if (TextUtils.equals("androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT", str)) {
            z = false;
        } else if (!TextUtils.equals("android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT", str)) {
            return false;
        } else {
            z = true;
        }
        try {
            resultReceiver2 = (ResultReceiver) bundle.getParcelable(z ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER");
        } catch (Throwable th2) {
            th = th2;
            resultReceiver = null;
        }
        try {
            Uri uri = (Uri) bundle.getParcelable(z ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI");
            ClipDescription clipDescription = (ClipDescription) bundle.getParcelable(z ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION");
            Uri uri2 = (Uri) bundle.getParcelable(z ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI");
            int i = bundle.getInt(z ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS");
            Bundle bundle2 = (Bundle) bundle.getParcelable(z ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS");
            boolean z2 = false;
            if (uri != null) {
                z2 = false;
                if (clipDescription != null) {
                    z2 = onCommitContentListener.m18947a(new InputContentInfoCompat(uri, clipDescription, uri2), i, bundle2);
                }
            }
            if (resultReceiver2 != null) {
                int i2 = z2 ? 1 : 0;
                int i3 = z2 ? 1 : 0;
                int i4 = z2 ? 1 : 0;
                resultReceiver2.send(i2, null);
            }
            return z2;
        } catch (Throwable th3) {
            th = th3;
            resultReceiver = resultReceiver2;
            if (resultReceiver != null) {
                resultReceiver.send(0, null);
            }
            throw th;
        }
    }
}

package p185o0;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.text.TextUtils;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
/* renamed from: o0.c */
/* loaded from: classes-dex2jar.jar:o0/c.class */
public class C3808c extends InputConnectionWrapper {

    /* renamed from: a */
    public final /* synthetic */ AbstractC3810e f12284a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3808c(InputConnection inputConnection, boolean z, AbstractC3810e abstractC3810e) {
        super(inputConnection, z);
        this.f12284a = abstractC3810e;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public boolean performPrivateCommand(String str, Bundle bundle) {
        boolean z;
        ResultReceiver resultReceiver;
        Throwable th;
        AbstractC3810e abstractC3810e = this.f12284a;
        int i = 0;
        if (bundle != null) {
            if (TextUtils.equals("androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT", str)) {
                z = false;
            } else if (TextUtils.equals("android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT", str)) {
                z = true;
            }
            try {
                ResultReceiver resultReceiver2 = (ResultReceiver) bundle.getParcelable(z ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER");
                try {
                    Uri uri = (Uri) bundle.getParcelable(z ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI");
                    ClipDescription clipDescription = (ClipDescription) bundle.getParcelable(z ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION");
                    Uri uri2 = (Uri) bundle.getParcelable(z ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI");
                    int i2 = bundle.getInt(z ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS");
                    Bundle bundle2 = (Bundle) bundle.getParcelable(z ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS");
                    boolean z2 = 0;
                    if (uri != null) {
                        z2 = 0;
                        if (clipDescription != null) {
                            z2 = ((C3809d) abstractC3810e).m1782a(new C3811f(uri, clipDescription, uri2), i2, bundle2);
                        }
                    }
                    i = z2;
                    if (resultReceiver2 != null) {
                        resultReceiver2.send(z2, null);
                        i = z2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    resultReceiver = resultReceiver2;
                    if (resultReceiver != null) {
                        resultReceiver.send(0, null);
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                resultReceiver = null;
            }
        }
        if (i != 0) {
            return true;
        }
        return super.performPrivateCommand(str, bundle);
    }
}

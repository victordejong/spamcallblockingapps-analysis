package p1727n3.p1807k.p1821i.p1823g0;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.text.TextUtils;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
/* renamed from: n3.k.i.g0.c */
/* loaded from: classes-dex2jar.jar:n3/k/i/g0/c.class */
public class C26597c extends InputConnectionWrapper {

    /* renamed from: a */
    public final /* synthetic */ AbstractC26598d f74488a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C26597c(InputConnection inputConnection, boolean z, AbstractC26598d abstractC26598d) {
        super(inputConnection, z);
        this.f74488a = abstractC26598d;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public boolean performPrivateCommand(String str, Bundle bundle) {
        boolean z;
        Throwable th;
        ResultReceiver resultReceiver;
        AbstractC26598d abstractC26598d = this.f74488a;
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
                    int i3 = 0;
                    if (uri != null) {
                        i3 = 0;
                        if (clipDescription != null) {
                            i3 = abstractC26598d.mo1605a(new C26599e(uri, clipDescription, uri2), i2, bundle2);
                        }
                    }
                    i = i3;
                    if (resultReceiver2 != null) {
                        resultReceiver2.send(i3, null);
                        i = i3;
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

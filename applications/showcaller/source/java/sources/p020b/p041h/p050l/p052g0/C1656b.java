package p020b.p041h.p050l.p052g0;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.text.TextUtils;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;
/* renamed from: b.h.l.g0.b */
/* loaded from: classes-dex2jar.jar:b/h/l/g0/b.class */
public final class C1656b {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.h.l.g0.b$a */
    /* loaded from: classes-dex2jar.jar:b/h/l/g0/b$a.class */
    public class C1657a extends InputConnectionWrapper {

        /* renamed from: a */
        final /* synthetic */ AbstractC1659c f6321a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1657a(InputConnection inputConnection, boolean z, AbstractC1659c abstractC1659c) {
            super(inputConnection, z);
            this.f6321a = abstractC1659c;
        }

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public boolean commitContent(InputContentInfo inputContentInfo, int i, Bundle bundle) {
            if (this.f6321a.mo29414a(C1660c.m29408f(inputContentInfo), i, bundle)) {
                return true;
            }
            return super.commitContent(inputContentInfo, i, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.h.l.g0.b$b */
    /* loaded from: classes-dex2jar.jar:b/h/l/g0/b$b.class */
    public class C1658b extends InputConnectionWrapper {

        /* renamed from: a */
        final /* synthetic */ AbstractC1659c f6322a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1658b(InputConnection inputConnection, boolean z, AbstractC1659c abstractC1659c) {
            super(inputConnection, z);
            this.f6322a = abstractC1659c;
        }

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public boolean performPrivateCommand(String str, Bundle bundle) {
            if (C1656b.m29415b(str, bundle, this.f6322a)) {
                return true;
            }
            return super.performPrivateCommand(str, bundle);
        }
    }

    /* renamed from: b.h.l.g0.b$c */
    /* loaded from: classes-dex2jar.jar:b/h/l/g0/b$c.class */
    public interface AbstractC1659c {
        /* renamed from: a */
        boolean mo29414a(C1660c c1660c, int i, Bundle bundle);
    }

    /* renamed from: a */
    public static InputConnection m29416a(InputConnection inputConnection, EditorInfo editorInfo, AbstractC1659c abstractC1659c) {
        if (inputConnection != null) {
            if (editorInfo == null) {
                throw new IllegalArgumentException("editorInfo must be non-null");
            }
            if (abstractC1659c == null) {
                throw new IllegalArgumentException("onCommitContentListener must be non-null");
            }
            return Build.VERSION.SDK_INT >= 25 ? new C1657a(inputConnection, false, abstractC1659c) : C1654a.m29425a(editorInfo).length == 0 ? inputConnection : new C1658b(inputConnection, false, abstractC1659c);
        }
        throw new IllegalArgumentException("inputConnection must be non-null");
    }

    /* renamed from: b */
    static boolean m29415b(String str, Bundle bundle, AbstractC1659c abstractC1659c) {
        Object[] objArr;
        Throwable th;
        ResultReceiver resultReceiver;
        ResultReceiver resultReceiver2;
        if (bundle == null) {
            return false;
        }
        if (TextUtils.equals("androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT", str)) {
            objArr = null;
        } else if (!TextUtils.equals("android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT", str)) {
            return false;
        } else {
            objArr = 1;
        }
        try {
            resultReceiver2 = (ResultReceiver) bundle.getParcelable(objArr != null ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER");
        } catch (Throwable th2) {
            th = th2;
            resultReceiver = null;
        }
        try {
            Uri uri = (Uri) bundle.getParcelable(objArr != null ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI");
            ClipDescription clipDescription = (ClipDescription) bundle.getParcelable(objArr != null ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION");
            Uri uri2 = (Uri) bundle.getParcelable(objArr != null ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI");
            int i = bundle.getInt(objArr != null ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS");
            Bundle bundle2 = (Bundle) bundle.getParcelable(objArr != null ? "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS" : "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS");
            boolean z = false;
            if (uri != null) {
                z = false;
                if (clipDescription != null) {
                    z = abstractC1659c.mo29414a(new C1660c(uri, clipDescription, uri2), i, bundle2);
                }
            }
            if (resultReceiver2 != null) {
                resultReceiver2.send(z ? 1 : 0, null);
            }
            return z;
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

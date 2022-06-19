package p185o0;

import android.os.Build;
import android.os.Bundle;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;
import p185o0.C3811f;
/* renamed from: o0.b */
/* loaded from: classes-dex2jar.jar:o0/b.class */
public class C3807b extends InputConnectionWrapper {

    /* renamed from: a */
    public final /* synthetic */ AbstractC3810e f12283a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3807b(InputConnection inputConnection, boolean z, AbstractC3810e abstractC3810e) {
        super(inputConnection, z);
        this.f12283a = abstractC3810e;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public boolean commitContent(InputContentInfo inputContentInfo, int i, Bundle bundle) {
        AbstractC3810e abstractC3810e = this.f12283a;
        C3811f c3811f = null;
        if (inputContentInfo != null && Build.VERSION.SDK_INT >= 25) {
            c3811f = new C3811f(new C3811f.C3812a(inputContentInfo));
        }
        if (((C3809d) abstractC3810e).m1782a(c3811f, i, bundle)) {
            return true;
        }
        return super.commitContent(inputContentInfo, i, bundle);
    }
}

package p1727n3.p1807k.p1821i.p1823g0;

import android.os.Build;
import android.os.Bundle;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;
import p1727n3.p1807k.p1821i.p1823g0.C26599e;
/* renamed from: n3.k.i.g0.b */
/* loaded from: classes-dex2jar.jar:n3/k/i/g0/b.class */
public class C26596b extends InputConnectionWrapper {

    /* renamed from: a */
    public final /* synthetic */ AbstractC26598d f74487a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C26596b(InputConnection inputConnection, boolean z, AbstractC26598d abstractC26598d) {
        super(inputConnection, z);
        this.f74487a = abstractC26598d;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public boolean commitContent(InputContentInfo inputContentInfo, int i, Bundle bundle) {
        AbstractC26598d abstractC26598d = this.f74487a;
        C26599e c26599e = null;
        if (inputContentInfo != null && Build.VERSION.SDK_INT >= 25) {
            c26599e = new C26599e(new C26599e.C26600a(inputContentInfo));
        }
        if (abstractC26598d.mo1605a(c26599e, i, bundle)) {
            return true;
        }
        return super.commitContent(inputContentInfo, i, bundle);
    }
}

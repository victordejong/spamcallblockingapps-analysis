package p091f4;

import android.widget.AutoCompleteTextView;
import com.google.android.material.textfield.C1815b;
/* renamed from: f4.i */
/* loaded from: classes-dex2jar.jar:f4/i.class */
public class C2744i implements AutoCompleteTextView.OnDismissListener {

    /* renamed from: a */
    public final /* synthetic */ C1815b f9401a;

    public C2744i(C1815b c1815b) {
        this.f9401a = c1815b;
    }

    @Override // android.widget.AutoCompleteTextView.OnDismissListener
    public void onDismiss() {
        C1815b c1815b = this.f9401a;
        c1815b.f6866j = true;
        c1815b.f6868l = System.currentTimeMillis();
        C1815b.m4509f(this.f9401a, false);
    }
}

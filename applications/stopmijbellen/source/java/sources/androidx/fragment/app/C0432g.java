package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.C0416c;
import p120i0.C3056b;
/* renamed from: androidx.fragment.app.g */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/g.class */
public class C0432g implements C3056b.AbstractC3057a {

    /* renamed from: a */
    public final /* synthetic */ View f1803a;

    /* renamed from: b */
    public final /* synthetic */ ViewGroup f1804b;

    /* renamed from: c */
    public final /* synthetic */ C0416c.C0418b f1805c;

    public C0432g(C0416c c0416c, View view, ViewGroup viewGroup, C0416c.C0418b c0418b) {
        this.f1803a = view;
        this.f1804b = viewGroup;
        this.f1805c = c0418b;
    }

    @Override // p120i0.C3056b.AbstractC3057a
    /* renamed from: a */
    public void mo2665a() {
        this.f1803a.clearAnimation();
        this.f1804b.endViewTransition(this.f1803a);
        this.f1805c.m8133a();
    }
}

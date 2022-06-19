package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import androidx.appcompat.view.menu.AbstractC0144i;
/* renamed from: androidx.appcompat.view.menu.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/a.class */
public abstract class AbstractC0126a implements AbstractC0144i {

    /* renamed from: a */
    public Context f367a;

    /* renamed from: b */
    public Context f368b;

    /* renamed from: c */
    public C0136e f369c;

    /* renamed from: d */
    public LayoutInflater f370d;

    /* renamed from: e */
    public AbstractC0144i.AbstractC0145a f371e;

    /* renamed from: f */
    public int f372f;

    /* renamed from: g */
    public int f373g;

    /* renamed from: h */
    public AbstractC0146j f374h;

    /* renamed from: i */
    public int f375i;

    public AbstractC0126a(Context context, int i, int i2) {
        this.f367a = context;
        this.f370d = LayoutInflater.from(context);
        this.f372f = i;
        this.f373g = i2;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    public int getId() {
        return this.f375i;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: j */
    public boolean mo708j(C0136e c0136e, C0140g c0140g) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: k */
    public boolean mo707k(C0136e c0136e, C0140g c0140g) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0144i
    /* renamed from: l */
    public void mo8681l(AbstractC0144i.AbstractC0145a abstractC0145a) {
        this.f371e = abstractC0145a;
    }
}

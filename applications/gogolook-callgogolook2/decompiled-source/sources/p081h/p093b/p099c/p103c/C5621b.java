package p081h.p093b.p099c.p103c;

import android.graphics.drawable.Drawable;
import androidx.appcompat.app.ActionBar;
import p081h.p093b.p099c.p103c.AbstractC5619a;
/* renamed from: h.b.c.c.b */
/* loaded from: classes-dex2jar.jar:h/b/c/c/b.class */
public class C5621b implements AbstractC5619a {

    /* renamed from: a */
    public final ActionBar f14045a;

    /* renamed from: h.b.c.c.b$a */
    /* loaded from: classes-dex2jar.jar:h/b/c/c/b$a.class */
    public class C5622a implements ActionBar.OnMenuVisibilityListener {

        /* renamed from: a */
        public final AbstractC5619a.AbstractC5620a f14046a;

        public C5622a(C5621b bVar, AbstractC5619a.AbstractC5620a aVar) {
            this.f14046a = aVar;
        }

        @Override // androidx.appcompat.app.ActionBar.OnMenuVisibilityListener
        public void onMenuVisibilityChanged(boolean z) {
            this.f14046a.onMenuVisibilityChanged(z);
        }
    }

    public C5621b(ActionBar actionBar) {
        this.f14045a = actionBar;
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5619a
    /* renamed from: a */
    public void mo24994a() {
        this.f14045a.setDisplayOptions(8, 8);
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5619a
    /* renamed from: a */
    public void mo24993a(AbstractC5619a.AbstractC5620a aVar) {
        this.f14045a.addOnMenuVisibilityListener(new C5622a(this, aVar));
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5619a
    /* renamed from: a */
    public void mo24992a(boolean z) {
        this.f14045a.setDisplayHomeAsUpEnabled(z);
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5619a
    /* renamed from: b */
    public void mo24991b() {
        this.f14045a.hide();
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5619a
    public void setBackgroundDrawable(Drawable drawable) {
        ActionBar actionBar = this.f14045a;
        if (actionBar != null) {
            actionBar.setBackgroundDrawable(drawable);
        }
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5619a
    public void setLogo(Drawable drawable) {
        this.f14045a.setLogo(drawable);
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5619a
    public void setSubtitle(CharSequence charSequence) {
        this.f14045a.setSubtitle(charSequence);
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5619a
    public void setTitle(CharSequence charSequence) {
        this.f14045a.setTitle(charSequence);
    }

    @Override // p081h.p093b.p099c.p103c.AbstractC5619a
    public void show() {
        this.f14045a.show();
    }
}

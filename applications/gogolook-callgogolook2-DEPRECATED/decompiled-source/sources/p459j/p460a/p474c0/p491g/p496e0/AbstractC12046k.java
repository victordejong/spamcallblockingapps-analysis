package p459j.p460a.p474c0.p491g.p496e0;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import androidx.appcompat.app.ActionBar;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$layout;
import p459j.p460a.p474c0.p475c.p477x.C11592f;
import p459j.p460a.p474c0.p475c.p478y.C11617j;
import p459j.p460a.p474c0.p475c.p478y.C11627m;
import p459j.p460a.p474c0.p491g.AbstractC12006e;
import p459j.p460a.p474c0.p499h.C12151d;
/* renamed from: j.a.c0.g.e0.k */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/k.class */
public abstract class AbstractC12046k extends AbstractC12006e implements C11617j.AbstractC11623f {

    /* renamed from: c */
    public final FragmentC12048l f26990c;

    /* renamed from: d */
    public final C11592f<C11627m> f26991d;

    /* renamed from: h */
    public int f26995h;

    /* renamed from: f */
    public ImageButton[] f26993f = new ImageButton[2];

    /* renamed from: g */
    public boolean f26994g = false;

    /* renamed from: e */
    public boolean f26992e = false;

    /* renamed from: j.a.c0.g.e0.k$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/k$a.class */
    public class View$OnClickListenerC12047a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f26996a;

        public View$OnClickListenerC12047a(int i) {
            this.f26996a = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AbstractC12046k kVar = AbstractC12046k.this;
            kVar.f26990c.m7376a(kVar, this.f26996a);
        }
    }

    public AbstractC12046k(FragmentC12048l lVar) {
        C12151d.m7000b(lVar);
        this.f26990c = lVar;
        this.f26991d = lVar.m7398A();
    }

    /* renamed from: A */
    public boolean mo7426A() {
        return false;
    }

    /* renamed from: B */
    public abstract int mo7425B();

    /* renamed from: C */
    public Context m7424C() {
        return this.f26990c.getActivity();
    }

    /* renamed from: D */
    public abstract int mo7423D();

    /* renamed from: E */
    public int m7422E() {
        return this.f26995h;
    }

    /* renamed from: F */
    public LayoutInflater m7421F() {
        return LayoutInflater.from(m7424C());
    }

    /* renamed from: G */
    public abstract int mo7420G();

    /* renamed from: H */
    public boolean mo7419H() {
        return true;
    }

    /* renamed from: I */
    public boolean mo7418I() {
        return false;
    }

    /* renamed from: J */
    public boolean mo7417J() {
        return false;
    }

    /* renamed from: K */
    public abstract void mo7416K();

    /* renamed from: L */
    public abstract void mo7415L();

    /* renamed from: M */
    public void mo7414M() {
    }

    /* renamed from: N */
    public void mo7413N() {
    }

    /* renamed from: O */
    public void mo7412O() {
    }

    @Override // p459j.p460a.p474c0.p475c.p478y.C11617j.AbstractC11623f
    /* renamed from: a */
    public int mo7384a() {
        return this.f26990c.mo7384a();
    }

    /* renamed from: a */
    public abstract int mo7411a(int i);

    /* renamed from: a */
    public void mo7410a(int i, String[] strArr, int[] iArr) {
        this.f26994g = false;
    }

    /* renamed from: a */
    public void m7409a(LayoutInflater layoutInflater, ViewGroup viewGroup, int i) {
        this.f26993f[i] = (ImageButton) layoutInflater.inflate(R$layout.mediapicker_tab_button, viewGroup, false);
        this.f26993f[i].setImageResource(mo7411a(i));
        this.f26993f[i].setContentDescription(layoutInflater.getContext().getResources().getString(mo7423D()));
        this.f26993f[i].setOnClickListener(new View$OnClickListenerC12047a(i));
        mo7405a(this.f26992e, 0);
    }

    /* renamed from: a */
    public void mo7408a(MenuInflater menuInflater, Menu menu, ActionBar actionBar) {
    }

    /* renamed from: a */
    public void mo7406a(ActionBar actionBar) {
        int B = mo7425B();
        if (B == 0) {
            actionBar.hide();
            return;
        }
        actionBar.setCustomView((View) null);
        actionBar.setDisplayOptions(8);
        actionBar.setDisplayHomeAsUpEnabled(true);
        actionBar.show();
        actionBar.setHomeAsUpIndicator(R$drawable.ab_gallery_close_btn);
        actionBar.setTitle(B);
        actionBar.setDisplayShowCustomEnabled(false);
    }

    /* renamed from: a */
    public void mo7405a(boolean z, int i) {
        this.f26992e = z;
        if (z && this.f26993f != null) {
            int i2 = 0;
            while (true) {
                ImageButton[] imageButtonArr = this.f26993f;
                if (i2 >= imageButtonArr.length) {
                    break;
                }
                if (!(i2 == i || imageButtonArr[i2] == null)) {
                    imageButtonArr[i2].setSelected(false);
                }
                i2++;
            }
        }
        ImageButton[] imageButtonArr2 = this.f26993f;
        if (imageButtonArr2 != null && imageButtonArr2[i] != null) {
            imageButtonArr2[i].setSelected(z);
        }
    }

    /* renamed from: a */
    public void m7404a(String[] strArr, int i) {
        if (!this.f26994g) {
            this.f26990c.requestPermissions(strArr, i);
            this.f26994g = true;
        }
    }

    /* renamed from: a */
    public boolean mo7407a(MenuItem menuItem) {
        return false;
    }

    /* renamed from: b */
    public ImageButton m7403b(int i) {
        return this.f26993f[i];
    }

    /* renamed from: c */
    public void mo7402c(int i) {
    }

    /* renamed from: d */
    public void mo7401d(boolean z) {
    }

    /* renamed from: e */
    public void mo7400e(boolean z) {
    }

    /* renamed from: z */
    public boolean m7399z() {
        return false;
    }
}

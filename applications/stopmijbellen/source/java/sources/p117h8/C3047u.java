package p117h8;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import ba.C0748b;
import p024b9.C0740a;
import p149k8.C3388d;
/* renamed from: h8.u */
/* loaded from: classes2-dex2jar.jar:h8/u.class */
public class C3047u extends C0740a {

    /* renamed from: A */
    public String f10321A;

    /* renamed from: b */
    public int f10322b;

    /* renamed from: c */
    public String f10323c;

    /* renamed from: d */
    public boolean f10324d;

    /* renamed from: e */
    public int f10325e;

    /* renamed from: f */
    public boolean f10326f;

    /* renamed from: g */
    public boolean f10327g;

    /* renamed from: h */
    public boolean f10328h;

    /* renamed from: i */
    public boolean f10329i;

    /* renamed from: j */
    public boolean f10330j;

    /* renamed from: k */
    public boolean f10331k;

    /* renamed from: l */
    public boolean f10332l;

    /* renamed from: m */
    public boolean f10333m;

    /* renamed from: n */
    public boolean f10334n;

    /* renamed from: o */
    public boolean f10335o;

    /* renamed from: p */
    public boolean f10336p;

    /* renamed from: q */
    public boolean f10337q;

    /* renamed from: r */
    public boolean f10338r;

    /* renamed from: s */
    public boolean f10339s;

    /* renamed from: t */
    public boolean f10340t;

    /* renamed from: u */
    public boolean f10341u;

    /* renamed from: v */
    public boolean f10342v;

    /* renamed from: w */
    public boolean f10343w;

    /* renamed from: x */
    public boolean f10344x;

    /* renamed from: y */
    public boolean f10345y;

    /* renamed from: z */
    public String f10346z;

    /* renamed from: h8.u$a */
    /* loaded from: classes2-dex2jar.jar:h8/u$a.class */
    public class View$OnLongClickListenerC3048a implements View.OnLongClickListener {
        public View$OnLongClickListenerC3048a(C3047u c3047u) {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            C0748b.m7409b().m7404g(new C3388d(1));
            return true;
        }
    }

    /* renamed from: d */
    public void m2694d(ImageView imageView, CheckBox checkBox, boolean z, ImageView imageView2, CheckBox checkBox2, boolean z2, boolean z3) {
        if (z) {
            imageView.setImageResource(2131230994);
        } else {
            imageView.setImageResource(2131230995);
        }
        if (z2) {
            imageView2.setImageResource(2131230996);
        } else {
            imageView2.setImageResource(2131230997);
        }
        if (z3) {
            checkBox.setChecked(z);
            checkBox2.setChecked(z2);
            checkBox.setVisibility(z3 ? 0 : 8);
            checkBox2.setVisibility(z3 ? 0 : 8);
        }
        imageView.setOnLongClickListener(new View$OnLongClickListenerC3048a(this));
        imageView2.setOnLongClickListener(View$OnLongClickListenerC3046t.f10320a);
    }
}

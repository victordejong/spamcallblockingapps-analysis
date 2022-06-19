package p078e2;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Objects;
import me.zhanghai.android.materialprogressbar.C3681R;
import p078e2.View$OnClickListenerC2530g;
import p100g2.C2803b;
import p111h2.C3003b;
import p237t.C4350g;
/* renamed from: e2.a */
/* loaded from: classes-dex2jar.jar:e2/a.class */
public class C2521a extends RecyclerView.AbstractC0562e<View$OnClickListenerC2522a> {

    /* renamed from: c */
    public final View$OnClickListenerC2530g f8802c;

    /* renamed from: d */
    public final int f8803d;

    /* renamed from: e */
    public final EnumC2526d f8804e;

    /* renamed from: f */
    public AbstractC2523b f8805f;

    /* renamed from: e2.a$a */
    /* loaded from: classes-dex2jar.jar:e2/a$a.class */
    public static class View$OnClickListenerC2522a extends RecyclerView.AbstractC0558a0 implements View.OnClickListener, View.OnLongClickListener {

        /* renamed from: t */
        public final CompoundButton f8806t;

        /* renamed from: u */
        public final C2521a f8807u;

        public View$OnClickListenerC2522a(View view, C2521a c2521a) {
            super(view);
            this.f8806t = (CompoundButton) view.findViewById(2131296789);
            TextView textView = (TextView) view.findViewById(2131296798);
            this.f8807u = c2521a;
            view.setOnClickListener(this);
            Objects.requireNonNull(c2521a.f8802c.f8822c);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f8807u.f8805f == null || m7850e() == -1) {
                return;
            }
            Objects.requireNonNull(this.f8807u.f8802c.f8822c);
            C2521a c2521a = this.f8807u;
            ((View$OnClickListenerC2530g) c2521a.f8805f).m3478f(c2521a.f8802c, view, m7850e(), null, false);
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (this.f8807u.f8805f == null || m7850e() == -1) {
                return false;
            }
            Objects.requireNonNull(this.f8807u.f8802c.f8822c);
            C2521a c2521a = this.f8807u;
            return ((View$OnClickListenerC2530g) c2521a.f8805f).m3478f(c2521a.f8802c, view, m7850e(), null, true);
        }
    }

    /* renamed from: e2.a$b */
    /* loaded from: classes-dex2jar.jar:e2/a$b.class */
    public interface AbstractC2523b {
    }

    public C2521a(View$OnClickListenerC2530g view$OnClickListenerC2530g, int i) {
        this.f8802c = view$OnClickListenerC2530g;
        this.f8803d = i;
        this.f8804e = view$OnClickListenerC2530g.f8822c.f8855f;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0562e
    /* renamed from: a */
    public int mo705a() {
        Objects.requireNonNull(this.f8802c.f8822c);
        return 0;
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [int[], int[][]] */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0562e
    /* renamed from: d */
    public void mo702d(View$OnClickListenerC2522a view$OnClickListenerC2522a, int i) {
        View$OnClickListenerC2522a view$OnClickListenerC2522a2 = view$OnClickListenerC2522a;
        View view = view$OnClickListenerC2522a2.f2224a;
        Objects.requireNonNull(this.f8802c.f8822c);
        int i2 = this.f8802c.f8822c.f8846K;
        view$OnClickListenerC2522a2.f2224a.setEnabled(true);
        int m1021c = C4350g.m1021c(this.f8802c.f8835p);
        if (m1021c == 1) {
            RadioButton radioButton = (RadioButton) view$OnClickListenerC2522a2.f8806t;
            View$OnClickListenerC2530g.C2531a c2531a = this.f8802c.f8822c;
            boolean z = c2531a.f8836A == i;
            int i3 = c2531a.f8865p;
            int m2765c = C3003b.m2765c(radioButton.getContext());
            C2803b.m2993d(radioButton, new ColorStateList(new int[]{new int[]{16842910, -16842912}, new int[]{16842910, 16842912}, new int[]{-16842910, -16842912}, new int[]{-16842910, 16842912}}, new int[]{C3003b.m2761g(radioButton.getContext(), C3681R.attr.colorControlNormal), i3, m2765c, m2765c}));
            radioButton.setChecked(z);
            radioButton.setEnabled(true);
        } else if (m1021c == 2) {
            CheckBox checkBox = (CheckBox) view$OnClickListenerC2522a2.f8806t;
            Objects.requireNonNull(this.f8802c);
            throw null;
        }
        Objects.requireNonNull(this.f8802c.f8822c);
        throw null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0562e
    /* renamed from: e */
    public View$OnClickListenerC2522a mo701e(ViewGroup viewGroup, int i) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(this.f8803d, viewGroup, false);
        View$OnClickListenerC2530g view$OnClickListenerC2530g = this.f8802c;
        Objects.requireNonNull(view$OnClickListenerC2530g.f8822c);
        Drawable m2759i = C3003b.m2759i(view$OnClickListenerC2530g.f8822c.f8850a, 2130969337);
        if (m2759i == null) {
            m2759i = C3003b.m2759i(view$OnClickListenerC2530g.getContext(), 2130969337);
        }
        inflate.setBackground(m2759i);
        return new View$OnClickListenerC2522a(inflate, this);
    }
}

package com.unknownphone.callblocker.p187e;

import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.p017a.C0438a;
import androidx.recyclerview.widget.RecyclerView;
import com.unknownphone.callblocker.custom.AbstractC5286f;
import com.unknownphone.callblocker.custom.C5287g;
import java.util.Date;
import java.util.List;
/* renamed from: com.unknownphone.callblocker.e.b */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/e/b.class */
public class C5297b extends RecyclerView.AbstractC0914a<RecyclerView.AbstractC0948x> {

    /* renamed from: a */
    private AbstractC5286f f22159a;

    /* renamed from: b */
    private AbstractC5286f f22160b;

    /* renamed from: c */
    private List<C5296a> f22161c;

    /* renamed from: com.unknownphone.callblocker.e.b$a */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/e/b$a.class */
    public static class C5298a extends RecyclerView.AbstractC0948x {

        /* renamed from: q */
        AppCompatTextView f22162q;

        /* renamed from: r */
        AppCompatTextView f22163r;

        /* renamed from: s */
        AppCompatTextView f22164s;

        /* renamed from: t */
        AppCompatButton f22165t;

        /* renamed from: u */
        AppCompatTextView f22166u;

        /* renamed from: v */
        AppCompatImageView f22167v;

        C5298a(View view, final AbstractC5286f abstractC5286f, final AbstractC5286f abstractC5286f2) {
            super(view);
            this.f22162q = (AppCompatTextView) view.findViewById(2131296721);
            this.f22163r = (AppCompatTextView) view.findViewById(2131296564);
            this.f22164s = (AppCompatTextView) view.findViewById(2131296577);
            this.f22165t = (AppCompatButton) view.findViewById(2131296423);
            this.f22166u = (AppCompatTextView) view.findViewById(2131296335);
            this.f22167v = (AppCompatImageView) view.findViewById(2131296334);
            this.f22165t.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.e.b.a.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    int e = C5298a.this.m18793e();
                    if (e == -1) {
                        return;
                    }
                    abstractC5286f.mo999a(e);
                }
            });
            view.findViewById(2131296412).setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.e.b.a.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    int e = C5298a.this.m18793e();
                    if (e == -1) {
                        return;
                    }
                    abstractC5286f2.mo999a(e);
                }
            });
        }
    }

    /* renamed from: com.unknownphone.callblocker.e.b$b */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/e/b$b.class */
    public static class C5301b extends RecyclerView.AbstractC0948x {
        C5301b(View view) {
            super(view);
        }
    }

    public C5297b(List<C5296a> list, AbstractC5286f abstractC5286f, AbstractC5286f abstractC5286f2) {
        this.f22159a = abstractC5286f;
        this.f22160b = abstractC5286f2;
        this.f22161c = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0914a
    /* renamed from: a */
    public int mo959a() {
        return this.f22161c == null ? 0 : this.f22161c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0914a
    /* renamed from: a */
    public int mo958a(int i) {
        return this.f22161c.get(i) == null ? 691 : 887;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0914a
    /* renamed from: a */
    public RecyclerView.AbstractC0948x mo957a(ViewGroup viewGroup, int i) {
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        return i == 887 ? new C5298a(from.inflate(2131493007, viewGroup, false), this.f22159a, this.f22160b) : new C5301b(from.inflate(2131493008, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0914a
    @SuppressLint({"RestrictedApi", "SetTextI18n"})
    /* renamed from: a */
    public void mo956a(RecyclerView.AbstractC0948x abstractC0948x, int i) {
        if (abstractC0948x instanceof C5301b) {
            return;
        }
        C5298a c5298a = (C5298a) abstractC0948x;
        C5296a c5296a = this.f22161c.get(i);
        c5298a.f22162q.setText(" " + C5287g.m1092a(abstractC0948x.f3183a.getContext(), new Date(c5296a.m1035b())));
        c5298a.f22163r.setText(c5296a.m1031d());
        c5298a.f22164s.setText(c5296a.m1030e());
        if (c5296a.m1031d().equalsIgnoreCase(abstractC0948x.f3183a.getContext().getString(2131755530))) {
            c5298a.f22163r.setTextColor(C0438a.m20892c(abstractC0948x.f3183a.getContext(), 2131099673));
        } else {
            c5298a.f22163r.setTextColor(C0438a.m20892c(abstractC0948x.f3183a.getContext(), 2131099852));
        }
        if (c5296a.m1032c() == 1) {
            c5298a.f22166u.setVisibility(4);
            c5298a.f22167v.setImageResource(2131230968);
            c5298a.f22167v.setSupportImageTintList(ColorStateList.valueOf(-1));
            c5298a.f22167v.setBackgroundResource(2131231022);
            c5298a.f22167v.setSupportBackgroundTintList(ColorStateList.valueOf(C0438a.m20892c(c5298a.f3183a.getContext(), 2131099673)));
        } else if (c5296a.m1032c() == 2) {
            c5298a.f22166u.setVisibility(4);
            c5298a.f22167v.setImageResource(2131230898);
            c5298a.f22167v.setSupportImageTintList(null);
            c5298a.f22167v.setBackgroundDrawable(null);
            c5298a.f22167v.setSupportBackgroundTintList(null);
        } else if (c5296a.m1032c() != 4) {
        } else {
            c5298a.f22166u.setText(String.valueOf(c5296a.m1029f()));
            c5298a.f22166u.setVisibility(0);
            c5298a.f22167v.setImageResource(2131230923);
            c5298a.f22167v.setSupportImageTintList(null);
            c5298a.f22167v.setBackgroundDrawable(null);
            c5298a.f22167v.setSupportBackgroundTintList(null);
        }
    }
}

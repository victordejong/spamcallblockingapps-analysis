package com.unknownphone.callblocker.p180a.p181a.p183b;

import android.annotation.SuppressLint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.p017a.C0438a;
import androidx.recyclerview.widget.RecyclerView;
import com.unknownphone.callblocker.custom.AbstractC5286f;
import com.unknownphone.callblocker.p187e.C5296a;
import java.util.List;
/* renamed from: com.unknownphone.callblocker.a.a.b.a */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/a/a/b/a.class */
public class C5171a extends RecyclerView.AbstractC0914a<RecyclerView.AbstractC0948x> {

    /* renamed from: a */
    private AbstractC5286f f21802a;

    /* renamed from: b */
    private List<Long> f21803b;

    /* renamed from: c */
    private List<C5296a> f21804c;

    /* renamed from: com.unknownphone.callblocker.a.a.b.a$a */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/a/a/b/a$a.class */
    public static class C5172a extends RecyclerView.AbstractC0948x {

        /* renamed from: q */
        AppCompatTextView f21805q;

        /* renamed from: r */
        AppCompatTextView f21806r;

        /* renamed from: s */
        AppCompatImageView f21807s;

        C5172a(View view, final AbstractC5286f abstractC5286f) {
            super(view);
            this.f21805q = (AppCompatTextView) view.findViewById(2131296564);
            this.f21807s = (AppCompatImageView) view.findViewById(2131296492);
            this.f21806r = (AppCompatTextView) view.findViewById(2131296577);
            view.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.a.a.b.a.a.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    int e = C5172a.this.m18793e();
                    if (e == -1) {
                        return;
                    }
                    abstractC5286f.mo999a(e);
                }
            });
        }
    }

    /* renamed from: com.unknownphone.callblocker.a.a.b.a$b */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/a/a/b/a$b.class */
    public static class C5174b extends RecyclerView.AbstractC0948x {
        C5174b(View view) {
            super(view);
        }
    }

    public C5171a(List<C5296a> list, List<Long> list2, AbstractC5286f abstractC5286f) {
        this.f21802a = abstractC5286f;
        this.f21803b = list2;
        this.f21804c = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0914a
    /* renamed from: a */
    public int mo959a() {
        return this.f21804c == null ? 0 : this.f21804c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0914a
    /* renamed from: a */
    public int mo958a(int i) {
        return this.f21804c.get(i) == null ? 691 : 887;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0914a
    /* renamed from: a */
    public RecyclerView.AbstractC0948x mo957a(ViewGroup viewGroup, int i) {
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        return i == 887 ? new C5172a(from.inflate(2131493014, viewGroup, false), this.f21802a) : new C5174b(from.inflate(2131493008, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0914a
    @SuppressLint({"RestrictedApi"})
    /* renamed from: a */
    public void mo956a(RecyclerView.AbstractC0948x abstractC0948x, int i) {
        if (abstractC0948x instanceof C5174b) {
            return;
        }
        C5172a c5172a = (C5172a) abstractC0948x;
        C5296a c5296a = this.f21804c.get(i);
        boolean contains = this.f21803b.contains(Long.valueOf(c5296a.m1040a()));
        c5172a.f21805q.setText(c5296a.m1031d());
        c5172a.f21806r.setText(c5296a.m1030e());
        c5172a.f21807s.setImageResource(contains ? 2131230900 : 2131230899);
        c5172a.f21805q.setTextColor(C0438a.m20892c(c5172a.f3183a.getContext(), contains ? 2131099852 : 2131099770));
        c5172a.f21805q.setTypeface(null, contains ? 1 : 2);
        c5172a.f21806r.setTypeface(null, contains ? 1 : 0);
    }
}

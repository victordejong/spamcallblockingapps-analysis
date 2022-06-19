package com.unknownphone.callblocker.p191i;

import android.annotation.SuppressLint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.unknownphone.callblocker.custom.AbstractC5286f;
import com.unknownphone.callblocker.custom.C5287g;
import java.util.Date;
import java.util.List;
import java.util.Locale;
/* renamed from: com.unknownphone.callblocker.i.a */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/i/a.class */
public class C5343a extends RecyclerView.AbstractC0914a<RecyclerView.AbstractC0948x> {

    /* renamed from: a */
    private AbstractC5286f f22278a;

    /* renamed from: b */
    private List<C5361c> f22279b;

    /* renamed from: c */
    private String f22280c;

    /* renamed from: d */
    private boolean f22281d;

    /* renamed from: com.unknownphone.callblocker.i.a$a */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/i/a$a.class */
    public static class C5344a extends RecyclerView.AbstractC0948x {

        /* renamed from: q */
        AppCompatTextView f22282q;

        /* renamed from: r */
        AppCompatTextView f22283r;

        C5344a(View view) {
            super(view);
            this.f22282q = (AppCompatTextView) view.findViewById(2131296330);
            this.f22283r = (AppCompatTextView) view.findViewById(2131296405);
        }
    }

    /* renamed from: com.unknownphone.callblocker.i.a$b */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/i/a$b.class */
    public static class C5345b extends RecyclerView.AbstractC0948x {

        /* renamed from: q */
        AppCompatTextView f22284q;

        C5345b(View view, String str, boolean z, final AbstractC5286f abstractC5286f) {
            super(view);
            this.f22284q = (AppCompatTextView) view.findViewById(2131296708);
            this.f22284q.setText(String.format(Locale.US, "%s (%s)", view.getContext().getString(2131755521), C5287g.m1076c(str)));
            view.findViewById(2131296433).setVisibility(z ? 8 : 0);
            view.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.i.a.b.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (C5345b.this.m18793e() == -1) {
                        return;
                    }
                    abstractC5286f.mo926a();
                }
            });
        }
    }

    public C5343a(List<C5361c> list, boolean z, AbstractC5286f abstractC5286f) {
        this.f22278a = abstractC5286f;
        this.f22281d = z;
        this.f22279b = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0914a
    /* renamed from: a */
    public int mo959a() {
        return this.f22279b == null ? 0 : this.f22279b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0914a
    /* renamed from: a */
    public int mo958a(int i) {
        return this.f22279b.get(i) == null ? 691 : 887;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0914a
    /* renamed from: a */
    public RecyclerView.AbstractC0948x mo957a(ViewGroup viewGroup, int i) {
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        return i == 887 ? new C5344a(from.inflate(2131493009, viewGroup, false)) : new C5345b(from.inflate(2131493010, viewGroup, false), this.f22280c, this.f22281d, this.f22278a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0914a
    @SuppressLint({"RestrictedApi"})
    /* renamed from: a */
    public void mo956a(RecyclerView.AbstractC0948x abstractC0948x, int i) {
        if (abstractC0948x instanceof C5345b) {
            return;
        }
        C5344a c5344a = (C5344a) abstractC0948x;
        C5361c c5361c = this.f22279b.get(i);
        c5344a.f22282q.setText(String.format(Locale.US, "%s %s %s", c5344a.f3183a.getContext().getString(2131755519), c5361c.m924b(), C5287g.m1092a(c5344a.f3183a.getContext(), new Date(c5361c.m925a() * 1000))));
        c5344a.f22283r.setText(c5361c.m923c().trim());
    }

    /* renamed from: a */
    public void m955a(String str) {
        this.f22280c = str;
    }
}

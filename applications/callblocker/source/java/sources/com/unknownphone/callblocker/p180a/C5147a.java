package com.unknownphone.callblocker.p180a;

import android.annotation.SuppressLint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.unknownphone.callblocker.custom.AbstractC5286f;
import java.util.List;
/* renamed from: com.unknownphone.callblocker.a.a */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/a/a.class */
public class C5147a extends RecyclerView.AbstractC0914a<RecyclerView.AbstractC0948x> {

    /* renamed from: a */
    private AbstractC5286f f21735a;

    /* renamed from: b */
    private List<C5207c> f21736b;

    /* renamed from: com.unknownphone.callblocker.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/a/a$a.class */
    public static class C5148a extends RecyclerView.AbstractC0948x {

        /* renamed from: q */
        AppCompatTextView f21737q;

        /* renamed from: r */
        AppCompatTextView f21738r;

        /* renamed from: s */
        AppCompatImageView f21739s;

        C5148a(View view, final AbstractC5286f abstractC5286f) {
            super(view);
            this.f21737q = (AppCompatTextView) view.findViewById(2131296564);
            this.f21739s = (AppCompatImageView) view.findViewById(2131296492);
            this.f21738r = (AppCompatTextView) view.findViewById(2131296577);
            view.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.a.a.a.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    int e = C5148a.this.m18793e();
                    if (e == -1) {
                        return;
                    }
                    abstractC5286f.mo999a(e);
                }
            });
        }
    }

    /* renamed from: com.unknownphone.callblocker.a.a$b */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/a/a$b.class */
    public static class C5150b extends RecyclerView.AbstractC0948x {
        C5150b(View view) {
            super(view);
        }
    }

    public C5147a(List<C5207c> list, AbstractC5286f abstractC5286f) {
        this.f21735a = abstractC5286f;
        this.f21736b = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0914a
    /* renamed from: a */
    public int mo959a() {
        return this.f21736b == null ? 0 : this.f21736b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0914a
    /* renamed from: a */
    public int mo958a(int i) {
        return this.f21736b.get(i) == null ? 691 : 887;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0914a
    /* renamed from: a */
    public RecyclerView.AbstractC0948x mo957a(ViewGroup viewGroup, int i) {
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        return i == 887 ? new C5148a(from.inflate(2131493006, viewGroup, false), this.f21735a) : new C5150b(from.inflate(2131493008, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0914a
    @SuppressLint({"RestrictedApi"})
    /* renamed from: a */
    public void mo956a(RecyclerView.AbstractC0948x abstractC0948x, int i) {
        if (abstractC0948x instanceof C5150b) {
            return;
        }
        C5148a c5148a = (C5148a) abstractC0948x;
        C5207c c5207c = this.f21736b.get(i);
        switch (c5207c.m1224b()) {
            case 0:
                c5148a.f21737q.setVisibility(8);
                c5148a.f21738r.setText(c5148a.f3183a.getContext().getString(2131755084, c5207c.m1221d()));
                c5148a.f21739s.setImageResource(2131230960);
                return;
            case 1:
                c5148a.f21737q.setVisibility(0);
                c5148a.f21737q.setText(c5207c.m1222c());
                c5148a.f21738r.setText(c5207c.m1221d());
                c5148a.f21739s.setImageResource(2131230958);
                return;
            case 2:
                c5148a.f21737q.setVisibility(8);
                c5148a.f21738r.setText(c5207c.m1221d());
                c5148a.f21739s.setImageResource(2131230922);
                return;
            case 3:
                c5148a.f21737q.setVisibility(0);
                c5148a.f21737q.setText(c5207c.m1222c());
                c5148a.f21738r.setText(c5207c.m1221d());
                c5148a.f21739s.setImageResource(2131230898);
                return;
            default:
                return;
        }
    }
}

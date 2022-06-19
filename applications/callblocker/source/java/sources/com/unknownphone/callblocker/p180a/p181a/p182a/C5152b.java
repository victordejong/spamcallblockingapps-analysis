package com.unknownphone.callblocker.p180a.p181a.p182a;

import android.annotation.SuppressLint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.ComponentCallbacks2C1361c;
import com.bumptech.glide.p073f.C1422e;
import com.unknownphone.callblocker.custom.AbstractC5286f;
import java.util.List;
/* renamed from: com.unknownphone.callblocker.a.a.a.b */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/a/a/a/b.class */
public class C5152b extends RecyclerView.AbstractC0914a<RecyclerView.AbstractC0948x> {

    /* renamed from: a */
    private AbstractC5286f f21747a;

    /* renamed from: b */
    private List<C5151a> f21748b;

    /* renamed from: com.unknownphone.callblocker.a.a.a.b$a */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/a/a/a/b$a.class */
    public static class C5153a extends RecyclerView.AbstractC0948x {

        /* renamed from: q */
        AppCompatTextView f21749q;

        /* renamed from: r */
        AppCompatTextView f21750r;

        /* renamed from: s */
        AppCompatImageView f21751s;

        C5153a(View view, final AbstractC5286f abstractC5286f) {
            super(view);
            this.f21749q = (AppCompatTextView) view.findViewById(2131296564);
            this.f21751s = (AppCompatImageView) view.findViewById(2131296492);
            this.f21750r = (AppCompatTextView) view.findViewById(2131296577);
            this.f21750r.setVisibility(8);
            view.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.a.a.a.b.a.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    int e = C5153a.this.m18793e();
                    if (e == -1) {
                        return;
                    }
                    abstractC5286f.mo999a(e);
                }
            });
        }
    }

    public C5152b(List<C5151a> list, AbstractC5286f abstractC5286f) {
        this.f21747a = abstractC5286f;
        this.f21748b = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0914a
    /* renamed from: a */
    public int mo959a() {
        return this.f21748b == null ? 0 : this.f21748b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0914a
    /* renamed from: a */
    public RecyclerView.AbstractC0948x mo957a(ViewGroup viewGroup, int i) {
        return new C5153a(LayoutInflater.from(viewGroup.getContext()).inflate(2131493012, viewGroup, false), this.f21747a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0914a
    @SuppressLint({"RestrictedApi"})
    /* renamed from: a */
    public void mo956a(RecyclerView.AbstractC0948x abstractC0948x, int i) {
        C5153a c5153a = (C5153a) abstractC0948x;
        C5151a c5151a = this.f21748b.get(i);
        c5153a.f21749q.setText(c5151a.m1312a(c5153a.f3183a.getContext()));
        c5153a.f21750r.setText(c5151a.m1310b());
        if (c5151a.m1313a() == null || c5151a.m1313a().isEmpty()) {
            c5153a.f21751s.setImageDrawable(c5151a.m1309b(c5153a.f3183a.getContext()));
        } else {
            ComponentCallbacks2C1361c.m17302b(c5153a.f21751s.getContext()).m16959a(c5151a.m1313a()).m17045a(C1422e.m17151a()).m17051a((ImageView) c5153a.f21751s).mo17187c(c5151a.m1309b(c5153a.f3183a.getContext()));
        }
    }
}

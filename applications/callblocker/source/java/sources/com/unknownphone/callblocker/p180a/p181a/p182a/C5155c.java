package com.unknownphone.callblocker.p180a.p181a.p182a;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.p017a.C0438a;
import androidx.fragment.app.Fragment;
import com.bumptech.glide.ComponentCallbacks2C1361c;
import com.bumptech.glide.p073f.C1422e;
import com.google.android.material.snackbar.Snackbar;
import com.unknownphone.callblocker.activity.ReportActivity;
import com.unknownphone.callblocker.p180a.C5181b;
import com.unknownphone.callblocker.p180a.C5207c;
import com.unknownphone.callblocker.p186d.C5290b;
import com.unknownphone.callblocker.p188f.AbstractC5328a;
import com.unknownphone.callblocker.p191i.C5347b;
import java.util.Locale;
/* renamed from: com.unknownphone.callblocker.a.a.a.c */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/a/a/a/c.class */
public class C5155c extends Fragment {

    /* renamed from: a */
    private AbstractC5328a f21754a;

    /* renamed from: ae */
    private AppCompatButton f21755ae;

    /* renamed from: af */
    private AppCompatButton f21756af;

    /* renamed from: ag */
    private AppCompatTextView f21757ag;

    /* renamed from: ah */
    private AppCompatTextView f21758ah;

    /* renamed from: ai */
    private C5151a f21759ai;

    /* renamed from: b */
    private AppCompatImageButton f21760b;

    /* renamed from: c */
    private AppCompatImageButton f21761c;

    /* renamed from: d */
    private C5290b f21762d;

    /* renamed from: e */
    private AppCompatImageView f21763e;

    /* renamed from: f */
    private AppCompatButton f21764f;

    /* renamed from: g */
    private AppCompatButton f21765g;

    /* renamed from: h */
    private AppCompatButton f21766h;

    /* renamed from: i */
    private AppCompatTextView f21767i;

    /* renamed from: a */
    public static C5155c m1306a(AbstractC5328a abstractC5328a, C5151a c5151a) {
        C5155c c5155c = new C5155c();
        c5155c.f21754a = abstractC5328a;
        c5155c.f21759ai = c5151a;
        return c5155c;
    }

    /* renamed from: b */
    public void m1305b(Context context) {
        C5207c c5207c = new C5207c();
        c5207c.m1225a((short) 1);
        c5207c.m1226a(this.f21759ai.m1312a(context));
        c5207c.m1223b(this.f21759ai.m1310b());
        this.f21762d.m1063a(c5207c);
        this.f21754a.mo984d(2);
        this.f21754a.mo986a(2131296528, C5181b.m1256a(this.f21754a), true);
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public View mo850a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131492947, viewGroup, false);
        this.f21764f = (AppCompatButton) inflate.findViewById(2131296616);
        this.f21765g = (AppCompatButton) inflate.findViewById(2131296635);
        this.f21766h = (AppCompatButton) inflate.findViewById(2131296684);
        this.f21755ae = (AppCompatButton) inflate.findViewById(2131296498);
        this.f21760b = (AppCompatImageButton) inflate.findViewById(2131296392);
        this.f21756af = (AppCompatButton) inflate.findViewById(2131296651);
        this.f21761c = (AppCompatImageButton) inflate.findViewById(2131296333);
        this.f21767i = (AppCompatTextView) inflate.findViewById(2131296577);
        this.f21763e = (AppCompatImageView) inflate.findViewById(2131296492);
        this.f21757ag = (AppCompatTextView) inflate.findViewById(2131296724);
        this.f21758ah = (AppCompatTextView) inflate.findViewById(2131296501);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: a */
    public void mo849a(View view, Bundle bundle) {
        this.f21762d = new C5290b(view.getContext());
        this.f21757ag.setText(this.f21759ai.m1312a(view.getContext()));
        this.f21758ah.setText(2131755534);
        this.f21767i.setText(this.f21759ai.m1310b());
        if (this.f21759ai.m1313a() == null || this.f21759ai.m1313a().isEmpty()) {
            this.f21763e.setImageDrawable(this.f21759ai.m1311a(view.getContext(), Color.parseColor("#004f4d"), C0438a.m20892c(view.getContext(), 2131099851), 20));
        } else {
            ComponentCallbacks2C1361c.m17302b(this.f21763e.getContext()).m16959a(this.f21759ai.m1313a()).m17045a(C1422e.m17151a()).m17051a((ImageView) this.f21763e).mo17187c(this.f21759ai.m1311a(view.getContext(), Color.parseColor("#004f4d"), C0438a.m20892c(view.getContext(), 2131099851), 20));
        }
        this.f21761c.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.a.a.a.c.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (C5155c.this.m19922r() != null) {
                    C5155c.this.m19922r().onBackPressed();
                }
            }
        });
        this.f21760b.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.a.a.a.c.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                C5155c.this.f21754a.mo984d(2);
            }
        });
        this.f21764f.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.a.a.a.c.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                C5155c.this.f21754a.mo984d(2);
                Intent intent = new Intent(C5155c.this.m19922r(), ReportActivity.class);
                intent.putExtra("number", C5155c.this.f21759ai.m1310b());
                C5155c.this.m19989a(intent);
            }
        });
        this.f21756af.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.a.a.a.c.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                Intent intent = new Intent();
                intent.setAction("android.intent.action.SEND");
                intent.putExtra("android.intent.extra.TEXT", String.format(Locale.US, "%s: %s", C5155c.this.f21759ai.m1312a(view2.getContext()), C5155c.this.f21759ai.m1310b()));
                intent.setType("text/plain");
                if (intent.resolveActivity(view2.getContext().getPackageManager()) != null) {
                    C5155c.this.m19989a(intent);
                } else {
                    Snackbar.m2494a(view2, C5155c.this.m19959b(2131755173), -1).mo2491d();
                }
            }
        });
        this.f21765g.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.a.a.a.c.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                try {
                    C5155c.this.f21754a.mo986a(2131296532, C5347b.m948a(C5155c.this.f21754a, C5155c.this.f21759ai.m1310b()), true);
                } catch (NullPointerException e) {
                }
            }
        });
        this.f21755ae.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.a.a.a.c.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                Intent intent = new Intent("android.intent.action.SENDTO");
                intent.setData(Uri.parse("mailto:"));
                intent.putExtra("android.intent.extra.TEXT", C5155c.this.m19959b(2131755166));
                if (intent.resolveActivity(view2.getContext().getPackageManager()) != null) {
                    C5155c.this.m19989a(intent);
                } else {
                    Snackbar.m2494a(view2, C5155c.this.m19959b(2131755165), -1).mo2491d();
                }
            }
        });
        this.f21766h.setOnClickListener(new View.OnClickListener() { // from class: com.unknownphone.callblocker.a.a.a.c.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                C5155c.this.m1305b(view2.getContext());
            }
        });
    }
}

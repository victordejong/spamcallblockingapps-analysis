package p193e.p194a.p1011l.p1013c.p1014a;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.ghost_call.ScheduleDuration;
import e.m.a.g.e.e;
import s1.s;
import s1.z.b.l;
/* renamed from: e.a.l.c.a.a */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/a.class */
public final class C16627a extends e {

    /* renamed from: a */
    public TextView f46715a;

    /* renamed from: b */
    public TextView f46716b;

    /* renamed from: c */
    public TextView f46717c;

    /* renamed from: d */
    public TextView f46718d;

    /* renamed from: e */
    public TextView f46719e;

    /* renamed from: f */
    public final l<ScheduleDuration, s> f46720f;

    /* renamed from: e.a.l.c.a.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/l/c/a/a$a.class */
    public static final class View$OnClickListenerC16628a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f46721a;

        /* renamed from: b */
        public final /* synthetic */ Object f46722b;

        public View$OnClickListenerC16628a(int i, Object obj) {
            this.f46721a = i;
            this.f46722b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f46721a;
            if (i == 0) {
                Dialog dialog = ((C16627a) this.f46722b).getDialog();
                if (dialog != null) {
                    dialog.dismiss();
                }
                ((C16627a) this.f46722b).f46720f.d(ScheduleDuration.IMMEDIATE);
            } else if (i == 1) {
                Dialog dialog2 = ((C16627a) this.f46722b).getDialog();
                if (dialog2 != null) {
                    dialog2.dismiss();
                }
                ((C16627a) this.f46722b).f46720f.d(ScheduleDuration.TEN_SECONDS);
            } else if (i == 2) {
                Dialog dialog3 = ((C16627a) this.f46722b).getDialog();
                if (dialog3 != null) {
                    dialog3.dismiss();
                }
                ((C16627a) this.f46722b).f46720f.d(ScheduleDuration.ONE_MINUTE);
            } else if (i == 3) {
                Dialog dialog4 = ((C16627a) this.f46722b).getDialog();
                if (dialog4 != null) {
                    dialog4.dismiss();
                }
                ((C16627a) this.f46722b).f46720f.d(ScheduleDuration.FIVE_MINUTES);
            } else if (i != 4) {
                throw null;
            } else {
                Dialog dialog5 = ((C16627a) this.f46722b).getDialog();
                if (dialog5 != null) {
                    dialog5.dismiss();
                }
                ((C16627a) this.f46722b).f46720f.d(ScheduleDuration.THIRTY_MINUTES);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C16627a(l<? super ScheduleDuration, s> lVar) {
        s1.z.c.l.e(lVar, "listener");
        this.f46720f = lVar;
    }

    public void onCreate(Bundle bundle) {
        C16627a.super.onCreate(bundle);
        setStyle(2, 2131952216);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C2752R.layout.bottom_sheet_ghost_call_schedul_selection, viewGroup, false);
        View findViewById = inflate.findViewById(C2752R.C2754id.immediate);
        s1.z.c.l.d(findViewById, "view.findViewById(R.id.immediate)");
        this.f46715a = (TextView) findViewById;
        View findViewById2 = inflate.findViewById(C2752R.C2754id.tenSeconds);
        s1.z.c.l.d(findViewById2, "view.findViewById(R.id.tenSeconds)");
        this.f46716b = (TextView) findViewById2;
        View findViewById3 = inflate.findViewById(C2752R.C2754id.oneMinute);
        s1.z.c.l.d(findViewById3, "view.findViewById(R.id.oneMinute)");
        this.f46717c = (TextView) findViewById3;
        View findViewById4 = inflate.findViewById(C2752R.C2754id.fiveMinutes);
        s1.z.c.l.d(findViewById4, "view.findViewById(R.id.fiveMinutes)");
        this.f46718d = (TextView) findViewById4;
        View findViewById5 = inflate.findViewById(C2752R.C2754id.thirtyMinutes);
        s1.z.c.l.d(findViewById5, "view.findViewById(R.id.thirtyMinutes)");
        this.f46719e = (TextView) findViewById5;
        s1.z.c.l.d(inflate, ViewAction.VIEW);
        return inflate;
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C16627a.super.onViewCreated(view, bundle);
        TextView textView = this.f46715a;
        if (textView == null) {
            s1.z.c.l.l("immediateTextView");
            throw null;
        }
        textView.setOnClickListener(new View$OnClickListenerC16628a(0, this));
        TextView textView2 = this.f46716b;
        if (textView2 == null) {
            s1.z.c.l.l("tenSecondsTextView");
            throw null;
        }
        textView2.setOnClickListener(new View$OnClickListenerC16628a(1, this));
        TextView textView3 = this.f46717c;
        if (textView3 == null) {
            s1.z.c.l.l("oneMinuteTextView");
            throw null;
        }
        textView3.setOnClickListener(new View$OnClickListenerC16628a(2, this));
        TextView textView4 = this.f46718d;
        if (textView4 == null) {
            s1.z.c.l.l("fiveMinutesTextView");
            throw null;
        }
        textView4.setOnClickListener(new View$OnClickListenerC16628a(3, this));
        TextView textView5 = this.f46719e;
        if (textView5 != null) {
            textView5.setOnClickListener(new View$OnClickListenerC16628a(4, this));
        } else {
            s1.z.c.l.l("thirtyMinutesTextView");
            throw null;
        }
    }
}

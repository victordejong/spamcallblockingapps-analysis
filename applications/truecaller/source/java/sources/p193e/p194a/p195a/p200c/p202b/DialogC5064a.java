package p193e.p194a.p195a.p200c.p202b;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.TextView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import java.util.Calendar;
import java.util.Objects;
import p1727n3.p1734b.p1735a.DialogC25424p;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1114o5.AbstractC18951b0;
import s1.s;
import s1.z.b.l;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.a.c.b.a */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/b/a.class */
public final class DialogC5064a extends DialogC25424p {

    /* renamed from: c */
    public AbstractC18951b0 f17343c;

    /* renamed from: d */
    public b f17344d;

    /* renamed from: e */
    public final l<b, s> f17345e;

    /* renamed from: e.a.a.c.b.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/a/c/b/a$a.class */
    public static final class View$OnClickListenerC5065a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f17346a;

        /* renamed from: b */
        public final /* synthetic */ Object f17347b;

        public View$OnClickListenerC5065a(int i, Object obj) {
            this.f17346a = i;
            this.f17347b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f17346a;
            if (i == 0) {
                ((DialogC5064a) this.f17347b).dismiss();
            } else if (i != 1) {
                throw null;
            } else {
                DialogC5064a dialogC5064a = (DialogC5064a) this.f17347b;
                b bVar = dialogC5064a.f17344d;
                if (bVar != null) {
                    dialogC5064a.f17345e.d(bVar);
                }
                ((DialogC5064a) this.f17347b).dismiss();
            }
        }
    }

    /* renamed from: e.a.a.c.b.a$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/b/a$b.class */
    public static final class C5066b implements DatePicker.OnDateChangedListener {

        /* renamed from: b */
        public final /* synthetic */ Calendar f17349b;

        /* renamed from: c */
        public final /* synthetic */ TextView f17350c;

        public C5066b(Calendar calendar, TextView textView) {
            DialogC5064a.this = r4;
            this.f17349b = calendar;
            this.f17350c = textView;
        }

        @Override // android.widget.DatePicker.OnDateChangedListener
        public final void onDateChanged(DatePicker datePicker, int i, int i2, int i3) {
            this.f17349b.set(1, i);
            this.f17349b.set(2, i2);
            this.f17349b.set(5, i3);
            DialogC5064a dialogC5064a = DialogC5064a.this;
            Calendar calendar = this.f17349b;
            s1.z.c.l.d(calendar, "calendar");
            dialogC5064a.f17344d = new b(calendar.getTime());
            TextView textView = this.f17350c;
            s1.z.c.l.d(textView, "title");
            DialogC5064a dialogC5064a2 = DialogC5064a.this;
            b bVar = dialogC5064a2.f17344d;
            textView.setText(bVar != null ? dialogC5064a2.m33907d(bVar) : null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogC5064a(Context context, l<? super b, s> lVar) {
        super(context, 2131952119);
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(lVar, "listener");
        this.f17345e = lVar;
    }

    /* renamed from: d */
    public final String m33907d(b bVar) {
        AbstractC18951b0 abstractC18951b0 = this.f17343c;
        if (abstractC18951b0 != null) {
            return abstractC18951b0.mo14275t(((e) bVar).a, "MMMM dd, YYYY");
        }
        s1.z.c.l.l("dateHelper");
        throw null;
    }

    @Override // p1727n3.p1734b.p1735a.DialogC25424p, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View inflate = View.inflate(getContext(), C2752R.layout.dialog_search_conversation_date_picker, null);
        setContentView(inflate);
        Context context = getContext();
        s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC18951b0 mo12399e7 = ((AbstractC21187w1) applicationContext).mo10154s().mo12399e7();
        s1.z.c.l.d(mo12399e7, "(context.applicationCont…objectsGraph.dateHelper()");
        this.f17343c = mo12399e7;
        TextView textView = (TextView) inflate.findViewById(2131366469);
        s1.z.c.l.d(textView, "title");
        AbstractC18951b0 abstractC18951b0 = this.f17343c;
        if (abstractC18951b0 == null) {
            s1.z.c.l.l("dateHelper");
            throw null;
        }
        textView.setText(m33907d(abstractC18951b0.mo14285j()));
        DatePicker datePicker = (DatePicker) inflate.findViewById(C2752R.C2754id.datePicker);
        AbstractC18951b0 abstractC18951b02 = this.f17343c;
        if (abstractC18951b02 == null) {
            s1.z.c.l.l("dateHelper");
            throw null;
        }
        b mo14285j = abstractC18951b02.mo14285j();
        s1.z.c.l.d(datePicker, "datePicker");
        datePicker.setMaxDate(((e) mo14285j).a);
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        s1.z.c.l.d(calendar, "calendar");
        this.f17344d = new b(calendar.getTime());
        datePicker.init(mo14285j.u(), mo14285j.t(), mo14285j.q(), new C5066b(calendar, textView));
        ((Button) inflate.findViewById(2131364900)).setOnClickListener(new View$OnClickListenerC5065a(0, this));
        ((Button) inflate.findViewById(2131365194)).setOnClickListener(new View$OnClickListenerC5065a(1, this));
    }
}

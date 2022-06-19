package p193e.p194a.p1011l.p1013c.p1014a;

import android.graphics.Typeface;
import android.net.Uri;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.FragmentManager;
import com.google.android.material.textfield.TextInputLayout;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.ghost_call.ScheduleDuration;
import com.truecaller.premium.p173ui.countdown.CountDownTextView;
import java.util.Objects;
import p193e.p194a.p1011l.p1033v2.p1034f.AbstractC17259b;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1349x.C21345i;
import p193e.p194a.p1406z3.C21853e;
import s1.f0.v;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
import w3.b.a.b;
import w3.b.a.e0.e;
import w3.b.a.i0.n;
/* renamed from: e.a.l.c.a.b */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/b.class */
public final class C16633b extends AbstractC16668g implements AbstractC16671g1 {

    /* renamed from: d */
    public final CountDownTextView f46730d;

    /* renamed from: e */
    public final ImageView f46731e;

    /* renamed from: f */
    public final ImageView f46732f;

    /* renamed from: g */
    public final EditText f46733g;

    /* renamed from: h */
    public final TextInputLayout f46734h;

    /* renamed from: i */
    public final TextInputLayout f46735i;

    /* renamed from: j */
    public final EditText f46736j;

    /* renamed from: k */
    public final EditText f46737k;

    /* renamed from: l */
    public final TextView f46738l;

    /* renamed from: m */
    public final TextView f46739m;

    /* renamed from: n */
    public final TextView f46740n;

    /* renamed from: o */
    public final l<ScheduleDuration, s> f46741o = new C16637d();

    /* renamed from: p */
    public final AbstractC18905m f46742p;

    /* renamed from: e.a.l.c.a.b$a */
    /* loaded from: classes3-dex2jar.jar:e/a/l/c/a/b$a.class */
    public static final class View$OnClickListenerC16634a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f46743a;

        /* renamed from: b */
        public final /* synthetic */ Object f46744b;

        public View$OnClickListenerC16634a(int i, Object obj) {
            this.f46743a = i;
            this.f46744b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f46743a;
            if (i != 0) {
                if (i == 1) {
                    C16633b c16633b = (C16633b) this.f46744b;
                    AbstractC18905m abstractC18905m = c16633b.f46742p;
                    TextView textView = c16633b.f46739m;
                    s1.z.c.l.d(textView, "btnCancelCall");
                    abstractC18905m.mo14327t(new C18900h("ItemEvent.CANCEL_CALL", c16633b, textView, Integer.valueOf(((C16633b) this.f46744b).getAdapterPosition())));
                    return;
                } else if (i != 2) {
                    if (i != 3) {
                        throw null;
                    }
                    C16633b c16633b2 = (C16633b) this.f46744b;
                    c16633b2.f46742p.mo14327t(new C18900h("ItemEvent.EDIT_CONTACT_AVATAR", c16633b2, (View) null, (Object) null, 12));
                    return;
                } else {
                    C16633b c16633b3 = (C16633b) this.f46744b;
                    AbstractC18905m abstractC18905m2 = c16633b3.f46742p;
                    TextView textView2 = c16633b3.f46740n;
                    s1.z.c.l.d(textView2, "btnPickContact");
                    abstractC18905m2.mo14327t(new C18900h("ItemEvent.PICK_CONTACT", c16633b3, textView2, Integer.valueOf(((C16633b) this.f46744b).getAdapterPosition())));
                    return;
                }
            }
            C16633b c16633b4 = (C16633b) this.f46744b;
            EditText editText = c16633b4.f46737k;
            s1.z.c.l.d(editText, "contactPhone");
            Editable text = editText.getText();
            s1.z.c.l.d(text, "contactPhone.text");
            editText.setText(v.g0(text));
            EditText editText2 = c16633b4.f46736j;
            s1.z.c.l.d(editText2, "contactName");
            Editable text2 = editText2.getText();
            s1.z.c.l.d(text2, "contactName.text");
            editText2.setText(v.g0(text2));
            EditText editText3 = c16633b4.f46737k;
            s1.z.c.l.d(editText3, "contactPhone");
            String obj = editText3.getText().toString();
            EditText editText4 = c16633b4.f46736j;
            s1.z.c.l.d(editText4, "contactName");
            String obj2 = editText4.getText().toString();
            EditText editText5 = c16633b4.f46733g;
            s1.z.c.l.d(editText5, "durationPicker");
            Object tag = editText5.getTag();
            Objects.requireNonNull(tag, "null cannot be cast to non-null type com.truecaller.ghost_call.ScheduleDuration");
            ScheduleDuration scheduleDuration = (ScheduleDuration) tag;
            ImageView imageView = c16633b4.f46731e;
            s1.z.c.l.d(imageView, "avatar");
            String str = (String) imageView.getTag();
            s1.z.c.l.e(scheduleDuration, "$this$toTimeInFuture");
            b C = new b().C(scheduleDuration.getTimeUnit().toMillis(scheduleDuration.getDelay()));
            s1.z.c.l.d(C, "DateTime.now().plus(timeUnit.toMillis(delay))");
            C21345i c21345i = new C21345i(obj, obj2, str, scheduleDuration, ((e) C).a, Integer.valueOf(c16633b4.getAdapterPosition()));
            AbstractC18905m abstractC18905m3 = c16633b4.f46742p;
            TextView textView3 = c16633b4.f46738l;
            s1.z.c.l.d(textView3, "btnScheduleCall");
            abstractC18905m3.mo14327t(new C18900h("ItemEvent.SCHEDULE_CALL", c16633b4, textView3, c21345i));
            c16633b4.f46737k.clearFocus();
            c16633b4.f46736j.clearFocus();
            TextView textView4 = c16633b4.f46738l;
            s1.z.c.l.d(textView4, "btnScheduleCall");
            C19286f.m13679Y(textView4, false, 0L, 2);
        }
    }

    /* renamed from: e.a.l.c.a.b$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/b$b.class */
    public static final class View$OnClickListenerC16635b implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ FragmentManager f46746b;

        public View$OnClickListenerC16635b(FragmentManager fragmentManager) {
            C16633b.this = r4;
            this.f46746b = fragmentManager;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C16627a c16627a = new C16627a(C16633b.this.f46741o);
            FragmentManager fragmentManager = this.f46746b;
            s1.z.c.l.e(fragmentManager, "fragmentManager");
            c16627a.show(fragmentManager, "SCHEDULED_DURATION_BOTTOM_SHEET");
        }
    }

    /* renamed from: e.a.l.c.a.b$c */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/b$c.class */
    public static final class C16636c extends m implements l<AbstractC17259b, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16636c() {
            super(1);
            C16633b.this = r4;
        }

        /* renamed from: d */
        public Object m17163d(Object obj) {
            AbstractC17259b abstractC17259b = (AbstractC17259b) obj;
            s1.z.c.l.e(abstractC17259b, "it");
            C16633b c16633b = C16633b.this;
            Objects.requireNonNull(c16633b);
            if (s1.z.c.l.a(abstractC17259b, AbstractC17259b.C17261b.f48416a)) {
                c16633b.mo17134q3();
            }
            return s.a;
        }
    }

    /* renamed from: e.a.l.c.a.b$d */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/b$d.class */
    public static final class C16637d extends m implements l<ScheduleDuration, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16637d() {
            super(1);
            C16633b.this = r4;
        }

        /* renamed from: d */
        public Object m17162d(Object obj) {
            ScheduleDuration scheduleDuration = (ScheduleDuration) obj;
            s1.z.c.l.e(scheduleDuration, "scheduled");
            C16633b c16633b = C16633b.this;
            AbstractC18905m abstractC18905m = c16633b.f46742p;
            EditText editText = c16633b.f46733g;
            s1.z.c.l.d(editText, "durationPicker");
            abstractC18905m.mo14327t(new C18900h("ItemEvent.DURATION_CHANGED", c16633b, editText, scheduleDuration));
            C16633b.this.mo17136D4(scheduleDuration);
            return s.a;
        }
    }

    /* renamed from: e.a.l.c.a.b$e */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/b$e.class */
    public static final class C16638e extends m implements l<Editable, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16638e() {
            super(1);
            C16633b.this = r4;
        }

        /* renamed from: d */
        public Object m17161d(Object obj) {
            Editable editable = (Editable) obj;
            TextInputLayout textInputLayout = C16633b.this.f46734h;
            s1.z.c.l.d(textInputLayout, "contactPhoneTextInputLayout");
            textInputLayout.setError(null);
            textInputLayout.setErrorEnabled(false);
            return s.a;
        }
    }

    /* renamed from: e.a.l.c.a.b$f */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/b$f.class */
    public static final class C16639f extends m implements l<Editable, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16639f() {
            super(1);
            C16633b.this = r4;
        }

        /* renamed from: d */
        public Object m17160d(Object obj) {
            Editable editable = (Editable) obj;
            TextInputLayout textInputLayout = C16633b.this.f46735i;
            s1.z.c.l.d(textInputLayout, "contactNameTextInputLayout");
            textInputLayout.setError(null);
            textInputLayout.setErrorEnabled(false);
            return s.a;
        }
    }

    /* renamed from: e.a.l.c.a.b$g */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/b$g.class */
    public static final class View$OnClickListenerC16640g implements View.OnClickListener {
        public View$OnClickListenerC16640g() {
            C16633b.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C16633b c16633b = C16633b.this;
            c16633b.f46742p.mo14327t(new C18900h("ItemEvent.EDIT_CONTACT_AVATAR", c16633b, (View) null, (Object) null, 12));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16633b(View view, AbstractC18905m abstractC18905m, FragmentManager fragmentManager) {
        super(view, abstractC18905m);
        s1.z.c.l.e(view, ViewAction.VIEW);
        s1.z.c.l.e(abstractC18905m, "itemEventReceiver");
        s1.z.c.l.e(fragmentManager, "fragmentManager");
        this.f46742p = abstractC18905m;
        CountDownTextView countDownTextView = (CountDownTextView) view.findViewById(C2752R.C2754id.callingTimer);
        this.f46730d = countDownTextView;
        this.f46731e = (ImageView) view.findViewById(2131362231);
        ImageView imageView = (ImageView) view.findViewById(2131363445);
        this.f46732f = imageView;
        EditText editText = (EditText) view.findViewById(C2752R.C2754id.durationPicker);
        this.f46733g = editText;
        this.f46734h = (TextInputLayout) view.findViewById(C2752R.C2754id.contactPhoneTextInputLayout);
        this.f46735i = (TextInputLayout) view.findViewById(C2752R.C2754id.contactNameTextInputLayout);
        this.f46736j = (EditText) view.findViewById(C2752R.C2754id.contactNameEditText);
        EditText editText2 = (EditText) view.findViewById(C2752R.C2754id.contactPhoneEditText);
        this.f46737k = editText2;
        TextView textView = (TextView) view.findViewById(C2752R.C2754id.scheduleCall);
        this.f46738l = textView;
        TextView textView2 = (TextView) view.findViewById(C2752R.C2754id.cancelCall);
        this.f46739m = textView2;
        TextView textView3 = (TextView) view.findViewById(C2752R.C2754id.pickContact);
        this.f46740n = textView3;
        s1.z.c.l.d(editText2, "contactPhone");
        editText2.setImeOptions(6);
        textView.setOnClickListener(new View$OnClickListenerC16634a(0, this));
        textView2.setOnClickListener(new View$OnClickListenerC16634a(1, this));
        textView3.setOnClickListener(new View$OnClickListenerC16634a(2, this));
        imageView.setOnClickListener(new View$OnClickListenerC16634a(3, this));
        editText.setOnClickListener(new View$OnClickListenerC16635b(fragmentManager));
        s1.z.c.l.d(editText, "durationPicker");
        editText.setTag(ScheduleDuration.IMMEDIATE);
        countDownTextView.setOnCountDownTimerStateListener(new C16636c());
        countDownTextView.setTimerFontFamily(Typeface.create("sans-serif-medium", 0));
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16671g1
    /* renamed from: B3 */
    public void mo17137B3(long j) {
        TextView textView = this.f46738l;
        s1.z.c.l.d(textView, "btnScheduleCall");
        C19286f.m13689O(textView);
        TextView textView2 = this.f46740n;
        s1.z.c.l.d(textView2, "btnPickContact");
        C19286f.m13689O(textView2);
        TextView textView3 = this.f46739m;
        s1.z.c.l.d(textView3, "btnCancelCall");
        C19286f.m13684T(textView3);
        CountDownTextView countDownTextView = this.f46730d;
        s1.z.c.l.d(countDownTextView, "callingTimer");
        C19286f.m13684T(countDownTextView);
        CountDownTextView countDownTextView2 = this.f46730d;
        n nVar = new n();
        nVar.b = 4;
        nVar.a = 2;
        nVar.b(5);
        nVar.c(StringConstant.COLON, StringConstant.COLON, (String[]) null, true, true);
        nVar.b = 4;
        nVar.a = 2;
        nVar.b(6);
        w3.b.a.i0.m g = nVar.g();
        s1.z.c.l.d(g, "PeriodFormatterBuilder()…ndSeconds().toFormatter()");
        countDownTextView2.setPeriodFormatter(g);
        this.f46730d.m34808h1(j);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16671g1
    /* renamed from: D4 */
    public void mo17136D4(ScheduleDuration scheduleDuration) {
        s1.z.c.l.e(scheduleDuration, "scheduledDuration");
        EditText editText = this.f46733g;
        s1.z.c.l.d(editText, "durationPicker");
        editText.setTag(scheduleDuration);
        EditText editText2 = this.f46733g;
        s1.z.c.l.d(editText2, "durationPicker");
        View view = this.itemView;
        s1.z.c.l.d(view, "itemView");
        editText2.setText(new SpannableStringBuilder(view.getResources().getString(scheduleDuration.getTitleRes())));
        this.f46733g.requestLayout();
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16671g1
    /* renamed from: L4 */
    public void mo17135L4(String str) {
        ImageView imageView;
        boolean z = true;
        if (str != null) {
            s1.z.c.l.d(this.f46731e, "avatar");
            if (!s1.z.c.l.a(imageView.getTag(), str)) {
                AbstractC18905m abstractC18905m = this.f46742p;
                EditText editText = this.f46737k;
                s1.z.c.l.d(editText, "contactPhone");
                abstractC18905m.mo14327t(new C18900h("ItemEvent.PICTURE_CHANGED", this, editText, new C16641b0(str, getAdapterPosition())));
            }
        }
        ImageView imageView2 = this.f46731e;
        s1.z.c.l.d(imageView2, "avatar");
        imageView2.setTag(str);
        ImageView imageView3 = this.f46732f;
        s1.z.c.l.d(imageView3, "editAvatar");
        if (str == null) {
            z = false;
        }
        C19286f.m13683U(imageView3, z);
        if (str == null) {
            this.f46731e.setImageResource(C2752R.C2753drawable.ic_camera_cicle);
            this.f46731e.setOnClickListener(new View$OnClickListenerC16640g());
            return;
        }
        View view = this.itemView;
        s1.z.c.l.d(view, "itemView");
        C21853e m15664K1 = C17891a1.C17902k.m15664K1(view.getContext());
        s1.z.c.l.d(m15664K1, "GlideApp.with(itemView.context)");
        C17891a1.C17902k.m15653O0(m15664K1, Uri.parse(str), -1).mo8087u(2131232500).mo8097k(2131232500).m8427O(this.f46731e);
        this.f46731e.setOnClickListener(null);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16671g1
    /* renamed from: q3 */
    public void mo17134q3() {
        TextView textView = this.f46738l;
        s1.z.c.l.d(textView, "btnScheduleCall");
        C19286f.m13684T(textView);
        TextView textView2 = this.f46740n;
        s1.z.c.l.d(textView2, "btnPickContact");
        C19286f.m13684T(textView2);
        CountDownTextView countDownTextView = this.f46730d;
        s1.z.c.l.d(countDownTextView, "callingTimer");
        C19286f.m13689O(countDownTextView);
        CountDownTextView countDownTextView2 = this.f46730d;
        l<? super AbstractC17259b, s> lVar = countDownTextView2.f14284y;
        if (lVar != null) {
            s sVar = (s) lVar.d(AbstractC17259b.C17260a.f48415a);
        }
        countDownTextView2.m34809g1();
        TextView textView3 = this.f46739m;
        s1.z.c.l.d(textView3, "btnCancelCall");
        C19286f.m13689O(textView3);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16671g1
    public void setPhoneNumber(String str) {
        if (str != null) {
            EditText editText = this.f46737k;
            s1.z.c.l.d(editText, "contactPhone");
            editText.setText(new SpannableStringBuilder(str));
        }
        EditText editText2 = this.f46737k;
        s1.z.c.l.d(editText2, "contactPhone");
        C19291g.m13542j(editText2, new C16638e());
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16671g1
    public void setProfileName(String str) {
        if (str != null) {
            EditText editText = this.f46736j;
            s1.z.c.l.d(editText, "contactName");
            editText.setText(new SpannableStringBuilder(str));
        }
        EditText editText2 = this.f46736j;
        s1.z.c.l.d(editText2, "contactName");
        C19291g.m13542j(editText2, new C16639f());
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16668g, p193e.p194a.p1011l.p1013c.p1014a.AbstractC16782z1
    /* renamed from: t2 */
    public void mo17051t2() {
        this.f46730d.f14285z = 0L;
    }
}

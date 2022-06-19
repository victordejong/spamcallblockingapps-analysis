package p193e.p194a.p195a.p200c.p204f;

import android.content.Context;
import android.os.Bundle;
import android.text.format.DateFormat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.TextView;
import android.widget.TimePicker;
import android.widget.Toast;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.q;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1059m3.C18195x0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018�� =2\u00020\u00012\u00020\u0002:\u0002+>B\u0007¢\u0006\u0004\b<\u0010\u0013J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J7\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010#\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010%\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b%\u0010$J\u000f\u0010&\u001a\u00020\u0005H\u0016¢\u0006\u0004\b&\u0010\u0013J\u0017\u0010(\u001a\u00020\u00052\u0006\u0010'\u001a\u00020\u0018H\u0016¢\u0006\u0004\b(\u0010)R\u001d\u0010/\u001a\u00020*8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.R\"\u00107\u001a\u0002008\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u0016\u0010;\u001a\u0002088\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b9\u0010:¨\u0006?"}, d2 = {"Le/a/a/c/f/a;", "Ln3/b/a/q;", "Le/a/a/c/f/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDetach", "()V", "", "year", "month", "day", "", "minDate", "maxDate", "Bi", "(IIIJJ)V", "hour", "minute", "Fi", "(II)V", "", "text", "Zp", "(Ljava/lang/String;)V", "lt", "Aj", "result", "HA", "(J)V", "Le/a/m3/x0;", AbstractC2405c.f7629a, "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/m3/x0;", "binding", "Le/a/a/c/f/f;", C22021b.f61237c, "Le/a/a/c/f/f;", "PA", "()Le/a/a/c/f/f;", "setPresenter", "(Le/a/a/c/f/f;)V", "presenter", "Le/a/a/c/f/a$c;", "a", "Le/a/a/c/f/a$c;", "callback", "<init>", "e", "d", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.c.f.a */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/f/a.class */
public final class C5255a extends q implements AbstractC5271h {

    /* renamed from: d */
    public static final /* synthetic */ l[] f18064d = {C22128a.m8621g0(C5255a.class, "binding", "getBinding()Lcom/truecaller/databinding/ScheduleMessageDatePickerBinding;", 0)};

    /* renamed from: e */
    public static final C5259d f18065e = new C5259d(null);

    /* renamed from: a */
    public AbstractC5258c f18066a;
    @Inject

    /* renamed from: b */
    public AbstractC5269f f18067b;

    /* renamed from: c */
    public final ViewBindingProperty f18068c = new C19350a(new C5257b());

    /* renamed from: e.a.a.c.f.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/a/c/f/a$a.class */
    public static final class View$OnClickListenerC5256a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f18069a;

        /* renamed from: b */
        public final /* synthetic */ Object f18070b;

        public View$OnClickListenerC5256a(int i, Object obj) {
            this.f18069a = i;
            this.f18070b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f18069a;
            if (i == 0) {
                ((C5255a) this.f18070b).m33476PA().mo33459A7();
            } else if (i != 1) {
                throw null;
            } else {
                ((C5255a) this.f18070b).m33476PA().mo33456s9();
            }
        }
    }

    /* renamed from: e.a.a.c.f.a$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/f/a$b.class */
    public static final class C5257b extends m implements s1.z.b.l<C5255a, C18195x0> {
        public C5257b() {
            super(1);
        }

        /* renamed from: d */
        public Object m33475d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            NestedScrollView requireView = fragment.requireView();
            int i = 2131363034;
            DatePicker datePicker = (DatePicker) requireView.findViewById(C2752R.C2754id.datePicker);
            if (datePicker != null) {
                i = 2131364900;
                Button button = (Button) requireView.findViewById(2131364900);
                if (button != null) {
                    i = 2131365194;
                    Button button2 = (Button) requireView.findViewById(2131365194);
                    if (button2 != null) {
                        i = 2131366447;
                        TimePicker timePicker = (TimePicker) requireView.findViewById(C2752R.C2754id.timePicker);
                        if (timePicker != null) {
                            i = 2131366469;
                            TextView textView = (TextView) requireView.findViewById(2131366469);
                            if (textView != null) {
                                return new C18195x0(requireView, datePicker, button, button2, timePicker, textView);
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.a.c.f.a$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/f/a$c.class */
    public interface AbstractC5258c {
        /* renamed from: gr */
        void mo32459gr(long j);

        /* renamed from: jp */
        void mo32452jp(long j, long j2, int i);
    }

    /* renamed from: e.a.a.c.f.a$d */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/f/a$d.class */
    public static final class C5259d {
        public C5259d(f fVar) {
        }
    }

    /* renamed from: e.a.a.c.f.a$e */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/f/a$e.class */
    public static final class C5260e implements DatePicker.OnDateChangedListener {
        public C5260e() {
            C5255a.this = r4;
        }

        @Override // android.widget.DatePicker.OnDateChangedListener
        public final void onDateChanged(DatePicker datePicker, int i, int i2, int i3) {
            C5255a.this.m33476PA().mo33458Qf(i, i2, i3);
        }
    }

    /* renamed from: e.a.a.c.f.a$f */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/f/a$f.class */
    public static final class C5261f implements TimePicker.OnTimeChangedListener {
        public C5261f() {
            C5255a.this = r4;
        }

        @Override // android.widget.TimePicker.OnTimeChangedListener
        public final void onTimeChanged(TimePicker timePicker, int i, int i2) {
            C5255a.this.m33476PA().mo33457Rg(i, i2);
        }
    }

    @Override // p193e.p194a.p195a.p200c.p204f.AbstractC5271h
    /* renamed from: Aj */
    public void mo33455Aj() {
        Toast.makeText((Context) requireActivity(), (int) C2752R.string.ConversationScheduledTimeValidation, 1).show();
    }

    @Override // p193e.p194a.p195a.p200c.p204f.AbstractC5271h
    /* renamed from: Bi */
    public void mo33454Bi(int i, int i2, int i3, long j, long j2) {
        DatePicker datePicker = m33477OA().f51446a;
        s1.z.c.l.d(datePicker, "binding.datePicker");
        datePicker.setMinDate(j);
        DatePicker datePicker2 = m33477OA().f51446a;
        s1.z.c.l.d(datePicker2, "binding.datePicker");
        datePicker2.setMaxDate(j2);
        m33477OA().f51446a.init(i, i2, i3, new C5260e());
    }

    @Override // p193e.p194a.p195a.p200c.p204f.AbstractC5271h
    /* renamed from: Fi */
    public void mo33453Fi(int i, int i2) {
        DatePicker datePicker = m33477OA().f51446a;
        s1.z.c.l.d(datePicker, "binding.datePicker");
        C19286f.m13683U(datePicker, false);
        TimePicker timePicker = m33477OA().f51449d;
        s1.z.c.l.d(timePicker, "binding.timePicker");
        C19286f.m13683U(timePicker, true);
        m33477OA().f51449d.setIs24HourView(Boolean.valueOf(DateFormat.is24HourFormat(requireContext())));
        TimePicker timePicker2 = m33477OA().f51449d;
        s1.z.c.l.d(timePicker2, "binding.timePicker");
        timePicker2.setCurrentHour(Integer.valueOf(i));
        TimePicker timePicker3 = m33477OA().f51449d;
        s1.z.c.l.d(timePicker3, "binding.timePicker");
        timePicker3.setCurrentMinute(Integer.valueOf(i2));
        m33477OA().f51449d.setOnTimeChangedListener(new C5261f());
    }

    @Override // p193e.p194a.p195a.p200c.p204f.AbstractC5271h
    /* renamed from: HA */
    public void mo33452HA(long j) {
        Bundle arguments = getArguments();
        if ((arguments != null ? Long.valueOf(arguments.getLong("default_date")) : null) == null) {
            AbstractC5258c abstractC5258c = this.f18066a;
            if (abstractC5258c != null) {
                abstractC5258c.mo32459gr(j);
                return;
            } else {
                s1.z.c.l.l("callback");
                throw null;
            }
        }
        AbstractC5258c abstractC5258c2 = this.f18066a;
        if (abstractC5258c2 == null) {
            s1.z.c.l.l("callback");
            throw null;
        }
        Bundle arguments2 = getArguments();
        Long valueOf = arguments2 != null ? Long.valueOf(arguments2.getLong("message_id")) : null;
        s1.z.c.l.c(valueOf);
        long longValue = valueOf.longValue();
        Bundle arguments3 = getArguments();
        Integer num = null;
        if (arguments3 != null) {
            num = Integer.valueOf(arguments3.getInt("transport"));
        }
        s1.z.c.l.c(num);
        abstractC5258c2.mo32452jp(j, longValue, num.intValue());
    }

    /* renamed from: OA */
    public final C18195x0 m33477OA() {
        return (C18195x0) this.f18068c.m34468b(this, f18064d[0]);
    }

    /* renamed from: PA */
    public final AbstractC5269f m33476PA() {
        AbstractC5269f abstractC5269f = this.f18067b;
        if (abstractC5269f != null) {
            return abstractC5269f;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p195a.p200c.p204f.AbstractC5271h
    /* renamed from: Zp */
    public void mo33451Zp(String str) {
        s1.z.c.l.e(str, "text");
        TextView textView = m33477OA().f51450e;
        s1.z.c.l.d(textView, "binding.title");
        textView.setText(str);
    }

    @Override // p193e.p194a.p195a.p200c.p204f.AbstractC5271h
    /* renamed from: lt */
    public void mo33450lt(String str) {
        s1.z.c.l.e(str, "text");
        Button button = m33477OA().f51448c;
        s1.z.c.l.d(button, "binding.positiveButton");
        button.setText(str);
    }

    public void onCreate(Bundle bundle) {
        C5255a.super.onCreate(bundle);
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        Context applicationContext = requireContext.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
        Objects.requireNonNull(mo10154s);
        Bundle arguments = getArguments();
        C5268e c5268e = new C5268e(arguments != null ? Long.valueOf(arguments.getLong("default_date")) : null);
        C25225a.m3846s(c5268e, C5268e.class);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        this.f18067b = (AbstractC5269f) new C5262b(c5268e, mo10154s, null).f18079g.get();
        setStyle(1, (int) C2752R.style.ScheduleMessageDatePicker);
        try {
            AbstractC5258c parentFragment = getParentFragment();
            if (parentFragment == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.truecaller.messaging.conversation.scheduleDatePicker.ScheduleMessageDatePicker.Callback");
            }
            this.f18066a = parentFragment;
        } catch (ClassCastException e) {
            throw new ClassCastException("Parent fragment should implement this interface");
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.schedule_message_date_picker, viewGroup, false);
    }

    public void onDetach() {
        C5255a.super.onDetach();
        AbstractC5269f abstractC5269f = this.f18067b;
        if (abstractC5269f != null) {
            abstractC5269f.mo9806c();
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C5255a.super.onViewCreated(view, bundle);
        AbstractC5269f abstractC5269f = this.f18067b;
        if (abstractC5269f == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC5269f.mo9029Y0(this);
        m33477OA().f51448c.setOnClickListener(new View$OnClickListenerC5256a(0, this));
        m33477OA().f51447b.setOnClickListener(new View$OnClickListenerC5256a(1, this));
    }
}

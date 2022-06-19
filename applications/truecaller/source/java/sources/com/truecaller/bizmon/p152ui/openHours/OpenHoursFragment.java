package com.truecaller.bizmon.p152ui.openHours;

import android.app.TimePickerDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.format.DateFormat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import android.widget.TimePicker;
import androidx.appcompat.app.AlertController;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import com.truecaller.profile.data.dto.OpenHours;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.text.DateFormatSymbols;
import java.util.Arrays;
import java.util.Locale;
import java.util.Objects;
import java.util.SortedSet;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1734b.p1735a.g$a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p294b.p331b.p333b.AbstractC7868f;
import p193e.p194a.p294b.p331b.p333b.C7860a;
import p193e.p194a.p294b.p331b.p333b.C7864d;
import p193e.p194a.p294b.p331b.p333b.C7869g;
import p193e.p194a.p294b.p331b.p333b.View$OnClickListenerC7867e;
import p193e.p194a.p294b.p331b.p334c.p335u.C7905c;
import p193e.p194a.p294b.p354l.AbstractC8040o;
import p193e.p194a.p294b.p355m.C8114z;
import p193e.p194a.p372b0.p430q.C8605o;
import s1.a.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\bE\u0010,J\u0015\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ+\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00102\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J%\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u00162\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00160\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u001f\u0010 \u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b \u0010!J\u0017\u0010\"\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\"\u0010\u0019J'\u0010%\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010#\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u0016H\u0016¢\u0006\u0004\b%\u0010&J\u001f\u0010'\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b'\u0010!J\u0017\u0010(\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b(\u0010\u0019J'\u0010)\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010#\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u0016H\u0016¢\u0006\u0004\b)\u0010&J\u001f\u0010*\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b*\u0010!J\u000f\u0010+\u001a\u00020\tH\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\tH\u0016¢\u0006\u0004\b-\u0010,J\u0017\u0010.\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b.\u0010/J\u0017\u00100\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b0\u0010\u0019J\u0017\u00101\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b1\u0010\u0019J\u0017\u00102\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b2\u0010\u0019R\u0016\u00106\u001a\u0002038\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b4\u00105R\u001d\u0010<\u001a\u0002078B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b:\u0010;R\"\u0010D\u001a\u00020=8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010C¨\u0006F"}, d2 = {"Lcom/truecaller/bizmon/ui/openHours/OpenHoursFragment;", "Landroidx/fragment/app/Fragment;", "Le/a/b/b/b/f;", "", "", "QA", "()[Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "position", "Qa", "(I)V", "Ljava/util/SortedSet;", "daysOfTheWeek", "kl", "(ILjava/util/SortedSet;)V", "Lcom/truecaller/profile/data/dto/OpenHours;", "openHour", "Wd", "(ILcom/truecaller/profile/data/dto/OpenHours;)V", "Xd", "hour", "minute", "Nj", "(III)V", "fu", "Ps", "Ly", "ha", "Yy", "()V", "Hw", "Gq", "(Lcom/truecaller/profile/data/dto/OpenHours;)V", "Vp", "J7", "c3", "Le/a/b/b/b/d;", C22021b.f61237c, "Le/a/b/b/b/d;", "openHoursAdapter", "Le/a/b/m/z;", AbstractC2405c.f7629a, "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/b/m/z;", "binding", "Le/a/b/b/b/g;", "a", "Le/a/b/b/b/g;", "PA", "()Le/a/b/b/b/g;", "setPresenter", "(Le/a/b/b/b/g;)V", "presenter", "<init>", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.bizmon.ui.openHours.OpenHoursFragment */
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/openHours/OpenHoursFragment.class */
public final class OpenHoursFragment extends Fragment implements AbstractC7868f {

    /* renamed from: d */
    public static final /* synthetic */ l[] f10377d = {C22128a.m8621g0(OpenHoursFragment.class, "binding", "getBinding()Lcom/truecaller/bizmon/databinding/BusinessProfileFragmentOpenHoursBinding;", 0)};
    @Inject

    /* renamed from: a */
    public C7869g f10378a;

    /* renamed from: b */
    public C7864d f10379b;

    /* renamed from: c */
    public final ViewBindingProperty f10380c = new C19350a(new C3520a());

    /* renamed from: com.truecaller.bizmon.ui.openHours.OpenHoursFragment$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/openHours/OpenHoursFragment$a.class */
    public static final class C3520a extends m implements s1.z.b.l<OpenHoursFragment, C8114z> {
        public C3520a() {
            super(1);
        }

        /* renamed from: d */
        public Object m35834d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C3478R.C3480id.newOpenHourButton;
            Button button = (Button) requireView.findViewById(i);
            if (button != null) {
                i = C3478R.C3480id.openHoursRecyclerView;
                RecyclerView recyclerView = (RecyclerView) requireView.findViewById(i);
                if (recyclerView != null) {
                    i = C3478R.C3480id.openingHoursTextView;
                    TextView textView = (TextView) requireView.findViewById(i);
                    if (textView != null) {
                        return new C8114z((ConstraintLayout) requireView, button, recyclerView, textView);
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: com.truecaller.bizmon.ui.openHours.OpenHoursFragment$b */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/openHours/OpenHoursFragment$b.class */
    public static final class C3521b implements TimePickerDialog.OnTimeSetListener {

        /* renamed from: b */
        public final /* synthetic */ int f10382b;

        public C3521b(int i) {
            OpenHoursFragment.this = r4;
            this.f10382b = i;
        }

        @Override // android.app.TimePickerDialog.OnTimeSetListener
        public final void onTimeSet(TimePicker timePicker, int i, int i2) {
            C7860a c7860a = new C7860a(i, i2);
            C7869g m35836PA = OpenHoursFragment.this.m35836PA();
            int i3 = this.f10382b;
            Objects.requireNonNull(m35836PA);
            s1.z.c.l.e(c7860a, "closesAt");
            OpenHours mo28922g3 = m35836PA.f24443b.mo28922g3(i3, c7860a);
            AbstractC7868f abstractC7868f = (AbstractC7868f) m35836PA.f57683a;
            if (abstractC7868f != null) {
                abstractC7868f.mo29202ha(i3, mo28922g3);
            }
            m35836PA.m29200Hj();
        }
    }

    /* renamed from: com.truecaller.bizmon.ui.openHours.OpenHoursFragment$c */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/openHours/OpenHoursFragment$c.class */
    public static final class DialogInterface$OnMultiChoiceClickListenerC3522c implements DialogInterface.OnMultiChoiceClickListener {

        /* renamed from: a */
        public final /* synthetic */ SortedSet f10383a;

        public DialogInterface$OnMultiChoiceClickListenerC3522c(SortedSet sortedSet) {
            this.f10383a = sortedSet;
        }

        @Override // android.content.DialogInterface.OnMultiChoiceClickListener
        public final void onClick(DialogInterface dialogInterface, int i, boolean z) {
            SortedSet sortedSet = this.f10383a;
            Integer valueOf = Integer.valueOf(i + 1);
            if (z) {
                sortedSet.add(valueOf);
            } else {
                sortedSet.remove(valueOf);
            }
        }
    }

    /* renamed from: com.truecaller.bizmon.ui.openHours.OpenHoursFragment$d */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/openHours/OpenHoursFragment$d.class */
    public static final class DialogInterface$OnClickListenerC3523d implements DialogInterface.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ int f10385b;

        /* renamed from: c */
        public final /* synthetic */ SortedSet f10386c;

        public DialogInterface$OnClickListenerC3523d(int i, SortedSet sortedSet) {
            OpenHoursFragment.this = r4;
            this.f10385b = i;
            this.f10386c = sortedSet;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C7869g m35836PA = OpenHoursFragment.this.m35836PA();
            int i2 = this.f10385b;
            SortedSet<Integer> sortedSet = this.f10386c;
            Objects.requireNonNull(m35836PA);
            s1.z.c.l.e(sortedSet, "daysOfTheWeek");
            OpenHours mo28923f3 = m35836PA.f24443b.mo28923f3(i2, sortedSet);
            AbstractC7868f abstractC7868f = (AbstractC7868f) m35836PA.f57683a;
            if (abstractC7868f != null) {
                abstractC7868f.mo29206Wd(i2, mo28923f3);
            }
            m35836PA.m29200Hj();
        }
    }

    /* renamed from: com.truecaller.bizmon.ui.openHours.OpenHoursFragment$e */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/openHours/OpenHoursFragment$e.class */
    public static final class DialogInterface$OnClickListenerC3524e implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public static final DialogInterface$OnClickListenerC3524e f10387a = new DialogInterface$OnClickListenerC3524e();

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    /* renamed from: com.truecaller.bizmon.ui.openHours.OpenHoursFragment$f */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/openHours/OpenHoursFragment$f.class */
    public static final class C3525f implements TimePickerDialog.OnTimeSetListener {

        /* renamed from: b */
        public final /* synthetic */ int f10389b;

        public C3525f(int i) {
            OpenHoursFragment.this = r4;
            this.f10389b = i;
        }

        @Override // android.app.TimePickerDialog.OnTimeSetListener
        public final void onTimeSet(TimePicker timePicker, int i, int i2) {
            C7860a c7860a = new C7860a(i, i2);
            C7869g m35836PA = OpenHoursFragment.this.m35836PA();
            int i3 = this.f10389b;
            Objects.requireNonNull(m35836PA);
            s1.z.c.l.e(c7860a, "opensAt");
            OpenHours mo28925d3 = m35836PA.f24443b.mo28925d3(i3, c7860a);
            AbstractC7868f abstractC7868f = (AbstractC7868f) m35836PA.f57683a;
            if (abstractC7868f != null) {
                abstractC7868f.mo29203fu(i3, mo28925d3);
            }
            m35836PA.m29200Hj();
        }
    }

    /* renamed from: com.truecaller.bizmon.ui.openHours.OpenHoursFragment$g */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/openHours/OpenHoursFragment$g.class */
    public static final class DialogInterface$OnClickListenerC3526g implements DialogInterface.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ int f10391b;

        public DialogInterface$OnClickListenerC3526g(int i) {
            OpenHoursFragment.this = r4;
            this.f10391b = i;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C7869g m35836PA = OpenHoursFragment.this.m35836PA();
            int i2 = this.f10391b;
            m35836PA.f24443b.mo28926c3(i2);
            AbstractC7868f abstractC7868f = (AbstractC7868f) m35836PA.f57683a;
            if (abstractC7868f != null) {
                abstractC7868f.mo29204c3(i2);
            }
            m35836PA.m29200Hj();
        }
    }

    /* renamed from: com.truecaller.bizmon.ui.openHours.OpenHoursFragment$h */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/ui/openHours/OpenHoursFragment$h.class */
    public static final class DialogInterface$OnClickListenerC3527h implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public static final DialogInterface$OnClickListenerC3527h f10392a = new DialogInterface$OnClickListenerC3527h();

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    @Override // p193e.p194a.p294b.p331b.p333b.AbstractC7868f
    /* renamed from: Gq */
    public void mo29211Gq(OpenHours openHours) {
        s1.z.c.l.e(openHours, "openHour");
        C7864d c7864d = this.f10379b;
        if (c7864d == null) {
            s1.z.c.l.l("openHoursAdapter");
            throw null;
        }
        Objects.requireNonNull(c7864d);
        s1.z.c.l.e(openHours, "openHour");
        c7864d.f24433a.add(openHours);
        c7864d.notifyItemInserted(c7864d.f24433a.indexOf(openHours));
    }

    @Override // p193e.p194a.p294b.p331b.p333b.AbstractC7868f
    /* renamed from: Hw */
    public void mo29210Hw() {
        Button button = m35837OA().f25176a;
        s1.z.c.l.d(button, "binding.newOpenHourButton");
        button.setVisibility(8);
    }

    @Override // p193e.p194a.p294b.p331b.p333b.AbstractC7868f
    /* renamed from: J7 */
    public void mo29209J7(int i) {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            g$a g_a = new g$a(context);
            g_a.m3664e(C3478R.string.BusinessProfile_RemoveOpenHoursWarningMessage);
            g_a.m3660i(C3478R.string.StrOK, new DialogInterface$OnClickListenerC3526g(i));
            g_a.m3662g(C3478R.string.StrCancel, DialogInterface$OnClickListenerC3527h.f10392a);
            g_a.m3652q();
        }
    }

    @Override // p193e.p194a.p294b.p331b.p333b.AbstractC7868f
    /* renamed from: Ly */
    public void mo29208Ly(int i, int i2, int i3) {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            new TimePickerDialog(context, C3478R.style.Theme_Truecaller_Dialog_TimePicker, new C3521b(i), i2, i3, DateFormat.is24HourFormat(getActivity())).show();
        }
    }

    @Override // p193e.p194a.p294b.p331b.p333b.AbstractC7868f
    /* renamed from: Nj */
    public void mo29207Nj(int i, int i2, int i3) {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            new TimePickerDialog(context, C3478R.style.Theme_Truecaller_Dialog_TimePicker, new C3525f(i), i2, i3, DateFormat.is24HourFormat(getActivity())).show();
        }
    }

    /* renamed from: OA */
    public final C8114z m35837OA() {
        return (C8114z) this.f10380c.m34468b(this, f10377d[0]);
    }

    /* renamed from: PA */
    public final C7869g m35836PA() {
        C7869g c7869g = this.f10378a;
        if (c7869g != null) {
            return c7869g;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p294b.p331b.p333b.AbstractC7863c
    /* renamed from: Ps */
    public void mo29218Ps(int i) {
        C7869g c7869g = this.f10378a;
        if (c7869g == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C7860a m15275C = C18334g0.m15275C(c7869g.f24443b.mo28924e3(i));
        AbstractC7868f abstractC7868f = (AbstractC7868f) c7869g.f57683a;
        if (abstractC7868f == null) {
            return;
        }
        abstractC7868f.mo29208Ly(i, m15275C != null ? m15275C.f24428d : 18, m15275C != null ? m15275C.f24429e : 0);
    }

    /* renamed from: QA */
    public final String[] m35835QA() {
        DateFormatSymbols dateFormatSymbols = DateFormatSymbols.getInstance(Locale.getDefault());
        s1.z.c.l.d(dateFormatSymbols, "DateFormatSymbols.getInstance(Locale.getDefault())");
        String[] weekdays = dateFormatSymbols.getWeekdays();
        Object[] copyOfRange = Arrays.copyOfRange(weekdays, 1, weekdays.length);
        s1.z.c.l.d(copyOfRange, "Arrays.copyOfRange(weekdays, 1, weekdays.size)");
        return (String[]) copyOfRange;
    }

    @Override // p193e.p194a.p294b.p331b.p333b.AbstractC7863c
    /* renamed from: Qa */
    public void mo29217Qa(int i) {
        C7869g c7869g = this.f10378a;
        if (c7869g == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        AbstractC7868f abstractC7868f = (AbstractC7868f) c7869g.f57683a;
        if (abstractC7868f == null) {
            return;
        }
        abstractC7868f.mo29201kl(i, c7869g.f24443b.mo28924e3(i).getWeekday());
    }

    @Override // p193e.p194a.p294b.p331b.p333b.AbstractC7863c
    /* renamed from: Vp */
    public void mo29216Vp(int i) {
        C7869g c7869g = this.f10378a;
        if (c7869g == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        AbstractC7868f abstractC7868f = (AbstractC7868f) c7869g.f57683a;
        if (abstractC7868f == null) {
            return;
        }
        abstractC7868f.mo29209J7(i);
    }

    @Override // p193e.p194a.p294b.p331b.p333b.AbstractC7868f
    /* renamed from: Wd */
    public void mo29206Wd(int i, OpenHours openHours) {
        s1.z.c.l.e(openHours, "openHour");
        C7864d c7864d = this.f10379b;
        if (c7864d != null) {
            c7864d.m29214e(i, openHours);
        } else {
            s1.z.c.l.l("openHoursAdapter");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p331b.p333b.AbstractC7863c
    /* renamed from: Xd */
    public void mo29215Xd(int i) {
        C7869g c7869g = this.f10378a;
        if (c7869g == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        C7860a m15255M = C18334g0.m15255M(c7869g.f24443b.mo28924e3(i));
        AbstractC7868f abstractC7868f = (AbstractC7868f) c7869g.f57683a;
        if (abstractC7868f == null) {
            return;
        }
        abstractC7868f.mo29207Nj(i, m15255M != null ? m15255M.f24428d : 8, m15255M != null ? m15255M.f24429e : 0);
    }

    @Override // p193e.p194a.p294b.p331b.p333b.AbstractC7868f
    /* renamed from: Yy */
    public void mo29205Yy() {
        Button button = m35837OA().f25176a;
        s1.z.c.l.d(button, "binding.newOpenHourButton");
        button.setVisibility(0);
    }

    @Override // p193e.p194a.p294b.p331b.p333b.AbstractC7868f
    /* renamed from: c3 */
    public void mo29204c3(int i) {
        C7864d c7864d = this.f10379b;
        if (c7864d == null) {
            s1.z.c.l.l("openHoursAdapter");
            throw null;
        }
        c7864d.f24433a.remove(i);
        c7864d.notifyItemRemoved(i);
    }

    @Override // p193e.p194a.p294b.p331b.p333b.AbstractC7868f
    /* renamed from: fu */
    public void mo29203fu(int i, OpenHours openHours) {
        s1.z.c.l.e(openHours, "openHour");
        C7864d c7864d = this.f10379b;
        if (c7864d != null) {
            c7864d.m29214e(i, openHours);
        } else {
            s1.z.c.l.l("openHoursAdapter");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p331b.p333b.AbstractC7868f
    /* renamed from: ha */
    public void mo29202ha(int i, OpenHours openHours) {
        s1.z.c.l.e(openHours, "openHour");
        C7864d c7864d = this.f10379b;
        if (c7864d != null) {
            c7864d.m29214e(i, openHours);
        } else {
            s1.z.c.l.l("openHoursAdapter");
            throw null;
        }
    }

    @Override // p193e.p194a.p294b.p331b.p333b.AbstractC7868f
    /* renamed from: kl */
    public void mo29201kl(int i, SortedSet<Integer> sortedSet) {
        s1.z.c.l.e(sortedSet, "daysOfTheWeek");
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            g$a g_a = new g$a(context);
            g_a.m3656m(C3478R.string.BusinessProfile_OpenDaysPickerTitle);
            String[] m35835QA = m35835QA();
            String[] m35835QA2 = m35835QA();
            boolean[] zArr = new boolean[m35835QA2.length];
            int length = m35835QA2.length;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 >= length) {
                    DialogInterface$OnMultiChoiceClickListenerC3522c dialogInterface$OnMultiChoiceClickListenerC3522c = new DialogInterface$OnMultiChoiceClickListenerC3522c(sortedSet);
                    AlertController.C0037b c0037b = g_a.f70854a;
                    c0037b.f167q = m35835QA;
                    c0037b.f176z = dialogInterface$OnMultiChoiceClickListenerC3522c;
                    c0037b.f172v = zArr;
                    c0037b.f173w = true;
                    g_a.m3660i(C3478R.string.StrOK, new DialogInterface$OnClickListenerC3523d(i, sortedSet));
                    g_a.m3662g(C3478R.string.StrCancel, DialogInterface$OnClickListenerC3524e.f10387a);
                    g_a.m3652q();
                    return;
                }
                int i4 = i3 + 1;
                zArr[i3] = sortedSet.contains(Integer.valueOf(i4));
                i2 = i4;
            }
        }
    }

    public void onCreate(Bundle bundle) {
        OpenHoursFragment.super.onCreate(bundle);
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            this.f10378a = new C7869g((AbstractC8040o) ((C7905c) C18334g0.m15217m(activity)).f24526w.get());
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(C3478R.layout.business_profile_fragment_open_hours, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.inflate(R.layou…_hours, container, false)");
        return inflate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        OpenHoursFragment.super.onViewCreated(view, bundle);
        this.f10379b = new C7864d(this);
        C8114z m35837OA = m35837OA();
        m35837OA.f25177b.setHasFixedSize(false);
        RecyclerView recyclerView = m35837OA.f25177b;
        s1.z.c.l.d(recyclerView, "openHoursRecyclerView");
        recyclerView.setNestedScrollingEnabled(false);
        RecyclerView recyclerView2 = m35837OA.f25177b;
        s1.z.c.l.d(recyclerView2, "openHoursRecyclerView");
        C7864d c7864d = this.f10379b;
        if (c7864d == null) {
            s1.z.c.l.l("openHoursAdapter");
            throw null;
        }
        recyclerView2.setAdapter(c7864d);
        C8605o.m28231i(m35837OA().f25178c, C3478R.attr.theme_textColorSecondary);
        m35837OA().f25176a.setOnClickListener(new View$OnClickListenerC7867e(this));
        C7869g c7869g = this.f10378a;
        if (c7869g == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        c7869g.f57683a = this;
        if (c7869g == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        OpenHoursFragment openHoursFragment = this;
        if (openHoursFragment != null) {
            openHoursFragment.mo29211Gq(c7869g.f24443b.mo28921h3());
        }
        AbstractC7868f abstractC7868f = (AbstractC7868f) c7869g.f57683a;
        if (abstractC7868f == null) {
            return;
        }
        abstractC7868f.mo29210Hw();
    }
}

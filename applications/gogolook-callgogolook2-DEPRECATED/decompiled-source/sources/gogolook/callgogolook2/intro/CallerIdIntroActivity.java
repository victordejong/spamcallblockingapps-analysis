package gogolook.callgogolook2.intro;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.viewpagerindicator.CirclePageIndicator;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.WhoscallFragmentActivity;
import gogolook.callgogolook2.intro.CallerIdIntroActivity;
import gogolook.callgogolook2.intro.registration.RegistrationActivity;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.receiver.CheckTeaserNotificationReceiver;
import gogolook.callgogolook2.view.CustomViewPager;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import p081h.p450p.AbstractC10843h;
import p081h.p450p.C10839e;
import p459j.p460a.p471b1.p472a.C11507b;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p541n0.C13048c;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13963d3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14111p;
import p459j.p460a.p582w0.C14174u;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p596x.C14375i;
import p459j.p460a.p596x.C14376j;
import p459j.p460a.p613z0.p617p.C14684g;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
import p660rx.Observable;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/CallerIdIntroActivity.class */
public class CallerIdIntroActivity extends WhoscallFragmentActivity {

    /* renamed from: e */
    public Activity f10820e;

    /* renamed from: f */
    public List<Fragment> f10821f;

    /* renamed from: g */
    public List<Integer> f10822g;

    /* renamed from: h */
    public int f10823h;

    /* renamed from: i */
    public boolean f10824i = true;
    @BindView(R$id.indicator)
    public CirclePageIndicator mIndicator;
    @BindView(R$id.pager)
    public CustomViewPager mPager;
    @BindView(R$id.tv_description)
    public TextView mTvDesc;
    @BindView(R$id.tv_skip)
    public View mTvSkip;
    @BindView(R$id.tv_start)
    public TextView mTvStart;
    @BindView(R$id.tv_title)
    public TextView mTvTitle;
    @BindView(R$id.tv_tos)
    public TextView mTvTos;

    /* renamed from: gogolook.callgogolook2.intro.CallerIdIntroActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/CallerIdIntroActivity$a.class */
    public class View$OnClickListenerC4499a implements View.OnClickListener {
        public View$OnClickListenerC4499a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C14261f.m1980a(C14261f.EnumC14265d.a_Intro_Accept);
            CallerIdIntroActivity.this.m28082c(true);
            CallerIdIntroActivity.this.m28092K();
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.CallerIdIntroActivity$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/CallerIdIntroActivity$b.class */
    public class View$OnClickListenerC4500b implements View.OnClickListener {
        public View$OnClickListenerC4500b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CallerIdIntroActivity.this.finish();
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.CallerIdIntroActivity$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/CallerIdIntroActivity$c.class */
    public class RunnableC4501c implements Runnable {
        public RunnableC4501c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CallerIdIntroActivity callerIdIntroActivity = CallerIdIntroActivity.this;
            callerIdIntroActivity.mIndicator.m29327c((callerIdIntroActivity.f10823h + 1) % CallerIdIntroActivity.this.f10821f.size());
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.CallerIdIntroActivity$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/CallerIdIntroActivity$d.class */
    public class C4502d implements AbstractC10843h {

        /* renamed from: a */
        public final /* synthetic */ Runnable f10828a;

        public C4502d(Runnable runnable) {
            this.f10828a = runnable;
        }

        @Override // p081h.p450p.AbstractC10843h
        public void onPageScrollStateChanged(int i) {
            CallerIdIntroActivity.this.mIndicator.removeCallbacks(this.f10828a);
            if (i == 0) {
                CallerIdIntroActivity.this.mIndicator.postDelayed(this.f10828a, 3500L);
            }
        }

        @Override // p081h.p450p.AbstractC10843h
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // p081h.p450p.AbstractC10843h
        public void onPageSelected(int i) {
            CallerIdIntroActivity.this.f10823h = i;
            CallerIdIntroActivity.this.mPager.m25927a(true);
            if (CallerIdIntroActivity.this.f10822g != null && CallerIdIntroActivity.this.f10822g.size() > i) {
                CallerIdIntroActivity callerIdIntroActivity = CallerIdIntroActivity.this;
                callerIdIntroActivity.mTvTitle.setText(((Integer) callerIdIntroActivity.f10822g.get(i)).intValue());
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.CallerIdIntroActivity$e */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/CallerIdIntroActivity$e.class */
    public class CallableC4503e implements Callable<Object> {
        public CallableC4503e(CallerIdIntroActivity callerIdIntroActivity) {
        }

        @Override // java.util.concurrent.Callable
        public Object call() throws Exception {
            C13048c.m4713a(MyApplication.m29013o());
            return null;
        }
    }

    /* renamed from: gogolook.callgogolook2.intro.CallerIdIntroActivity$f */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/CallerIdIntroActivity$f.class */
    public static class C4504f extends Fragment {

        /* renamed from: a */
        public int f10830a;

        /* renamed from: b */
        public Fragment m28080b(int i) {
            this.f10830a = i;
            return this;
        }

        @Override // androidx.fragment.app.Fragment
        public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
            View inflate = layoutInflater.inflate(R$layout.simple_image_fragment, viewGroup, false);
            ((ImageView) inflate.findViewById(R$id.imageView)).setImageResource(this.f10830a);
            return inflate;
        }
    }

    /* renamed from: a */
    public static final Intent m28089a(Context context) {
        return new Intent(context, CallerIdIntroActivity.class);
    }

    /* renamed from: a */
    public static /* synthetic */ C14989s m28085a(boolean z, C11507b.C11508a aVar) {
        aVar.m9447a("HasShownMainIntroTutorial", true);
        aVar.m9447a("isNumberTransmissionAccepted", z);
        return null;
    }

    @Override // gogolook.callgogolook2.app.WhoscallFragmentActivity
    /* renamed from: J */
    public boolean mo28093J() {
        return false;
    }

    /* renamed from: K */
    public final void m28092K() {
        if (!C13878a3.m3257E()) {
            Observable.fromCallable(new CallableC4503e(this)).subscribeOn(C14174u.m2298f()).subscribe();
            C14376j.m1458a(RegistrationActivity.EnumC4523g.INTRO);
            C14376j.m1452b(this.f10820e, true, false);
            return;
        }
        startActivity(PermissionActivity.m28077a(this));
        finish();
    }

    /* renamed from: L */
    public final void m28091L() {
        this.mPager.m25928a(4.0d);
        this.f10821f = new ArrayList();
        if (C14017g4.m2835A()) {
            this.f10821f.add(new C4504f().m28080b(R$drawable.intro_img_carrier));
            this.f10821f.add(new C4504f().m28080b(R$drawable.intro_img_block));
            this.f10822g = new ArrayList();
            this.f10822g.add(Integer.valueOf((int) R$string.intro_brcarrier_title));
            this.f10822g.add(Integer.valueOf((int) R$string.intro_block_title));
            if (C12810o.m5233l()) {
                this.f10821f.add(new C4504f().m28080b(R$drawable.intro_img_vas));
                this.f10822g.add(Integer.valueOf((int) R$string.intro_vas_title));
            }
        } else {
            this.f10821f.add(new C4504f().m28080b(R$drawable.img_onboarding_intro));
        }
        this.mPager.setAdapter(new C14375i(getSupportFragmentManager(), this.f10820e, this.f10821f));
        this.mPager.setOffscreenPageLimit(this.f10821f.size());
        this.mIndicator.m29324f(Color.parseColor("#cccccc"));
        this.mIndicator.m29325e(Color.parseColor("#00c10e"));
        this.mIndicator.m29334a(C14217x3.m2201a(3.0f));
        this.mIndicator.m29329b(0.0f);
        this.mIndicator.m29326d(C14217x3.m2201a(3.0f));
        C10839e eVar = new C10839e();
        eVar.mo10432a((C10839e) this.mPager);
        this.mIndicator.m29331a(eVar);
        RunnableC4501c cVar = new RunnableC4501c();
        this.mIndicator.m29330a(new C4502d(cVar));
        this.mIndicator.postDelayed(cVar, 3500L);
    }

    /* renamed from: M */
    public final void m28090M() {
        m28091L();
        C14684g.m870a(this.mTvTos, getString(R$string.intro_agree_tos_pp_v2, new Object[]{C13963d3.m2963h(), C13963d3.m2964g()}));
        this.mTvStart.setOnClickListener(new View$OnClickListenerC4499a());
        this.mTvSkip.setOnClickListener(new View$OnClickListenerC4500b());
    }

    /* renamed from: c */
    public final void m28082c(final boolean z) {
        C13978e.f31386a.m9457a(new AbstractC15118l() { // from class: j.a.x.a
            @Override // p626l.p641z.p642c.AbstractC15118l
            public final Object invoke(Object obj) {
                return CallerIdIntroActivity.m28085a(z, (C11507b.C11508a) obj);
            }
        });
        this.f10824i = false;
    }

    @Override // gogolook.callgogolook2.app.WhoscallFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m28668G().m6031d();
        setContentView(C14017g4.m2835A() ? R$layout.activity_caller_id_intro : R$layout.activity_caller_id_intro_new);
        ButterKnife.bind(this);
        this.f10820e = this;
        m28090M();
        C14261f.m1980a(C14261f.EnumC14265d.a_Intro_View);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        AlarmManager alarmManager = (AlarmManager) MyApplication.m29013o().getSystemService(NotificationCompat.CATEGORY_ALARM);
        PendingIntent broadcast = PendingIntent.getBroadcast(MyApplication.m29013o(), 0, new Intent("notification_required_permissions"), 536870912);
        if (C13878a3.m3196v()) {
            if (broadcast != null) {
                broadcast.cancel();
                alarmManager.cancel(broadcast);
            }
        } else if (broadcast == null) {
            Intent intent = new Intent(MyApplication.m29013o(), CheckTeaserNotificationReceiver.class);
            intent.setAction("notification_required_permissions");
            alarmManager.setRepeating(0, System.currentTimeMillis() + AdUtils.ONE_DAY, AdUtils.ONE_DAY, PendingIntent.getBroadcast(MyApplication.m29013o(), 0, intent, 134217728));
        }
        C14111p.m2470a(this.f10824i);
        super.onPause();
    }

    @Override // gogolook.callgogolook2.app.WhoscallFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        this.mIndicator.m29327c(this.f10823h);
        super.onResume();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
    }

    @Override // gogolook.callgogolook2.app.WhoscallFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
    }
}

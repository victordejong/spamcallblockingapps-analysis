package p459j.p460a.p521j0.p522u.p523d;

import android.content.ActivityNotFoundException;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.ReportDialogActivity;
import gogolook.callgogolook2.UnlockActivity;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.DataUserReport;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.iap.p076ui.IapActivity;
import gogolook.callgogolook2.ndp.NumberDetailActivity;
import gogolook.callgogolook2.offline.offlinedb.OfflineDbActivity;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.phone.call.dialog.QuestionDialogView;
import gogolook.callgogolook2.view.RecycleSafeImageView;
import p081h.p119d.p120a.C5768f;
import p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12569j;
import p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12571k;
import p459j.p460a.p521j0.p522u.p523d.p524e1.AbstractC12573l;
import p459j.p460a.p521j0.p522u.p523d.p524e1.C12555a;
import p459j.p460a.p521j0.p522u.p523d.p524e1.C12558c;
import p459j.p460a.p521j0.p522u.p523d.p524e1.C12559d;
import p459j.p460a.p521j0.p522u.p523d.p524e1.C12562f;
import p459j.p460a.p521j0.p522u.p523d.p524e1.C12563g;
import p459j.p460a.p521j0.p522u.p523d.p524e1.C12568i;
import p459j.p460a.p521j0.p522u.p523d.p524e1.C12575m;
import p459j.p460a.p521j0.p522u.p523d.p524e1.C12579n;
import p459j.p460a.p521j0.p522u.p523d.p524e1.C12584p;
import p459j.p460a.p521j0.p522u.p523d.p524e1.C12587q;
import p459j.p460a.p521j0.p522u.p523d.p524e1.C12592s;
import p459j.p460a.p521j0.p522u.p523d.p524e1.C12596t;
import p459j.p460a.p521j0.p522u.p523d.p524e1.HandlerC12557b;
import p459j.p460a.p521j0.p522u.p523d.p524e1.HandlerC12561e;
import p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12604b;
import p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12605c;
import p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12606d;
import p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12607e;
import p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12608f;
import p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12609g;
import p459j.p460a.p521j0.p522u.p523d.p525f1.AbstractC12610h;
import p459j.p460a.p533l.HandlerC12947l;
import p459j.p460a.p582w0.C13877a2;
import p459j.p460a.p582w0.C13913b1;
import p459j.p460a.p582w0.C14019h0;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14081m3;
import p459j.p460a.p582w0.C14093n4;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14147s;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14174u;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p583a5.p584e.C13909c;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p590x4.p592b0.C14241a;
import p459j.p460a.p613z0.p617p.C14687h;
import p660rx.Single;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.j0.u.d.p0 */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/p0.class */
public class C12640p0 {

    /* renamed from: a */
    public final Context f28478a;

    /* renamed from: b */
    public final C12680t0 f28479b;

    /* renamed from: c */
    public final AbstractC12699w0 f28480c;

    /* renamed from: d */
    public final ViewGroup f28481d;

    /* renamed from: e */
    public final String f28482e;

    /* renamed from: g */
    public final String f28484g;

    /* renamed from: h */
    public String f28485h;

    /* renamed from: i */
    public boolean f28486i;

    /* renamed from: j */
    public final boolean f28487j;

    /* renamed from: k */
    public final boolean f28488k;

    /* renamed from: l */
    public ViewGroup f28489l;

    /* renamed from: m */
    public NumberInfo f28490m;

    /* renamed from: n */
    public boolean f28491n;

    /* renamed from: o */
    public AbstractC12652l f28492o = new C12642b();

    /* renamed from: f */
    public final LinearLayout.LayoutParams f28483f = new LinearLayout.LayoutParams(-1, -1);

    /* renamed from: j.a.j0.u.d.p0$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/p0$a.class */
    public static /* synthetic */ class C12641a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f28493a = new int[EnumC12650j.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            try {
                f28493a[EnumC12650j.Call.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f28493a[EnumC12650j.Block.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f28493a[EnumC12650j.Report.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f28493a[EnumC12650j.More.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f28493a[EnumC12650j.MoreCommercial.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f28493a[EnumC12650j.AddToFavorite.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f28493a[EnumC12650j.DbUpdate.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f28493a[EnumC12650j.IAP.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* renamed from: j.a.j0.u.d.p0$b */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/p0$b.class */
    public class C12642b implements AbstractC12652l {
        public C12642b() {
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.C12640p0.AbstractC12652l
        /* renamed from: a */
        public void mo5654a() {
            C12640p0.this.f28479b.m5543k();
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.C12640p0.AbstractC12652l
        public void onStop() {
            C12640p0.this.f28479b.m5556b(true);
        }
    }

    /* renamed from: j.a.j0.u.d.p0$c */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/p0$c.class */
    public class View$OnClickListenerC12643c implements View.OnClickListener {
        public View$OnClickListenerC12643c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C14261f.m1982a(C14261f.EnumC14264c.a_CED_Action, C14261f.EnumC14263b.no_internet, C14261f.EnumC14262a.refresh, CallStats.m28534h().m28539c(), C14108o4.m2474l(C12640p0.this.f28482e));
            C12640p0.this.m5666d();
            C12640p0.this.f28479b.m5544j();
        }
    }

    /* renamed from: j.a.j0.u.d.p0$d */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/p0$d.class */
    public class View$OnClickListenerC12644d implements View.OnClickListener {
        public View$OnClickListenerC12644d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C14261f.m1982a(C14261f.EnumC14264c.a_CED_Close, C14261f.EnumC14263b.no_internet, null, CallStats.m28534h().m28539c(), C14108o4.m2474l(C12640p0.this.f28482e));
        }
    }

    /* renamed from: j.a.j0.u.d.p0$e */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/p0$e.class */
    public class C12645e implements Action1<String> {

        /* renamed from: a */
        public final /* synthetic */ RecycleSafeImageView f28497a;

        public C12645e(C12640p0 p0Var, RecycleSafeImageView recycleSafeImageView) {
            this.f28497a = recycleSafeImageView;
        }

        /* renamed from: a */
        public void call(String str) {
            if (str != null) {
                C5768f<Uri> a = this.f28497a.m25906a(Uri.parse(ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, Long.valueOf(str).longValue()).toString()));
                a.mo24496b(C13909c.m3071b().m3094e().m3069a());
                a.mo24518a(this.f28497a);
                return;
            }
            this.f28497a.setImageResource(C13909c.m3071b().m3094e().m3069a());
        }
    }

    /* renamed from: j.a.j0.u.d.p0$f */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/p0$f.class */
    public class RunnableC12646f implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ TextView f28498a;

        /* renamed from: b */
        public final /* synthetic */ String f28499b;

        public RunnableC12646f(TextView textView, String str) {
            this.f28498a = textView;
            this.f28499b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f28498a.getText().toString().equals(this.f28499b)) {
                this.f28498a.setText(C12640p0.this.m5702a(R$string.cd_searching_connection_unstable));
            }
        }
    }

    /* renamed from: j.a.j0.u.d.p0$g */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/p0$g.class */
    public class C12647g implements CallStats.OnGetCallDurationListener {

        /* renamed from: a */
        public final /* synthetic */ TextView f28501a;

        public C12647g(TextView textView) {
            this.f28501a = textView;
        }

        @Override // gogolook.callgogolook2.gson.CallStats.OnGetCallDurationListener
        /* renamed from: a */
        public void mo5659a(long j) {
            if (CallStats.m28534h().m28539c().m28529B()) {
                this.f28501a.setCompoundDrawablesWithIntrinsicBounds(R$drawable.call_end_outgoing_icon, 0, 0, 0);
                if (j == 0) {
                    this.f28501a.setText(C12640p0.this.m5702a(R$string.callenddialog_outgoing_missing));
                } else {
                    this.f28501a.setText(C14123p4.m2431b(j));
                }
                this.f28501a.setVisibility(0);
            } else if (CallStats.m28534h().m28539c().m28481v()) {
                this.f28501a.setCompoundDrawablesWithIntrinsicBounds(R$drawable.call_end_incoming_icon, 0, 0, 0);
                this.f28501a.setText(C14123p4.m2431b(j));
                this.f28501a.setVisibility(0);
            }
        }
    }

    /* renamed from: j.a.j0.u.d.p0$h */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/p0$h.class */
    public class HandlerC12648h extends HandlerC12947l {
        public HandlerC12648h() {
        }

        @Override // p459j.p460a.p533l.HandlerC12947l
        /* renamed from: a */
        public void mo4945a() {
            C12640p0.this.f28479b.m5561a(true);
        }

        @Override // p459j.p460a.p533l.HandlerC12947l
        /* renamed from: a */
        public void mo4944a(Object obj) {
            C12640p0.this.f28479b.m5556b(true);
        }

        @Override // p459j.p460a.p533l.HandlerC12947l
        /* renamed from: b */
        public void mo4942b() {
            C12640p0.this.f28479b.m5555b(false, "openReport");
        }
    }

    /* renamed from: j.a.j0.u.d.p0$i */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/p0$i.class */
    public class View$OnClickListenerC12649i implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C14261f.EnumC14263b f28504a;

        /* renamed from: b */
        public final /* synthetic */ CallStats.Call f28505b;

        /* renamed from: c */
        public final /* synthetic */ String f28506c;

        public View$OnClickListenerC12649i(C12640p0 p0Var, C14261f.EnumC14263b bVar, CallStats.Call call, String str) {
            this.f28504a = bVar;
            this.f28505b = call;
            this.f28506c = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C14261f.EnumC14263b bVar = this.f28504a;
            if (bVar == C14261f.EnumC14263b.missed_call) {
                new C13877a2(C14241a.EnumC14244c.MissCallEnd, C14241a.EnumC14243b.Close).m3267a(C14037j3.m2731a());
            } else if (bVar == C14261f.EnumC14263b.info) {
                new C13877a2(C14241a.EnumC14244c.MainAction, C14241a.EnumC14243b.Close).m3267a(C14037j3.m2731a());
            }
            C14261f.m1982a(C14261f.EnumC14264c.a_CED_Close, this.f28504a, null, this.f28505b, this.f28506c);
        }
    }

    /* renamed from: j.a.j0.u.d.p0$j */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/p0$j.class */
    public enum EnumC12650j {
        Call,
        Block,
        Report,
        More,
        MoreCommercial,
        AddToFavorite,
        DbUpdate,
        IAP
    }

    /* renamed from: j.a.j0.u.d.p0$k */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/p0$k.class */
    public class C12651k {

        /* renamed from: a */
        public EnumC12650j f28516a;

        /* renamed from: b */
        public String f28517b;

        public C12651k(C12640p0 p0Var) {
        }

        public /* synthetic */ C12651k(C12640p0 p0Var, C12642b bVar) {
            this(p0Var);
        }
    }

    /* renamed from: j.a.j0.u.d.p0$l */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/p0$l.class */
    public interface AbstractC12652l {
        /* renamed from: a */
        void mo5654a();

        void onStop();
    }

    /* renamed from: j.a.j0.u.d.p0$m */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/p0$m.class */
    public enum EnumC12653m {
        CallEndDialog,
        ActionBtn,
        Post
    }

    /* renamed from: j.a.j0.u.d.p0$n */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/p0$n.class */
    public class View$OnClickListenerC12654n implements View.OnClickListener {

        /* renamed from: a */
        public EnumC12653m f28522a;

        /* renamed from: j.a.j0.u.d.p0$n$a */
        /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/p0$n$a.class */
        public class RunnableC12655a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ CallStats.Call f28524a;

            public RunnableC12655a(CallStats.Call call) {
                this.f28524a = call;
            }

            @Override // java.lang.Runnable
            public void run() {
                Bundle bundle = new Bundle();
                bundle.putBoolean("show_sn_warning", !this.f28524a.m28529B());
                C14217x3.m2165b(C12640p0.this.f28478a, NumberDetailActivity.m26858a(C12640p0.this.f28478a, C12640p0.this.f28482e, null, bundle, View$OnClickListenerC12654n.this.f28522a == EnumC12653m.Post ? "FROM_Call_End_Post" : "FROM_Call_Dialog"));
            }
        }

        public View$OnClickListenerC12654n(EnumC12653m mVar) {
            this.f28522a = mVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!C14108o4.m2496a(C12640p0.this.f28482e, C14108o4.EnumC14110b.CALL)) {
                CallStats.Call c = CallStats.m28534h().m28539c();
                C14261f.m1982a(C14261f.EnumC14264c.a_CED_Action, C12640p0.this.f28490m != null && C12640p0.this.f28490m.m28308m0() ? C14261f.EnumC14263b.whoscall_card : c.m28477z() ? C14261f.EnumC14263b.missed_call : C14261f.EnumC14263b.info, this.f28522a == EnumC12653m.ActionBtn ? C14261f.EnumC14262a.view_more : C14261f.EnumC14262a.ndp, c, C14108o4.m2474l(C12640p0.this.f28482e));
                new C13877a2(c.m28477z() ? C14241a.EnumC14244c.MissCallEnd : C14241a.EnumC14244c.MainAction, C14241a.EnumC14243b.EnterNdp).m3267a(C14037j3.m2731a());
                C12640p0.this.f28479b.m5555b(false, "openNdp");
                C12640p0.this.f28479b.m5556b(true);
                C14174u.m2293k().postDelayed(new RunnableC12655a(c), 300L);
            }
        }
    }

    /* renamed from: j.a.j0.u.d.p0$o */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/p0$o.class */
    public class View$OnClickListenerC12656o implements View.OnClickListener {

        /* renamed from: a */
        public View.OnClickListener f28526a;

        public View$OnClickListenerC12656o(C12640p0 p0Var, View.OnClickListener onClickListener) {
            this.f28526a = null;
            this.f28526a = onClickListener;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            View.OnClickListener onClickListener = this.f28526a;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
            C14037j3.m2731a().mo2704a(new C14019h0());
        }
    }

    public C12640p0(@NonNull Context context, @NonNull C12680t0 t0Var, @NonNull AbstractC12699w0 w0Var, @NonNull ViewGroup viewGroup) {
        new SparseArray();
        this.f28478a = context;
        this.f28479b = t0Var;
        this.f28480c = w0Var;
        this.f28481d = viewGroup;
        this.f28483f.gravity = 48;
        this.f28485h = null;
        String h = CallStats.m28534h().m28539c().m28495h();
        if (h == null) {
            this.f28482e = "";
        } else {
            this.f28482e = h;
        }
        boolean z = !CallStats.m28534h().m28539c().m28529B();
        this.f28488k = z && !TextUtils.isEmpty(this.f28482e) && C14093n4.m2569f(this.f28482e);
        this.f28484g = C14108o4.m2493a(this.f28482e, true, z);
        if (C14108o4.m2496a(this.f28482e, C14108o4.EnumC14110b.CALL)) {
            this.f28487j = true;
        } else {
            this.f28487j = false;
            this.f28485h = C14217x3.m2146e(this.f28478a, this.f28482e);
            this.f28486i = !C14217x3.m2160b(this.f28485h);
        }
        m5666d();
    }

    /* renamed from: a */
    public final Pair<C12651k, C12651k> m5696a(NumberInfo numberInfo, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        C12651k kVar;
        C12651k kVar2;
        C12651k kVar3 = new C12651k(this, null);
        C12651k kVar4 = new C12651k(this, null);
        if (z5) {
            kVar3.f28516a = EnumC12650j.DbUpdate;
            kVar3.f28517b = m5702a(R$string.ced_cta_update_offlinedb_expired);
            kVar4.f28516a = EnumC12650j.IAP;
            kVar4.f28517b = m5702a(R$string.ced_cta_upgrade_premium_offlinedb_expired);
            kVar2 = kVar4;
        } else {
            kVar = m5697a(numberInfo, z, z2, z3, z4);
            if (numberInfo != null && numberInfo.m28370Z() && !numberInfo.m28308m0()) {
                EnumC12650j jVar = kVar.f28516a;
                EnumC12650j jVar2 = EnumC12650j.Block;
                if (jVar == jVar2) {
                    kVar3.f28516a = EnumC12650j.Report;
                    kVar3.f28517b = m5702a(R$string.callend_edit);
                    kVar2 = kVar;
                } else {
                    kVar4.f28516a = jVar2;
                    kVar4.f28517b = m5702a(R$string.callenddialog_block);
                    kVar2 = kVar4;
                    return new Pair<>(kVar, kVar2);
                }
            } else if (z6) {
                kVar3.f28516a = EnumC12650j.DbUpdate;
                kVar3.f28517b = m5702a(R$string.ced_cta_update_offlinedb_expired);
                kVar2 = kVar;
            } else {
                kVar2 = null;
                return new Pair<>(kVar, kVar2);
            }
        }
        kVar = kVar3;
        return new Pair<>(kVar, kVar2);
    }

    /* renamed from: a */
    public final View.OnClickListener m5698a(final NumberInfo numberInfo, final boolean z, final ReportDialogActivity.EnumC4379w wVar) {
        return new View.OnClickListener() { // from class: j.a.j0.u.d.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C12640p0.this.m5678a(z, numberInfo, wVar, view);
            }
        };
    }

    /* renamed from: a */
    public final View.OnClickListener m5694a(final RowInfo rowInfo, final ReportDialogActivity.EnumC4379w wVar) {
        return new View.OnClickListener() { // from class: j.a.j0.u.d.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C12640p0.this.m5693a(rowInfo, wVar, view);
            }
        };
    }

    /* renamed from: a */
    public final View.OnClickListener m5679a(final boolean z, NumberInfo numberInfo) {
        return new View.OnClickListener() { // from class: j.a.j0.u.d.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C12640p0.this.m5680a(z, view);
            }
        };
    }

    @NonNull
    /* renamed from: a */
    public final C12651k m5697a(NumberInfo numberInfo, boolean z, boolean z2, boolean z3, boolean z4) {
        C12651k kVar = new C12651k(this, null);
        int i = R$string.callenddialog_block;
        if (z) {
            kVar.f28516a = EnumC12650j.Block;
            kVar.f28517b = m5702a(R$string.callenddialog_block);
        } else if (numberInfo == null || !numberInfo.m28308m0()) {
            int i2 = R$string.callend_edit;
            if (numberInfo != null && z2) {
                kVar.f28516a = numberInfo.m28370Z() ? EnumC12650j.Report : EnumC12650j.Block;
                if (numberInfo.m28370Z()) {
                    i = R$string.callend_edit;
                }
                kVar.f28517b = m5702a(i);
            } else if (z4) {
                kVar.f28516a = EnumC12650j.Call;
                kVar.f28517b = m5702a(R$string.callend_callback);
            } else if (!z3) {
                kVar.f28516a = EnumC12650j.Report;
                if (!numberInfo.m28353a0()) {
                    i2 = R$string.callend_report;
                }
                kVar.f28517b = m5702a(i2);
            } else {
                kVar.f28516a = EnumC12650j.Call;
                kVar.f28517b = m5702a(R$string.callend_callback);
            }
        } else if (z3) {
            kVar.f28516a = EnumC12650j.Call;
            kVar.f28517b = m5702a(R$string.callend_callback);
        } else {
            kVar.f28516a = EnumC12650j.More;
            kVar.f28517b = m5702a(R$string.callend_enterndp);
        }
        return kVar;
    }

    /* renamed from: a */
    public final HandlerC12947l m5690a(AbstractC12571k kVar) {
        return kVar instanceof C12584p ? new HandlerC12561e(this.f28479b) : ((kVar instanceof C12587q) || (kVar instanceof C12596t)) ? new HandlerC12557b(this.f28479b) : null;
    }

    /* renamed from: a */
    public final C14261f.EnumC14263b m5682a(AbstractC12604b bVar, NumberInfo numberInfo, String str) {
        C14261f.EnumC14263b bVar2;
        CallStats.Call c = CallStats.m28534h().m28539c();
        String l = C14108o4.m2474l(str);
        if (numberInfo != null && numberInfo.m28308m0()) {
            bVar2 = C14261f.EnumC14263b.whoscall_card;
        } else if (this.f28487j) {
            bVar2 = C14261f.EnumC14263b.private_number;
        } else if (c.m28477z()) {
            new C13877a2(C14241a.EnumC14244c.MissCallEnd, C14241a.EnumC14243b.View).m3267a(C14037j3.m2731a());
            bVar2 = C14261f.EnumC14263b.missed_call;
        } else {
            new C13877a2(C14241a.EnumC14244c.MainAction, C14241a.EnumC14243b.View).m3267a(C14037j3.m2731a());
            bVar2 = C14261f.EnumC14263b.info;
        }
        C14261f.m1982a(C14261f.EnumC14264c.a_CED_View, bVar2, null, c, l);
        m5684a(bVar, new View$OnClickListenerC12649i(this, bVar2, c, l));
        return bVar2;
    }

    /* renamed from: a */
    public String m5702a(int i) {
        return C14206w4.m2225a(i);
    }

    /* renamed from: a */
    public void m5703a() {
        ViewGroup viewGroup = this.f28489l;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            this.f28489l = null;
        }
    }

    /* renamed from: a */
    public final void m5701a(SpannableString spannableString, TextView textView, RowInfo rowInfo) {
        textView.setText(spannableString);
        textView.setVisibility(0);
        if (rowInfo != null && rowInfo.m28226g() != null && rowInfo.m28226g().whoscall.favored) {
            textView.setText(CallUtils.m26593a(this.f28478a, (int) R$drawable.call_favorite_green_icon, textView.getText()));
        }
    }

    /* renamed from: a */
    public final void m5700a(View view) {
        this.f28481d.removeAllViews();
        this.f28481d.addView(view, -1, -2);
    }

    /* renamed from: a */
    public final void m5699a(TextView textView, C12651k kVar, NumberInfo numberInfo, RowInfo rowInfo, boolean z, ReportDialogActivity.EnumC4379w wVar) {
        View.OnClickListener onClickListener;
        switch (C12641a.f28493a[kVar.f28516a.ordinal()]) {
            case 2:
                onClickListener = m5698a(numberInfo, z, wVar);
                break;
            case 3:
                onClickListener = m5694a(rowInfo, wVar);
                break;
            case 4:
            case 5:
                onClickListener = new View$OnClickListenerC12654n(EnumC12653m.ActionBtn);
                break;
            case 6:
                onClickListener = m5670c();
                break;
            case 7:
                textView.setTextColor(ContextCompat.getColor(this.f28478a, 2131100044));
                onClickListener = m5661f();
                break;
            case 8:
                onClickListener = m5663e();
                break;
            default:
                onClickListener = m5679a(z, numberInfo);
                break;
        }
        textView.setVisibility(0);
        textView.setText(kVar.f28517b);
        textView.setOnClickListener(onClickListener);
    }

    /* renamed from: a */
    public final void m5695a(RowInfo rowInfo) {
        AbstractC12609g b = this.f28480c.mo5515b();
        m5700a(b.mo5817a(this.f28478a));
        b.mo5800g().setOnClickListener(new View$OnClickListenerC12654n(EnumC12653m.CallEndDialog));
        TextView h = b.mo5799h();
        TextView d = b.mo5803d();
        View m = b.mo5805m();
        m5685a(b);
        m5672b(b);
        b.mo5804a().setImageResource(C13909c.m3071b().m3076w().m3069a());
        h.setVisibility(0);
        h.setText(this.f28486i ? this.f28485h : C14147s.m2358a(this.f28484g));
        d.setText(rowInfo.m28223i().name);
        m.setBackgroundResource(R$drawable.call_normal_bg);
        m.setOnClickListener(new View$OnClickListenerC12643c());
        C14261f.m1982a(C14261f.EnumC14264c.a_CED_View, C14261f.EnumC14263b.no_internet, null, CallStats.m28534h().m28539c(), C14108o4.m2474l(this.f28482e));
        m5684a(b, new View$OnClickListenerC12644d());
    }

    /* renamed from: a */
    public /* synthetic */ void m5693a(RowInfo rowInfo, ReportDialogActivity.EnumC4379w wVar, View view) {
        C14241a.EnumC14244c cVar = C14241a.EnumC14244c.MainAction;
        new C13877a2(cVar, C14241a.EnumC14243b.Tag).m3267a(C14037j3.m2731a());
        C14261f.m1982a(C14261f.EnumC14264c.a_CED_Action, C14261f.EnumC14263b.info, C14261f.EnumC14262a.report_tag, CallStats.m28534h().m28539c(), C14108o4.m2474l(this.f28482e));
        CallStats.Call c = CallStats.m28534h().m28539c();
        DataUserReport dataUserReport = new DataUserReport(this.f28482e, C14108o4.m2474l(this.f28482e), rowInfo.m28226g().m28393C(), rowInfo.m28226g().m28383M(), DataUserReport.Source.CALL);
        dataUserReport.m28472a(c);
        m5691a(rowInfo, false, new HandlerC12633m0(this), false, false, dataUserReport, false, cVar, wVar);
    }

    /* renamed from: a */
    public final void m5692a(@Nullable RowInfo rowInfo, CallStats.Call call, boolean z) {
        AbstractC12610h a = this.f28480c.mo5516a(false);
        m5700a(a.mo5817a(this.f28478a));
        a.mo5800g().setOnClickListener(new View$OnClickListenerC12654n(EnumC12653m.CallEndDialog));
        RecycleSafeImageView a2 = a.mo5804a();
        TextView h = a.mo5799h();
        TextView f = a.mo5801f();
        TextView d = a.mo5803d();
        boolean z2 = a instanceof AbstractC12608f;
        TextView k = z2 ? ((AbstractC12608f) a).mo5807k() : null;
        boolean z3 = a instanceof AbstractC12607e;
        ImageView c = z3 ? ((AbstractC12607e) a).mo5810c() : null;
        TextView l = z2 ? ((AbstractC12608f) a).mo5806l() : null;
        NumberInfo g = rowInfo != null ? rowInfo.m28226g() : null;
        boolean z4 = rowInfo != null && rowInfo.m28224h().type == RowInfo.Primary.Type.SPOOF;
        boolean z5 = !this.f28486i && (this.f28487j || (g != null && g.m28329f0()));
        m5672b(a);
        m5668c(a);
        ReportDialogActivity.EnumC4379w wVar = m5682a(a, g, this.f28482e) == C14261f.EnumC14263b.info ? ReportDialogActivity.EnumC4379w.MAIN_ACTION : null;
        AbstractC12569j a3 = new C12558c(rowInfo, call).m5908a();
        if (a3 != null) {
            m5701a(a3.mo5863a(), h, rowInfo);
            h.setTextColor(a3.mo5860c());
            Spannable a4 = a3.mo5828a(this.f28484g, this.f28486i);
            if (a4 != null) {
                f.setText(a4);
                f.setVisibility(0);
            } else {
                f.setVisibility(8);
            }
            int e = a3.mo5859e();
            boolean z6 = true;
            if (e != 1) {
                z6 = false;
            }
            f.setSingleLine(z6);
            f.setMaxLines(e);
            String description = a3.description();
            if (description != null) {
                d.setText(description);
                d.setVisibility(0);
            } else {
                d.setVisibility(8);
            }
            d.setTextColor(a3.mo5861b());
            if (k != null) {
                k.setVisibility(a3.mo5827d() ? 0 : 8);
            }
            if (l != null) {
                l.setVisibility(a3.mo5862a(rowInfo, this.f28486i) ? 0 : 8);
            }
            if (z3) {
                boolean z7 = a3 instanceof C12568i;
                Pair<C12651k, C12651k> a5 = m5696a(g, z4, z5, z, this.f28486i, z7, !C14108o4.m2496a(this.f28482e, C14108o4.EnumC14110b.CALL) && !z7 && C14063l4.m2668c(rowInfo.m28224h(), this.f28486i));
                C12651k kVar = (C12651k) a5.first;
                C12651k kVar2 = (C12651k) a5.second;
                AbstractC12607e eVar = (AbstractC12607e) a;
                m5699a(eVar.getActionView(), kVar, g, rowInfo, z, wVar);
                if (kVar2 != null) {
                    eVar.mo5811a(0);
                    m5699a(eVar.mo5809i(), kVar2, g, rowInfo, z, wVar);
                }
            }
            if (a3 instanceof C12562f) {
                a2.setImageResource(C13909c.m3071b().m3094e().m3069a());
                CallUtils.m26555b(a2, c, rowInfo, this.f28482e, CallUtils.EnumC4993l.CALL_END_DIALOG);
            } else if (a3 instanceof C12568i) {
                a2.setImageResource(C13909c.m3071b().m3077v().m3069a());
            } else {
                CallUtils.m26576a(a2, c, rowInfo, (String) null, CallUtils.EnumC4993l.CALL_END_DIALOG);
                if (this.f28487j) {
                    f.setVisibility(8);
                }
            }
            if (g != null) {
                m5683a(a, g);
            }
        }
    }

    /* renamed from: a */
    public final void m5691a(RowInfo rowInfo, boolean z, HandlerC12947l lVar, boolean z2, boolean z3, DataUserReport dataUserReport, boolean z4, C14241a.EnumC14244c cVar, ReportDialogActivity.EnumC4379w wVar) {
        this.f28479b.m5543k();
        if (lVar != null) {
            lVar.mo4942b();
        }
        Intent a = ReportDialogActivity.m28958a(this.f28478a, dataUserReport, C14108o4.m2474l(this.f28482e), this.f28482e, (String[]) rowInfo.m28226g().m28324h().toArray(new String[rowInfo.m28226g().m28324h().size()]), cVar, false, true, z, z2, z3, z4, wVar, lVar);
        a.setFlags(268435456);
        C14037j3.m2731a().mo2704a(new C13913b1(1));
        this.f28478a.startActivity(a);
    }

    /* renamed from: a */
    public final void m5689a(@NonNull AbstractC12571k kVar, RowInfo rowInfo) {
        QuestionDialogView b = m5677b();
        CallUtils.m26576a(b.m26514b(), b.m26521a(), rowInfo, (String) null, CallUtils.EnumC4993l.CALL_END_DIALOG);
        b.m26515a(kVar.mo5846a());
        b.m26520a(0);
        b.m26513b(kVar.mo5841b());
        b.m26517a(0, kVar.mo5837e());
        b.m26519a(0, kVar.mo5839c());
        b.m26517a(1, kVar.mo5838d());
        b.m26516a(new View$OnClickListenerC12656o(this, kVar.mo5834h()));
        b.m26518a(0, kVar.mo5840b(this.f28478a, this.f28492o, m5690a(kVar)));
        b.m26518a(1, kVar.mo5845a(this.f28478a, this.f28492o, m5674b(kVar)));
        kVar.mo5836f().m3267a(C14037j3.m2731a());
        if (kVar.mo5833i() != null) {
            C14261f.m1982a(C14261f.EnumC14264c.a_CED_View, kVar.mo5833i(), null, CallStats.m28534h().m28539c(), C14108o4.m2474l(this.f28482e));
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m5688a(AbstractC12573l lVar, CallStats.Call call, View view) {
        new C13877a2(lVar.mo5835g(), C14241a.EnumC14243b.AddContact).m3267a(C14037j3.m2731a());
        C14261f.m1982a(C14261f.EnumC14264c.a_CED_Action, lVar.mo5833i(), C14261f.EnumC14262a.add_contact, call, C14108o4.m2474l(this.f28482e));
        String a = call.m28525a();
        String h = call.m28495h();
        this.f28479b.m5556b(true);
        Intent intent = new Intent("android.intent.action.INSERT", ContactsContract.Contacts.CONTENT_URI);
        intent.setFlags(268435456);
        intent.putExtra("name", a);
        intent.putExtra("phone", h);
        try {
            UnlockActivity.m28892a(intent);
        } catch (ActivityNotFoundException e) {
            C14687h.m861a(this.f28478a, m5702a(R$string.not_support_function), 1).m858c();
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m5687a(AbstractC12573l lVar, CallStats.Call call, RowInfo rowInfo, View view) {
        new C13877a2(lVar.mo5835g(), C14241a.EnumC14243b.EnterTag).m3267a(C14037j3.m2731a());
        C14261f.m1982a(C14261f.EnumC14264c.a_CED_Action, lVar.mo5833i(), C14261f.EnumC14262a.report_tag, call, C14108o4.m2474l(this.f28482e));
        C14147s.m2362a(this.f28478a, this.f28492o, rowInfo, this.f28482e, false, new HandlerC12658q0(this, call, rowInfo), false, false, false, lVar.mo5844a(rowInfo, this.f28482e).m28472a(call), lVar);
    }

    /* renamed from: a */
    public final void m5686a(@NonNull final AbstractC12573l lVar, final RowInfo rowInfo, final CallStats.Call call) {
        AbstractC12606d a = this.f28480c.mo5517a();
        m5700a(a.mo5817a(this.f28478a));
        TextView o = a.mo5814o();
        TextView n = a.mo5815n();
        View p = a.mo5813p();
        View q = a.mo5812q();
        o.setText(lVar.mo5846a());
        n.setOnClickListener(new View.OnClickListener() { // from class: j.a.j0.u.d.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C12640p0.this.m5687a(lVar, call, rowInfo, view);
            }
        });
        C14217x3.m2180a(p, true);
        p.setOnClickListener(new View.OnClickListener() { // from class: j.a.j0.u.d.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C12640p0.this.m5673b(lVar, call, rowInfo, view);
            }
        });
        q.setOnClickListener(new View.OnClickListener() { // from class: j.a.j0.u.d.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C12640p0.this.m5688a(lVar, call, view);
            }
        });
        m5684a(a, lVar.mo5834h());
        lVar.mo5836f().m3267a(C14037j3.m2731a());
        C14261f.m1982a(C14261f.EnumC14264c.a_CED_View, lVar.mo5833i(), null, CallStats.m28534h().m28539c(), C14108o4.m2474l(this.f28482e));
    }

    /* renamed from: a */
    public final void m5685a(AbstractC12604b bVar) {
        m5684a(bVar, (View.OnClickListener) null);
    }

    /* renamed from: a */
    public final void m5684a(AbstractC12604b bVar, View.OnClickListener onClickListener) {
        View b = bVar != null ? bVar.mo5816b() : null;
        if (b != null) {
            b.setOnClickListener(new View$OnClickListenerC12656o(this, onClickListener));
        }
    }

    /* renamed from: a */
    public final void m5683a(AbstractC12604b bVar, NumberInfo numberInfo) {
        if (!CallStats.m28534h().m28539c().m28477z() && numberInfo.m28308m0() && (bVar instanceof AbstractC12607e)) {
            TextView j = ((AbstractC12608f) bVar).mo5808j();
            SpannableStringBuilder[] a = C14123p4.m2436a(numberInfo.m28293u());
            boolean c = C14123p4.m2422c(numberInfo.m28293u());
            String a2 = C14123p4.m2435a(numberInfo.m28293u(), C14123p4.m2434a(numberInfo.m28293u(), c), true);
            if (numberInfo.m28376T() || a != null) {
                j.setVisibility(0);
                if (a != null) {
                    if (c) {
                        j.setText(m5702a(R$string.callend_rich_open) + " " + a2);
                        j.setTextColor(Color.parseColor("#32c024"));
                    } else {
                        j.setText(m5702a(R$string.callend_rich_close) + " " + a2);
                        j.setTextColor(Color.parseColor("#222222"));
                    }
                    j.setVisibility(0);
                    return;
                }
                j.setVisibility(8);
                return;
            }
            j.setVisibility(8);
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m5680a(boolean z, View view) {
        if (z) {
            try {
                new C13877a2(C14241a.EnumC14244c.MissCallEnd, C14241a.EnumC14243b.CallBack).m3267a(C14037j3.m2731a());
            } catch (Exception e) {
                return;
            }
        }
        C14261f.m1982a(C14261f.EnumC14264c.a_CED_Action, z ? C14261f.EnumC14263b.missed_call : C14261f.EnumC14263b.info, C14261f.EnumC14262a.call, CallStats.m28534h().m28539c(), C14108o4.m2474l(this.f28482e));
        this.f28479b.m5555b(false, "makeCall");
        C14217x3.m2182a(MyApplication.m29013o(), CallStats.m28534h().m28539c().m28495h(), false, 15);
        this.f28479b.m5556b(true);
    }

    /* renamed from: a */
    public /* synthetic */ void m5678a(boolean z, NumberInfo numberInfo, ReportDialogActivity.EnumC4379w wVar, View view) {
        C14241a.EnumC14244c cVar;
        CallStats.Call c = CallStats.m28534h().m28539c();
        C14261f.m1982a(C14261f.EnumC14264c.a_CED_Action, this.f28487j ? C14261f.EnumC14263b.private_number : z ? C14261f.EnumC14263b.missed_call : C14261f.EnumC14263b.info, C14261f.EnumC14262a.block, CallStats.m28534h().m28539c(), C14108o4.m2474l(this.f28482e));
        if (z) {
            cVar = C14241a.EnumC14244c.MissCallEnd;
        } else {
            cVar = C14241a.EnumC14244c.MainAction;
            this.f28491n = true;
        }
        new C13877a2(cVar, C14241a.EnumC14243b.Block).m3267a(C14037j3.m2731a());
        DataUserReport dataUserReport = new DataUserReport(this.f28482e, C14108o4.m2474l(this.f28482e), numberInfo.m28393C(), numberInfo.m28383M(), DataUserReport.Source.CALL);
        dataUserReport.m28472a(c);
        C14147s.m2361a(this.f28478a, this.f28492o, true, z, this.f28491n, new HandlerC12631l0(this), dataUserReport, cVar, wVar);
    }

    @NonNull
    /* renamed from: b */
    public final QuestionDialogView m5677b() {
        QuestionDialogView questionDialogView = new QuestionDialogView(this.f28478a);
        m5700a(questionDialogView);
        return questionDialogView;
    }

    /* renamed from: b */
    public final HandlerC12947l m5674b(AbstractC12571k kVar) {
        return ((kVar instanceof C12584p) || (kVar instanceof C12575m) || (kVar instanceof C12587q) || (kVar instanceof C12592s) || (kVar instanceof C12596t) || (kVar instanceof C12563g)) ? new HandlerC12561e(this.f28479b) : kVar instanceof C12579n ? new HandlerC12648h() : null;
    }

    /* renamed from: b */
    public /* synthetic */ void m5676b(View view) {
        CallStats.Call c = CallStats.m28534h().m28539c();
        this.f28479b.m5555b(false, "addToFavorite");
        this.f28479b.m5556b(true);
        String l = C14108o4.m2474l(this.f28482e);
        C14261f.m1982a(C14261f.EnumC14264c.a_CED_Action, C14261f.EnumC14263b.info, C14261f.EnumC14262a.report_favorite, c, l);
        Single.create(new C12638o0(this, l)).subscribeOn(Schedulers.computation()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C12635n0(this, l), C14081m3.m2611a());
    }

    /* renamed from: b */
    public void m5675b(@Nullable RowInfo rowInfo) {
        NumberInfo g = rowInfo == null ? null : rowInfo.m28226g();
        if (!this.f28486i) {
            if (rowInfo == null || g == null || g.m28294t0()) {
                m5666d();
                return;
            } else if (g.m28298r0()) {
                m5695a(rowInfo);
                return;
            }
        }
        this.f28490m = g;
        CallStats.Call c = CallStats.m28534h().m28539c();
        boolean z = c.m28477z();
        if (rowInfo != null) {
            AbstractC12573l a = new C12559d(rowInfo, c, this.f28486i, this.f28487j, this.f28488k, this.f28482e, this.f28484g).m5902a();
            if (!(a instanceof C12579n) && c.m28529B()) {
                g.m28332f();
            }
            if (a instanceof C12555a) {
                m5686a(a, rowInfo, c);
                return;
            } else if (a instanceof AbstractC12571k) {
                m5689a((AbstractC12571k) a, rowInfo);
                return;
            }
        }
        m5692a(rowInfo, c, z);
    }

    /* renamed from: b */
    public /* synthetic */ void m5673b(AbstractC12573l lVar, CallStats.Call call, RowInfo rowInfo, View view) {
        new C13877a2(lVar.mo5835g(), C14241a.EnumC14243b.EnterTag).m3267a(C14037j3.m2731a());
        C14261f.m1982a(C14261f.EnumC14264c.a_CED_Action, lVar.mo5833i(), C14261f.EnumC14262a.report_tag, call, C14108o4.m2474l(this.f28482e));
        C14147s.m2362a(this.f28478a, this.f28492o, rowInfo, this.f28482e, false, new HandlerC12561e(this.f28479b), true, false, false, lVar.mo5844a(rowInfo, this.f28482e).m28472a(call), lVar);
    }

    /* renamed from: b */
    public final void m5672b(AbstractC12604b bVar) {
        if (bVar instanceof AbstractC12610h) {
            TextView e = ((AbstractC12610h) bVar).mo5802e();
            e.setVisibility(4);
            if (CallStats.m28534h().m28539c().m28477z()) {
                e.setTextColor(C14167t.m2315a(2131099810));
                e.setCompoundDrawablesWithIntrinsicBounds(R$drawable.call_end_missed_call_icon, 0, 0, 0);
                C14123p4.m2444a(this.f28478a, e, CallStats.m28534h().m28539c().m28493j(), 1, CallStats.m28534h().m28539c().m28493j() - CallStats.m28534h().m28539c().m28502e());
                e.setText(e.getText());
                e.setVisibility(0);
                return;
            }
            e.setTextColor(Color.parseColor("#333333"));
            CallStats.m28534h().m28539c().m28517a(new C12647g(e));
        }
    }

    /* renamed from: c */
    public final View.OnClickListener m5670c() {
        return new View.OnClickListener() { // from class: j.a.j0.u.d.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C12640p0.this.m5676b(view);
            }
        };
    }

    /* renamed from: c */
    public /* synthetic */ void m5669c(View view) {
        this.f28479b.m5555b(false, "upgradeAutoUpdate");
        Intent a = IapActivity.m28109a(this.f28478a, "ced_offlinedb_expired", null, null);
        a.setFlags(268435456);
        this.f28478a.startActivity(a);
        this.f28479b.m5556b(true);
    }

    /* renamed from: c */
    public final void m5668c(AbstractC12604b bVar) {
        if ((bVar instanceof AbstractC12605c) && !AdUtils.m28816a(this.f28478a)) {
        }
    }

    /* renamed from: d */
    public final void m5666d() {
        AbstractC12610h c = this.f28480c.mo5514c();
        m5700a(c.mo5817a(this.f28478a));
        c.mo5800g().setOnClickListener(new View$OnClickListenerC12654n(EnumC12653m.CallEndDialog));
        TextView h = c.mo5799h();
        TextView d = c.mo5803d();
        m5685a(c);
        m5672b(c);
        RecycleSafeImageView a = c.mo5804a();
        if (this.f28486i) {
            CallUtils.m26572a(this.f28482e, new C12645e(this, a));
        } else {
            a.setImageResource(C13909c.m3071b().m3077v().m3069a());
        }
        h.setVisibility(0);
        h.setText(this.f28486i ? this.f28485h : C14147s.m2358a(this.f28484g));
        String a2 = m5702a(R$string.calldialog_searching);
        d.setText(a2);
        if (C13891a.m3156f()) {
            d.postDelayed(new RunnableC12646f(d, a2), 12000L);
        }
    }

    /* renamed from: d */
    public /* synthetic */ void m5665d(View view) {
        this.f28479b.m5555b(false, "manualUpdate");
        Intent a = OfflineDbActivity.m26782a(this.f28478a, C14063l4.m2700B() ? "ced_offlinedb_expired_p1" : C14063l4.m2699C() ? "ced_offlinedb_expired_p2" : "ced");
        a.setFlags(268435456);
        this.f28478a.startActivity(a);
        this.f28479b.m5556b(true);
    }

    /* renamed from: e */
    public final View.OnClickListener m5663e() {
        return new View.OnClickListener() { // from class: j.a.j0.u.d.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C12640p0.this.m5669c(view);
            }
        };
    }

    /* renamed from: f */
    public final View.OnClickListener m5661f() {
        return new View.OnClickListener() { // from class: j.a.j0.u.d.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C12640p0.this.m5665d(view);
            }
        };
    }
}

package gogolook.callgogolook2.phone;

import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.PowerManager;
import android.os.SystemClock;
import android.telecom.Call;
import android.telecom.CallAudioState;
import android.telecom.InCallService;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.app.NotificationCompat;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import java.util.HashMap;
import java.util.List;
import p081h.p160h.p172b.p173a.C6298e;
import p459j.p460a.p521j0.C12492c;
import p459j.p460a.p521j0.C12500e;
import p459j.p460a.p521j0.C12505i;
import p459j.p460a.p521j0.C12506j;
import p459j.p460a.p521j0.C12507k;
import p459j.p460a.p521j0.C12508l;
import p459j.p460a.p521j0.C12509m;
import p459j.p460a.p521j0.C12510n;
import p459j.p460a.p521j0.C12511o;
import p459j.p460a.p521j0.C12512p;
import p459j.p460a.p521j0.C12513q;
import p459j.p460a.p521j0.C12515r;
import p459j.p460a.p521j0.C12516s;
import p459j.p460a.p521j0.C12517t;
import p459j.p460a.p521j0.EnumC12488a;
import p459j.p460a.p521j0.p522u.C12520b;
import p459j.p460a.p521j0.p522u.p523d.C12617h0;
import p459j.p460a.p521j0.p522u.p523d.C12664s0;
import p459j.p460a.p521j0.p522u.p523d.EnumC12627j0;
import p459j.p460a.p582w0.C13954d0;
import p459j.p460a.p582w0.C13983e0;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14081m3;
import p459j.p460a.p582w0.C14087n;
import p459j.p460a.p582w0.C14093n4;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14174u;
import p459j.p460a.p582w0.C14195v2;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p583a5.C13892b;
import p459j.p460a.p582w0.p583a5.C13893c;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p590x4.C14300r;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.Subscription;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
@RequiresApi(api = 23)
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallService.class */
public class WCInCallService extends InCallService {

    /* renamed from: n */
    public static String f12253n = WCInCallService.class.getSimpleName();

    /* renamed from: o */
    public static boolean f12254o = false;

    /* renamed from: a */
    public KeyguardManager f12255a;

    /* renamed from: b */
    public PowerManager f12256b;

    /* renamed from: c */
    public NotificationManager f12257c;

    /* renamed from: d */
    public Subscription f12258d;

    /* renamed from: e */
    public Handler f12259e;

    /* renamed from: f */
    public C12492c f12260f;

    /* renamed from: g */
    public HashMap<Call, CallStats.Call.Remote> f12261g;

    /* renamed from: h */
    public C12617h0 f12262h;

    /* renamed from: i */
    public C12520b f12263i;

    /* renamed from: j */
    public BroadcastReceiver f12264j;

    /* renamed from: k */
    public boolean f12265k = false;

    /* renamed from: l */
    public C12513q f12266l = null;

    /* renamed from: m */
    public Call.Callback f12267m = new C4964a();

    /* renamed from: gogolook.callgogolook2.phone.WCInCallService$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallService$a.class */
    public class C4964a extends Call.Callback {
        public C4964a() {
        }

        @Override // android.telecom.Call.Callback
        public void onCallDestroyed(Call call) {
            super.onCallDestroyed(call);
        }

        @Override // android.telecom.Call.Callback
        public void onDetailsChanged(Call call, Call.Details details) {
            super.onDetailsChanged(call, details);
        }

        @Override // android.telecom.Call.Callback
        public void onPostDialWait(Call call, String str) {
            super.onPostDialWait(call, str);
        }

        @Override // android.telecom.Call.Callback
        public void onStateChanged(Call call, int i) {
            super.onStateChanged(call, i);
            List<Call> f = WCInCallService.this.f12260f.m5991f();
            if (f != null) {
                for (Call call2 : f) {
                }
                List<Call> e = WCInCallService.this.f12260f.m5992e();
                int size = e.size();
                Call h = WCInCallService.this.f12260f.m5989h();
                boolean z = false;
                if (h != null) {
                    z = false;
                    if (h.getState() == 3) {
                        z = false;
                        if (h == call) {
                            z = false;
                            if (size > 1) {
                                while (true) {
                                    size--;
                                    z = false;
                                    if (size < 0) {
                                        break;
                                    }
                                    Call call3 = e.get(size);
                                    if (call3 != h) {
                                        e.remove(call3);
                                        e.add(call3);
                                        WCInCallService.this.f12260f.m5993d(call3);
                                        if (WCInCallService.this.f12260f.m6008a()) {
                                            CallStats.m28534h().m28539c().m28519a((CallStats.Call.Remote) WCInCallService.this.f12261g.get(call3));
                                        }
                                        z = true;
                                    }
                                }
                            }
                        }
                    }
                }
                C12492c.C12493a b = WCInCallService.this.f12260f.m5999b(call);
                if (call.getState() == 4 && b.m5988a() == -1) {
                    b.m5987a(SystemClock.elapsedRealtime());
                    if (!b.m5979e()) {
                        WCInCallService.this.f12263i.m5951b();
                    }
                }
                C14037j3.m2731a().mo2704a(new C12512p(z));
                WCInCallService.this.m26664b(h);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.WCInCallService$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallService$b.class */
    public class C4965b implements C12617h0.AbstractC12623f {
        public C4965b() {
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.C12617h0.AbstractC12623f
        public void onStop() {
            WCInCallService.this.f12262h.m5723n();
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.WCInCallService$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallService$c.class */
    public class C4966c extends BroadcastReceiver {
        public C4966c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Call h = WCInCallService.this.f12260f.m5989h();
            if (h == null) {
                return;
            }
            if ("gogolook.callgogolook2.phone.PICK_UP".equals(intent.getAction())) {
                h.answer(0);
                WCInCallService.this.sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
                WCInCallService.this.m26651i();
            } else if ("gogolook.callgogolook2.phone.HANG_UP".equals(intent.getAction())) {
                h.disconnect();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.WCInCallService$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallService$d.class */
    public class C4967d implements Action1<EnumC12488a> {

        /* renamed from: a */
        public final /* synthetic */ Call f12271a;

        /* renamed from: b */
        public final /* synthetic */ C13930d f12272b;

        public C4967d(Call call, C13930d dVar) {
            this.f12271a = call;
            this.f12272b = dVar;
        }

        /* renamed from: a */
        public void call(EnumC12488a aVar) {
            if (WCInCallService.this.f12260f.m5999b(this.f12271a) == null) {
                this.f12272b.m3017f();
                String str = WCInCallService.f12253n;
                C14080m2.m2615a(str, "onCallAdded() cost " + this.f12272b.m3025a() + ", CallIntentResult = " + aVar);
                return;
            }
            WCInCallService.this.m26672a(this.f12271a, aVar, this.f12272b);
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.WCInCallService$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallService$e.class */
    public class C4968e implements Single.OnSubscribe<EnumC12488a> {

        /* renamed from: a */
        public final /* synthetic */ Call f12274a;

        public C4968e(Call call) {
            this.f12274a = call;
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super EnumC12488a> singleSubscriber) {
            singleSubscriber.onSuccess(WCInCallService.this.f12263i.m5952a(C12517t.m5964b(this.f12274a)));
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.WCInCallService$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallService$f.class */
    public class C4969f implements C12664s0.AbstractC12678l {
        public C4969f(WCInCallService wCInCallService) {
        }

        @Override // p459j.p460a.p521j0.p522u.p523d.C12664s0.AbstractC12678l
        /* renamed from: a */
        public void mo5573a() {
            C14037j3.m2731a().mo2704a(new C12505i());
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.WCInCallService$g */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/WCInCallService$g.class */
    public class C4970g implements Action1<Object> {
        public C4970g() {
        }

        @Override // p660rx.functions.Action1
        public void call(Object obj) {
            RowInfo rowInfo;
            if (obj instanceof C12507k) {
                C14037j3.m2731a().mo2704a(new C12511o(WCInCallService.this.f12260f));
                CallAudioState callAudioState = WCInCallService.this.getCallAudioState();
                if (callAudioState != null) {
                    WCInCallService.this.f12260f.m6006a(callAudioState);
                    C14037j3.m2731a().mo2704a(new C12509m());
                }
            } else if (obj instanceof C12500e) {
                C12500e eVar = (C12500e) obj;
                CallAudioState callAudioState2 = WCInCallService.this.getCallAudioState();
                if (callAudioState2 != null) {
                    C12500e.EnumC12501a aVar = eVar.f28196a;
                    if (aVar == C12500e.EnumC12501a.Speaker) {
                        WCInCallService.this.setAudioRoute(eVar.f28197b);
                    } else if (aVar == C12500e.EnumC12501a.Mute) {
                        WCInCallService.this.setMuted(!callAudioState2.isMuted());
                    }
                }
            } else if (obj instanceof C12510n) {
                Call h = WCInCallService.this.f12260f.m5989h();
                if (h != null) {
                    h.disconnect();
                }
            } else if (obj instanceof C12508l) {
                WCInCallService.this.f12265k = ((C12508l) obj).f28202a;
            } else if (obj instanceof C13954d0) {
                C13954d0 d0Var = (C13954d0) obj;
                List<Call> f = WCInCallService.this.f12260f.m5991f();
                if (f != null) {
                    for (Call call : f) {
                        C12492c.C12493a b = WCInCallService.this.f12260f.m5999b(call);
                        String a = C12517t.m5966a(call);
                        if (!(a == null || !a.equals(C14108o4.m2474l(d0Var.f31340a)) || TextUtils.isEmpty(d0Var.f31341b))) {
                            b.m5983b(d0Var.f31341b);
                            C14037j3.m2731a().mo2704a(new C12512p(false));
                            WCInCallService wCInCallService = WCInCallService.this;
                            wCInCallService.m26664b(wCInCallService.f12260f.m5989h());
                            return;
                        }
                    }
                }
            } else if (obj instanceof C13983e0) {
                C13983e0 e0Var = (C13983e0) obj;
                if (WCInCallService.this.f12260f.m5991f() != null) {
                    for (Call call2 : WCInCallService.this.f12260f.m5991f()) {
                        C12492c.C12493a b2 = WCInCallService.this.f12260f.m5999b(call2);
                        String a2 = C12517t.m5966a(call2);
                        if (!(a2 == null || !a2.equals(C14108o4.m2474l(e0Var.f31395a)) || (rowInfo = e0Var.f31396b) == null || rowInfo.m28224h() == null || TextUtils.isEmpty(e0Var.f31396b.m28224h().name))) {
                            b2.m5983b((e0Var.f31396b.m28224h().type != RowInfo.Primary.Type.NUMBER || b2.m5979e() || TextUtils.isEmpty(e0Var.f31396b.m28228f()) || !C14093n4.m2569f(e0Var.f31396b.m28228f())) ? e0Var.f31396b.m28224h().name : e0Var.f31396b.m28238c());
                            C14037j3.m2731a().mo2704a(new C12512p(false));
                            WCInCallService wCInCallService2 = WCInCallService.this;
                            wCInCallService2.m26664b(wCInCallService2.f12260f.m5989h());
                            return;
                        }
                    }
                }
            } else if (obj instanceof C12515r) {
                ((C12515r) obj).f28210a.call(Boolean.valueOf(WCInCallService.this.canAddCall()));
            } else if (obj instanceof C12513q) {
                WCInCallService.this.f12266l = (C12513q) obj;
            } else if (obj instanceof C12506j) {
                ((C12506j) obj).f28201a.call(WCInCallService.this.f12266l);
            }
        }
    }

    /* renamed from: o */
    public static boolean m26645o() {
        return f12254o;
    }

    /* renamed from: a */
    public final NotificationCompat.Action m26666a(boolean z) {
        return new NotificationCompat.Action.Builder(0, C14206w4.m2225a(z ? R$string.incall_action_button_text_hangup : R$string.incall_action_button_text_hangup_2), PendingIntent.getBroadcast(this, 0, new Intent("gogolook.callgogolook2.phone.HANG_UP"), 0)).build();
    }

    /* renamed from: a */
    public final EnumC12627j0 m26673a(@NonNull Call call) {
        return (this.f12260f.m5999b(call).m5979e() || this.f12265k || !m26659d() || C13892b.m3131d()) ? EnumC12627j0.VIEW : EnumC12627j0.SYSTEM_ALERT;
    }

    /* renamed from: a */
    public final void m26674a() {
        this.f12263i = new C12520b(this.f12260f, this.f12262h);
    }

    /* renamed from: a */
    public final void m26672a(@NonNull Call call, EnumC12488a aVar, C13930d dVar) {
        EnumC12627j0 a = m26673a(call);
        CallStats.Call c = CallStats.m28534h().m28539c();
        if (this.f12260f.m6008a()) {
            c.m28519a(c.m28492k());
        }
        this.f12261g.put(call, c.m28492k());
        if (a == EnumC12627j0.SYSTEM_ALERT) {
            if (aVar == EnumC12488a.SHOW_DIALOG) {
                this.f12262h.m5745a(new C4969f(this));
            }
        } else if (a == EnumC12627j0.VIEW && aVar != EnumC12488a.BLOCKED) {
            m26651i();
        }
        m26664b(this.f12260f.m5989h());
        dVar.m3017f();
        String str = f12253n;
        C14080m2.m2615a(str, "onCallAdded() + handleOnCallAdded() cost " + dVar.m3025a() + ", CallIntentResult = " + aVar);
    }

    /* renamed from: b */
    public final void m26665b() {
        this.f12262h = new C12617h0(this, new C4965b());
        this.f12262h.m5738b(false);
        this.f12262h.m5735c(true);
        this.f12260f.m6003a(this.f12262h);
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x015a, code lost:
        if (r0 != 9) goto L_0x0180;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m26664b(android.telecom.Call r8) {
        /*
            Method dump skipped, instructions count: 401
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.phone.WCInCallService.m26664b(android.telecom.Call):void");
    }

    /* renamed from: b */
    public final void m26662b(boolean z) {
        Intent intent = new Intent(this, WCInCallActivity.class);
        intent.putExtra(WCInCallActivity.f12164s, z);
        intent.setFlags(268435456);
        C14300r.m1653a("WCInCallActivity", intent);
        startActivity(intent);
    }

    /* renamed from: c */
    public final NotificationCompat.Action m26661c() {
        return new NotificationCompat.Action.Builder(0, C14206w4.m2225a((int) R$string.incall_action_button_text_pickup), PendingIntent.getBroadcast(this, 0, new Intent("gogolook.callgogolook2.phone.PICK_UP"), 0)).build();
    }

    /* renamed from: d */
    public final boolean m26659d() {
        return !this.f12255a.inKeyguardRestrictedInputMode() && this.f12256b.isScreenOn();
    }

    /* renamed from: e */
    public final void m26657e() {
        this.f12258d = C14037j3.m2731a().mo2703a((Action1) new C4970g());
    }

    /* renamed from: f */
    public final void m26655f() {
        this.f12264j = new C4966c();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("gogolook.callgogolook2.phone.PICK_UP");
        intentFilter.addAction("gogolook.callgogolook2.phone.HANG_UP");
        C14087n.m2601a(this, this.f12264j, intentFilter);
    }

    /* renamed from: g */
    public final void m26653g() {
        this.f12261g.clear();
    }

    /* renamed from: h */
    public final void m26652h() {
        this.f12260f = new C12492c();
        this.f12260f.m6001a(CallUtils.m26546d());
        this.f12260f.m5998b(C13891a.m3168a());
        this.f12260f.m5995c(C13892b.m3139a());
        this.f12260f.m6004a(C12492c.EnumC12494b.SPEAKER, C13893c.m3128a());
        C12520b bVar = this.f12263i;
        if (bVar != null) {
            bVar.m5953a(this.f12260f);
        }
    }

    /* renamed from: i */
    public final void m26651i() {
        m26662b(false);
    }

    /* renamed from: j */
    public final void m26650j() {
        startForeground(8500, C6298e.m23352a(this, C14195v2.f31722c).setSmallIcon(R$drawable.notification_icon).setContentTitle(C14206w4.m2225a((int) R$string.incall_notification_title_default)).setContentText(C14206w4.m2225a((int) R$string.incall_notification_desc_default)).setDefaults(0).setAutoCancel(false).setPriority(2).setGroup("incall_screen_noti_group").build());
    }

    /* renamed from: k */
    public final void m26649k() {
        stopForeground(true);
    }

    /* renamed from: l */
    public final void m26648l() {
        Subscription subscription = this.f12258d;
        if (subscription != null && !subscription.isUnsubscribed()) {
            this.f12258d.unsubscribe();
        }
    }

    /* renamed from: m */
    public final void m26647m() {
        unregisterReceiver(this.f12264j);
    }

    @Override // android.telecom.InCallService
    public void onBringToForeground(boolean z) {
        super.onBringToForeground(z);
        m26662b(z);
    }

    @Override // android.telecom.InCallService
    public void onCallAdded(Call call) {
        super.onCallAdded(call);
        if (this.f12260f.m5990g() == null) {
            m26665b();
            m26674a();
        }
        C13930d dVar = new C13930d();
        dVar.m3018e();
        if (this.f12260f.m5991f() == null) {
            this.f12260f.m6002a(getCalls());
        }
        this.f12260f.m6007a(call);
        this.f12260f.m5993d(call);
        C12492c.C12493a b = this.f12260f.m5999b(call);
        b.m5982b(call.getState() == 9 || call.getState() == 1 || call.getState() == 8);
        b.m5986a(C14108o4.m2493a(C12517t.m5964b(call), true, !b.m5979e()));
        this.f12262h.m5742a(true);
        call.registerCallback(this.f12267m, this.f12259e);
        C14289m.m1884a(b.m5979e());
        if (b.m5979e()) {
            m26672a(call, this.f12263i.m5950b(C12517t.m5964b(call)), dVar);
        } else {
            Single.create(new C4968e(call)).subscribeOn(C14174u.m2302b()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C4967d(call, dVar), C14081m3.m2611a());
        }
    }

    @Override // android.telecom.InCallService
    public void onCallAudioStateChanged(CallAudioState callAudioState) {
        super.onCallAudioStateChanged(callAudioState);
        this.f12260f.m6006a(callAudioState);
        C14037j3.m2731a().mo2704a(new C12509m());
    }

    @Override // android.telecom.InCallService
    public void onCallRemoved(Call call) {
        super.onCallRemoved(call);
        C12492c.C12493a b = this.f12260f.m5999b(call);
        if (b != null) {
            C14289m.m1871b(b.m5979e());
        }
        boolean z = this.f12260f.m5989h() == call;
        C12492c.C12493a c = this.f12260f.m5996c(call);
        CallStats.Call.Remote remove = this.f12261g.remove(call);
        List<Call> e = this.f12260f.m5992e();
        if (e != null) {
            int size = e.size();
            if (size > 0) {
                if (z) {
                    Call call2 = e.get(size - 1);
                    this.f12260f.m5993d(call2);
                    if (this.f12260f.m6008a()) {
                        CallStats.m28534h().m28539c().m28519a(this.f12261g.get(call2));
                    }
                    C14037j3.m2731a().mo2704a(new C12512p(true));
                }
                m26664b(this.f12260f.m5989h());
            } else if (c == null || remove == null) {
                String str = "onCallRemoved, unable to find removed data : " + C12517t.m5963c(call);
            } else {
                if (this.f12260f.m6008a()) {
                    CallStats.m28534h().m28539c().m28519a((CallStats.Call.Remote) null);
                }
                m26652h();
                m26653g();
                this.f12263i.m5955a();
            }
            call.unregisterCallback(this.f12267m);
            C14037j3.m2731a().mo2704a(new C12516s());
        }
    }

    @Override // android.telecom.InCallService
    public void onCanAddCallChanged(boolean z) {
        super.onCanAddCallChanged(z);
        C14037j3.m2731a().mo2704a(new C12512p(false));
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        f12254o = true;
        this.f12255a = (KeyguardManager) getSystemService("keyguard");
        this.f12256b = (PowerManager) getSystemService("power");
        this.f12257c = (NotificationManager) getSystemService("notification");
        C13930d dVar = new C13930d();
        dVar.m3018e();
        m26652h();
        this.f12261g = new HashMap<>();
        m26650j();
        this.f12259e = new Handler();
        m26655f();
        m26657e();
        dVar.m3017f();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        f12254o = false;
        C14037j3.m2731a().mo2704a(new C12505i());
        m26649k();
        m26647m();
        m26648l();
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        super.onTaskRemoved(intent);
    }
}

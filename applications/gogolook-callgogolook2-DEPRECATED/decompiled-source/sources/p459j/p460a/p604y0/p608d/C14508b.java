package p459j.p460a.p604y0.p608d;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Application;
import androidx.databinding.ObservableField;
import androidx.lifecycle.AndroidViewModel;
import androidx.media2.exoplayer.external.util.MimeTypes;
import com.google.firebase.perf.metrics.Trace;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.realm.obj.vas.VasMessageRealm;
import gogolook.callgogolook2.vas.main.adapter.VasMessageItem;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import p081h.p203i.p325c.p379z.C10062a;
import p459j.p460a.p530k.C12840h;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p604y0.p605c.AbstractC14472a;
import p459j.p460a.p604y0.p605c.C14474b;
import p459j.p460a.p604y0.p605c.p607d.C14501a;
import p459j.p460a.p604y0.p610e.AbstractC14587d;
import p459j.p460a.p604y0.p610e.C14577c;
import p459j.p460a.p604y0.p611f.C14589b;
import p626l.C14978j;
import p626l.C14986p;
import p626l.p641z.p643d.C15136c0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0010\"\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018�� K2\u00020\u0001:\u0002KLB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u00104\u001a\u000205H\u0002J\u001c\u00106\u001a\b\u0012\u0004\u0012\u000208072\f\u00109\u001a\b\u0012\u0004\u0012\u00020;0:H\u0002J4\u0010<\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\b\u0012\u0004\u0012\u00020\u000e`\u000f2\f\u0010=\u001a\b\u0012\u0004\u0012\u00020;0:2\f\u0010>\u001a\b\u0012\u0004\u0012\u00020807H\u0002J\u0016\u0010?\u001a\u0002052\f\u0010=\u001a\b\u0012\u0004\u0012\u00020;0:H\u0002J\b\u0010@\u001a\u000205H\u0002J\u000e\u0010@\u001a\u0002052\u0006\u0010A\u001a\u00020/J\b\u0010B\u001a\u000205H\u0002J\b\u0010C\u001a\u000205H\u0002J\b\u0010D\u001a\u000205H\u0002J\u0018\u0010E\u001a\u0002052\u0006\u0010F\u001a\u00020!2\b\b\u0001\u0010A\u001a\u00020/J\u0010\u0010G\u001a\u00020\u00192\u0006\u0010H\u001a\u00020IH\u0002J\u0006\u0010J\u001a\u00020\u0019R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR'\u0010\f\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u000e0\rj\b\u0012\u0004\u0012\u00020\u000e`\u000f0\b¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u000bR\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u000bR3\u0010\u0013\u001a$\u0012 \u0012\u001e\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u000e0\rj\b\u0012\u0004\u0012\u00020\u000e`\u000f\u0012\u0004\u0012\u00020\u00150\u00140\b¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u000bR\u0017\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\u001bR\u0017\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018¢\u0006\b\n��\u001a\u0004\b\u001d\u0010\u001bR\u0017\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018¢\u0006\b\n��\u001a\u0004\b\u001f\u0010\u001bR\u001a\u0010 \u001a\u00020!X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u0010\u0010&\u001a\u0004\u0018\u00010'X\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010(\u001a\u00020!X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b)\u0010#\"\u0004\b*\u0010%R\u001a\u0010+\u001a\u00020!X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b,\u0010#\"\u0004\b-\u0010%R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010.\u001a\u00020/X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b0\u00101\"\u0004\b2\u00103¨\u0006M"}, m815d2 = {"Lgogolook/callgogolook2/vas/main/SharedVasViewModel;", "Landroidx/lifecycle/AndroidViewModel;", MimeTypes.BASE_TYPE_APPLICATION, "Landroid/app/Application;", "vasRepository", "Lgogolook/callgogolook2/vas/data/VasRepository;", "(Landroid/app/Application;Lgogolook/callgogolook2/vas/data/VasRepository;)V", "firstScanEvent", "Lgogolook/callgogolook2/vas/util/SingleLiveEvent;", "Ljava/lang/Void;", "getFirstScanEvent", "()Lgogolook/callgogolook2/vas/util/SingleLiveEvent;", "queryDbCacheEvent", "Ljava/util/ArrayList;", "Lgogolook/callgogolook2/vas/main/adapter/VasMessageItem;", "Lkotlin/collections/ArrayList;", "getQueryDbCacheEvent", "scanAgainEvent", "getScanAgainEvent", "scanFinishEvent", "Lkotlin/Pair;", "Lgogolook/callgogolook2/vas/main/MiscParameters;", "getScanFinishEvent", "scanPercentage", "Landroidx/databinding/ObservableField;", "", "getScanPercentage", "()Landroidx/databinding/ObservableField;", "scanPeriod", "getScanPeriod", "scanStatus", "getScanStatus", "time", "", "getTime", "()J", "setTime", "(J)V", "valueAnimator", "Landroid/animation/ValueAnimator;", "vasDestination", "getVasDestination", "setVasDestination", "vasEntry", "getVasEntry", "setVasEntry", "vasSourceFrom", "", "getVasSourceFrom", "()I", "setVasSourceFrom", "(I)V", "deleteOldMessages", "", "filterCancelVasMessageList", "", "Lgogolook/callgogolook2/vas/main/SharedVasViewModel$VasSummaryIdentity;", "vasMessageList", "", "Lgogolook/callgogolook2/realm/obj/vas/VasMessageRealm;", "filterVasMessageList", "result", "cancelMsgSet", "filterVasMessages", "getLastScannedVasMessages", "sourceFrom", "getVasMessages", "initVasSetting", "scanVasMessage", "startScanning", "entry", "transformDateFormat", "date", "Ljava/util/Date;", "transformScanDateFormat", "Companion", "VasSummaryIdentity", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.y0.d.b */
/* loaded from: classes3-dex2jar.jar:j/a/y0/d/b.class */
public final class C14508b extends AndroidViewModel {

    /* renamed from: a */
    public final ObservableField<String> f32425a = new ObservableField<>();

    /* renamed from: b */
    public final ObservableField<String> f32426b = new ObservableField<>();

    /* renamed from: c */
    public final ObservableField<String> f32427c = new ObservableField<>();

    /* renamed from: d */
    public final C14589b<Void> f32428d = new C14589b<>();

    /* renamed from: e */
    public final C14589b<Void> f32429e = new C14589b<>();

    /* renamed from: f */
    public final C14589b<C14978j<ArrayList<VasMessageItem>, C14507a>> f32430f = new C14589b<>();

    /* renamed from: g */
    public final C14589b<ArrayList<VasMessageItem>> f32431g = new C14589b<>();

    /* renamed from: h */
    public long f32432h = -1;

    /* renamed from: i */
    public int f32433i = 3;

    /* renamed from: j */
    public long f32434j;

    /* renamed from: k */
    public ValueAnimator f32435k;

    /* renamed from: j.a.y0.d.b$a */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/b$a.class */
    public static final class C14509a {
        public C14509a() {
        }

        public /* synthetic */ C14509a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.y0.d.b$b */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/b$b.class */
    public static final class C14510b {

        /* renamed from: a */
        public final String f32436a;

        /* renamed from: b */
        public final String f32437b;

        /* renamed from: c */
        public long f32438c;

        public C14510b(String str, String str2, long j) {
            C15149k.m377b(str, "e164");
            C15149k.m377b(str2, "name");
            this.f32436a = str;
            this.f32437b = str2;
            this.f32438c = j;
        }

        /* renamed from: a */
        public final boolean m1180a(C14510b bVar) {
            C15149k.m377b(bVar, "other");
            boolean z = true;
            if (!C15149k.m384a(this, bVar)) {
                return false;
            }
            if (this.f32438c <= bVar.f32438c) {
                z = false;
            }
            return z;
        }

        public boolean equals(Object obj) {
            boolean z;
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C14510b)) {
                z = false;
            } else {
                C14510b bVar = (C14510b) obj;
                z = false;
                if (C15149k.m384a((Object) this.f32436a, (Object) bVar.f32436a)) {
                    z = false;
                    if (C15149k.m384a((Object) this.f32437b, (Object) bVar.f32437b)) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            int hashCode;
            String str = this.f32436a;
            int i = 0;
            int hashCode2 = str != null ? str.hashCode() : 0;
            String str2 = this.f32437b;
            if (str2 != null) {
                i = str2.hashCode();
            }
            hashCode = Long.valueOf(this.f32438c).hashCode();
            return (((hashCode2 * 31) + i) * 31) + hashCode;
        }

        public String toString() {
            return "e164: " + this.f32436a + ", name: " + this.f32437b + ", time: " + this.f32438c;
        }
    }

    /* renamed from: j.a.y0.d.b$c */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/b$c.class */
    public static final class C14511c implements AbstractC14472a.AbstractC14473a<Integer> {

        /* renamed from: b */
        public final /* synthetic */ Trace f32440b;

        public C14511c(Trace trace) {
            this.f32440b = trace;
        }

        /* renamed from: a */
        public void m1179a(int i) {
            this.f32440b.stop();
            C14508b.this.m1185l();
        }

        @Override // p459j.p460a.p604y0.p605c.AbstractC14472a.AbstractC14473a
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo1175a(Integer num) {
            m1179a(num.intValue());
        }

        @Override // p459j.p460a.p604y0.p605c.AbstractC14472a.AbstractC14473a
        /* renamed from: a */
        public void mo1174a(Throwable th) {
            C15149k.m377b(th, "throwable");
            this.f32440b.stop();
        }
    }

    /* renamed from: j.a.y0.d.b$d */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/b$d.class */
    public static final class C14512d implements AbstractC14472a.AbstractC14473a<List<? extends VasMessageRealm>> {
        public C14512d() {
        }

        @Override // p459j.p460a.p604y0.p605c.AbstractC14472a.AbstractC14473a
        /* renamed from: a */
        public void mo1174a(Throwable th) {
            C15149k.m377b(th, "throwable");
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public void mo1175a(List<? extends VasMessageRealm> list) {
            C15149k.m377b(list, "result");
            C14508b.this.m1197b(list);
        }
    }

    /* renamed from: j.a.y0.d.b$e */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/b$e.class */
    public static final class C14513e implements AbstractC14472a.AbstractC14473a<List<? extends VasMessageRealm>> {

        /* renamed from: b */
        public final /* synthetic */ Trace f32443b;

        public C14513e(Trace trace) {
            this.f32443b = trace;
        }

        @Override // p459j.p460a.p604y0.p605c.AbstractC14472a.AbstractC14473a
        /* renamed from: a */
        public void mo1174a(Throwable th) {
            C15149k.m377b(th, "throwable");
            this.f32443b.stop();
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public void mo1175a(List<? extends VasMessageRealm> list) {
            C15149k.m377b(list, "result");
            this.f32443b.stop();
            C14508b.this.m1188i().set(C14508b.this.getApplication().getString(R$string.vas_finished_status));
            C13915b3.m3055b("vas_first_scan", false);
            ValueAnimator valueAnimator = C14508b.this.f32435k;
            if (valueAnimator != null) {
                valueAnimator.end();
            }
            C14508b.this.m1190g().set("100%");
            new C12840h().m5157b((List<VasMessageRealm>) list);
            C14508b.this.m1197b(list);
        }
    }

    /* renamed from: j.a.y0.d.b$f */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/b$f.class */
    public static final class C14514f implements AbstractC14587d {
        public C14514f() {
        }

        @Override // p459j.p460a.p604y0.p610e.AbstractC14587d
        /* renamed from: a */
        public void mo1056a() {
            C14508b.this.m1182o();
        }

        @Override // p459j.p460a.p604y0.p610e.AbstractC14587d
        /* renamed from: b */
        public void mo1055b() {
        }
    }

    /* renamed from: j.a.y0.d.b$g */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/b$g.class */
    public static final class C14515g implements AbstractC14472a.AbstractC14473a<Integer> {

        /* renamed from: b */
        public final /* synthetic */ Trace f32446b;

        public C14515g(Trace trace) {
            this.f32446b = trace;
        }

        /* renamed from: a */
        public void m1176a(int i) {
            if (i > 0) {
                C14508b.this.m1185l();
            } else {
                C14508b.this.m1188i().set(C14508b.this.getApplication().getString(R$string.vas_finished_status));
                ValueAnimator valueAnimator = C14508b.this.f32435k;
                if (valueAnimator != null) {
                    valueAnimator.end();
                }
                C14508b.this.m1190g().set("100%");
                C13915b3.m3055b("vas_first_scan", false);
                C14508b.this.m1191f().setValue(new C14978j<>(new ArrayList(), new C14507a(C14508b.this.m1186k(), C14508b.this.m1187j(), null, 0, 12, null)));
            }
            this.f32446b.stop();
        }

        @Override // p459j.p460a.p604y0.p605c.AbstractC14472a.AbstractC14473a
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo1175a(Integer num) {
            m1176a(num.intValue());
        }

        @Override // p459j.p460a.p604y0.p605c.AbstractC14472a.AbstractC14473a
        /* renamed from: a */
        public void mo1174a(Throwable th) {
            C15149k.m377b(th, "throwable");
            this.f32446b.stop();
        }
    }

    /* renamed from: j.a.y0.d.b$h */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/b$h.class */
    public static final class C14516h implements ValueAnimator.AnimatorUpdateListener {
        public C14516h() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            ObservableField<String> g = C14508b.this.m1190g();
            StringBuilder sb = new StringBuilder();
            C15149k.m383a((Object) valueAnimator, "animation");
            sb.append(valueAnimator.getAnimatedValue().toString());
            sb.append("%");
            g.set(sb.toString());
        }
    }

    /* renamed from: j.a.y0.d.b$i */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/b$i.class */
    public static final class C14517i extends AnimatorListenerAdapter {
        public C14517i() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            String str;
            ObservableField<String> g = C14508b.this.m1190g();
            if (animator == null) {
                str = null;
            } else if (animator != null) {
                str = ((ValueAnimator) animator).getAnimatedValue().toString();
            } else {
                throw new C14986p("null cannot be cast to non-null type android.animation.ValueAnimator");
            }
            g.set(C15149k.m381a(str, (Object) "%"));
        }
    }

    /* renamed from: j.a.y0.d.b$j */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/b$j.class */
    public static final class C14518j implements AbstractC14587d {
        public C14518j() {
        }

        @Override // p459j.p460a.p604y0.p610e.AbstractC14587d
        /* renamed from: a */
        public void mo1056a() {
            C14508b.this.m1206a(System.currentTimeMillis());
            C14508b.this.m1182o();
        }

        @Override // p459j.p460a.p604y0.p610e.AbstractC14587d
        /* renamed from: b */
        public void mo1055b() {
            C14508b.this.m1183n();
        }
    }

    static {
        new C14509a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14508b(Application application, C14474b bVar) {
        super(application);
        C15149k.m377b(application, MimeTypes.BASE_TYPE_APPLICATION);
        C15149k.m377b(bVar, "vasRepository");
    }

    /* renamed from: a */
    public final String m1202a(Date date) {
        String format = new SimpleDateFormat(C14017g4.m2835A() ? "dd-MM-yyyy" : "yyyy-MM-dd").format(date);
        C15149k.m383a((Object) format, "SimpleDateFormat(if (Uti…yyyy-MM-dd\").format(date)");
        return format;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01a7  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.ArrayList<gogolook.callgogolook2.vas.main.adapter.VasMessageItem> m1200a(java.util.List<? extends gogolook.callgogolook2.realm.obj.vas.VasMessageRealm> r16, java.util.Set<p459j.p460a.p604y0.p608d.C14508b.C14510b> r17) {
        /*
            Method dump skipped, instructions count: 538
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p604y0.p608d.C14508b.m1200a(java.util.List, java.util.Set):java.util.ArrayList");
    }

    /* renamed from: a */
    public final Set<C14510b> m1201a(List<? extends VasMessageRealm> list) {
        Object obj;
        ArrayList<VasMessageRealm> arrayList = new ArrayList();
        for (Object obj2 : list) {
            boolean z = true;
            if (((VasMessageRealm) obj2).getCancelType() != 1) {
                z = false;
            }
            if (z) {
                arrayList.add(obj2);
            }
        }
        HashSet hashSet = new HashSet();
        for (VasMessageRealm vasMessageRealm : arrayList) {
            C14510b bVar = new C14510b(vasMessageRealm.getE164(), vasMessageRealm.getName(), vasMessageRealm.getTime());
            Iterator it = hashSet.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (((C14510b) obj).equals(bVar)) {
                    break;
                }
            }
            C14510b bVar2 = (C14510b) obj;
            if (bVar2 == null || bVar.m1180a(bVar2)) {
                hashSet.add(bVar);
            }
        }
        return hashSet;
    }

    /* renamed from: a */
    public final void m1208a() {
        Trace a = C10062a.m13511c().m13516a("vas_delete_expired_sms_time");
        C15149k.m383a((Object) a, "FirebasePerformance.getI…_DELETE_EXPIRED_SMS_TIME)");
        a.start();
        C14501a.f32415d.m1225a(new C14511c(a));
    }

    /* renamed from: a */
    public final void m1207a(int i) {
        this.f32433i = i;
        m1196c();
    }

    /* renamed from: a */
    public final void m1206a(long j) {
    }

    /* renamed from: a */
    public final void m1205a(long j, int i) {
        this.f32432h = j;
        this.f32433i = i;
        this.f32425a.set(getApplication().getString(R$string.vas_scanning_status));
        System.currentTimeMillis();
        ValueAnimator valueAnimator = this.f32435k;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 95);
        ofInt.addUpdateListener(new C14516h());
        ofInt.addListener(new C14517i());
        ofInt.setDuration(1500L);
        ofInt.start();
        this.f32435k = ofInt;
        if (System.currentTimeMillis() - C13915b3.m3049d("vas_last_sync_time") >= AdUtils.ONE_DAY) {
            C14577c cVar = C14577c.f32580h;
            Application application = getApplication();
            C15149k.m383a((Object) application, "getApplication()");
            cVar.m1074b(application, new C14518j());
        } else if (!C14577c.f32580h.m1063g()) {
            m1183n();
        } else {
            m1182o();
        }
    }

    /* renamed from: b */
    public final C14589b<Void> m1199b() {
        return this.f32428d;
    }

    /* JADX WARN: Removed duplicated region for block: B:74:0x01d2  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1197b(java.util.List<? extends gogolook.callgogolook2.realm.obj.vas.VasMessageRealm> r14) {
        /*
            Method dump skipped, instructions count: 509
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p604y0.p608d.C14508b.m1197b(java.util.List):void");
    }

    /* renamed from: c */
    public final void m1196c() {
        C14501a.f32415d.m1224a(new C14512d(), C13915b3.m3049d("vas_last_scan_time"));
    }

    /* renamed from: d */
    public final C14589b<ArrayList<VasMessageItem>> m1194d() {
        return this.f32431g;
    }

    /* renamed from: e */
    public final C14589b<Void> m1192e() {
        return this.f32429e;
    }

    /* renamed from: f */
    public final C14589b<C14978j<ArrayList<VasMessageItem>, C14507a>> m1191f() {
        return this.f32430f;
    }

    /* renamed from: g */
    public final ObservableField<String> m1190g() {
        return this.f32427c;
    }

    /* renamed from: h */
    public final ObservableField<String> m1189h() {
        return this.f32426b;
    }

    /* renamed from: i */
    public final ObservableField<String> m1188i() {
        return this.f32425a;
    }

    /* renamed from: j */
    public final long m1187j() {
        return this.f32434j;
    }

    /* renamed from: k */
    public final long m1186k() {
        return this.f32432h;
    }

    /* renamed from: l */
    public final void m1185l() {
        Trace a = C10062a.m13511c().m13516a("vas_scanning_time");
        C15149k.m383a((Object) a, "FirebasePerformance.getI…(TRACE_VAS_SCANNING_TIME)");
        a.start();
        C14501a.f32415d.m1219b(new C14513e(a));
    }

    /* renamed from: m */
    public final int m1184m() {
        return this.f32433i;
    }

    /* renamed from: n */
    public final void m1183n() {
        C14577c cVar = C14577c.f32580h;
        Application application = getApplication();
        C15149k.m383a((Object) application, "getApplication()");
        cVar.m1083a(application, new C14514f());
    }

    /* renamed from: o */
    public final void m1182o() {
        this.f32426b.set(m1181p());
        if (C13915b3.m3059b("vas_first_scan")) {
            Trace a = C10062a.m13511c().m13516a("vas_analysis_native_inbox_time");
            C15149k.m383a((Object) a, "FirebasePerformance.getI…ANALYSIS_NATIVE_SMS_TIME)");
            a.start();
            C14501a.f32415d.m1218c(new C14515g(a));
        } else {
            m1208a();
        }
        C13915b3.m3057b("vas_last_scan_time", System.currentTimeMillis());
    }

    /* renamed from: p */
    public final String m1181p() {
        Calendar instance = Calendar.getInstance();
        C15149k.m383a((Object) instance, "calendar");
        Date time = instance.getTime();
        instance.add(2, -1);
        Date time2 = instance.getTime();
        C15136c0 c0Var = C15136c0.f33133a;
        String string = getApplication().getString(R$string.vas_scanning_period);
        C15149k.m383a((Object) string, "getApplication<Applicati…ring.vas_scanning_period)");
        StringBuilder sb = new StringBuilder();
        C15149k.m383a((Object) time2, "dateBeforeAMonth");
        sb.append(m1202a(time2));
        sb.append(" - ");
        C15149k.m383a((Object) time, "dateNow");
        sb.append(m1202a(time));
        Object[] objArr = {sb.toString()};
        String format = String.format(string, Arrays.copyOf(objArr, objArr.length));
        C15149k.m383a((Object) format, "java.lang.String.format(format, *args)");
        return format;
    }
}

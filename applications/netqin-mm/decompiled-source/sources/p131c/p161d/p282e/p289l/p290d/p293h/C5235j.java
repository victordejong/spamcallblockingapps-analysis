package p131c.p161d.p282e.p289l.p290d.p293h;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.common.DataTransportState;
import com.google.firebase.crashlytics.internal.common.DeliveryMechanism;
import com.google.firebase.crashlytics.internal.proto.CodedOutputStream;
import com.google.firebase.crashlytics.internal.report.model.Report;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p131c.p161d.p282e.p289l.p290d.AbstractC5191a;
import p131c.p161d.p282e.p289l.p290d.AbstractC5196d;
import p131c.p161d.p282e.p289l.p290d.C5192b;
import p131c.p161d.p282e.p289l.p290d.p291f.AbstractC5201a;
import p131c.p161d.p282e.p289l.p290d.p293h.C5277p;
import p131c.p161d.p282e.p289l.p290d.p294i.C5293b;
import p131c.p161d.p282e.p289l.p290d.p297k.C5395b;
import p131c.p161d.p282e.p289l.p290d.p298l.AbstractC5404h;
import p131c.p161d.p282e.p289l.p290d.p299m.C5407b;
import p131c.p161d.p282e.p289l.p290d.p299m.C5409c;
import p131c.p161d.p282e.p289l.p290d.p300n.C5410a;
import p131c.p161d.p282e.p289l.p290d.p300n.C5411b;
import p131c.p161d.p282e.p289l.p290d.p300n.p301c.C5418c;
import p131c.p161d.p282e.p289l.p290d.p300n.p302d.AbstractC5421b;
import p131c.p161d.p282e.p289l.p290d.p300n.p302d.C5419a;
import p131c.p161d.p282e.p289l.p290d.p300n.p302d.C5422c;
import p131c.p161d.p282e.p289l.p290d.p300n.p302d.C5423d;
import p131c.p161d.p282e.p289l.p290d.p304p.AbstractC5431d;
import p131c.p161d.p282e.p289l.p290d.p304p.p305h.AbstractC5439e;
import p131c.p161d.p282e.p289l.p290d.p304p.p305h.C5436b;
import p131c.p161d.p282e.p289l.p290d.p307q.AbstractC5450d;
import p131c.p161d.p282e.p289l.p290d.p307q.C5447a;
import p131c.p161d.p282e.p289l.p290d.p307q.C5449c;
import p131c.p161d.p282e.p289l.p290d.p307q.C5451e;
/* renamed from: c.d.e.l.d.h.j */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j.class */
public class C5235j {

    /* renamed from: a */
    public final Context f17936a;

    /* renamed from: b */
    public final C5280r f17937b;

    /* renamed from: c */
    public final C5274m f17938c;

    /* renamed from: d */
    public final C5221f0 f17939d;

    /* renamed from: e */
    public final C5224h f17940e;

    /* renamed from: f */
    public final C5395b f17941f;

    /* renamed from: g */
    public final C5286u f17942g;

    /* renamed from: h */
    public final AbstractC5404h f17943h;

    /* renamed from: i */
    public final C5212b f17944i;

    /* renamed from: j */
    public final C5411b.AbstractC5413b f17945j;

    /* renamed from: k */
    public final C5266y f17946k;

    /* renamed from: l */
    public final C5293b f17947l;

    /* renamed from: m */
    public final C5410a f17948m;

    /* renamed from: n */
    public final C5411b.AbstractC5412a f17949n;

    /* renamed from: o */
    public final AbstractC5191a f17950o;

    /* renamed from: p */
    public final AbstractC5450d f17951p;

    /* renamed from: q */
    public final String f17952q;

    /* renamed from: r */
    public final AbstractC5201a f17953r;

    /* renamed from: s */
    public final C5217d0 f17954s;

    /* renamed from: t */
    public C5277p f17955t;

    /* renamed from: u */
    public TaskCompletionSource<Boolean> f17956u = new TaskCompletionSource<>();

    /* renamed from: v */
    public TaskCompletionSource<Boolean> f17957v = new TaskCompletionSource<>();

    /* renamed from: w */
    public TaskCompletionSource<Void> f17958w = new TaskCompletionSource<>();

    /* renamed from: x */
    public static final FilenameFilter f17933x = new C5246h("BeginSession");

    /* renamed from: y */
    public static final FilenameFilter f17934y = C5234i.m24222a();

    /* renamed from: z */
    public static final FilenameFilter f17935z = new C5251m();

    /* renamed from: A */
    public static final Comparator<File> f17928A = new C5252n();

    /* renamed from: B */
    public static final Comparator<File> f17929B = new C5253o();

    /* renamed from: C */
    public static final Pattern f17930C = Pattern.compile("([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+");

    /* renamed from: D */
    public static final Map<String, String> f17931D = Collections.singletonMap("X-CRASHLYTICS-SEND-FLAGS", "1");

    /* renamed from: E */
    public static final String[] f17932E = {"SessionUser", "SessionApp", "SessionOS", "SessionDevice"};

    /* renamed from: c.d.e.l.d.h.j$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$a.class */
    public class CallableC5236a implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ long f17959a;

        /* renamed from: b */
        public final /* synthetic */ String f17960b;

        public CallableC5236a(long j, String str) {
            this.f17959a = j;
            this.f17960b = str;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            if (C5235j.this.m24145k()) {
                return null;
            }
            C5235j.this.f17947l.m24038a(this.f17959a, this.f17960b);
            return null;
        }
    }

    /* renamed from: c.d.e.l.d.h.j$a0 */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$a0.class */
    public final class C5237a0 implements C5411b.AbstractC5412a {
        public C5237a0() {
        }

        public /* synthetic */ C5237a0(C5235j jVar, C5246h hVar) {
            this();
        }

        @Override // p131c.p161d.p282e.p289l.p290d.p300n.C5411b.AbstractC5412a
        /* renamed from: a */
        public boolean mo23828a() {
            return C5235j.this.m24145k();
        }
    }

    /* renamed from: c.d.e.l.d.h.j$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$b.class */
    public class CallableC5238b implements Callable<Void> {
        public CallableC5238b() {
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            C5235j.this.m24167d();
            return null;
        }
    }

    /* renamed from: c.d.e.l.d.h.j$b0 */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$b0.class */
    public static final class RunnableC5239b0 implements Runnable {

        /* renamed from: a */
        public final Context f17964a;

        /* renamed from: b */
        public final Report f17965b;

        /* renamed from: c */
        public final C5411b f17966c;

        /* renamed from: d */
        public final boolean f17967d;

        public RunnableC5239b0(Context context, Report report, C5411b bVar, boolean z) {
            this.f17964a = context;
            this.f17965b = report;
            this.f17966c = bVar;
            this.f17967d = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (CommonUtils.m7653b(this.f17964a)) {
                C5192b.m24319a().m24317a("Attempting to send crash report at time of crash...");
                this.f17966c.m23830a(this.f17965b, this.f17967d);
            }
        }
    }

    /* renamed from: c.d.e.l.d.h.j$c */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$c.class */
    public class RunnableC5240c implements Runnable {
        public RunnableC5240c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C5235j jVar = C5235j.this;
            jVar.m24183a(jVar.m24195a(new C5265x()));
        }
    }

    /* renamed from: c.d.e.l.d.h.j$c0 */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$c0.class */
    public static class C5241c0 implements FilenameFilter {

        /* renamed from: a */
        public final String f17969a;

        public C5241c0(String str) {
            this.f17969a = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            if (str.equals(this.f17969a + ".cls")) {
                return false;
            }
            boolean z = false;
            if (str.contains(this.f17969a)) {
                z = false;
                if (!str.endsWith(".cls_temp")) {
                    z = true;
                }
            }
            return z;
        }
    }

    /* renamed from: c.d.e.l.d.h.j$d */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$d.class */
    public class C5242d implements FilenameFilter {

        /* renamed from: a */
        public final /* synthetic */ Set f17970a;

        public C5242d(C5235j jVar, Set set) {
            this.f17970a = set;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            if (str.length() < 35) {
                return false;
            }
            return this.f17970a.contains(str.substring(0, 35));
        }
    }

    /* renamed from: c.d.e.l.d.h.j$e */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$e.class */
    public class C5243e implements AbstractC5263v {

        /* renamed from: a */
        public final /* synthetic */ String f17971a;

        /* renamed from: b */
        public final /* synthetic */ String f17972b;

        /* renamed from: c */
        public final /* synthetic */ long f17973c;

        public C5243e(C5235j jVar, String str, String str2, long j) {
            this.f17971a = str;
            this.f17972b = str2;
            this.f17973c = j;
        }

        @Override // p131c.p161d.p282e.p289l.p290d.p293h.C5235j.AbstractC5263v
        /* renamed from: a */
        public void mo24123a(CodedOutputStream codedOutputStream) throws Exception {
            C5409c.m23848a(codedOutputStream, this.f17971a, this.f17972b, this.f17973c);
        }
    }

    /* renamed from: c.d.e.l.d.h.j$f */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$f.class */
    public class C5244f implements AbstractC5263v {

        /* renamed from: a */
        public final /* synthetic */ String f17974a;

        /* renamed from: b */
        public final /* synthetic */ String f17975b;

        /* renamed from: c */
        public final /* synthetic */ String f17976c;

        /* renamed from: d */
        public final /* synthetic */ String f17977d;

        /* renamed from: e */
        public final /* synthetic */ int f17978e;

        public C5244f(String str, String str2, String str3, String str4, int i) {
            this.f17974a = str;
            this.f17975b = str2;
            this.f17976c = str3;
            this.f17977d = str4;
            this.f17978e = i;
        }

        @Override // p131c.p161d.p282e.p289l.p290d.p293h.C5235j.AbstractC5263v
        /* renamed from: a */
        public void mo24123a(CodedOutputStream codedOutputStream) throws Exception {
            C5409c.m23846a(codedOutputStream, this.f17974a, this.f17975b, this.f17976c, this.f17977d, this.f17978e, C5235j.this.f17952q);
        }
    }

    /* renamed from: c.d.e.l.d.h.j$g */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$g.class */
    public class C5245g implements AbstractC5263v {

        /* renamed from: a */
        public final /* synthetic */ String f17980a;

        /* renamed from: b */
        public final /* synthetic */ String f17981b;

        /* renamed from: c */
        public final /* synthetic */ boolean f17982c;

        public C5245g(C5235j jVar, String str, String str2, boolean z) {
            this.f17980a = str;
            this.f17981b = str2;
            this.f17982c = z;
        }

        @Override // p131c.p161d.p282e.p289l.p290d.p293h.C5235j.AbstractC5263v
        /* renamed from: a */
        public void mo24123a(CodedOutputStream codedOutputStream) throws Exception {
            C5409c.m23845a(codedOutputStream, this.f17980a, this.f17981b, this.f17982c);
        }
    }

    /* renamed from: c.d.e.l.d.h.j$h */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$h.class */
    public class C5246h extends C5264w {
        public C5246h(String str) {
            super(str);
        }

        @Override // p131c.p161d.p282e.p289l.p290d.p293h.C5235j.C5264w, java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return super.accept(file, str) && str.endsWith(".cls");
        }
    }

    /* renamed from: c.d.e.l.d.h.j$i */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$i.class */
    public class C5247i implements AbstractC5263v {

        /* renamed from: a */
        public final /* synthetic */ int f17983a;

        /* renamed from: b */
        public final /* synthetic */ String f17984b;

        /* renamed from: c */
        public final /* synthetic */ int f17985c;

        /* renamed from: d */
        public final /* synthetic */ long f17986d;

        /* renamed from: e */
        public final /* synthetic */ long f17987e;

        /* renamed from: f */
        public final /* synthetic */ boolean f17988f;

        /* renamed from: g */
        public final /* synthetic */ int f17989g;

        /* renamed from: h */
        public final /* synthetic */ String f17990h;

        /* renamed from: i */
        public final /* synthetic */ String f17991i;

        public C5247i(C5235j jVar, int i, String str, int i2, long j, long j2, boolean z, int i3, String str2, String str3) {
            this.f17983a = i;
            this.f17984b = str;
            this.f17985c = i2;
            this.f17986d = j;
            this.f17987e = j2;
            this.f17988f = z;
            this.f17989g = i3;
            this.f17990h = str2;
            this.f17991i = str3;
        }

        @Override // p131c.p161d.p282e.p289l.p290d.p293h.C5235j.AbstractC5263v
        /* renamed from: a */
        public void mo24123a(CodedOutputStream codedOutputStream) throws Exception {
            C5409c.m23856a(codedOutputStream, this.f17983a, this.f17984b, this.f17985c, this.f17986d, this.f17987e, this.f17988f, this.f17989g, this.f17990h, this.f17991i);
        }
    }

    /* renamed from: c.d.e.l.d.h.j$j */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$j.class */
    public class C5248j implements AbstractC5263v {

        /* renamed from: a */
        public final /* synthetic */ C5221f0 f17992a;

        public C5248j(C5235j jVar, C5221f0 f0Var) {
            this.f17992a = f0Var;
        }

        @Override // p131c.p161d.p282e.p289l.p290d.p293h.C5235j.AbstractC5263v
        /* renamed from: a */
        public void mo24123a(CodedOutputStream codedOutputStream) throws Exception {
            C5409c.m23847a(codedOutputStream, this.f17992a.m24248b(), (String) null, (String) null);
        }
    }

    /* renamed from: c.d.e.l.d.h.j$k */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$k.class */
    public class C5249k implements AbstractC5263v {

        /* renamed from: a */
        public final /* synthetic */ String f17993a;

        public C5249k(String str) {
            this.f17993a = str;
        }

        @Override // p131c.p161d.p282e.p289l.p290d.p293h.C5235j.AbstractC5263v
        /* renamed from: a */
        public void mo24123a(CodedOutputStream codedOutputStream) throws Exception {
            C5409c.m23849a(codedOutputStream, this.f17993a);
        }
    }

    /* renamed from: c.d.e.l.d.h.j$l */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$l.class */
    public class CallableC5250l implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ long f17994a;

        public CallableC5250l(long j) {
            this.f17994a = j;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            Bundle bundle = new Bundle();
            bundle.putInt("fatal", 1);
            bundle.putLong(AvidJSONUtil.KEY_TIMESTAMP, this.f17994a);
            C5235j.this.f17953r.mo24279b("_ae", bundle);
            return null;
        }
    }

    /* renamed from: c.d.e.l.d.h.j$m */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$m.class */
    public class C5251m implements FilenameFilter {
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.length() == 39 && str.endsWith(".cls");
        }
    }

    /* renamed from: c.d.e.l.d.h.j$n */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$n.class */
    public class C5252n implements Comparator<File> {
        /* renamed from: a */
        public int compare(File file, File file2) {
            return file2.getName().compareTo(file.getName());
        }
    }

    /* renamed from: c.d.e.l.d.h.j$o */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$o.class */
    public class C5253o implements Comparator<File> {
        /* renamed from: a */
        public int compare(File file, File file2) {
            return file.getName().compareTo(file2.getName());
        }
    }

    /* renamed from: c.d.e.l.d.h.j$p */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$p.class */
    public class C5254p implements C5277p.AbstractC5278a {
        public C5254p() {
        }

        @Override // p131c.p161d.p282e.p289l.p290d.p293h.C5277p.AbstractC5278a
        /* renamed from: a */
        public void mo24077a(AbstractC5431d dVar, Thread thread, Throwable th) {
            C5235j.this.m24207a(dVar, thread, th);
        }
    }

    /* renamed from: c.d.e.l.d.h.j$q */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$q.class */
    public class CallableC5255q implements Callable<Task<Void>> {

        /* renamed from: a */
        public final /* synthetic */ Date f17997a;

        /* renamed from: b */
        public final /* synthetic */ Throwable f17998b;

        /* renamed from: c */
        public final /* synthetic */ Thread f17999c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC5431d f18000d;

        /* renamed from: c.d.e.l.d.h.j$q$a */
        /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$q$a.class */
        public class C5256a implements SuccessContinuation<C5436b, Void> {

            /* renamed from: a */
            public final /* synthetic */ Executor f18002a;

            public C5256a(Executor executor) {
                this.f18002a = executor;
            }

            /* renamed from: a  reason: avoid collision after fix types in other method */
            public Task<Void> mo8618a(C5436b bVar) throws Exception {
                if (bVar == null) {
                    C5192b.m24319a().m24311d("Received null app settings, cannot send reports at crash time.");
                    return Tasks.m8591a((Object) null);
                }
                C5235j.this.m24206a(bVar, true);
                return Tasks.m8588a((Task<?>[]) new Task[]{C5235j.this.m24135q(), C5235j.this.f17954s.m24258a(this.f18002a, DataTransportState.getState(bVar))});
            }
        }

        public CallableC5255q(Date date, Throwable th, Thread thread, AbstractC5431d dVar) {
            this.f17997a = date;
            this.f17998b = th;
            this.f17999c = thread;
            this.f18000d = dVar;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Task<Void> call() throws Exception {
            long b = C5235j.m24174b(this.f17997a);
            String f = C5235j.this.m24159f();
            if (f == null) {
                C5192b.m24319a().m24315b("Tried to write a fatal exception while no session was open.");
                return Tasks.m8591a((Object) null);
            }
            C5235j.this.f17938c.m24106a();
            C5235j.this.f17954s.m24261a(this.f17998b, this.f17999c, C5235j.m24148i(f), b);
            C5235j.this.m24185a(this.f17999c, this.f17998b, f, b);
            C5235j.this.m24217a(this.f17997a.getTime());
            AbstractC5439e b2 = this.f18000d.mo23783b();
            int i = b2.mo23773b().f18406a;
            int i2 = b2.mo23773b().f18407b;
            C5235j.this.m24219a(i);
            C5235j.this.m24167d();
            C5235j.this.m24166d(i2);
            if (!C5235j.this.f17937b.m24072b()) {
                return Tasks.m8591a((Object) null);
            }
            Executor b3 = C5235j.this.f17940e.m24235b();
            return this.f18000d.mo23784a().mo8607a(b3, new C5256a(b3));
        }
    }

    /* renamed from: c.d.e.l.d.h.j$r */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$r.class */
    public class C5257r implements SuccessContinuation<Void, Boolean> {
        public C5257r(C5235j jVar) {
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public Task<Boolean> mo8618a(Void r3) throws Exception {
            return Tasks.m8591a(true);
        }
    }

    /* renamed from: c.d.e.l.d.h.j$s */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$s.class */
    public class C5258s implements SuccessContinuation<Boolean, Void> {

        /* renamed from: a */
        public final /* synthetic */ Task f18004a;

        /* renamed from: b */
        public final /* synthetic */ float f18005b;

        /* renamed from: c.d.e.l.d.h.j$s$a */
        /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$s$a.class */
        public class CallableC5259a implements Callable<Task<Void>> {

            /* renamed from: a */
            public final /* synthetic */ Boolean f18007a;

            /* renamed from: c.d.e.l.d.h.j$s$a$a */
            /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$s$a$a.class */
            public class C5260a implements SuccessContinuation<C5436b, Void> {

                /* renamed from: a */
                public final /* synthetic */ List f18009a;

                /* renamed from: b */
                public final /* synthetic */ boolean f18010b;

                /* renamed from: c */
                public final /* synthetic */ Executor f18011c;

                public C5260a(List list, boolean z, Executor executor) {
                    this.f18009a = list;
                    this.f18010b = z;
                    this.f18011c = executor;
                }

                /* renamed from: a  reason: avoid collision after fix types in other method */
                public Task<Void> mo8618a(C5436b bVar) throws Exception {
                    if (bVar == null) {
                        C5192b.m24319a().m24311d("Received null app settings, cannot send reports during app startup.");
                        return Tasks.m8591a((Object) null);
                    }
                    for (Report report : this.f18009a) {
                        if (report.getType() == Report.Type.JAVA) {
                            C5235j.m24175b(bVar.f18401e, report.mo7363c());
                        }
                    }
                    C5235j.this.m24135q();
                    C5235j.this.f17945j.mo23827a(bVar).m23829a(this.f18009a, this.f18010b, C5258s.this.f18005b);
                    C5235j.this.f17954s.m24258a(this.f18011c, DataTransportState.getState(bVar));
                    C5235j.this.f17958w.m8596b((TaskCompletionSource<Void>) null);
                    return Tasks.m8591a((Object) null);
                }
            }

            public CallableC5259a(Boolean bool) {
                this.f18007a = bool;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Task<Void> call() throws Exception {
                List<Report> b = C5235j.this.f17948m.m23834b();
                if (!this.f18007a.booleanValue()) {
                    C5192b.m24319a().m24317a("Reports are being deleted.");
                    C5235j.m24168c(C5235j.this.m24143l());
                    C5235j.this.f17948m.m23835a(b);
                    C5235j.this.f17954s.m24269a();
                    C5235j.this.f17958w.m8596b((TaskCompletionSource<Void>) null);
                    return Tasks.m8591a((Object) null);
                }
                C5192b.m24319a().m24317a("Reports are being sent.");
                boolean booleanValue = this.f18007a.booleanValue();
                C5235j.this.f17937b.m24073a(booleanValue);
                Executor b2 = C5235j.this.f17940e.m24235b();
                return C5258s.this.f18004a.mo8607a(b2, new C5260a(b, booleanValue, b2));
            }
        }

        public C5258s(Task task, float f) {
            this.f18004a = task;
            this.f18005b = f;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public Task<Void> mo8618a(Boolean bool) throws Exception {
            return C5235j.this.f17940e.m24232c(new CallableC5259a(bool));
        }
    }

    /* renamed from: c.d.e.l.d.h.j$t */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$t.class */
    public class C5261t implements C5411b.AbstractC5413b {
        public C5261t() {
        }

        @Override // p131c.p161d.p282e.p289l.p290d.p300n.C5411b.AbstractC5413b
        /* renamed from: a */
        public C5411b mo23827a(C5436b bVar) {
            String str = bVar.f18399c;
            String str2 = bVar.f18400d;
            return new C5411b(bVar.f18401e, C5235j.this.f17944i.f17888a, DataTransportState.getState(bVar), C5235j.this.f17948m, C5235j.this.m24189a(str, str2), C5235j.this.f17949n);
        }
    }

    /* renamed from: c.d.e.l.d.h.j$u */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$u.class */
    public static class C5262u implements FilenameFilter {
        public C5262u() {
        }

        public /* synthetic */ C5262u(C5246h hVar) {
            this();
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return !C5235j.f17935z.accept(file, str) && C5235j.f17930C.matcher(str).matches();
        }
    }

    /* renamed from: c.d.e.l.d.h.j$v */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$v.class */
    public interface AbstractC5263v {
        /* renamed from: a */
        void mo24123a(CodedOutputStream codedOutputStream) throws Exception;
    }

    /* renamed from: c.d.e.l.d.h.j$w */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$w.class */
    public static class C5264w implements FilenameFilter {

        /* renamed from: a */
        public final String f18014a;

        public C5264w(String str) {
            this.f18014a = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.contains(this.f18014a) && !str.endsWith(".cls_temp");
        }
    }

    /* renamed from: c.d.e.l.d.h.j$x */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$x.class */
    public static class C5265x implements FilenameFilter {
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return C5407b.f18336d.accept(file, str) || str.contains("SessionMissingBinaryImages");
        }
    }

    /* renamed from: c.d.e.l.d.h.j$y */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$y.class */
    public static final class C5266y implements C5293b.AbstractC5295b {

        /* renamed from: a */
        public final AbstractC5404h f18015a;

        public C5266y(AbstractC5404h hVar) {
            this.f18015a = hVar;
        }

        @Override // p131c.p161d.p282e.p289l.p290d.p294i.C5293b.AbstractC5295b
        /* renamed from: a */
        public File mo24030a() {
            File file = new File(this.f18015a.mo23875b(), "log-files");
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        }
    }

    /* renamed from: c.d.e.l.d.h.j$z */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/j$z.class */
    public final class C5267z implements C5411b.AbstractC5414c {
        public C5267z() {
        }

        public /* synthetic */ C5267z(C5235j jVar, C5246h hVar) {
            this();
        }

        @Override // p131c.p161d.p282e.p289l.p290d.p300n.C5411b.AbstractC5414c
        /* renamed from: a */
        public File[] mo23826a() {
            return C5235j.this.m24139n();
        }

        @Override // p131c.p161d.p282e.p289l.p290d.p300n.C5411b.AbstractC5414c
        /* renamed from: b */
        public File[] mo23825b() {
            return C5235j.this.m24141m();
        }
    }

    public C5235j(Context context, C5224h hVar, C5395b bVar, C5286u uVar, C5280r rVar, AbstractC5404h hVar2, C5274m mVar, C5212b bVar2, C5410a aVar, C5411b.AbstractC5413b bVar3, AbstractC5191a aVar2, AbstractC5201a aVar3, AbstractC5431d dVar) {
        new AtomicInteger(0);
        new AtomicBoolean(false);
        this.f17936a = context;
        this.f17940e = hVar;
        this.f17941f = bVar;
        this.f17942g = uVar;
        this.f17937b = rVar;
        this.f17943h = hVar2;
        this.f17938c = mVar;
        this.f17944i = bVar2;
        if (bVar3 != null) {
            this.f17945j = bVar3;
        } else {
            this.f17945j = m24180b();
        }
        this.f17950o = aVar2;
        this.f17952q = bVar2.f17894g.mo23757a();
        this.f17953r = aVar3;
        this.f17939d = new C5221f0();
        this.f17946k = new C5266y(hVar2);
        this.f17947l = new C5293b(context, this.f17946k);
        this.f17948m = aVar == null ? new C5410a(new C5267z(this, null)) : aVar;
        this.f17949n = new C5237a0(this, null);
        C5447a aVar4 = new C5447a(1024, new C5449c(10));
        this.f17951p = aVar4;
        this.f17954s = C5217d0.m24267a(context, uVar, hVar2, bVar2, this.f17947l, this.f17939d, aVar4, dVar);
    }

    /* renamed from: a */
    public static String m24201a(File file) {
        return file.getName().substring(0, 35);
    }

    /* renamed from: a */
    public static List<AbstractC5290y> m24215a(AbstractC5196d dVar, String str, Context context, File file, byte[] bArr) {
        C5289x xVar = new C5289x(file);
        File b = xVar.m24047b(str);
        File a = xVar.m24049a(str);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C5220f("logs_file", "logs", bArr));
        arrayList.add(new C5285t("crash_meta_file", "metadata", dVar.mo24296f()));
        arrayList.add(new C5285t("session_meta_file", "session", dVar.mo24297e()));
        arrayList.add(new C5285t("app_meta_file", "app", dVar.mo24301a()));
        arrayList.add(new C5285t("device_meta_file", "device", dVar.mo24299c()));
        arrayList.add(new C5285t("os_meta_file", "os", dVar.mo24300b()));
        arrayList.add(new C5285t("minidump_file", "minidump", dVar.mo24298d()));
        arrayList.add(new C5285t("user_meta_file", "user", b));
        arrayList.add(new C5285t("keys_file", "keys", a));
        return arrayList;
    }

    /* renamed from: a */
    public static void m24205a(CodedOutputStream codedOutputStream, File file) throws IOException {
        Throwable th;
        FileInputStream fileInputStream;
        if (!file.exists()) {
            C5192b a = C5192b.m24319a();
            a.m24315b("Tried to include a file that doesn't exist: " + file.getName());
            return;
        }
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(file);
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            m24194a(fileInputStream, codedOutputStream, (int) file.length());
            CommonUtils.m7665a(fileInputStream, "Failed to close file input stream.");
        } catch (Throwable th3) {
            th = th3;
            fileInputStream2 = fileInputStream;
            CommonUtils.m7665a(fileInputStream2, "Failed to close file input stream.");
            throw th;
        }
    }

    /* renamed from: a */
    public static void m24202a(CodedOutputStream codedOutputStream, File[] fileArr, String str) {
        Arrays.sort(fileArr, CommonUtils.f30948c);
        for (File file : fileArr) {
            try {
                C5192b.m24319a().m24317a(String.format(Locale.US, "Found Non Fatal for session ID %s in %s ", str, file.getName()));
                m24205a(codedOutputStream, file);
            } catch (Exception e) {
                C5192b.m24319a().m24314b("Error writting non-fatal to session.", e);
            }
        }
    }

    /* renamed from: a */
    public static void m24200a(File file, AbstractC5263v vVar) throws Exception {
        FileOutputStream fileOutputStream;
        Throwable th;
        CodedOutputStream codedOutputStream = null;
        codedOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file, true);
            try {
                CodedOutputStream a = CodedOutputStream.m7401a(fileOutputStream2);
                codedOutputStream = a;
                vVar.mo24123a(a);
                CommonUtils.m7663a(a, "Failed to flush to append to " + file.getPath());
                CommonUtils.m7665a((Closeable) fileOutputStream2, "Failed to close " + file.getPath());
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = fileOutputStream2;
                CommonUtils.m7663a(codedOutputStream, "Failed to flush to append to " + file.getPath());
                CommonUtils.m7665a((Closeable) fileOutputStream, "Failed to close " + file.getPath());
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    /* renamed from: a */
    public static void m24194a(InputStream inputStream, CodedOutputStream codedOutputStream, int i) throws IOException {
        int read;
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i && (read = inputStream.read(bArr, i2, i - i2)) >= 0) {
            i2 += read;
        }
        codedOutputStream.m7398a(bArr);
    }

    /* renamed from: a */
    public static File[] m24199a(File file, FilenameFilter filenameFilter) {
        return m24163d(file.listFiles(filenameFilter));
    }

    /* renamed from: b */
    public static long m24174b(Date date) {
        return date.getTime() / 1000;
    }

    /* renamed from: b */
    public static void m24175b(String str, File file) throws Exception {
        if (str != null) {
            m24200a(file, new C5249k(str));
        }
    }

    /* renamed from: c */
    public static void m24168c(File[] fileArr) {
        if (fileArr != null) {
            for (File file : fileArr) {
                file.delete();
            }
        }
    }

    /* renamed from: d */
    public static File[] m24163d(File[] fileArr) {
        File[] fileArr2 = fileArr;
        if (fileArr == null) {
            fileArr2 = new File[0];
        }
        return fileArr2;
    }

    /* renamed from: i */
    public static String m24148i(String str) {
        return str.replaceAll("-", "");
    }

    /* renamed from: u */
    public static boolean m24131u() {
        try {
            Class.forName("com.google.firebase.crash.FirebaseCrash");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: v */
    public static long m24130v() {
        return m24174b(new Date());
    }

    /* renamed from: a */
    public final AbstractC5421b m24189a(String str, String str2) {
        String b = CommonUtils.m7652b(m24162e(), "com.crashlytics.ApiEndpoint");
        return new C5419a(new C5422c(b, str, this.f17941f, C5269l.m24107e()), new C5423d(b, str2, this.f17941f, C5269l.m24107e()));
    }

    /* renamed from: a */
    public Task<Void> m24220a(float f, Task<C5436b> task) {
        if (!this.f17948m.m23837a()) {
            C5192b.m24319a().m24317a("No reports are available.");
            this.f17956u.m8596b((TaskCompletionSource<Boolean>) false);
            return Tasks.m8591a((Object) null);
        }
        C5192b.m24319a().m24317a("Unsent reports are available.");
        return m24133s().mo8612a(new C5258s(task, f));
    }

    /* renamed from: a */
    public void m24221a() {
        this.f17940e.m24237a(new RunnableC5240c());
    }

    /* renamed from: a */
    public void m24219a(int i) throws Exception {
        m24218a(i, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final void m24218a(int i, boolean z) throws Exception {
        m24171c((z ? 1 : 0) + 8);
        File[] p = m24136p();
        if (p.length <= z) {
            C5192b.m24319a().m24317a("No open sessions to be closed.");
            return;
        }
        String a = m24201a(p[z ? 1 : 0]);
        m24154g(a);
        if (this.f17950o.mo24303c(a)) {
            m24193a(a);
            if (!this.f17950o.mo24309a(a)) {
                C5192b a2 = C5192b.m24319a();
                a2.m24317a("Could not finalize native session: " + a);
            }
        }
        m24182a(p, (int) z, i);
        String str = null;
        if (z != 0) {
            str = m24148i(m24201a(p[0]));
        }
        this.f17954s.m24268a(m24130v(), str);
    }

    /* renamed from: a */
    public final void m24217a(long j) {
        try {
            File h = m24153h();
            new File(h, ".ae" + j).createNewFile();
        } catch (IOException e) {
            C5192b.m24319a().m24317a("Could not write app exception marker.");
        }
    }

    /* renamed from: a */
    public void m24216a(long j, String str) {
        this.f17940e.m24234b(new CallableC5236a(j, str));
    }

    /* renamed from: a */
    public final void m24208a(C5407b bVar) {
        if (bVar != null) {
            try {
                bVar.m23868a();
            } catch (IOException e) {
                C5192b.m24319a().m24314b("Error closing session file stream in the presence of an exception", e);
            }
        }
    }

    /* renamed from: a */
    public void m24207a(AbstractC5431d dVar, Thread thread, Throwable th) {
        synchronized (this) {
            C5192b a = C5192b.m24319a();
            a.m24317a("Crashlytics is handling uncaught exception \"" + th + "\" from thread " + thread.getName());
            try {
                C5229h0.m24231a(this.f17940e.m24232c(new CallableC5255q(new Date(), th, thread, dVar)));
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: a */
    public final void m24206a(C5436b bVar, boolean z) throws Exception {
        File[] m;
        Context e = m24162e();
        C5411b a = this.f17945j.mo23827a(bVar);
        for (File file : m24141m()) {
            m24175b(bVar.f18401e, file);
            this.f17940e.m24237a(new RunnableC5239b0(e, new C5418c(file, f17931D), a, z));
        }
    }

    /* renamed from: a */
    public final void m24204a(CodedOutputStream codedOutputStream, String str) throws IOException {
        String[] strArr;
        for (String str2 : f17932E) {
            File[] a = m24195a(new C5264w(str + str2 + ".cls"));
            if (a.length == 0) {
                C5192b.m24319a().m24317a("Can't find " + str2 + " data for session ID " + str);
            } else {
                C5192b.m24319a().m24317a("Collecting " + str2 + " data for session ID " + str);
                m24205a(codedOutputStream, a[0]);
            }
        }
    }

    /* renamed from: a */
    public final void m24203a(CodedOutputStream codedOutputStream, Thread thread, Throwable th, long j, String str, boolean z) throws Exception {
        Thread[] threadArr;
        Map<String, String> map;
        C5451e eVar = new C5451e(th, this.f17951p);
        Context e = m24162e();
        C5218e a = C5218e.m24256a(e);
        Float a2 = a.m24257a();
        int b = a.m24254b();
        boolean f = CommonUtils.m7645f(e);
        int i = e.getResources().getConfiguration().orientation;
        long b2 = CommonUtils.m7654b();
        long a3 = CommonUtils.m7670a(e);
        long a4 = CommonUtils.m7661a(Environment.getDataDirectory().getPath());
        ActivityManager.RunningAppProcessInfo a5 = CommonUtils.m7660a(e.getPackageName(), e);
        LinkedList linkedList = new LinkedList();
        StackTraceElement[] stackTraceElementArr = eVar.f18430c;
        String str2 = this.f17944i.f17889b;
        String b3 = this.f17942g.m24058b();
        int i2 = 0;
        if (z) {
            Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
            threadArr = new Thread[allStackTraces.size()];
            for (Map.Entry<Thread, StackTraceElement[]> entry : allStackTraces.entrySet()) {
                threadArr[i2] = entry.getKey();
                linkedList.add(this.f17951p.mo23758a(entry.getValue()));
                i2++;
            }
        } else {
            threadArr = new Thread[0];
        }
        if (!CommonUtils.m7667a(e, "com.crashlytics.CollectCustomKeys", true)) {
            map = new TreeMap<>();
        } else {
            Map<String, String> a6 = this.f17939d.m24250a();
            map = a6;
            if (a6 != null) {
                map = a6;
                if (a6.size() > 1) {
                    map = new TreeMap<>(a6);
                }
            }
        }
        C5409c.m23855a(codedOutputStream, j, str, eVar, thread, stackTraceElementArr, threadArr, linkedList, 8, map, this.f17947l.m24033b(), a5, i, b3, str2, a2, b, f, b2 - a3, a4);
        this.f17947l.m24039a();
    }

    /* renamed from: a */
    public final void m24197a(File file, String str, int i) {
        C5192b a = C5192b.m24319a();
        a.m24317a("Collecting session parts for ID " + str);
        File[] a2 = m24195a(new C5264w(str + "SessionCrash"));
        boolean z = a2 != null && a2.length > 0;
        C5192b.m24319a().m24317a(String.format(Locale.US, "Session %s has fatal exception: %s", str, Boolean.valueOf(z)));
        File[] a3 = m24195a(new C5264w(str + "SessionEvent"));
        boolean z2 = a3 != null && a3.length > 0;
        C5192b.m24319a().m24317a(String.format(Locale.US, "Session %s has non-fatal exceptions: %s", str, Boolean.valueOf(z2)));
        if (z || z2) {
            m24196a(file, str, m24187a(str, a3, i), z ? a2[0] : null);
        } else {
            C5192b a4 = C5192b.m24319a();
            a4.m24317a("No events present for session ID " + str);
        }
        C5192b a5 = C5192b.m24319a();
        a5.m24317a("Removing session part files for ID " + str);
        m24168c(m24169c(str));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.io.Flushable] */
    /* JADX WARN: Type inference failed for: r11v26 */
    /* JADX WARN: Type inference failed for: r11v27 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m24196a(java.io.File r6, java.lang.String r7, java.io.File[] r8, java.io.File r9) {
        /*
            Method dump skipped, instructions count: 525
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p282e.p289l.p290d.p293h.C5235j.m24196a(java.io.File, java.lang.String, java.io.File[], java.io.File):void");
    }

    /* renamed from: a */
    public final void m24193a(String str) {
        C5192b a = C5192b.m24319a();
        a.m24317a("Finalizing native report for session " + str);
        AbstractC5196d b = this.f17950o.mo24304b(str);
        File d = b.mo24298d();
        if (d == null || !d.exists()) {
            C5192b a2 = C5192b.m24319a();
            a2.m24311d("No minidump data found for session " + str);
            return;
        }
        long lastModified = d.lastModified();
        C5293b bVar = new C5293b(this.f17936a, this.f17946k, str);
        File file = new File(m24150i(), str);
        if (!file.mkdirs()) {
            C5192b.m24319a().m24317a("Couldn't create native sessions directory");
            return;
        }
        m24217a(lastModified);
        List<AbstractC5290y> a3 = m24215a(b, str, m24162e(), m24153h(), bVar.m24033b());
        C5291z.m24041a(file, a3);
        this.f17954s.m24262a(m24148i(str), a3);
        bVar.m24039a();
    }

    /* renamed from: a */
    public final void m24192a(String str, int i) {
        File h = m24153h();
        C5229h0.m24226a(h, new C5264w(str + "SessionEvent"), i, f17929B);
    }

    /* renamed from: a */
    public final void m24191a(String str, long j) throws Exception {
        String format = String.format(Locale.US, "Crashlytics Android SDK/%s", C5269l.m24107e());
        m24188a(str, "BeginSession", new C5243e(this, str, format, j));
        this.f17950o.mo24307a(str, format, j);
    }

    /* renamed from: a */
    public final void m24188a(String str, String str2, AbstractC5263v vVar) throws Exception {
        C5407b bVar;
        Throwable th;
        C5407b bVar2;
        CodedOutputStream codedOutputStream = null;
        codedOutputStream = null;
        try {
            File h = m24153h();
            bVar2 = new C5407b(h, str + str2);
        } catch (Throwable th2) {
            th = th2;
            bVar = null;
        }
        try {
            CodedOutputStream a = CodedOutputStream.m7401a(bVar2);
            codedOutputStream = a;
            vVar.mo24123a(a);
            CommonUtils.m7663a(a, "Failed to flush to session " + str2 + " file.");
            CommonUtils.m7665a((Closeable) bVar2, "Failed to close session " + str2 + " file.");
        } catch (Throwable th3) {
            th = th3;
            bVar = bVar2;
            CommonUtils.m7663a(codedOutputStream, "Failed to flush to session " + str2 + " file.");
            CommonUtils.m7665a((Closeable) bVar, "Failed to close session " + str2 + " file.");
            throw th;
        }
    }

    /* renamed from: a */
    public void m24186a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, AbstractC5431d dVar) {
        m24134r();
        C5277p pVar = new C5277p(new C5254p(), dVar, uncaughtExceptionHandler);
        this.f17955t = pVar;
        Thread.setDefaultUncaughtExceptionHandler(pVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.io.Flushable] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* renamed from: a */
    public final void m24185a(Thread thread, Throwable th, String str, long j) {
        Throwable th2;
        C5407b bVar;
        Exception e;
        C5407b bVar2 = null;
        str = 0;
        CodedOutputStream codedOutputStream = null;
        try {
            try {
                C5407b bVar3 = new C5407b(m24153h(), ((String) str) + "SessionCrash");
                try {
                    CodedOutputStream a = CodedOutputStream.m7401a(bVar3);
                    codedOutputStream = a;
                    str = a;
                    bVar2 = bVar3;
                    m24203a(a, thread, th, j, "crash", true);
                    codedOutputStream = a;
                    bVar = bVar3;
                } catch (Exception e2) {
                    e = e2;
                    bVar = bVar3;
                    str = codedOutputStream;
                    bVar2 = bVar;
                    C5192b.m24319a().m24314b("An error occurred in the fatal exception logger", e);
                    CommonUtils.m7663a(codedOutputStream, "Failed to flush to session begin file.");
                    CommonUtils.m7665a((Closeable) bVar, "Failed to close fatal exception file output stream.");
                }
            } catch (Throwable th3) {
                th2 = th3;
                CommonUtils.m7663a((Flushable) str, "Failed to flush to session begin file.");
                CommonUtils.m7665a((Closeable) bVar2, "Failed to close fatal exception file output stream.");
                throw th2;
            }
        } catch (Exception e3) {
            e = e3;
            bVar = null;
            codedOutputStream = null;
        } catch (Throwable th4) {
            th2 = th4;
            bVar2 = null;
            CommonUtils.m7663a((Flushable) str, "Failed to flush to session begin file.");
            CommonUtils.m7665a((Closeable) bVar2, "Failed to close fatal exception file output stream.");
            throw th2;
        }
        CommonUtils.m7663a(codedOutputStream, "Failed to flush to session begin file.");
        CommonUtils.m7665a((Closeable) bVar, "Failed to close fatal exception file output stream.");
    }

    /* renamed from: a */
    public void m24183a(File[] fileArr) {
        File[] a;
        HashSet hashSet = new HashSet();
        for (File file : fileArr) {
            C5192b.m24319a().m24317a("Found invalid session part file: " + file);
            hashSet.add(m24201a(file));
        }
        if (!hashSet.isEmpty()) {
            for (File file2 : m24195a(new C5242d(this, hashSet))) {
                C5192b.m24319a().m24317a("Deleting invalid session file: " + file2);
                file2.delete();
            }
        }
    }

    /* renamed from: a */
    public final void m24182a(File[] fileArr, int i, int i2) {
        C5192b.m24319a().m24317a("Closing open sessions.");
        while (i < fileArr.length) {
            File file = fileArr[i];
            String a = m24201a(file);
            C5192b a2 = C5192b.m24319a();
            a2.m24317a("Closing session: " + a);
            m24197a(file, a, i2);
            i++;
        }
    }

    /* renamed from: a */
    public final void m24181a(File[] fileArr, Set<String> set) {
        for (File file : fileArr) {
            String name = file.getName();
            Matcher matcher = f17930C.matcher(name);
            if (!matcher.matches()) {
                C5192b.m24319a().m24317a("Deleting unknown file: " + name);
                file.delete();
            } else if (!set.contains(matcher.group(1))) {
                C5192b.m24319a().m24317a("Trimming session file: " + name);
                file.delete();
            }
        }
    }

    /* renamed from: a */
    public final File[] m24195a(FilenameFilter filenameFilter) {
        return m24199a(m24153h(), filenameFilter);
    }

    /* renamed from: a */
    public final File[] m24187a(String str, File[] fileArr, int i) {
        File[] fileArr2 = fileArr;
        if (fileArr.length > i) {
            C5192b.m24319a().m24317a(String.format(Locale.US, "Trimming down to %d logged exceptions.", Integer.valueOf(i)));
            m24192a(str, i);
            fileArr2 = m24195a(new C5264w(str + "SessionEvent"));
        }
        return fileArr2;
    }

    /* renamed from: b */
    public final C5221f0 m24176b(String str) {
        return m24145k() ? this.f17939d : new C5289x(m24153h()).m24046c(str);
    }

    /* renamed from: b */
    public final C5411b.AbstractC5413b m24180b() {
        return new C5261t();
    }

    /* renamed from: b */
    public final Task<Void> m24178b(long j) {
        if (!m24131u()) {
            return Tasks.m8589a(new ScheduledThreadPoolExecutor(1), new CallableC5250l(j));
        }
        C5192b.m24319a().m24317a("Skipping logging Crashlytics event to Firebase, FirebaseCrash exists");
        return Tasks.m8591a((Object) null);
    }

    /* renamed from: b */
    public boolean m24179b(int i) {
        this.f17940e.m24240a();
        if (m24145k()) {
            C5192b.m24319a().m24317a("Skipping session finalization because a crash has already occurred.");
            return Boolean.FALSE.booleanValue();
        }
        C5192b.m24319a().m24317a("Finalizing previously open sessions.");
        try {
            m24218a(i, true);
            C5192b.m24319a().m24317a("Closed all previously open sessions");
            return true;
        } catch (Exception e) {
            C5192b.m24319a().m24314b("Unable to finalize previously open sessions.", e);
            return false;
        }
    }

    /* renamed from: c */
    public final void m24171c(int i) {
        HashSet hashSet = new HashSet();
        File[] p = m24136p();
        int min = Math.min(i, p.length);
        for (int i2 = 0; i2 < min; i2++) {
            hashSet.add(m24201a(p[i2]));
        }
        this.f17947l.m24034a(hashSet);
        m24181a(m24195a(new C5262u(null)), hashSet);
    }

    /* renamed from: c */
    public boolean m24172c() {
        if (!this.f17938c.m24104c()) {
            String f = m24159f();
            return f != null && this.f17950o.mo24303c(f);
        }
        C5192b.m24319a().m24317a("Found previous crash marker.");
        this.f17938c.m24103d();
        return Boolean.TRUE.booleanValue();
    }

    /* renamed from: c */
    public final File[] m24169c(String str) {
        return m24195a(new C5241c0(str));
    }

    /* renamed from: d */
    public final void m24167d() throws Exception {
        long v = m24130v();
        String gVar = new C5222g(this.f17942g).toString();
        C5192b a = C5192b.m24319a();
        a.m24317a("Opening a new session with ID " + gVar);
        this.f17950o.mo24302d(gVar);
        m24191a(gVar, v);
        m24164d(gVar);
        m24157f(gVar);
        m24160e(gVar);
        this.f17947l.m24032b(gVar);
        this.f17954s.m24263a(m24148i(gVar), v);
    }

    /* renamed from: d */
    public void m24166d(int i) {
        int a = i - C5229h0.m24227a(m24150i(), m24156g(), i, f17929B);
        C5229h0.m24226a(m24153h(), f17935z, a - C5229h0.m24228a(m24147j(), a, f17929B), f17929B);
    }

    /* renamed from: d */
    public final void m24164d(String str) throws Exception {
        String b = this.f17942g.m24058b();
        C5212b bVar = this.f17944i;
        String str2 = bVar.f17892e;
        String str3 = bVar.f17893f;
        String a = this.f17942g.mo24052a();
        int id = DeliveryMechanism.determineFrom(this.f17944i.f17890c).getId();
        m24188a(str, "SessionApp", new C5244f(b, str2, str3, a, id));
        this.f17950o.mo24306a(str, b, str2, str3, a, id, this.f17952q);
    }

    /* renamed from: e */
    public final Context m24162e() {
        return this.f17936a;
    }

    /* renamed from: e */
    public final void m24160e(String str) throws Exception {
        Context e = m24162e();
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        int a = CommonUtils.m7671a();
        String str2 = Build.MODEL;
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        long b = CommonUtils.m7654b();
        long blockCount = statFs.getBlockCount() * statFs.getBlockSize();
        boolean i = CommonUtils.m7642i(e);
        int c = CommonUtils.m7649c(e);
        String str3 = Build.MANUFACTURER;
        String str4 = Build.PRODUCT;
        m24188a(str, "SessionDevice", new C5247i(this, a, str2, availableProcessors, b, blockCount, i, c, str3, str4));
        this.f17950o.mo24308a(str, a, str2, availableProcessors, b, blockCount, i, c, str3, str4);
    }

    /* renamed from: f */
    public final String m24159f() {
        File[] p = m24136p();
        return p.length > 0 ? m24201a(p[0]) : null;
    }

    /* renamed from: f */
    public final void m24157f(String str) throws Exception {
        String str2 = Build.VERSION.RELEASE;
        String str3 = Build.VERSION.CODENAME;
        boolean j = CommonUtils.m7641j(m24162e());
        m24188a(str, "SessionOS", new C5245g(this, str2, str3, j));
        this.f17950o.mo24305a(str, str2, str3, j);
    }

    /* renamed from: g */
    public File m24156g() {
        return new File(m24153h(), "fatal-sessions");
    }

    /* renamed from: g */
    public final void m24154g(String str) throws Exception {
        m24188a(str, "SessionUser", new C5248j(this, m24176b(str)));
    }

    /* renamed from: h */
    public File m24153h() {
        return this.f17943h.mo23875b();
    }

    /* renamed from: i */
    public File m24150i() {
        return new File(m24153h(), "native-sessions");
    }

    /* renamed from: j */
    public File m24147j() {
        return new File(m24153h(), "nonfatal-sessions");
    }

    /* renamed from: k */
    public boolean m24145k() {
        C5277p pVar = this.f17955t;
        return pVar != null && pVar.m24078a();
    }

    /* renamed from: l */
    public File[] m24143l() {
        return m24195a(f17934y);
    }

    /* renamed from: m */
    public File[] m24141m() {
        LinkedList linkedList = new LinkedList();
        Collections.addAll(linkedList, m24199a(m24156g(), f17935z));
        Collections.addAll(linkedList, m24199a(m24147j(), f17935z));
        Collections.addAll(linkedList, m24199a(m24153h(), f17935z));
        return (File[]) linkedList.toArray(new File[linkedList.size()]);
    }

    /* renamed from: n */
    public File[] m24139n() {
        return m24163d(m24150i().listFiles());
    }

    /* renamed from: o */
    public File[] m24137o() {
        return m24195a(f17933x);
    }

    /* renamed from: p */
    public final File[] m24136p() {
        File[] o = m24137o();
        Arrays.sort(o, f17928A);
        return o;
    }

    /* renamed from: q */
    public final Task<Void> m24135q() {
        File[] l;
        ArrayList arrayList = new ArrayList();
        for (File file : m24143l()) {
            try {
                arrayList.add(m24178b(Long.parseLong(file.getName().substring(3))));
            } catch (NumberFormatException e) {
                C5192b.m24319a().m24317a("Could not parse timestamp from file " + file.getName());
            }
            file.delete();
        }
        return Tasks.m8590a((Collection<? extends Task<?>>) arrayList);
    }

    /* renamed from: r */
    public void m24134r() {
        this.f17940e.m24234b(new CallableC5238b());
    }

    /* renamed from: s */
    public final Task<Boolean> m24133s() {
        if (this.f17937b.m24072b()) {
            C5192b.m24319a().m24317a("Automatic data collection is enabled. Allowing upload.");
            this.f17956u.m8596b((TaskCompletionSource<Boolean>) false);
            return Tasks.m8591a(true);
        }
        C5192b.m24319a().m24317a("Automatic data collection is disabled.");
        C5192b.m24319a().m24317a("Notifying that unsent reports are available.");
        this.f17956u.m8596b((TaskCompletionSource<Boolean>) true);
        Task<TContinuationResult> a = this.f17937b.m24069c().mo8612a(new C5257r(this));
        C5192b.m24319a().m24317a("Waiting for send/deleteUnsentReports to be called.");
        return C5229h0.m24230a(a, this.f17957v.m8600a());
    }
}

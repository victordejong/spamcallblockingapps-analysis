package com.truecaller.searchwarnings.supernova;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1359x4.p1363k.AbstractC21455c;
import s1.g;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018��2\u00020\u0001B%\b\u0007\u0012\b\b\u0001\u0010\u0011\u001a\u00020\u0010\u0012\b\b\u0001\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0014\u0010\u0015J\u0013\u0010\u0003\u001a\u00020\u0002H\u0096@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u0002H\u0082@ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0004R\u001d\u0010\u000b\u001a\u00020\u00068B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0016\u0010\u000f\u001a\u00020\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0016"}, d2 = {"Lcom/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker;", "Landroidx/work/CoroutineWorker;", "Landroidx/work/ListenableWorker$a;", "n", "(Ls1/w/d;)Ljava/lang/Object;", "o", "", "d", "Ls1/g;", "getOptIn", "()Z", "optIn", "Le/a/x4/k/c;", "e", "Le/a/x4/k/c;", "supernovaSettingRepository", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/x4/k/c;)V", "search-warnings_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes13-dex2jar.jar:com/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker.class */
public final class SetSupernovaSettingsWorker extends CoroutineWorker {

    /* renamed from: d */
    public final g f14695d = C25225a.m3978P1(new C4450a());

    /* renamed from: e */
    public final AbstractC21455c f14696e;

    /* renamed from: com.truecaller.searchwarnings.supernova.SetSupernovaSettingsWorker$a */
    /* loaded from: classes13-dex2jar.jar:com/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker$a.class */
    public static final class C4450a extends m implements a<Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4450a() {
            super(0);
            SetSupernovaSettingsWorker.this = r4;
        }

        public Object invoke() {
            return Boolean.valueOf(SetSupernovaSettingsWorker.this.getInputData().m1305b("opt_in", true));
        }
    }

    @e(c = "com.truecaller.searchwarnings.supernova.SetSupernovaSettingsWorker", f = "SetSupernovaSettingsWorker.kt", l = {33}, m = "performRequest")
    /* renamed from: com.truecaller.searchwarnings.supernova.SetSupernovaSettingsWorker$b */
    /* loaded from: classes13-dex2jar.jar:com/truecaller/searchwarnings/supernova/SetSupernovaSettingsWorker$b.class */
    public static final class C4451b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f14698d;

        /* renamed from: e */
        public int f14699e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4451b(d dVar) {
            super(dVar);
            SetSupernovaSettingsWorker.this = r4;
        }

        /* renamed from: s */
        public final Object m34774s(Object obj) {
            this.f14698d = obj;
            this.f14699e |= Integer.MIN_VALUE;
            return SetSupernovaSettingsWorker.this.m34775o(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SetSupernovaSettingsWorker(Context context, WorkerParameters workerParameters, AbstractC21455c abstractC21455c) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
        l.e(abstractC21455c, "supernovaSettingRepository");
        this.f14696e = abstractC21455c;
    }

    @Override // androidx.work.CoroutineWorker
    /* renamed from: n */
    public Object mo34715n(d<? super ListenableWorker.AbstractC0414a> dVar) {
        return m34775o(dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00ba  */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m34775o(s1.w.d<? super androidx.work.ListenableWorker.AbstractC0414a> r8) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.searchwarnings.supernova.SetSupernovaSettingsWorker.m34775o(s1.w.d):java.lang.Object");
    }
}

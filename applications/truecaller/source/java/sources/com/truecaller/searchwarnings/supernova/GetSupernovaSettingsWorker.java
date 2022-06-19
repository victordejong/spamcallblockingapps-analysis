package com.truecaller.searchwarnings.supernova;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p194a.p1359x4.p1363k.AbstractC21455c;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018��2\u00020\u0001B-\b\u0007\u0012\b\b\u0001\u0010\u000e\u001a\u00020\r\u0012\b\b\u0001\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u0011\u0010\u0012J\u0013\u0010\u0003\u001a\u00020\u0002H\u0096@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004R\u0016\u0010\b\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\f\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0013"}, d2 = {"Lcom/truecaller/searchwarnings/supernova/GetSupernovaSettingsWorker;", "Landroidx/work/CoroutineWorker;", "Landroidx/work/ListenableWorker$a;", "n", "(Ls1/w/d;)Ljava/lang/Object;", "Le/a/x4/k/c;", "d", "Le/a/x4/k/c;", "supernovaSettingRepository", "Le/a/b0/o/a;", "e", "Le/a/b0/o/a;", "coreSettings", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/x4/k/c;Le/a/b0/o/a;)V", "search-warnings_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes13-dex2jar.jar:com/truecaller/searchwarnings/supernova/GetSupernovaSettingsWorker.class */
public final class GetSupernovaSettingsWorker extends CoroutineWorker {

    /* renamed from: d */
    public final AbstractC21455c f14689d;

    /* renamed from: e */
    public final AbstractC8541a f14690e;

    @e(c = "com.truecaller.searchwarnings.supernova.GetSupernovaSettingsWorker", f = "GetSupernovaSettingsWorker.kt", l = {29}, m = "doWork")
    /* renamed from: com.truecaller.searchwarnings.supernova.GetSupernovaSettingsWorker$a */
    /* loaded from: classes13-dex2jar.jar:com/truecaller/searchwarnings/supernova/GetSupernovaSettingsWorker$a.class */
    public static final class C4449a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f14691d;

        /* renamed from: e */
        public int f14692e;

        /* renamed from: g */
        public Object f14694g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4449a(d dVar) {
            super(dVar);
            GetSupernovaSettingsWorker.this = r4;
        }

        /* renamed from: s */
        public final Object m34776s(Object obj) {
            this.f14691d = obj;
            this.f14692e |= Integer.MIN_VALUE;
            return GetSupernovaSettingsWorker.this.mo34715n(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetSupernovaSettingsWorker(Context context, WorkerParameters workerParameters, AbstractC21455c abstractC21455c, AbstractC8541a abstractC8541a) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
        l.e(abstractC21455c, "supernovaSettingRepository");
        l.e(abstractC8541a, "coreSettings");
        this.f14689d = abstractC21455c;
        this.f14690e = abstractC8541a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d9  */
    @Override // androidx.work.CoroutineWorker
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo34715n(s1.w.d<? super androidx.work.ListenableWorker.AbstractC0414a> r7) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.searchwarnings.supernova.GetSupernovaSettingsWorker.mo34715n(s1.w.d):java.lang.Object");
    }
}

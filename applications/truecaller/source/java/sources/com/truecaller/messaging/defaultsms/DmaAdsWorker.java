package com.truecaller.messaging.defaultsms;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p195a.p280s0.AbstractC7258j;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018��2\u00020\u0001B\u001d\b\u0007\u0012\b\b\u0001\u0010\u000e\u001a\u00020\r\u0012\b\b\u0001\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0013\u0010\u0003\u001a\u00020\u0002H\u0096@ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004R\"\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0013"}, d2 = {"Lcom/truecaller/messaging/defaultsms/DmaAdsWorker;", "Landroidx/work/CoroutineWorker;", "Landroidx/work/ListenableWorker$a;", "n", "(Ls1/w/d;)Ljava/lang/Object;", "Le/a/a/s0/j;", "d", "Le/a/a/s0/j;", "getDmaAdsManager", "()Le/a/a/s0/j;", "setDmaAdsManager", "(Le/a/a/s0/j;)V", "dmaAdsManager", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/defaultsms/DmaAdsWorker.class */
public final class DmaAdsWorker extends CoroutineWorker {
    @Inject

    /* renamed from: d */
    public AbstractC7258j f13487d;

    @e(c = "com.truecaller.messaging.defaultsms.DmaAdsWorker", f = "DmaAdsWorker.kt", l = {54}, m = "doWork")
    /* renamed from: com.truecaller.messaging.defaultsms.DmaAdsWorker$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/defaultsms/DmaAdsWorker$a.class */
    public static final class C4217a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f13488d;

        /* renamed from: e */
        public int f13489e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4217a(d dVar) {
            super(dVar);
            DmaAdsWorker.this = r4;
        }

        /* renamed from: s */
        public final Object m34989s(Object obj) {
            this.f13488d = obj;
            this.f13489e |= Integer.MIN_VALUE;
            return DmaAdsWorker.this.mo34715n(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DmaAdsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0058  */
    @Override // androidx.work.CoroutineWorker
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo34715n(s1.w.d<? super androidx.work.ListenableWorker.AbstractC0414a> r6) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.messaging.defaultsms.DmaAdsWorker.mo34715n(s1.w.d):java.lang.Object");
    }
}

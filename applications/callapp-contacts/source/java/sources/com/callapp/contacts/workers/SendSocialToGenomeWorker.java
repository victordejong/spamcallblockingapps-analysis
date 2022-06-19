package com.callapp.contacts.workers;

import android.content.Context;
import androidx.work.C2992d;
import androidx.work.C3148m;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.C3068j;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.UpdateUserProfileUtil;
import java.util.Calendar;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, m4298d2 = {"Lcom/callapp/contacts/workers/SendSocialToGenomeWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/SendSocialToGenomeWorker.class */
public final class SendSocialToGenomeWorker extends Worker {

    /* renamed from: a */
    public static final Companion f29639a = new Companion(null);

    /* renamed from: b */
    private static final String f29640b = "job_send_social_to_genome_tag";

    /* renamed from: c */
    private static final String f29641c = "socialNetIds";

    /* renamed from: d */
    private static final int f29642d = 5;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0015\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n��R\u0014\u0010\u0007\u001a\u00020\u0006X\u0086D¢\u0006\b\n��\u001a\u0004\b\b\u0010\t¨\u0006\u000e"}, m4298d2 = {"Lcom/callapp/contacts/workers/SendSocialToGenomeWorker$Companion;", "", "()V", "HOURS", "", "SOCIAL_NET_IDS_KEY", "", "TAG", "getTAG", "()Ljava/lang/String;", "scheduleJob", "", "socialNetIds", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/SendSocialToGenomeWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final void m26117a(int[] iArr) {
            if (iArr == null) {
                return;
            }
            Calendar calendar = Calendar.getInstance();
            calendar.add(10, SendSocialToGenomeWorker.f29642d);
            Calendar calendar2 = Calendar.getInstance();
            C18524p.m3843b(calendar2, "Calendar.getInstance()");
            long timeInMillis = calendar2.getTimeInMillis();
            C18524p.m3843b(calendar, "calendar");
            long timeInMillis2 = calendar.getTimeInMillis();
            C2992d.C2993a c2993a = new C2992d.C2993a();
            c2993a.m39495a(SendSocialToGenomeWorker.f29641c, iArr);
            C3148m c = new C3148m.C3149a(SendSocialToGenomeWorker.class).m39257a(c2993a.m39502a()).m39256a(getTAG()).m39259a(timeInMillis2 - timeInMillis, TimeUnit.MILLISECONDS).m39254c();
            C18524p.m3843b(c, "OneTimeWorkRequestBuilde…nit.MILLISECONDS).build()");
            C3068j.m39359b(CallAppApplication.get()).m39265a(c);
        }

        public final String getTAG() {
            return SendSocialToGenomeWorker.f29640b;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SendSocialToGenomeWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        C18524p.m3840d(appContext, "appContext");
        C18524p.m3840d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.AbstractC2980a doWork() {
        int[] iArr;
        Object obj = getInputData().f11151b.get(f29641c);
        if (obj instanceof Integer[]) {
            Integer[] numArr = (Integer[]) obj;
            int[] iArr2 = new int[numArr.length];
            int i = 0;
            while (true) {
                iArr = iArr2;
                if (i >= numArr.length) {
                    break;
                }
                iArr2[i] = numArr[i].intValue();
                i++;
            }
        } else {
            iArr = null;
        }
        UpdateUserProfileUtil.m27357a(iArr);
        ListenableWorker.AbstractC2980a.C2983c c2983c = new ListenableWorker.AbstractC2980a.C2983c();
        C18524p.m3843b(c2983c, "Result.success()");
        return c2983c;
    }
}

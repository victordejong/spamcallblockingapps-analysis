package com.callapp.contacts.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.d;
import androidx.work.impl.j;
import androidx.work.m;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.UpdateUserProfileUtil;
import java.util.Calendar;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \t2\u00020\u0001:\u0001\tB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\n"}, d2 = {"Lcom/callapp/contacts/workers/SendSocialToGenomeWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/SendSocialToGenomeWorker.class */
public final class SendSocialToGenomeWorker extends Worker {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f17082a = new Companion(null);

    /* renamed from: b  reason: collision with root package name */
    private static final String f17083b = "job_send_social_to_genome_tag";

    /* renamed from: c  reason: collision with root package name */
    private static final String f17084c = "socialNetIds";

    /* renamed from: d  reason: collision with root package name */
    private static final int f17085d = 5;

    @Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0015\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n��R\u0014\u0010\u0007\u001a\u00020\u0006X\u0086D¢\u0006\b\n��\u001a\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Lcom/callapp/contacts/workers/SendSocialToGenomeWorker$Companion;", "", "()V", "HOURS", "", "SOCIAL_NET_IDS_KEY", "", "TAG", "getTAG", "()Ljava/lang/String;", "scheduleJob", "", "socialNetIds", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/SendSocialToGenomeWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(int[] iArr) {
            if (iArr != null) {
                Calendar calendar = Calendar.getInstance();
                calendar.add(10, SendSocialToGenomeWorker.f17085d);
                Calendar instance = Calendar.getInstance();
                p.b(instance, "Calendar.getInstance()");
                long timeInMillis = instance.getTimeInMillis();
                p.b(calendar, "calendar");
                long timeInMillis2 = calendar.getTimeInMillis();
                d.a aVar = new d.a();
                aVar.a(SendSocialToGenomeWorker.f17084c, iArr);
                m c2 = new m.a(SendSocialToGenomeWorker.class).a(aVar.a()).a(getTAG()).a(timeInMillis2 - timeInMillis, TimeUnit.MILLISECONDS).c();
                p.b(c2, "OneTimeWorkRequestBuilde…nit.MILLISECONDS).build()");
                j.b(CallAppApplication.get()).a(c2);
            }
        }

        public final String getTAG() {
            return SendSocialToGenomeWorker.f17083b;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SendSocialToGenomeWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        p.d(appContext, "appContext");
        p.d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.a doWork() {
        int[] iArr;
        d inputData = getInputData();
        Object obj = inputData.f5978b.get(f17084c);
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
        UpdateUserProfileUtil.a(iArr);
        ListenableWorker.a.c cVar = new ListenableWorker.a.c();
        p.b(cVar, "Result.success()");
        return cVar;
    }
}

package com.truecaller.analytics.heartbeat;

import android.os.Bundle;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent.class */
public final class AppHeartBeatTaskEvent implements AbstractC19549v {

    /* renamed from: a */
    public final Result f9990a;

    /* renamed from: b */
    public final long f9991b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent$Result;", "", "", UpdateKey.STATUS, "Ljava/lang/String;", "getStatus", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "SUCCESS", "FAILURE", "QUEUED", "FAILED_BUILDING_EVENT", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent$Result.class */
    public enum Result {
        SUCCESS("Success"),
        FAILURE("Failure"),
        QUEUED("Queued"),
        FAILED_BUILDING_EVENT("FailedBuildingEvent");
        
        private final String status;

        Result(String str) {
            this.status = str;
        }

        public final String getStatus() {
            return this.status;
        }
    }

    public AppHeartBeatTaskEvent(Result result, long j) {
        l.e(result, "result");
        this.f9990a = result;
        this.f9991b = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    public AppHeartBeatTaskEvent(Result result, long j, int i) {
        ?? r6 = (i & 2) != 0 ? -1 : j;
        l.e(result, "result");
        this.f9990a = result;
        this.f9991b = r6;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Bundle bundle = new Bundle();
        bundle.putString("Result", this.f9990a.getStatus());
        bundle.putLong("TriggerPeriodMinutes", this.f9991b);
        return new AbstractC19580x.C19582b("AppHeartBeatTask", bundle);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AppHeartBeatTaskEvent)) {
                return false;
            }
            AppHeartBeatTaskEvent appHeartBeatTaskEvent = (AppHeartBeatTaskEvent) obj;
            return l.a(this.f9990a, appHeartBeatTaskEvent.f9990a) && this.f9991b == appHeartBeatTaskEvent.f9991b;
        }
        return true;
    }

    public int hashCode() {
        Result result = this.f9990a;
        return ((result != null ? result.hashCode() : 0) * 31) + C4876d.m34274a(this.f9991b);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AppHeartBeatTaskEvent(result=");
        m8728C.append(this.f9990a);
        m8728C.append(", triggerPeriodMinutes=");
        return C22128a.m8693K2(m8728C, this.f9991b, ")");
    }
}

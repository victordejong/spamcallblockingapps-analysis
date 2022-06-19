package com.truecaller.backup.analyitcs;

import android.os.Bundle;
import com.truecaller.backup.BackupResult;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* loaded from: classes5-dex2jar.jar:com/truecaller/backup/analyitcs/BackupTaskEvent.class */
public final class BackupTaskEvent implements AbstractC19549v {

    /* renamed from: a */
    public final long f10183a;

    /* renamed from: b */
    public final Type f10184b;

    /* renamed from: c */
    public final BackupResult f10185c;

    /* renamed from: d */
    public final long f10186d;

    /* renamed from: e */
    public final Long f10187e;

    /* renamed from: f */
    public final Trigger f10188f;

    /* renamed from: g */
    public final Integer f10189g;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Trigger;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "SCHEDULED", "MANUAL", "backup_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/backup/analyitcs/BackupTaskEvent$Trigger.class */
    public enum Trigger {
        SCHEDULED("Scheduled"),
        MANUAL("Manual");
        
        private final String value;

        Trigger(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Type;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "BACKUP", "RESTORE", "backup_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/backup/analyitcs/BackupTaskEvent$Type.class */
    public enum Type {
        BACKUP("Backup"),
        RESTORE("Restore");
        
        private final String value;

        Type(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    public BackupTaskEvent(Type type, BackupResult backupResult, long j, Long l, Trigger trigger, Integer num) {
        l.e(type, "type");
        l.e(backupResult, "result");
        this.f10184b = type;
        this.f10185c = backupResult;
        this.f10186d = j;
        this.f10187e = l;
        this.f10188f = trigger;
        this.f10189g = num;
        this.f10183a = TimeUnit.MILLISECONDS.toSeconds(j);
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Bundle bundle = new Bundle();
        bundle.putString("Result", this.f10185c.name());
        bundle.putString("Type", this.f10184b.getValue());
        Trigger trigger = this.f10188f;
        if (trigger != null) {
            bundle.putString("Trigger", trigger.getValue());
        }
        Long l = this.f10187e;
        if (l != null) {
            l.longValue();
            bundle.putLong("Frequency", this.f10187e.longValue());
        }
        Integer num = this.f10189g;
        if (num != null) {
            num.intValue();
            bundle.putInt("AttemptCount", this.f10189g.intValue());
        }
        bundle.putLong("value", this.f10183a);
        return new AbstractC19580x.C19582b("BackupTask", bundle);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof BackupTaskEvent)) {
                return false;
            }
            BackupTaskEvent backupTaskEvent = (BackupTaskEvent) obj;
            return l.a(this.f10184b, backupTaskEvent.f10184b) && l.a(this.f10185c, backupTaskEvent.f10185c) && this.f10186d == backupTaskEvent.f10186d && l.a(this.f10187e, backupTaskEvent.f10187e) && l.a(this.f10188f, backupTaskEvent.f10188f) && l.a(this.f10189g, backupTaskEvent.f10189g);
        }
        return true;
    }

    public int hashCode() {
        Type type = this.f10184b;
        int i = 0;
        int hashCode = type != null ? type.hashCode() : 0;
        BackupResult backupResult = this.f10185c;
        int hashCode2 = backupResult != null ? backupResult.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.f10186d);
        Long l = this.f10187e;
        int hashCode3 = l != null ? l.hashCode() : 0;
        Trigger trigger = this.f10188f;
        int hashCode4 = trigger != null ? trigger.hashCode() : 0;
        Integer num = this.f10189g;
        if (num != null) {
            i = num.hashCode();
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + m34274a) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("BackupTaskEvent(type=");
        m8728C.append(this.f10184b);
        m8728C.append(", result=");
        m8728C.append(this.f10185c);
        m8728C.append(", durationMillis=");
        m8728C.append(this.f10186d);
        m8728C.append(", frequency=");
        m8728C.append(this.f10187e);
        m8728C.append(", trigger=");
        m8728C.append(this.f10188f);
        m8728C.append(", runAttemptCount=");
        return C22128a.m8689L2(m8728C, this.f10189g, ")");
    }
}

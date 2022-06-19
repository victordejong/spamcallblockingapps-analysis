package com.truecaller.backup.analyitcs;

import android.os.Bundle;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* loaded from: classes5-dex2jar.jar:com/truecaller/backup/analyitcs/BackupDurationEvent.class */
public final class BackupDurationEvent implements AbstractC19549v {

    /* renamed from: a */
    public final long f10180a;

    /* renamed from: b */
    public final Segment f10181b;

    /* renamed from: c */
    public final long f10182c;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/truecaller/backup/analyitcs/BackupDurationEvent$Segment;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "CALL_LOG", "MESSAGES", "backup_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes5-dex2jar.jar:com/truecaller/backup/analyitcs/BackupDurationEvent$Segment.class */
    public enum Segment {
        CALL_LOG("CallLog"),
        MESSAGES("Messages");
        
        private final String value;

        Segment(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    public BackupDurationEvent(Segment segment, long j) {
        l.e(segment, "segment");
        this.f10181b = segment;
        this.f10182c = j;
        this.f10180a = TimeUnit.MILLISECONDS.toSeconds(j);
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Bundle bundle = new Bundle();
        bundle.putString("Segment", this.f10181b.getValue());
        bundle.putLong("value", this.f10180a);
        return new AbstractC19580x.C19582b("BackupDuration", bundle);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof BackupDurationEvent)) {
                return false;
            }
            BackupDurationEvent backupDurationEvent = (BackupDurationEvent) obj;
            return l.a(this.f10181b, backupDurationEvent.f10181b) && this.f10182c == backupDurationEvent.f10182c;
        }
        return true;
    }

    public int hashCode() {
        Segment segment = this.f10181b;
        return ((segment != null ? segment.hashCode() : 0) * 31) + C4876d.m34274a(this.f10182c);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("BackupDurationEvent(segment=");
        m8728C.append(this.f10181b);
        m8728C.append(", durationMillis=");
        return C22128a.m8693K2(m8728C, this.f10182c, ")");
    }
}

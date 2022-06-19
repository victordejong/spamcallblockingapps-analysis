package com.truecaller.insights.models.pdo;

import androidx.annotation.Keep;
import java.util.Objects;
import kotlin.Metadata;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\b\u0007\u0018��2\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u00020\u00048\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\n\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/truecaller/insights/models/pdo/ExtendedSmsBackup;", "Lcom/truecaller/insights/models/pdo/SmsBackup;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "isIM", "Z", "()Z", "<init>", "(Z)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/models/pdo/ExtendedSmsBackup.class */
public final class ExtendedSmsBackup extends SmsBackup {
    private final boolean isIM;

    public ExtendedSmsBackup() {
        this(false, 1, null);
    }

    public ExtendedSmsBackup(boolean z) {
        this.isIM = z;
    }

    public /* synthetic */ ExtendedSmsBackup(boolean z, int i, f fVar) {
        this((i & 1) != 0 ? false : z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (true ^ l.a(ExtendedSmsBackup.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type com.truecaller.insights.models.pdo.ExtendedSmsBackup");
        if (this.isIM == ((ExtendedSmsBackup) obj).isIM) {
            return super.equals(obj);
        }
        return false;
    }

    public int hashCode() {
        return (super.hashCode() * 31) + C0424b.m42597a(this.isIM);
    }

    public final boolean isIM() {
        return this.isIM;
    }
}

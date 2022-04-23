package androidx.work.impl.model;

import android.arch.persistence.room.ColumnInfo;
import android.arch.persistence.room.Entity;
import android.arch.persistence.room.ForeignKey;
import android.arch.persistence.room.PrimaryKey;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
@Entity(foreignKeys = {@ForeignKey(childColumns = {"work_spec_id"}, entity = WorkSpec.class, onDelete = 5, onUpdate = 5, parentColumns = {"id"})})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/SystemIdInfo.class */
public class SystemIdInfo {
    @ColumnInfo(name = "system_id")
    public final int systemId;
    @ColumnInfo(name = "work_spec_id")
    @PrimaryKey
    @NonNull
    public final String workSpecId;

    public SystemIdInfo(@NonNull String str, int i) {
        this.workSpecId = str;
        this.systemId = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SystemIdInfo systemIdInfo = (SystemIdInfo) obj;
        if (this.systemId != systemIdInfo.systemId) {
            return false;
        }
        return this.workSpecId.equals(systemIdInfo.workSpecId);
    }

    public int hashCode() {
        return (this.workSpecId.hashCode() * 31) + this.systemId;
    }
}

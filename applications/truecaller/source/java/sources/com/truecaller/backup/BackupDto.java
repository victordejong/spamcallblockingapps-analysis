package com.truecaller.backup;

import android.os.Parcel;
import android.os.Parcelable;
import e.m.e.d0.b;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u000b¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\t\u0010\nR\u001c\u0010\u000f\u001a\u00020\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\f\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcom/truecaller/backup/BackupDto;", "Landroid/os/Parcelable;", "", "describeContents", "()I", "Landroid/os/Parcel;", "dest", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "", "a", "J", "()J", "timestamp", "<init>", "(J)V", "backup_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/backup/BackupDto.class */
public final class BackupDto implements Parcelable {
    public static final Parcelable.Creator<BackupDto> CREATOR = new C3465a();
    @b("last")

    /* renamed from: a */
    private final long f10154a;

    /* renamed from: com.truecaller.backup.BackupDto$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/backup/BackupDto$a.class */
    public static final class C3465a implements Parcelable.Creator<BackupDto> {
        @Override // android.os.Parcelable.Creator
        public BackupDto createFromParcel(Parcel parcel) {
            l.e(parcel, "source");
            return new BackupDto(parcel.readLong());
        }

        @Override // android.os.Parcelable.Creator
        public BackupDto[] newArray(int i) {
            return new BackupDto[i];
        }
    }

    public BackupDto(long j) {
        this.f10154a = j;
    }

    /* renamed from: a */
    public final long m35887a() {
        return this.f10154a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "dest");
        parcel.writeLong(this.f10154a);
    }
}

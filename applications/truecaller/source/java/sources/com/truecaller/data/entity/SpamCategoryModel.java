package com.truecaller.data.entity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\r\b\u0087\b\u0018�� &2\u00020\u0001:\u0001'B!\u0012\u0006\u0010\u0012\u001a\u00020\u000b\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b#\u0010$B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b#\u0010%J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eHÆ\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u000eHÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0010J0\u0010\u0015\u001a\u00020��2\b\b\u0002\u0010\u0012\u001a\u00020\u000b2\b\b\u0002\u0010\u0013\u001a\u00020\u000e2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u000eHÆ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0010J\u0010\u0010\u0018\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u0018\u0010\nJ\u001a\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019HÖ\u0003¢\u0006\u0004\b\u001c\u0010\u001dR\u001b\u0010\u0014\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u001e\u001a\u0004\b\u001f\u0010\u0010R\u0019\u0010\u0012\u001a\u00020\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010 \u001a\u0004\b!\u0010\rR\u0019\u0010\u0013\u001a\u00020\u000e8\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u001e\u001a\u0004\b\"\u0010\u0010¨\u0006("}, d2 = {"Lcom/truecaller/data/entity/SpamCategoryModel;", "Landroid/os/Parcelable;", "Landroid/os/Parcel;", "parcel", "", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "", "component1", "()J", "", "component2", "()Ljava/lang/String;", "component3", "id", "label", "iconUrl", "copy", "(JLjava/lang/String;Ljava/lang/String;)Lcom/truecaller/data/entity/SpamCategoryModel;", "toString", "hashCode", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getIconUrl", "J", "getId", "getLabel", "<init>", "(JLjava/lang/String;Ljava/lang/String;)V", "(Landroid/os/Parcel;)V", "CREATOR", "a", "data_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/SpamCategoryModel.class */
public final class SpamCategoryModel implements Parcelable {
    public static final C3839a CREATOR = new C3839a(null);
    private final String iconUrl;

    /* renamed from: id */
    private final long f11565id;
    private final String label;

    /* renamed from: com.truecaller.data.entity.SpamCategoryModel$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/SpamCategoryModel$a.class */
    public static final class C3839a implements Parcelable.Creator<SpamCategoryModel> {
        public C3839a(f fVar) {
        }

        @Override // android.os.Parcelable.Creator
        public SpamCategoryModel createFromParcel(Parcel parcel) {
            l.e(parcel, "parcel");
            return new SpamCategoryModel(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public SpamCategoryModel[] newArray(int i) {
            return new SpamCategoryModel[i];
        }
    }

    public SpamCategoryModel(long j, String str, String str2) {
        l.e(str, "label");
        this.f11565id = j;
        this.label = str;
        this.iconUrl = str2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SpamCategoryModel(android.os.Parcel r7) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r1 = "parcel"
            s1.z.c.l.e(r0, r1)
            r0 = r7
            long r0 = r0.readLong()
            r8 = r0
            r0 = r7
            java.lang.String r0 = r0.readString()
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L29
            r0 = r10
            java.lang.String r1 = "parcel.readString() ?: t… be read by from Parcel\")"
            s1.z.c.l.d(r0, r1)
            r0 = r6
            r1 = r8
            r2 = r10
            r3 = r7
            java.lang.String r3 = r3.readString()
            r0.<init>(r1, r2, r3)
            return
        L29:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Spam category can't be read by from Parcel"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.data.entity.SpamCategoryModel.<init>(android.os.Parcel):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.truecaller.data.entity.SpamCategoryModel] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    public static /* synthetic */ SpamCategoryModel copy$default(SpamCategoryModel spamCategoryModel, long j, String str, String str2, int i, Object obj) {
        ?? r7 = j;
        if ((i & 1) != 0) {
            r7 = ((SpamCategoryModel) spamCategoryModel).f11565id;
        }
        if ((i & 2) != 0) {
            str = ((SpamCategoryModel) spamCategoryModel).label;
        }
        if ((i & 4) != 0) {
            str2 = ((SpamCategoryModel) spamCategoryModel).iconUrl;
        }
        return spamCategoryModel.copy(r7, str, str2);
    }

    public final long component1() {
        return this.f11565id;
    }

    public final String component2() {
        return this.label;
    }

    public final String component3() {
        return this.iconUrl;
    }

    public final SpamCategoryModel copy(long j, String str, String str2) {
        l.e(str, "label");
        return new SpamCategoryModel(j, str, str2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof SpamCategoryModel)) {
                return false;
            }
            SpamCategoryModel spamCategoryModel = (SpamCategoryModel) obj;
            return this.f11565id == spamCategoryModel.f11565id && l.a(this.label, spamCategoryModel.label) && l.a(this.iconUrl, spamCategoryModel.iconUrl);
        }
        return true;
    }

    public final String getIconUrl() {
        return this.iconUrl;
    }

    public final long getId() {
        return this.f11565id;
    }

    public final String getLabel() {
        return this.label;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f11565id);
        String str = this.label;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.iconUrl;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((m34274a * 31) + hashCode) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SpamCategoryModel(id=");
        m8728C.append(this.f11565id);
        m8728C.append(", label=");
        m8728C.append(this.label);
        m8728C.append(", iconUrl=");
        return C22128a.m8618h(m8728C, this.iconUrl, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeLong(this.f11565id);
        parcel.writeString(this.label);
        parcel.writeString(this.iconUrl);
    }
}

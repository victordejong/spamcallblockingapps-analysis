package gogolook.callgogolook2.messaging.scan.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.mopub.common.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p626l.p632u.C15021m;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0013\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\b\u0018�� (2\u00020\u0001:\u0001(B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B7\b\u0007\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\n¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0006HÆ\u0003J\u000f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00060\nHÆ\u0003J9\u0010\u001c\u001a\u00020��2\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\nHÆ\u0001J\b\u0010\u001d\u001a\u00020\u001eH\u0016J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"HÖ\u0003J\t\u0010#\u001a\u00020\u001eHÖ\u0001J\b\u0010$\u001a\u00020\u0006H\u0016J\u0018\u0010%\u001a\u00020&2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010'\u001a\u00020\u001eH\u0016R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\r\"\u0004\b\u0011\u0010\u000fR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0012\u0010\r\"\u0004\b\u0013\u0010\u000fR \u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006)"}, m815d2 = {"Lgogolook/callgogolook2/messaging/scan/data/SmsMessage;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "uri", "", "address", "body", Constants.VIDEO_TRACKING_URLS_KEY, "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getAddress", "()Ljava/lang/String;", "setAddress", "(Ljava/lang/String;)V", "getBody", "setBody", "getUri", "setUri", "getUrls", "()Ljava/util/List;", "setUrls", "(Ljava/util/List;)V", "component1", "component2", "component3", "component4", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "flags", "CREATOR", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/scan/data/SmsMessage.class */
public final class SmsMessage implements Parcelable {
    public static final C4662a CREATOR = new C4662a(null);

    /* renamed from: a */
    public String f11262a;

    /* renamed from: b */
    public String f11263b;

    /* renamed from: c */
    public String f11264c;

    /* renamed from: d */
    public List<String> f11265d;

    /* renamed from: gogolook.callgogolook2.messaging.scan.data.SmsMessage$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/scan/data/SmsMessage$a.class */
    public static final class C4662a implements Parcelable.Creator<SmsMessage> {
        public C4662a() {
        }

        public /* synthetic */ C4662a(C15145g gVar) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SmsMessage createFromParcel(Parcel parcel) {
            C15149k.m377b(parcel, "parcel");
            return new SmsMessage(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SmsMessage[] newArray(int i) {
            return new SmsMessage[i];
        }
    }

    public SmsMessage() {
        this(null, null, null, null, 15, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v4, types: [java.util.List] */
    public SmsMessage(Parcel parcel) {
        this(null, null, null, null, 15, null);
        C15149k.m377b(parcel, "parcel");
        this.f11262a = parcel.readString();
        String readString = parcel.readString();
        this.f11263b = readString == null ? "" : readString;
        String readString2 = parcel.readString();
        this.f11264c = readString2 == null ? "" : readString2;
        ArrayList readArrayList = parcel.readArrayList(String.class.getClassLoader());
        ArrayList arrayList = !(readArrayList instanceof List) ? null : readArrayList;
        this.f11265d = arrayList == null ? C15021m.m565a() : arrayList;
    }

    public SmsMessage(String str, String str2, String str3, List<String> list) {
        C15149k.m377b(str2, "address");
        C15149k.m377b(str3, "body");
        C15149k.m377b(list, Constants.VIDEO_TRACKING_URLS_KEY);
        this.f11262a = str;
        this.f11263b = str2;
        this.f11264c = str3;
        this.f11265d = list;
    }

    public /* synthetic */ SmsMessage(String str, String str2, String str3, List list, int i, C15145g gVar) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? C15021m.m565a() : list);
    }

    /* renamed from: a */
    public final String m27505a() {
        return this.f11263b;
    }

    /* renamed from: b */
    public final String m27504b() {
        return this.f11264c;
    }

    /* renamed from: c */
    public final String m27503c() {
        return this.f11262a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SmsMessage)) {
            return false;
        }
        SmsMessage smsMessage = (SmsMessage) obj;
        return C15149k.m384a((Object) this.f11262a, (Object) smsMessage.f11262a) && C15149k.m384a((Object) this.f11263b, (Object) smsMessage.f11263b) && C15149k.m384a((Object) this.f11264c, (Object) smsMessage.f11264c) && C15149k.m384a(this.f11265d, smsMessage.f11265d);
    }

    public int hashCode() {
        String str = this.f11262a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f11263b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f11264c;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        List<String> list = this.f11265d;
        if (list != null) {
            i = list.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    /* renamed from: q */
    public final List<String> m27502q() {
        return this.f11265d;
    }

    public String toString() {
        return "SmsMessage { uri=" + this.f11262a + ", address=" + this.f11263b + ", body=" + this.f11264c + ", urls=" + this.f11265d + " }";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        C15149k.m377b(parcel, "parcel");
        parcel.writeString(this.f11262a);
        parcel.writeString(this.f11263b);
        parcel.writeString(this.f11264c);
        parcel.writeList(this.f11265d);
    }
}

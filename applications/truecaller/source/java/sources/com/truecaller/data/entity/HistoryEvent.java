package com.truecaller.data.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.network.country.CountryListDto;
import e.m.f.a.e;
import e.m.f.a.j;
import e.m.f.a.o;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p372b0.p430q.C8588j;
/* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/HistoryEvent.class */
public class HistoryEvent extends Entity implements Parcelable {
    public static final Parcelable.Creator<HistoryEvent> CREATOR = new C3825a();

    /* renamed from: x */
    public static volatile j f11532x;

    /* renamed from: y */
    public static volatile String f11533y;

    /* renamed from: a */
    public String f11534a;

    /* renamed from: b */
    public String f11535b;

    /* renamed from: c */
    public String f11536c;

    /* renamed from: d */
    public String f11537d;

    /* renamed from: e */
    public String f11538e;

    /* renamed from: f */
    public Contact f11539f;

    /* renamed from: g */
    public Long f11540g;

    /* renamed from: h */
    public long f11541h;

    /* renamed from: i */
    public long f11542i;

    /* renamed from: j */
    public long f11543j;

    /* renamed from: k */
    public String f11544k;

    /* renamed from: l */
    public int f11545l;

    /* renamed from: m */
    public int f11546m;

    /* renamed from: n */
    public CallRecording f11547n;

    /* renamed from: o */
    public int f11548o;

    /* renamed from: p */
    public j.d f11549p;

    /* renamed from: q */
    public int f11550q;

    /* renamed from: r */
    public int f11551r;

    /* renamed from: s */
    public String f11552s;

    /* renamed from: t */
    public int f11553t;

    /* renamed from: u */
    public String f11554u;

    /* renamed from: v */
    public CallContextMessage f11555v;

    /* renamed from: w */
    public boolean f11556w;

    /* renamed from: com.truecaller.data.entity.HistoryEvent$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/HistoryEvent$a.class */
    public class C3825a implements Parcelable.Creator<HistoryEvent> {
        @Override // android.os.Parcelable.Creator
        public HistoryEvent createFromParcel(Parcel parcel) {
            return new HistoryEvent(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public HistoryEvent[] newArray(int i) {
            return new HistoryEvent[i];
        }
    }

    /* renamed from: com.truecaller.data.entity.HistoryEvent$b */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/HistoryEvent$b.class */
    public static class C3826b {

        /* renamed from: a */
        public final HistoryEvent f11557a = new HistoryEvent((C3825a) null);
    }

    public HistoryEvent() {
        this.f11534a = "";
        this.f11544k = "-1";
        this.f11548o = 1;
        this.f11551r = 4;
        this.f11556w = false;
    }

    public HistoryEvent(Parcel parcel, C3825a c3825a) {
        this.f11534a = "";
        this.f11544k = "-1";
        this.f11548o = 1;
        this.f11551r = 4;
        this.f11556w = false;
        setTcId(parcel.readString());
        this.f11535b = parcel.readString();
        this.f11536c = parcel.readString();
        this.f11537d = parcel.readString();
        int readInt = parcel.readInt();
        if (readInt == -1) {
            this.f11549p = null;
        } else {
            this.f11549p = j.d.values()[readInt];
        }
        this.f11550q = parcel.readInt();
        this.f11551r = parcel.readInt();
        this.f11554u = parcel.readString();
        this.f11541h = parcel.readLong();
        this.f11542i = parcel.readLong();
        this.f11545l = parcel.readInt();
        this.f11548o = parcel.readInt();
        this.f11546m = parcel.readInt();
        this.f11552s = parcel.readString();
        this.f11553t = parcel.readInt();
        setId(parcel.readByte() == 1 ? Long.valueOf(parcel.readLong()) : null);
        this.f11540g = parcel.readByte() == 1 ? Long.valueOf(parcel.readLong()) : null;
        if (parcel.readByte() == 1) {
            this.f11539f = (Contact) parcel.readParcelable(Contact.class.getClassLoader());
        }
        this.f11544k = parcel.readString();
        this.f11534a = parcel.readString();
        if (parcel.readByte() == 1) {
            this.f11547n = (CallRecording) parcel.readParcelable(CallRecording.class.getClassLoader());
        }
        if (parcel.readByte() == 1) {
            this.f11555v = (CallContextMessage) parcel.readParcelable(CallContextMessage.class.getClassLoader());
        }
        this.f11543j = parcel.readLong();
    }

    public HistoryEvent(C3825a c3825a) {
        this.f11534a = "";
        this.f11544k = "-1";
        this.f11548o = 1;
        this.f11551r = 4;
        this.f11556w = false;
    }

    @Deprecated
    public HistoryEvent(String str) {
        this.f11534a = "";
        this.f11544k = "-1";
        this.f11548o = 1;
        this.f11551r = 4;
        this.f11556w = false;
        if (C8574c0.m28353f(str)) {
            return;
        }
        if (f11532x == null) {
            synchronized (this) {
                if (f11532x == null) {
                    f11533y = AbstractApplicationC8442a.m28551L().m28543T();
                    f11532x = j.q();
                }
            }
        }
        this.f11536c = str;
        try {
            o R = f11532x.R(str, f11533y);
            this.f11535b = f11532x.i(R, j.c.a);
            this.f11549p = f11532x.w(R);
            CountryListDto.C3679a m28287b = C8588j.m28287b(this.f11535b);
            if (m28287b != null && !TextUtils.isEmpty(m28287b.f10912c)) {
                this.f11537d = m28287b.f10912c.toUpperCase();
            }
            this.f11537d = f11533y;
        } catch (e e) {
            e.getMessage();
        }
    }

    /* renamed from: a */
    public int m35484a() {
        int i = this.f11550q;
        if (i != 0) {
            int i2 = 1;
            if (i == 1) {
                return 2;
            }
            if (i != 2) {
                i2 = 6;
                if (i != 3) {
                    if (i == 5) {
                        return 4;
                    }
                    return i != 6 ? 0 : 21;
                }
            }
            return i2;
        }
        return 999;
    }

    @Override // com.truecaller.data.entity.Entity, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || HistoryEvent.class != obj.getClass()) {
            return false;
        }
        HistoryEvent historyEvent = (HistoryEvent) obj;
        if (!this.f11534a.equals(historyEvent.f11534a) || this.f11550q != historyEvent.f11550q || this.f11551r != historyEvent.f11551r || !Objects.equals(this.f11554u, historyEvent.f11554u) || this.f11541h != historyEvent.f11541h || this.f11542i != historyEvent.f11542i || this.f11545l != historyEvent.f11545l) {
            return false;
        }
        String str = this.f11535b;
        if (str != null) {
            if (!str.equals(historyEvent.f11535b)) {
                return false;
            }
        } else if (historyEvent.f11535b != null) {
            return false;
        }
        String str2 = this.f11536c;
        if (str2 != null) {
            if (!str2.equals(historyEvent.f11536c)) {
                return false;
            }
        } else if (historyEvent.f11536c != null) {
            return false;
        }
        String str3 = this.f11537d;
        if (str3 != null) {
            if (!str3.equals(historyEvent.f11537d)) {
                return false;
            }
        } else if (historyEvent.f11537d != null) {
            return false;
        }
        String str4 = this.f11538e;
        if (str4 != null) {
            if (!str4.equals(historyEvent.f11538e)) {
                return false;
            }
        } else if (historyEvent.f11538e != null) {
            return false;
        }
        if (this.f11549p != historyEvent.f11549p) {
            return false;
        }
        Long l = this.f11540g;
        if (l != null) {
            if (!l.equals(historyEvent.f11540g)) {
                return false;
            }
        } else if (historyEvent.f11540g != null) {
            return false;
        }
        CallRecording callRecording = this.f11547n;
        if (callRecording != null) {
            if (callRecording.equals(historyEvent.f11547n)) {
                return false;
            }
        } else if (historyEvent.f11547n != null) {
            return false;
        }
        if (this.f11543j == historyEvent.f11543j) {
            return this.f11544k.equals(historyEvent.f11544k);
        }
        return false;
    }

    public int hashCode() {
        String str = this.f11535b;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f11536c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f11537d;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f11538e;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        j.d dVar = this.f11549p;
        int hashCode5 = dVar != null ? dVar.hashCode() : 0;
        int i = this.f11550q;
        int i2 = this.f11551r;
        String str5 = this.f11554u;
        int hashCode6 = str5 != null ? str5.hashCode() : 0;
        Long l = this.f11540g;
        int hashCode7 = l != null ? l.hashCode() : 0;
        long j = this.f11541h;
        int i3 = (int) (j ^ (j >>> 32));
        long j2 = this.f11542i;
        int m8579q2 = C22128a.m8579q2(this.f11534a, (C22128a.m8579q2(this.f11544k, ((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i) * 31) + i2) * 31) + hashCode6) * 31) + hashCode7) * 31) + i3) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31, 31) + this.f11545l) * 31, 31);
        CallRecording callRecording = this.f11547n;
        int i4 = 0;
        if (callRecording != null) {
            i4 = callRecording.hashCode();
        }
        long j3 = this.f11543j;
        return ((m8579q2 + i4) * 31) + ((int) (j3 ^ (j3 >>> 32)));
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("HistoryEvent:{id=");
        m8728C.append(getId());
        m8728C.append(", tcId=");
        m8728C.append(getTcId());
        m8728C.append(", normalizedNumber=");
        m8728C.append(this.f11535b);
        String sb = m8728C.toString();
        String str = AnalyticsConstants.NULL;
        if (sb != null) {
            StringBuilder m8728C2 = C22128a.m8728C("<non-null normalized number>, rawNumber=");
            m8728C2.append(this.f11536c);
            if (m8728C2.toString() != null) {
                StringBuilder m8728C3 = C22128a.m8728C("<non-null raw number>, cachedName=");
                m8728C3.append(this.f11538e);
                if (m8728C3.toString() != null) {
                    StringBuilder m8728C4 = C22128a.m8728C("<non-null cached name>, numberType=");
                    m8728C4.append(this.f11549p);
                    m8728C4.append(", type=");
                    m8728C4.append(this.f11550q);
                    m8728C4.append(", action=");
                    m8728C4.append(this.f11551r);
                    m8728C4.append(", filterSource=");
                    m8728C4.append(this.f11554u);
                    m8728C4.append(", callLogId=");
                    m8728C4.append(this.f11540g);
                    m8728C4.append(", timestamp=");
                    m8728C4.append(this.f11541h);
                    m8728C4.append(", duration=");
                    m8728C4.append(this.f11542i);
                    m8728C4.append(", features=");
                    m8728C4.append(this.f11545l);
                    m8728C4.append(", isNew=");
                    m8728C4.append(this.f11545l);
                    m8728C4.append(", isRead=");
                    m8728C4.append(this.f11545l);
                    m8728C4.append(", phoneAccountComponentName=");
                    m8728C4.append(this.f11552s);
                    m8728C4.append(", contact=");
                    m8728C4.append(this.f11539f);
                    m8728C4.append(", eventId=");
                    m8728C4.append(this.f11534a);
                    m8728C4.append(", callRecording=");
                    m8728C4.append(this.f11547n);
                    m8728C4.append(", contextMessage=");
                    m8728C4.append(this.f11555v);
                    m8728C4.append(", ringingDuration=");
                    str = C22128a.m8693K2(m8728C4, this.f11543j, "}");
                }
            }
        }
        return str;
    }

    @Override // com.truecaller.data.entity.Entity, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(getTcId());
        parcel.writeString(this.f11535b);
        parcel.writeString(this.f11536c);
        parcel.writeString(this.f11537d);
        j.d dVar = this.f11549p;
        parcel.writeInt(dVar == null ? -1 : dVar.ordinal());
        parcel.writeInt(this.f11550q);
        parcel.writeInt(this.f11551r);
        parcel.writeString(this.f11554u);
        parcel.writeLong(this.f11541h);
        parcel.writeLong(this.f11542i);
        parcel.writeInt(this.f11545l);
        parcel.writeInt(this.f11548o);
        parcel.writeInt(this.f11546m);
        parcel.writeString(this.f11552s);
        parcel.writeInt(this.f11553t);
        if (getId() == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeLong(getId().longValue());
        }
        if (this.f11540g == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeLong(this.f11540g.longValue());
        }
        if (this.f11539f == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeParcelable(this.f11539f, i);
        }
        parcel.writeString(this.f11544k);
        parcel.writeString(this.f11534a);
        if (this.f11547n == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeParcelable(this.f11547n, i);
        }
        if (this.f11555v == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeParcelable(this.f11555v, i);
        }
        parcel.writeLong(this.f11543j);
    }
}

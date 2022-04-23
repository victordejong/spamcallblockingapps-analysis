package gogolook.callgogolook2.messaging.datamodel.data;

import android.content.ContentValues;
import android.database.Cursor;
import android.os.Parcel;
import android.os.Parcelable;
import android.telephony.PhoneNumberUtils;
import android.telephony.SubscriptionInfo;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import p081h.p093b.p099c.p100a.C5607h;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p488f.C11832i;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p582w0.C14108o4;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/data/ParticipantData.class */
public class ParticipantData implements Parcelable {
    public static final Parcelable.Creator<ParticipantData> CREATOR = new C4656a();

    /* renamed from: a */
    public String f11240a;

    /* renamed from: b */
    public int f11241b;

    /* renamed from: c */
    public int f11242c;

    /* renamed from: d */
    public String f11243d;

    /* renamed from: e */
    public String f11244e;

    /* renamed from: f */
    public String f11245f;

    /* renamed from: g */
    public String f11246g;

    /* renamed from: h */
    public String f11247h;

    /* renamed from: i */
    public String f11248i;

    /* renamed from: j */
    public String f11249j;

    /* renamed from: k */
    public long f11250k;

    /* renamed from: l */
    public String f11251l;

    /* renamed from: m */
    public int f11252m;

    /* renamed from: n */
    public String f11253n;

    /* renamed from: o */
    public boolean f11254o;

    /* renamed from: p */
    public boolean f11255p;

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.data.ParticipantData$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/data/ParticipantData$a.class */
    public static final class C4656a implements Parcelable.Creator<ParticipantData> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParticipantData createFromParcel(Parcel parcel) {
            return new ParticipantData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ParticipantData[] newArray(int i) {
            return new ParticipantData[i];
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.data.ParticipantData$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/data/ParticipantData$b.class */
    public static class C4657b {

        /* renamed from: a */
        public static final String[] f11256a = {"_id", "sub_id", "sim_slot_id", "normalized_destination", "send_destination", "display_destination", "full_name", "first_name", "profile_photo_uri", "contact_id", "lookup_key", LogsGroupRealmObject.BLOCKED, "subscription_color", "subscription_name", "contact_destination"};
    }

    public ParticipantData() {
    }

    public ParticipantData(Parcel parcel) {
        this.f11240a = parcel.readString();
        this.f11241b = parcel.readInt();
        this.f11242c = parcel.readInt();
        this.f11243d = parcel.readString();
        this.f11244e = parcel.readString();
        this.f11245f = parcel.readString();
        this.f11247h = parcel.readString();
        this.f11248i = parcel.readString();
        this.f11249j = parcel.readString();
        this.f11250k = parcel.readLong();
        this.f11251l = parcel.readString();
        boolean z = true;
        this.f11254o = parcel.readInt() != 0;
        if (parcel.readInt() == 0) {
            z = false;
        }
        this.f11255p = z;
        this.f11252m = parcel.readInt();
        this.f11253n = parcel.readString();
    }

    /* renamed from: L */
    public static String m27546L() {
        return "ʼUNKNOWN_SENDER!ʼ";
    }

    /* renamed from: a */
    public static ParticipantData m27544a(int i) {
        C12151d.m6999b(i != -2);
        ParticipantData participantData = new ParticipantData();
        participantData.f11240a = null;
        participantData.f11241b = i;
        participantData.f11242c = -1;
        participantData.f11254o = false;
        participantData.f11244e = null;
        participantData.f11243d = null;
        participantData.f11245f = null;
        participantData.f11247h = null;
        participantData.f11248i = null;
        participantData.f11249j = null;
        participantData.f11250k = -1L;
        participantData.f11251l = null;
        participantData.f11255p = false;
        participantData.f11252m = 0;
        participantData.f11253n = null;
        return participantData;
    }

    /* renamed from: a */
    public static ParticipantData m27542a(Cursor cursor) {
        ParticipantData participantData = new ParticipantData();
        boolean z = false;
        participantData.f11240a = cursor.getString(0);
        participantData.f11241b = cursor.getInt(1);
        participantData.f11242c = cursor.getInt(2);
        participantData.f11243d = cursor.getString(3);
        participantData.f11244e = cursor.getString(4);
        participantData.f11245f = cursor.getString(5);
        participantData.f11246g = cursor.getString(14);
        participantData.f11247h = cursor.getString(6);
        participantData.f11248i = cursor.getString(7);
        participantData.f11249j = cursor.getString(8);
        participantData.f11250k = cursor.getLong(9);
        participantData.f11251l = cursor.getString(10);
        participantData.f11254o = C11832i.m8158b(participantData.f11244e);
        if (cursor.getInt(11) != 0) {
            z = true;
        }
        participantData.f11255p = z;
        participantData.f11252m = cursor.getInt(12);
        participantData.f11253n = cursor.getString(13);
        participantData.m27549I();
        return participantData;
    }

    /* renamed from: a */
    public static ParticipantData m27540a(C5607h hVar) {
        ParticipantData participantData = new ParticipantData();
        participantData.f11240a = null;
        participantData.f11241b = -2;
        participantData.f11242c = -1;
        participantData.f11244e = PhoneNumberUtils.replaceUnicodeDigits(hVar.m25027c());
        participantData.f11254o = C11832i.m8158b(participantData.f11244e);
        participantData.f11243d = participantData.f11254o ? participantData.f11244e : C14108o4.m2474l(participantData.f11244e);
        participantData.f11245f = participantData.f11254o ? participantData.f11243d : C14108o4.m2493a(participantData.f11243d, true, false);
        participantData.f11247h = hVar.m25023g();
        participantData.f11248i = null;
        participantData.f11249j = hVar.m25019k() == null ? null : hVar.m25019k().toString();
        participantData.f11250k = hVar.m25039a();
        if (participantData.f11250k < 0) {
            participantData.f11250k = -1L;
        }
        participantData.f11251l = hVar.m25021i();
        participantData.f11255p = false;
        participantData.f11252m = 0;
        participantData.f11253n = null;
        participantData.m27549I();
        return participantData;
    }

    /* renamed from: a */
    public static ParticipantData m27539a(C11534l lVar, String str) {
        Throwable th;
        Cursor cursor = null;
        try {
            cursor = lVar.m9216a(NotificationCompat.CarExtender.KEY_PARTICIPANTS, C4657b.f11256a, "_id =?", new String[]{str}, null, null, null);
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            if (cursor.moveToFirst()) {
                ParticipantData a = m27542a(cursor);
                if (cursor != null) {
                    cursor.close();
                }
                return a;
            } else if (cursor == null) {
                return null;
            } else {
                cursor.close();
                return null;
            }
        } catch (Throwable th3) {
            th = th3;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* renamed from: g */
    public static ParticipantData m27529g(String str) {
        C12151d.m6999b(str != null);
        ParticipantData participantData = new ParticipantData();
        participantData.f11240a = null;
        participantData.f11241b = -2;
        participantData.f11242c = -1;
        participantData.f11244e = PhoneNumberUtils.replaceUnicodeDigits(str);
        participantData.f11254o = C11832i.m8158b(participantData.f11244e);
        participantData.f11247h = null;
        participantData.f11248i = null;
        participantData.f11249j = null;
        participantData.f11250k = -1L;
        participantData.f11251l = null;
        participantData.f11255p = false;
        participantData.f11252m = 0;
        participantData.f11253n = null;
        return participantData;
    }

    /* renamed from: h */
    public static ParticipantData m27528h(String str) {
        ParticipantData g = m27529g(str);
        g.f11243d = g.f11254o ? g.f11244e : C14108o4.m2474l(g.f11244e);
        g.f11245f = g.f11254o ? g.f11243d : C14108o4.m2493a(g.f11243d, true, false);
        g.m27549I();
        return g;
    }

    /* renamed from: i */
    public static ParticipantData m27527i(String str) {
        ParticipantData g = m27529g(str);
        g.f11243d = g.f11254o ? g.f11244e : C14108o4.m2474l(g.f11244e);
        g.f11245f = g.f11254o ? g.f11243d : C14108o4.m2493a(g.f11243d, true, false);
        g.m27549I();
        return g;
    }

    /* renamed from: A */
    public int m27557A() {
        C12151d.m6999b(m27555C());
        return this.f11252m | (-16777216);
    }

    /* renamed from: B */
    public String m27556B() {
        C12151d.m6999b(m27555C());
        return this.f11253n;
    }

    /* renamed from: C */
    public boolean m27555C() {
        return this.f11242c != -1;
    }

    /* renamed from: D */
    public boolean m27554D() {
        return this.f11250k != -1;
    }

    /* renamed from: E */
    public boolean m27553E() {
        return this.f11241b == -1;
    }

    /* renamed from: F */
    public boolean m27552F() {
        return this.f11254o;
    }

    /* renamed from: G */
    public boolean m27551G() {
        return this.f11241b != -2;
    }

    /* renamed from: H */
    public boolean m27550H() {
        return TextUtils.equals(this.f11244e, m27546L());
    }

    /* renamed from: I */
    public final void m27549I() {
        if (m27550H()) {
            this.f11245f = AbstractC11516a.m9413n().mo9412a().getResources().getString(R$string.unknown_sender);
            this.f11247h = this.f11245f;
        }
    }

    /* renamed from: J */
    public ContentValues m27548J() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("sub_id", Integer.valueOf(this.f11241b));
        contentValues.put("sim_slot_id", Integer.valueOf(this.f11242c));
        contentValues.put("send_destination", this.f11244e);
        if (!m27550H()) {
            contentValues.put("display_destination", this.f11245f);
            contentValues.put("normalized_destination", this.f11243d);
            contentValues.put("full_name", this.f11247h);
            contentValues.put("first_name", this.f11248i);
        }
        contentValues.put("profile_photo_uri", this.f11249j);
        contentValues.put("contact_id", Long.valueOf(this.f11250k));
        contentValues.put("lookup_key", this.f11251l);
        contentValues.put(LogsGroupRealmObject.BLOCKED, Boolean.valueOf(this.f11255p));
        contentValues.put("subscription_color", Integer.valueOf(this.f11252m));
        contentValues.put("subscription_name", this.f11253n);
        return contentValues;
    }

    /* renamed from: K */
    public boolean m27547K() {
        boolean z = true;
        String a = AbstractC12181l0.m6895b(this.f11241b).m6897a(true);
        if (!m27551G() || TextUtils.equals(a, this.f11243d)) {
            z = false;
        } else {
            this.f11243d = a;
            this.f11244e = a;
            if (!this.f11254o) {
                a = C14108o4.m2493a(a, true, false);
            }
            this.f11245f = a;
        }
        return z;
    }

    /* renamed from: a */
    public String m27545a() {
        return this.f11246g;
    }

    /* renamed from: a */
    public String m27537a(boolean z) {
        if (z) {
            if (!TextUtils.isEmpty(this.f11247h)) {
                return this.f11247h;
            }
            if (!TextUtils.isEmpty(this.f11248i)) {
                return this.f11248i;
            }
        } else if (!TextUtils.isEmpty(this.f11248i)) {
            return this.f11248i;
        } else {
            if (!TextUtils.isEmpty(this.f11247h)) {
                return this.f11247h;
            }
        }
        return !TextUtils.isEmpty(this.f11245f) ? this.f11245f : AbstractC11516a.m9413n().mo9412a().getResources().getString(R$string.unknown_sender);
    }

    /* renamed from: a */
    public void m27543a(long j) {
        this.f11250k = j;
    }

    /* renamed from: a */
    public void m27538a(String str) {
        this.f11246g = str;
    }

    /* renamed from: a */
    public boolean m27541a(SubscriptionInfo subscriptionInfo) {
        boolean z = true;
        if (m27551G()) {
            String str = "";
            if (subscriptionInfo != null) {
                int simSlotIndex = subscriptionInfo.getSimSlotIndex();
                int iconTint = subscriptionInfo.getIconTint();
                CharSequence displayName = subscriptionInfo.getDisplayName();
                if (!(this.f11242c == simSlotIndex && this.f11252m == iconTint && this.f11253n == displayName)) {
                    this.f11242c = simSlotIndex;
                    this.f11252m = iconTint;
                    if (displayName != null) {
                        str = displayName.toString();
                    }
                    this.f11253n = str;
                }
            } else if (m27555C()) {
                this.f11242c = -1;
                this.f11252m = 0;
                this.f11253n = "";
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: b */
    public long m27536b() {
        return this.f11250k;
    }

    /* renamed from: b */
    public void m27535b(String str) {
        this.f11248i = str;
    }

    /* renamed from: c */
    public String m27534c() {
        return this.f11245f;
    }

    /* renamed from: c */
    public void m27533c(String str) {
        this.f11247h = str;
    }

    /* renamed from: d */
    public void m27532d(String str) {
        this.f11251l = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public void m27531e(String str) {
        this.f11249j = str;
    }

    /* renamed from: f */
    public void m27530f(String str) {
        this.f11244e = str;
    }

    /* renamed from: q */
    public int m27526q() {
        return m27518y() + 1;
    }

    /* renamed from: r */
    public String m27525r() {
        return this.f11248i;
    }

    /* renamed from: s */
    public String m27524s() {
        return this.f11247h;
    }

    /* renamed from: t */
    public String m27523t() {
        return this.f11240a;
    }

    /* renamed from: u */
    public String m27522u() {
        return this.f11251l;
    }

    /* renamed from: v */
    public String m27521v() {
        return this.f11243d;
    }

    /* renamed from: w */
    public String m27520w() {
        return this.f11249j;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f11240a);
        parcel.writeInt(this.f11241b);
        parcel.writeInt(this.f11242c);
        parcel.writeString(this.f11243d);
        parcel.writeString(this.f11244e);
        parcel.writeString(this.f11245f);
        parcel.writeString(this.f11247h);
        parcel.writeString(this.f11248i);
        parcel.writeString(this.f11249j);
        parcel.writeLong(this.f11250k);
        parcel.writeString(this.f11251l);
        parcel.writeInt(this.f11254o ? 1 : 0);
        parcel.writeInt(this.f11255p ? 1 : 0);
        parcel.writeInt(this.f11252m);
        parcel.writeString(this.f11253n);
    }

    /* renamed from: x */
    public String m27519x() {
        return this.f11244e;
    }

    /* renamed from: y */
    public int m27518y() {
        return this.f11242c;
    }

    /* renamed from: z */
    public int m27517z() {
        return this.f11241b;
    }
}

package gogolook.callgogolook2.messaging.datamodel.data;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.media2.exoplayer.external.util.MimeTypes;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.messaging.datamodel.MediaScratchFileProvider;
import gogolook.callgogolook2.messaging.datamodel.action.UpdateMessagePartSizeAction;
import java.util.Arrays;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p499h.AbstractAsyncTaskC12189n0;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12205r;
import p459j.p460a.p474c0.p499h.C12216t0;
import p459j.p460a.p474c0.p499h.C12242z;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/data/MessagePartData.class */
public class MessagePartData implements Parcelable {

    /* renamed from: a */
    public String f11230a;

    /* renamed from: b */
    public String f11231b;

    /* renamed from: c */
    public String f11232c;

    /* renamed from: d */
    public Uri f11233d;

    /* renamed from: e */
    public String f11234e;

    /* renamed from: f */
    public int f11235f;

    /* renamed from: g */
    public int f11236g;

    /* renamed from: h */
    public boolean f11237h;

    /* renamed from: i */
    public boolean f11238i;

    /* renamed from: j */
    public static final String[] f11227j = {"image/jpeg", "image/jpg", "image/png", "image/gif", MimeTypes.VIDEO_MP4};

    /* renamed from: k */
    public static final String[] f11228k = {"_id", "message_id", "text", "uri", "content_type", "width", "height"};

    /* renamed from: l */
    public static final String f11229l = "INSERT INTO parts ( " + TextUtils.join(",", Arrays.copyOfRange(f11228k, 1, 7)) + UserProfile.CARD_CATE_SEPARATOR + "conversation_id) VALUES (?, ?, ?, ?, ?, ?, ?)";
    public static final Parcelable.Creator<MessagePartData> CREATOR = new C4654a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.data.MessagePartData$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/data/MessagePartData$a.class */
    public static final class C4654a implements Parcelable.Creator<MessagePartData> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MessagePartData createFromParcel(Parcel parcel) {
            return new MessagePartData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MessagePartData[] newArray(int i) {
            return new MessagePartData[i];
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.data.MessagePartData$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/data/MessagePartData$b.class */
    public class RunnableC4655b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Uri f11239a;

        public RunnableC4655b(MessagePartData messagePartData, Uri uri) {
            this.f11239a = uri;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC11516a.m9413n().mo9412a().getContentResolver().delete(this.f11239a, null, null);
        }
    }

    public MessagePartData() {
        this(null, null, -1, -1);
    }

    public MessagePartData(Parcel parcel) {
        this.f11231b = parcel.readString();
        this.f11232c = parcel.readString();
        this.f11233d = C12216t0.m6762b(parcel.readString());
        this.f11234e = parcel.readString();
        this.f11235f = parcel.readInt();
        this.f11236g = parcel.readInt();
    }

    public MessagePartData(String str) {
        this(null, str, "text/plain", null, -1, -1, false);
    }

    public MessagePartData(String str, Uri uri, int i, int i2) {
        this(null, null, str, uri, i, i2, false);
    }

    public MessagePartData(String str, String str2, Uri uri, int i, int i2, boolean z) {
        this(null, str, str2, uri, i, i2, z);
    }

    public MessagePartData(String str, String str2, String str3, Uri uri, int i, int i2, boolean z) {
        this.f11231b = str;
        this.f11232c = str2;
        this.f11234e = str3;
        this.f11233d = uri;
        this.f11235f = i;
        this.f11236g = i2;
        this.f11237h = z;
    }

    /* renamed from: D */
    public static MessagePartData m27582D() {
        return new MessagePartData("");
    }

    /* renamed from: E */
    public static String[] m27581E() {
        return f11228k;
    }

    /* renamed from: a */
    public static MessagePartData m27576a(String str, Uri uri, int i, int i2) {
        return new MessagePartData(str, uri, i, i2);
    }

    /* renamed from: a */
    public static MessagePartData m27575a(String str, String str2, Uri uri, int i, int i2) {
        return new MessagePartData(null, str, str2, uri, i, i2, false);
    }

    /* renamed from: b */
    public static MessagePartData m27572b(Cursor cursor) {
        MessagePartData messagePartData = new MessagePartData();
        messagePartData.m27579a(cursor);
        return messagePartData;
    }

    /* renamed from: c */
    public static MessagePartData m27568c(String str) {
        return new MessagePartData(str);
    }

    /* renamed from: A */
    public boolean m27585A() {
        return C12205r.m6805h(this.f11234e);
    }

    /* renamed from: B */
    public boolean m27584B() {
        return C12205r.m6804i(this.f11234e);
    }

    /* renamed from: C */
    public Uri m27583C() {
        C12151d.m6999b(!this.f11238i);
        this.f11238i = true;
        Uri uri = this.f11233d;
        this.f11233d = null;
        this.f11234e = null;
        Uri uri2 = uri;
        if (!MediaScratchFileProvider.m27782c(uri)) {
            uri2 = null;
        }
        return uri2;
    }

    /* renamed from: a */
    public SQLiteStatement m27578a(C11534l lVar, String str) {
        SQLiteStatement a = lVar.m9226a(0, f11229l);
        a.clearBindings();
        a.bindString(1, this.f11231b);
        String str2 = this.f11232c;
        if (str2 != null) {
            a.bindString(2, str2);
        }
        Uri uri = this.f11233d;
        if (uri != null) {
            a.bindString(3, uri.toString());
        }
        String str3 = this.f11234e;
        if (str3 != null) {
            a.bindString(4, str3);
        }
        a.bindLong(5, this.f11235f);
        a.bindLong(6, this.f11236g);
        a.bindString(7, str);
        return a;
    }

    /* renamed from: a */
    public void m27580a() {
        Uri C = m27583C();
        if (C != null) {
            AbstractAsyncTaskC12189n0.m6856a(new RunnableC4655b(this, C));
        }
    }

    /* renamed from: a */
    public void m27579a(Cursor cursor) {
        this.f11230a = cursor.getString(0);
        this.f11231b = cursor.getString(1);
        this.f11232c = cursor.getString(2);
        this.f11233d = C12216t0.m6762b(cursor.getString(3));
        this.f11234e = cursor.getString(4);
        this.f11235f = cursor.getInt(5);
        this.f11236g = cursor.getInt(6);
    }

    /* renamed from: a */
    public void m27577a(String str) {
        C12151d.m6999b(TextUtils.isEmpty(str) || TextUtils.isEmpty(this.f11231b));
        this.f11231b = str;
    }

    /* renamed from: a */
    public void m27574a(boolean z) {
        if (m27560x()) {
            Rect a = C12242z.m6561a(AbstractC11516a.m9413n().mo9412a(), this.f11233d);
            if (a.width() != -1 && a.height() != -1) {
                this.f11235f = a.width();
                this.f11236g = a.height();
                if (z) {
                    UpdateMessagePartSizeAction.m27650a(this.f11230a, this.f11235f, this.f11236g);
                }
            }
        }
    }

    /* renamed from: b */
    public void m27573b() {
        Uri C = m27583C();
        if (C != null) {
            AbstractC11516a.m9413n().mo9412a().getContentResolver().delete(C, null, null);
        }
    }

    /* renamed from: b */
    public void m27571b(String str) {
        C12151d.m6999b(TextUtils.isEmpty(str) || TextUtils.isEmpty(this.f11230a));
        this.f11230a = str;
    }

    /* renamed from: b */
    public void m27570b(boolean z) {
        this.f11237h = z;
    }

    /* renamed from: c */
    public final String m27569c() {
        return this.f11234e;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessagePartData)) {
            return false;
        }
        MessagePartData messagePartData = (MessagePartData) obj;
        if (this.f11235f == messagePartData.f11235f && this.f11236g == messagePartData.f11236g && TextUtils.equals(this.f11231b, messagePartData.f11231b) && TextUtils.equals(this.f11232c, messagePartData.f11232c) && TextUtils.equals(this.f11234e, messagePartData.f11234e)) {
            Uri uri = this.f11233d;
            Uri uri2 = messagePartData.f11233d;
            if (uri != null) {
            }
        }
        z = false;
        return z;
    }

    public final int getHeight() {
        return this.f11236g;
    }

    public final int getWidth() {
        return this.f11235f;
    }

    public int hashCode() {
        int i = this.f11235f;
        int i2 = this.f11236g;
        String str = this.f11231b;
        int i3 = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f11232c;
        int hashCode2 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f11234e;
        int hashCode3 = str3 == null ? 0 : str3.hashCode();
        Uri uri = this.f11233d;
        if (uri != null) {
            i3 = uri.hashCode();
        }
        return ((((((((((527 + i) * 31) + i2) * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + i3;
    }

    /* renamed from: q */
    public final Uri m27567q() {
        return this.f11233d;
    }

    /* renamed from: r */
    public final String m27566r() {
        return this.f11231b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m27565s() {
        /*
            r6 = this;
            p459j.p460a.p474c0.p499h.C12151d.m7002b()
            r0 = r6
            boolean r0 = r0.m27562v()
            if (r0 != 0) goto L_0x000c
            r0 = 0
            return r0
        L_0x000c:
            r0 = r6
            boolean r0 = r0.m27560x()
            if (r0 == 0) goto L_0x0049
            r0 = r6
            java.lang.String r0 = r0.f11234e
            r1 = r6
            android.net.Uri r1 = r1.f11233d
            boolean r0 = p459j.p460a.p474c0.p499h.C12242z.m6554a(r0, r1)
            if (r0 == 0) goto L_0x0045
            r0 = r6
            android.net.Uri r0 = r0.f11233d
            long r0 = p459j.p460a.p474c0.p499h.C12216t0.m6773a(r0)
            r7 = r0
            r0 = r6
            r1 = 0
            r0.m27574a(r1)
            r0 = r7
            r9 = r0
            r0 = r6
            int r0 = r0.f11235f
            r1 = r6
            int r1 = r1.f11236g
            boolean r0 = gogolook.callgogolook2.messaging.util.GifTranscoder.m26923a(r0, r1)
            if (r0 == 0) goto L_0x0043
            r0 = r7
            long r0 = gogolook.callgogolook2.messaging.util.GifTranscoder.m26922a(r0)
            r9 = r0
        L_0x0043:
            r0 = r9
            return r0
        L_0x0045:
            r0 = 16384(0x4000, double:8.0948E-320)
            return r0
        L_0x0049:
            r0 = r6
            boolean r0 = r0.m27561w()
            if (r0 == 0) goto L_0x0058
            r0 = r6
            android.net.Uri r0 = r0.f11233d
            long r0 = p459j.p460a.p474c0.p499h.C12216t0.m6773a(r0)
            return r0
        L_0x0058:
            r0 = r6
            boolean r0 = r0.m27584B()
            if (r0 == 0) goto L_0x0074
            r0 = r6
            android.net.Uri r0 = r0.f11233d
            int r0 = p459j.p460a.p474c0.p499h.C12216t0.m6760c(r0)
            r1 = 4096(0x1000, float:5.74E-42)
            int r0 = r0 * r1
            long r0 = (long) r0
            java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.SECONDS
            r2 = 1
            long r1 = r1.toMillis(r2)
            long r0 = r0 / r1
            return r0
        L_0x0074:
            r0 = r6
            boolean r0 = r0.m27585A()
            if (r0 == 0) goto L_0x0083
            r0 = r6
            android.net.Uri r0 = r0.f11233d
            long r0 = p459j.p460a.p474c0.p499h.C12216t0.m6773a(r0)
            return r0
        L_0x0083:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            java.lang.String r1 = "Unknown attachment type "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            r1 = r6
            java.lang.String r1 = r1.m27569c()
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = "MessagingAppDataModel"
            r1 = r11
            java.lang.String r1 = r1.toString()
            p459j.p460a.p474c0.p499h.C12153d0.m6987b(r0, r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.messaging.datamodel.data.MessagePartData.m27565s():long");
    }

    /* renamed from: t */
    public final String m27564t() {
        return this.f11230a;
    }

    public String toString() {
        if (m27558z()) {
            return C12153d0.m6993a(m27563u());
        }
        return m27569c() + " (" + m27567q() + ")";
    }

    /* renamed from: u */
    public final String m27563u() {
        return this.f11232c;
    }

    /* renamed from: v */
    public boolean m27562v() {
        return this.f11233d != null;
    }

    /* renamed from: w */
    public boolean m27561w() {
        return C12205r.m6811b(this.f11234e);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        C12151d.m6999b(!this.f11238i);
        parcel.writeString(this.f11231b);
        parcel.writeString(this.f11232c);
        parcel.writeString(C12216t0.m6750m(this.f11233d));
        parcel.writeString(this.f11234e);
        parcel.writeInt(this.f11235f);
        parcel.writeInt(this.f11236g);
    }

    /* renamed from: x */
    public boolean m27560x() {
        return C12205r.m6809d(this.f11234e);
    }

    /* renamed from: y */
    public boolean m27559y() {
        return this.f11237h;
    }

    /* renamed from: z */
    public boolean m27558z() {
        return C12205r.m6806g(this.f11234e);
    }
}

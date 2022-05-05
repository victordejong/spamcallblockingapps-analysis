package gogolook.callgogolook2.messaging.datamodel.data;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import p459j.p460a.p474c0.p475c.p478y.C11617j;
import p459j.p460a.p474c0.p499h.AbstractAsyncTaskC12189n0;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12205r;
import p459j.p460a.p474c0.p499h.C12216t0;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/data/PendingAttachmentData.class */
public class PendingAttachmentData extends MessagePartData {
    public static final Parcelable.Creator<PendingAttachmentData> CREATOR = new C4659b();

    /* renamed from: m */
    public int f11257m;

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.data.PendingAttachmentData$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/data/PendingAttachmentData$a.class */
    public class AsyncTaskC4658a extends AbstractAsyncTaskC12189n0<Void, Void, MessagePartData> {

        /* renamed from: e */
        public final /* synthetic */ C11617j f11258e;

        /* renamed from: f */
        public final /* synthetic */ String f11259f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AsyncTaskC4658a(long j, boolean z, C11617j jVar, String str) {
            super(j, z);
            this.f11258e = jVar;
            this.f11259f = str;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public MessagePartData mo6854a(Void... voidArr) {
            Uri l = C12216t0.m6751l(PendingAttachmentData.this.m27567q());
            if (l != null) {
                return MessagePartData.m27575a(PendingAttachmentData.this.m27563u(), PendingAttachmentData.this.m27569c(), l, PendingAttachmentData.this.getWidth(), PendingAttachmentData.this.getHeight());
            }
            return null;
        }

        /* renamed from: a */
        public void onPostExecute(MessagePartData messagePartData) {
            if (messagePartData != null) {
                PendingAttachmentData.this.f11257m = 2;
                if (this.f11258e.m9045b(this.f11259f)) {
                    this.f11258e.m8815b(messagePartData, PendingAttachmentData.this);
                } else {
                    messagePartData.m27580a();
                }
            } else {
                PendingAttachmentData.this.f11257m = 3;
                if (this.f11258e.m9045b(this.f11259f)) {
                    this.f11258e.m8831a(PendingAttachmentData.this);
                    this.f11258e.m8814b(PendingAttachmentData.this);
                }
            }
        }

        @Override // android.os.AsyncTask
        public void onCancelled() {
            C12153d0.m6981e("MessagingApp", "Timeout while retrieving media");
            PendingAttachmentData.this.f11257m = 3;
            if (this.f11258e.m9045b(this.f11259f)) {
                this.f11258e.m8814b(PendingAttachmentData.this);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.data.PendingAttachmentData$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/data/PendingAttachmentData$b.class */
    public static final class C4659b implements Parcelable.Creator<PendingAttachmentData> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PendingAttachmentData createFromParcel(Parcel parcel) {
            return new PendingAttachmentData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PendingAttachmentData[] newArray(int i) {
            return new PendingAttachmentData[i];
        }
    }

    public PendingAttachmentData(Parcel parcel) {
        super(parcel);
        this.f11257m = parcel.readInt();
    }

    public PendingAttachmentData(String str, String str2, @NonNull Uri uri, int i, int i2, boolean z) {
        super(str, str2, uri, i, i2, z);
        this.f11257m = 0;
    }

    /* renamed from: a */
    public static PendingAttachmentData m27513a(String str, Uri uri) {
        return m27512b(null, str, uri, -1, -1);
    }

    /* renamed from: b */
    public static PendingAttachmentData m27512b(String str, String str2, Uri uri, int i, int i2) {
        C12151d.m6999b(C12205r.m6808e(str2));
        return new PendingAttachmentData(str, str2, uri, i, i2, false);
    }

    /* renamed from: F */
    public int m27516F() {
        return this.f11257m;
    }

    /* renamed from: a */
    public void m27514a(C11617j jVar, String str) {
        if (this.f11257m == 0) {
            this.f11257m = 1;
            new AsyncTaskC4658a(60000L, true, jVar, str).m6852b(new Void[0]);
        }
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.data.MessagePartData, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f11257m);
    }
}

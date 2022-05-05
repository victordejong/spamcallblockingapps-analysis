package gogolook.callgogolook2.messaging.datamodel.action;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import kotlinx.coroutines.DebugKt;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.C11521c;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p582w0.C14080m2;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/DownloadMmsAction.class */
public class DownloadMmsAction extends Action implements Parcelable {
    public static final Parcelable.Creator<DownloadMmsAction> CREATOR = new C4618a();

    /* renamed from: gogolook.callgogolook2.messaging.datamodel.action.DownloadMmsAction$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/DownloadMmsAction$a.class */
    public static final class C4618a implements Parcelable.Creator<DownloadMmsAction> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DownloadMmsAction createFromParcel(Parcel parcel) {
            return new DownloadMmsAction(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DownloadMmsAction[] newArray(int i) {
            return new DownloadMmsAction[i];
        }
    }

    public DownloadMmsAction() {
    }

    public DownloadMmsAction(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ DownloadMmsAction(Parcel parcel, C4618a aVar) {
        this(parcel);
    }

    /* renamed from: a */
    public static int m27720a(int i) {
        if (i == 102) {
            return 103;
        }
        if (i == 104) {
            return 105;
        }
        C12151d.m7005a("isAutoDownload: invalid input status " + i);
        return 103;
    }

    /* renamed from: a */
    public static void m27719a(Uri uri, String str, String str2, int i, int i2) {
        Context a = AbstractC11516a.m9413n().mo9412a();
        if (i == 105 || i == 103) {
            C11834j.m8142a(a, uri);
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("message_status", Integer.valueOf(i));
        contentValues.put("raw_status", Integer.valueOf(i2));
        C11521c.m9335e(AbstractC11528g.m9259k().mo9244f(), str, contentValues);
        MessagingContentProvider.m27766f(str2);
        MessagingContentProvider.m27769e();
    }

    /* renamed from: b */
    public static int m27717b(int i) {
        if (i == 103) {
            return 102;
        }
        if (i == 105) {
            return 104;
        }
        C12151d.m7005a("isAutoDownload: invalid input status " + i);
        return 102;
    }

    /* renamed from: b */
    public static boolean m27716b(String str, Action action) {
        return new DownloadMmsAction().m27718a(str, action);
    }

    /* renamed from: c */
    public static boolean m27715c(int i) {
        if (i == 102) {
            return false;
        }
        if (i == 104) {
            return true;
        }
        C12151d.m7005a("isAutoDownload: invalid input status " + i);
        return false;
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: a */
    public Bundle mo27662a() {
        Context a = AbstractC11516a.m9413n().mo9412a();
        int i = this.f11190b.getInt("sub_id");
        String string = this.f11190b.getString("message_id");
        Uri uri = (Uri) this.f11190b.getParcelable("notification_uri");
        String string2 = this.f11190b.getString("sub_phone_number");
        String string3 = this.f11190b.getString("transaction_id");
        String string4 = this.f11190b.getString("content_location");
        boolean z = this.f11190b.getBoolean("auto_download");
        String string5 = this.f11190b.getString("conversation_id");
        String string6 = this.f11190b.getString("participant_id");
        int i2 = this.f11190b.getInt("failure_status");
        long currentTimeMillis = ((System.currentTimeMillis() + 500) / 1000) * 1000;
        StringBuilder sb = new StringBuilder();
        sb.append("DownloadMmsAction: Downloading MMS message ");
        sb.append(string);
        sb.append(" (");
        sb.append(z ? DebugKt.DEBUG_PROPERTY_VALUE_AUTO : "manual");
        sb.append(")");
        C14080m2.m2615a("MessagingAppDataModel", sb.toString());
        Bundle bundle = new Bundle();
        bundle.putString("message_id", string);
        bundle.putString("conversation_id", string5);
        bundle.putString("participant_id", string6);
        bundle.putInt("status_if_failed", i2);
        C11834j.C11836b a2 = C11834j.m8139a(a, uri, i, string2, string3, string4, z, currentTimeMillis / 1000, bundle);
        if (a2 == C11834j.f26545j) {
            C14080m2.m2615a("MessagingAppDataModel", "DownloadMmsAction: Downloading MMS message " + string + " asynchronously; waiting for pending intent to signal completion");
            return null;
        }
        AbstractC11528g.m9259k().mo9243g().m9121e(currentTimeMillis);
        ProcessDownloadedMmsAction.m27691a(string, uri, string5, string6, string4, i, string2, i2, z, string3, a2.f26551d);
        return null;
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: a */
    public Object mo27660a(Bundle bundle) {
        return null;
    }

    /* renamed from: a */
    public boolean m27718a(String str, Action action) {
        this.f11190b.putString("message_id", str);
        C11534l f = AbstractC11528g.m9259k().mo9244f();
        MessageData r = C11521c.m9322r(f, str);
        if (r == null || !r.m27630a()) {
            return false;
        }
        Uri J = r.m27636J();
        String s = r.m27593s();
        int K = r.m27635K();
        ParticipantData g = C11521c.m9333g(f, r.m27638H());
        int z = g.m27517z();
        this.f11190b.putInt("sub_id", z);
        this.f11190b.putString("conversation_id", s);
        this.f11190b.putString("participant_id", r.m27644B());
        this.f11190b.putString("content_location", r.m27587y());
        this.f11190b.putString("transaction_id", r.m27645A());
        this.f11190b.putParcelable("notification_uri", J);
        this.f11190b.putBoolean("auto_download", m27715c(K));
        if (r.m27628a(System.currentTimeMillis())) {
            this.f11190b.putString("sub_phone_number", g.m27521v());
            int a = m27720a(K);
            m27719a(J, str, s, a, 0);
            this.f11190b.putInt("failure_status", m27717b(a));
            action.m27755a((Action) this);
            return true;
        }
        C14080m2.m2615a("MessagingAppDataModel", "DownloadMmsAction: Download of MMS message " + str + " failed (outside download window)");
        m27719a(J, str, s, 106, 0);
        if (K != 104) {
            return false;
        }
        ProcessDownloadedMmsAction.m27690a(str, r.m27645A(), r.m27587y(), z);
        return true;
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: b */
    public Object mo27648b() {
        C12151d.m7005a("DownloadMmsAction must be queued rather than started");
        return null;
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.Action
    /* renamed from: u */
    public Object mo27664u() {
        ProcessDownloadedMmsAction.m27692a(this.f11190b.getString("message_id"), 2, 0, this.f11190b.getString("conversation_id"), this.f11190b.getString("participant_id"), this.f11190b.getInt("failure_status"), this.f11190b.getInt("sub_id"), this.f11190b.getString("transaction_id"));
        return null;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        m27756a(parcel, i);
    }
}

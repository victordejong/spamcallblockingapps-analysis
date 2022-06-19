package p193e.p194a.p1195s.p1197k.p1198c;

import android.database.Cursor;
import android.database.CursorWrapper;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.mopub.mobileads.VastIconXmlManager;
import com.razorpay.AnalyticsConstants;
import s1.z.c.l;
/* renamed from: e.a.s.k.c.a */
/* loaded from: classes17-dex2jar.jar:e/a/s/k/c/a.class */
public final class C20023a extends CursorWrapper {

    /* renamed from: a */
    public final int f56567a = getColumnIndexOrThrow("id");

    /* renamed from: b */
    public final int f56568b = getColumnIndexOrThrow("to_number");

    /* renamed from: c */
    public final int f56569c = getColumnIndexOrThrow("from_number");

    /* renamed from: d */
    public final int f56570d = getColumnIndexOrThrow("created_at");

    /* renamed from: e */
    public final int f56571e = getColumnIndexOrThrow(VastIconXmlManager.DURATION);

    /* renamed from: f */
    public final int f56572f = getColumnIndexOrThrow(AnalyticsConstants.LOCALE);

    /* renamed from: g */
    public final int f56573g = getColumnIndexOrThrow(UpdateKey.STATUS);

    /* renamed from: h */
    public final int f56574h = getColumnIndexOrThrow("is_voicemail");

    /* renamed from: i */
    public final int f56575i = getColumnIndexOrThrow("originate_call_status");

    /* renamed from: j */
    public final int f56576j = getColumnIndexOrThrow("spam_model_prediction");

    /* renamed from: k */
    public final int f56577k = getColumnIndexOrThrow("intent");

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20023a(Cursor cursor) {
        super(cursor);
        l.e(cursor, "cursor");
    }
}

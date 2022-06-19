package p193e.p194a.p1066n;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import p193e.p194a.p1053m0.C17891a1;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.n.y0 */
/* loaded from: classes5-dex2jar.jar:e/a/n/y0.class */
public final class C18451y0 implements AbstractC18448x0 {

    /* renamed from: a */
    public final String f52107a = "(contact_source & 2) = 2";

    /* renamed from: b */
    public final Context f52108b;

    @Inject
    public C18451y0(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f52108b = context;
    }

    @Override // p193e.p194a.p1066n.AbstractC18448x0
    /* renamed from: a */
    public void mo14966a() {
        ContentProviderOperation build = ContentProviderOperation.newUpdate(C17891a1.C17904m.m15552a()).withValue("tc_flag", 2).build();
        l.d(build, "ContentProviderOperation…RED)\n            .build()");
        ContentProviderOperation build2 = ContentProviderOperation.newUpdate(C17891a1.C17892a.m15709b()).withValue("tc_flag", 2).build();
        l.d(build2, "ContentProviderOperation…RED)\n            .build()");
        ContentValues contentValues = new ContentValues();
        contentValues.put("contact_source", (Integer) 32);
        contentValues.putNull("contact_phonebook_id");
        contentValues.putNull("contact_phonebook_hash");
        contentValues.putNull("contact_phonebook_lookup");
        ContentProviderOperation build3 = ContentProviderOperation.newUpdate(C17891a1.C17904m.m15552a()).withSelection(this.f52107a, null).withValues(contentValues).build();
        l.d(build3, "ContentProviderOperation…ues)\n            .build()");
        ContentProviderOperation build4 = ContentProviderOperation.newUpdate(C17891a1.C17892a.m15709b()).withSelection(this.f52107a, null).withValues(contentValues).build();
        l.d(build4, "ContentProviderOperation…ues)\n            .build()");
        ContentResolver contentResolver = this.f52108b.getContentResolver();
        Uri uri = C17891a1.f50888a;
        contentResolver.applyBatch("com.truecaller", i.e(new ContentProviderOperation[]{build, build2, build3, build4}));
    }

    @Override // p193e.p194a.p1066n.AbstractC18448x0
    /* renamed from: b */
    public void mo14965b() {
        ContentProviderOperation build = ContentProviderOperation.newUpdate(C17891a1.C17904m.m15552a()).withValue("tc_flag", 1).build();
        l.d(build, "ContentProviderOperation…_UP)\n            .build()");
        ContentProviderOperation build2 = ContentProviderOperation.newUpdate(C17891a1.C17892a.m15709b()).withValue("tc_flag", 1).build();
        l.d(build2, "ContentProviderOperation…_UP)\n            .build()");
        ContentResolver contentResolver = this.f52108b.getContentResolver();
        Uri uri = C17891a1.f50888a;
        contentResolver.applyBatch("com.truecaller", i.e(new ContentProviderOperation[]{build, build2}));
    }
}

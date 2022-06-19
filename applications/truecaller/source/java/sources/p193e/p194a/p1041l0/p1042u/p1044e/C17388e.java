package p193e.p194a.p1041l0.p1042u.p1044e;

import android.content.ContentResolver;
import android.content.ContentValues;
import com.truecaller.data.entity.CallRecording;
import javax.inject.Inject;
import p193e.p194a.p1053m0.C17891a1;
import s1.z.c.l;
/* renamed from: e.a.l0.u.e.e */
/* loaded from: classes6-dex2jar.jar:e/a/l0/u/e/e.class */
public final class C17388e implements AbstractC17387d {

    /* renamed from: a */
    public final ContentResolver f48730a;

    @Inject
    public C17388e(ContentResolver contentResolver) {
        l.e(contentResolver, "resolver");
        this.f48730a = contentResolver;
    }

    @Override // p193e.p194a.p1041l0.p1042u.p1044e.AbstractC17387d
    /* renamed from: o */
    public void mo16146o(CallRecording callRecording) {
        l.e(callRecording, "callRecording");
        ContentValues contentValues = new ContentValues();
        contentValues.put("recording_path", callRecording.f11505c);
        contentValues.put("history_event_id", callRecording.f11504b);
        this.f48730a.insert(C17891a1.C17894c.m15706a(), contentValues);
    }
}

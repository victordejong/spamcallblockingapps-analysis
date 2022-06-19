package p193e.p194a.p1075n3.p1076a;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Debug;
import android.os.Environment;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Locale;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.C19254q;
import q3.a.i0;
import q3.a.t0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.debug.log.DumpHprofFile$sendAsIntentAsync$1", f = "DumpHprofFile.kt", l = {32}, m = "invokeSuspend")
/* renamed from: e.a.n3.a.c */
/* loaded from: classes8-dex2jar.jar:e/a/n3/a/c.class */
public final class C18480c extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f52170e;

    /* renamed from: f */
    public final /* synthetic */ Context f52171f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18480c(Context context, d dVar) {
        super(2, dVar);
        this.f52171f = context;
    }

    /* renamed from: i */
    public final d<s> m14874i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C18480c(this.f52171f, dVar);
    }

    /* renamed from: k */
    public final Object m14873k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C18480c(this.f52171f, dVar).m14872s(s.a);
    }

    /* renamed from: s */
    public final Object m14872s(Object obj) {
        a aVar = a.a;
        int i = this.f52170e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            File externalFilesDir = this.f52171f.getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
            Calendar calendar = Calendar.getInstance();
            String format = String.format(Locale.US, "truecaller-%1$4d-%2$02d-%3$02d-%4$02d-%5$02d-%6$02d.hprof", Arrays.copyOf(new Object[]{new Integer(calendar.get(1)), new Integer(calendar.get(2) + 1), new Integer(calendar.get(5)), new Integer(calendar.get(11)), new Integer(calendar.get(12)), new Integer(calendar.get(13))}, 6));
            l.d(format, "java.lang.String.format(locale, format, *args)");
            File file = new File(externalFilesDir, format);
            file.getAbsolutePath();
            Debug.dumpHprofData(file.getAbsolutePath());
            if (file.exists()) {
                Context context = this.f52171f;
                String path = file.getPath();
                l.d(path, "file.path");
                this.f52170e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(t0.d, new C19254q(path, context, null), this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            }
            return s.a;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        Uri uri = (Uri) obj;
        if (uri != null) {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.putExtra("android.intent.extra.STREAM", uri);
            intent.setType("application/binary");
            this.f52171f.startActivity(intent);
            return s.a;
        }
        throw new IOException("Could not move File to Downloads folder");
    }
}

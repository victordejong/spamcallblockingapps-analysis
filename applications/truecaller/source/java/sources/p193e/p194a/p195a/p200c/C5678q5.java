package p193e.p194a.p195a.p200c;

import android.content.Context;
import android.net.Uri;
import com.razorpay.AnalyticsConstants;
import java.io.FileNotFoundException;
import java.io.InputStream;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.a.c.q5 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/q5.class */
public final class C5678q5 implements AbstractC5655p5 {

    /* renamed from: a */
    public final Context f19043a;

    /* renamed from: b */
    public final f f19044b;

    @e(c = "com.truecaller.messaging.conversation.ConversationUtilImpl$doesFileExist$2", f = "ConversationUtil.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.q5$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/q5$a.class */
    public static final class C5679a extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Uri f19046f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5679a(Uri uri, d dVar) {
            super(2, dVar);
            C5678q5.this = r5;
            this.f19046f = uri;
        }

        /* renamed from: i */
        public final d<s> m32789i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5679a(this.f19046f, dVar);
        }

        /* renamed from: k */
        public final Object m32788k(Object obj, Object obj2) {
            boolean z;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C5678q5 c5678q5 = C5678q5.this;
            Uri uri = this.f19046f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            try {
                InputStream openInputStream = c5678q5.f19043a.getContentResolver().openInputStream(uri);
                if (openInputStream != null) {
                    openInputStream.close();
                }
                z = true;
            } catch (FileNotFoundException e) {
                z = false;
            }
            return Boolean.valueOf(z);
        }

        /* renamed from: s */
        public final Object m32787s(Object obj) {
            boolean z;
            C25225a.m3932a3(obj);
            try {
                InputStream openInputStream = C5678q5.this.f19043a.getContentResolver().openInputStream(this.f19046f);
                if (openInputStream != null) {
                    openInputStream.close();
                }
                z = true;
            } catch (FileNotFoundException e) {
                z = false;
            }
            return Boolean.valueOf(z);
        }
    }

    @Inject
    public C5678q5(Context context, @Named("IO") f fVar) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(fVar, "asyncContext");
        this.f19043a = context;
        this.f19044b = fVar;
    }

    /* renamed from: a */
    public Object m32790a(Uri uri, d<? super Boolean> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f19044b, new C5679a(uri, null), dVar);
    }
}

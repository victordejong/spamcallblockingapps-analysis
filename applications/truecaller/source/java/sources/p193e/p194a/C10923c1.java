package p193e.p194a;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.truecaller.common.tag.sync.TagsUploadWorker;
import p1727n3.p1861s.p1862a.AbstractC26979b;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p426p.AbstractC8552d;
/* renamed from: e.a.c1 */
/* loaded from: classes4-dex2jar.jar:e/a/c1.class */
public class C10923c1 implements AbstractC26979b {

    /* renamed from: a */
    public final /* synthetic */ C19813r1 f32432a;

    public C10923c1(C19813r1 c19813r1) {
        this.f32432a = c19813r1;
    }

    @Override // p1727n3.p1861s.p1862a.AbstractC26979b
    /* renamed from: a */
    public ListenableWorker mo1026a(Context context, WorkerParameters workerParameters) {
        C19813r1 c19813r1 = this.f32432a.f55161P;
        return new TagsUploadWorker(context, workerParameters, (AbstractC8432l) c19813r1.f55313X.get(), (AbstractC8552d) c19813r1.f55410c2.get());
    }
}

package p131c.p161d.p170b.p224d.p265m;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* renamed from: c.d.b.d.m.v */
/* loaded from: classes2-dex2jar.jar:c/d/b/d/m/v.class */
public final class C4907v implements Continuation<Void, Task<List<Task<?>>>> {

    /* renamed from: a */
    public final /* synthetic */ Collection f17547a;

    public C4907v(Collection collection) {
        this.f17547a = collection;
    }

    @Override // com.google.android.gms.tasks.Continuation
    /* renamed from: a */
    public final /* synthetic */ Task<List<Task<?>>> mo8621a(Task<Void> task) throws Exception {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f17547a);
        return Tasks.m8591a(arrayList);
    }
}

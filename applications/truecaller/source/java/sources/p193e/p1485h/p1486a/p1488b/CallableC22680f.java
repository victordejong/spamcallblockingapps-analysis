package p193e.p1485h.p1486a.p1488b;

import android.content.Context;
import android.text.TextUtils;
import android.widget.Toast;
import java.util.concurrent.Callable;
/* renamed from: e.h.a.b.f */
/* loaded from: classes-dex2jar.jar:e/h/a/b/f.class */
public class CallableC22680f implements Callable<Void> {

    /* renamed from: a */
    public final /* synthetic */ String f62803a;

    /* renamed from: b */
    public final /* synthetic */ Context f62804b;

    public CallableC22680f(String str, Context context) {
        this.f62803a = str;
        this.f62804b = context;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        if (!TextUtils.isEmpty(this.f62803a)) {
            Toast.makeText(this.f62804b, this.f62803a, 0).show();
            return null;
        }
        return null;
    }
}

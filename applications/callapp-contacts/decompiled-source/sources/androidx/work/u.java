package androidx.work;

import android.content.Context;
import androidx.work.impl.j;
import com.google.common.util.concurrent.a;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:androidx/work/u.class */
public abstract class u {
    public static u a(Context context) {
        return j.b(context);
    }

    public static void a(Context context, Configuration configuration) {
        j.b(context, configuration);
    }

    public abstract n a();

    public final n a(v vVar) {
        return a(Collections.singletonList(vVar));
    }

    public abstract n a(String str);

    public abstract n a(List<? extends v> list);

    public abstract n a(UUID uuid);

    public abstract a<List<t>> b(String str);
}

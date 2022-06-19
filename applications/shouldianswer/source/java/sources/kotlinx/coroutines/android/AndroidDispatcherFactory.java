package kotlinx.coroutines.android;

import android.os.Looper;
import java.util.List;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.internal.MainDispatcherFactory;
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/android/AndroidDispatcherFactory.class */
public final class AndroidDispatcherFactory implements MainDispatcherFactory {
    @Override // kotlinx.coroutines.internal.MainDispatcherFactory
    public C1800b createDispatcher(List<? extends MainDispatcherFactory> list) {
        C1694h.m3117b(list, "allFactories");
        Looper mainLooper = Looper.getMainLooper();
        C1694h.m3122a((Object) mainLooper, "Looper.getMainLooper()");
        return new C1800b(C1805d.m2940a(mainLooper, true), "Main");
    }

    @Override // kotlinx.coroutines.internal.MainDispatcherFactory
    public int getLoadPriority() {
        return 1073741823;
    }

    @Override // kotlinx.coroutines.internal.MainDispatcherFactory
    public String hintOnError() {
        return "For tests Dispatchers.setMain from kotlinx-coroutines-test module can be used";
    }
}

package kotlinx.coroutines.internal;

import java.util.List;
import kotlinx.coroutines.AbstractC1866bu;
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/MainDispatcherFactory.class */
public interface MainDispatcherFactory {
    AbstractC1866bu createDispatcher(List<? extends MainDispatcherFactory> list);

    int getLoadPriority();

    String hintOnError();
}

package zendesk.core;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/core/Serializer.class */
public interface Serializer {
    @Nullable
    <E> E deserialize(@Nullable Object obj, @NonNull Class<E> cls);

    @Nullable
    String serialize(@Nullable Object obj);
}

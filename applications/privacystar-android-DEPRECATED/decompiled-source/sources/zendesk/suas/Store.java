package zendesk.suas;

import android.support.annotation.NonNull;
/* loaded from: classes3-dex2jar.jar:zendesk/suas/Store.class */
public interface Store extends GetState, Dispatcher {
    Subscription addActionListener(Listener<Action<?>> listener);

    <E> Subscription addListener(@NonNull Class<E> cls, @NonNull Filter<E> filter, @NonNull Listener<E> listener);

    <E> Subscription addListener(@NonNull Class<E> cls, @NonNull Listener<E> listener);

    <E> Subscription addListener(@NonNull String str, @NonNull Class<E> cls, @NonNull Filter<E> filter, @NonNull Listener<E> listener);

    <E> Subscription addListener(@NonNull String str, @NonNull Class<E> cls, @NonNull Listener<E> listener);

    <E> Subscription addListener(@NonNull String str, @NonNull Filter<E> filter, @NonNull Listener<E> listener);

    <E> Subscription addListener(@NonNull String str, @NonNull Listener<E> listener);

    Subscription addListener(@NonNull Filter<State> filter, @NonNull Listener<State> listener);

    <E> Subscription addListener(@NonNull Filter<State> filter, @NonNull StateSelector<E> stateSelector, @NonNull Listener<E> listener);

    Subscription addListener(@NonNull Listener<State> listener);

    <E> Subscription addListener(@NonNull StateSelector<E> stateSelector, @NonNull Listener<E> listener);

    void removeListener(@NonNull Listener<?> listener);

    void reset(@NonNull State state);
}

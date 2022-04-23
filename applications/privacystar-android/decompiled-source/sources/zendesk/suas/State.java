package zendesk.suas;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:zendesk/suas/State.class */
public class State implements Serializable {
    private final Map<String, Object> state;

    public State() {
        this.state = new HashMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public State(@NonNull Map<String, Object> map) {
        this.state = new HashMap(map);
    }

    private Collection<String> getStateKeys() {
        return this.state.keySet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String keyForClass(Class cls) {
        return cls.getSimpleName();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static State mergeStates(State state, State state2) {
        State state3 = state;
        if (state2 != null) {
            state3 = state2.copy();
            for (String str : state.getStateKeys()) {
                if (state3.getState(str) == null) {
                    state3.updateKey(str, state.getState(str));
                }
            }
        }
        return state3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public State copy() {
        return new State(new HashMap(this.state));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.state.equals(((State) obj).state);
    }

    @Nullable
    public <E> E getState(@NonNull Class<E> cls) {
        E e = (E) this.state.get(keyForClass(cls));
        if (cls.isInstance(e)) {
            return e;
        }
        return null;
    }

    @Nullable
    public Object getState(@NonNull String str) {
        return this.state.get(str);
    }

    @Nullable
    public <E> E getState(@NonNull String str, @NonNull Class<E> cls) {
        E e = (E) this.state.get(str);
        if (cls.isInstance(e)) {
            return e;
        }
        return null;
    }

    Map<String, Object> getState() {
        return this.state;
    }

    public int hashCode() {
        return this.state.hashCode();
    }

    public String toString() {
        return this.state.toString();
    }

    @VisibleForTesting
    public <E> void updateKey(Class<E> cls, E e) {
        this.state.put(keyForClass(cls), e);
    }

    @VisibleForTesting
    public void updateKey(String str, Object obj) {
        this.state.put(str, obj);
    }
}

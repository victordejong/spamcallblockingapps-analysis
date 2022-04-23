package zendesk.suas;

import android.support.annotation.NonNull;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/suas/CombinedReducer.class */
public class CombinedReducer {
    private final Collection<String> keys;
    private final Collection<Reducer> reducers;

    /* loaded from: classes3-dex2jar.jar:zendesk/suas/CombinedReducer$ReduceResult.class */
    static class ReduceResult {
        private final State newState;
        private final Collection<String> updatedKeys;

        ReduceResult(Collection<String> collection, State state) {
            this.updatedKeys = collection;
            this.newState = state;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public State getNewState() {
            return this.newState;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Collection<String> getUpdatedKeys() {
            return this.updatedKeys;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CombinedReducer(Collection<Reducer> collection) {
        assertReducers(collection);
        this.reducers = collection;
        this.keys = getKeys(collection);
    }

    private void assertReducers(Collection<Reducer> collection) {
        if (collection == null || collection.size() == 0) {
            throw new IllegalArgumentException("No reducers provided");
        }
        HashSet hashSet = new HashSet();
        for (Reducer reducer : collection) {
            hashSet.add(reducer.getStateKey());
        }
        if (hashSet.size() != collection.size()) {
            throw new IllegalArgumentException("Two or more reducers are tied to the same key");
        }
    }

    private Collection<String> getKeys(Collection<Reducer> collection) {
        HashSet hashSet = new HashSet();
        for (Reducer reducer : collection) {
            hashSet.add(reducer.getStateKey());
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Collection<String> getAllKeys() {
        return this.keys;
    }

    public State getEmptyState() {
        HashMap hashMap = new HashMap(this.reducers.size());
        for (Reducer reducer : this.reducers) {
            hashMap.put(reducer.getStateKey(), reducer.getInitialState());
        }
        return new State(hashMap);
    }

    @NonNull
    public ReduceResult reduce(@NonNull State state, @NonNull Action<?> action) {
        State state2 = new State();
        HashSet hashSet = new HashSet();
        for (Reducer reducer : this.reducers) {
            Object state3 = state.getState(reducer.getStateKey());
            Object reduce = reducer.reduce(state3, action);
            if (reduce != null) {
                state2.updateKey(reducer.getStateKey(), reduce);
                hashSet.add(reducer.getStateKey());
            } else {
                state2.updateKey(reducer.getStateKey(), state3);
            }
        }
        return new ReduceResult(hashSet, state2);
    }
}

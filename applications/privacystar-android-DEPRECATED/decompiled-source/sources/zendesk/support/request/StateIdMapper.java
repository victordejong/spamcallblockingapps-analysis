package zendesk.support.request;

import android.annotation.SuppressLint;
import com.zendesk.util.CollectionUtils;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/StateIdMapper.class */
class StateIdMapper implements Serializable {
    private final Map<Long, Long> localToRemote;
    private final Map<Long, Long> remoteToLocal;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"UseSparseArrays"})
    public StateIdMapper() {
        this.localToRemote = new HashMap();
        this.remoteToLocal = new HashMap();
    }

    private StateIdMapper(Map<Long, Long> map, Map<Long, Long> map2) {
        this.remoteToLocal = map;
        this.localToRemote = map2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateIdMapper addIdMapping(Long l, Long l2) {
        this.remoteToLocal.put(l, l2);
        this.localToRemote.put(l2, l);
        return copy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateIdMapper copy() {
        return new StateIdMapper(CollectionUtils.copyOf(this.remoteToLocal), CollectionUtils.copyOf(this.localToRemote));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Long getLocalId(Long l) {
        return this.remoteToLocal.get(l);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Long getRemoteId(Long l) {
        return this.localToRemote.get(l);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<Long> getRemoteIds() {
        return this.remoteToLocal.keySet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasLocalId(Long l) {
        return this.remoteToLocal.containsKey(l) && this.localToRemote.containsValue(l);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasRemoteId(Long l) {
        return this.localToRemote.containsKey(l) && this.remoteToLocal.containsValue(l);
    }

    public String toString() {
        return "IdMapper{ remoteToLocal=" + this.remoteToLocal + " localToRemote=" + this.localToRemote + '}';
    }
}

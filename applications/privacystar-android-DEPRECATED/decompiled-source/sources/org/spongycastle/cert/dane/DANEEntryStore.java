package org.spongycastle.cert.dane;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.spongycastle.util.CollectionStore;
import org.spongycastle.util.Selector;
import org.spongycastle.util.Store;
import org.spongycastle.util.StoreException;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/dane/DANEEntryStore.class */
public class DANEEntryStore implements Store {
    private final Map entries;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DANEEntryStore(List list) {
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            DANEEntry dANEEntry = (DANEEntry) it.next();
            hashMap.put(dANEEntry.getDomainName(), dANEEntry);
        }
        this.entries = Collections.unmodifiableMap(hashMap);
    }

    @Override // org.spongycastle.util.Store
    public Collection getMatches(Selector selector) throws StoreException {
        if (selector == null) {
            return this.entries.values();
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : this.entries.values()) {
            if (selector.match(obj)) {
                arrayList.add(obj);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public Store toCertificateStore() {
        Collection<DANEEntry> matches = getMatches(null);
        ArrayList arrayList = new ArrayList(matches.size());
        for (DANEEntry dANEEntry : matches) {
            arrayList.add(dANEEntry.getCertificate());
        }
        return new CollectionStore(arrayList);
    }
}

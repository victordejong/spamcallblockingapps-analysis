package org.simpleframework.xml.strategy;

import org.simpleframework.xml.util.WeakCache;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/strategy/ReadState.class */
class ReadState extends WeakCache<ReadGraph> {
    private final Contract contract;
    private final Loader loader = new Loader();

    public ReadState(Contract contract) {
        this.contract = contract;
    }

    private ReadGraph create(Object obj) throws Exception {
        ReadGraph fetch = fetch(obj);
        ReadGraph readGraph = fetch;
        if (fetch == null) {
            readGraph = new ReadGraph(this.contract, this.loader);
            cache(obj, readGraph);
        }
        return readGraph;
    }

    public ReadGraph find(Object obj) throws Exception {
        ReadGraph fetch = fetch(obj);
        return fetch != null ? fetch : create(obj);
    }
}

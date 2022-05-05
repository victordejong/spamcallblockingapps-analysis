package org.simpleframework.xml.core;

import java.util.Iterator;
import java.util.LinkedHashMap;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/Collector.class */
class Collector implements Criteria {
    private final Registry registry = new Registry();
    private final Registry alias = new Registry();

    /* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/Collector$Registry.class */
    private static class Registry extends LinkedHashMap<Object, Variable> {
        private Registry() {
        }

        public Iterator<Object> iterator() {
            return keySet().iterator();
        }
    }

    @Override // org.simpleframework.xml.core.Criteria
    public void commit(Object obj) throws Exception {
        for (Variable variable : this.registry.values()) {
            variable.getContact().set(obj, variable.getValue());
        }
    }

    @Override // org.simpleframework.xml.core.Criteria
    public Variable get(Object obj) {
        return this.registry.get(obj);
    }

    @Override // org.simpleframework.xml.core.Criteria
    public Variable get(Label label) throws Exception {
        if (label == null) {
            return null;
        }
        return this.registry.get(label.getKey());
    }

    @Override // java.lang.Iterable
    public Iterator<Object> iterator() {
        return this.registry.iterator();
    }

    @Override // org.simpleframework.xml.core.Criteria
    public Variable remove(Object obj) throws Exception {
        return this.registry.remove(obj);
    }

    @Override // org.simpleframework.xml.core.Criteria
    public Variable resolve(String str) {
        return this.alias.get(str);
    }

    @Override // org.simpleframework.xml.core.Criteria
    public void set(Label label, Object obj) throws Exception {
        Variable variable = new Variable(label, obj);
        if (label != null) {
            String[] paths = label.getPaths();
            Object key = label.getKey();
            for (String str : paths) {
                this.alias.put(str, variable);
            }
            this.registry.put(key, variable);
        }
    }
}

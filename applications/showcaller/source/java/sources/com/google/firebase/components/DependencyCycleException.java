package com.google.firebase.components;

import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/components/DependencyCycleException.class */
public class DependencyCycleException extends DependencyException {
    private final List<C8858d<?>> componentsInCycle;

    public DependencyCycleException(List<C8858d<?>> list) {
        super("Dependency cycle detected: " + Arrays.toString(list.toArray()));
        this.componentsInCycle = list;
    }

    public List<C8858d<?>> getComponentsInCycle() {
        return this.componentsInCycle;
    }
}

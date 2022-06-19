package com.google.firebase.components;

import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/components/DependencyCycleException.class */
public class DependencyCycleException extends DependencyException {
    private final List<Component<?>> componentsInCycle;

    public DependencyCycleException(List<Component<?>> list) {
        super("Dependency cycle detected: " + Arrays.toString(list.toArray()));
        this.componentsInCycle = list;
    }

    public List<Component<?>> getComponentsInCycle() {
        return this.componentsInCycle;
    }
}

package com.google.firebase.components;

import java.util.Arrays;
import java.util.List;
import p131c.p161d.p282e.p288k.C5162d;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/components/DependencyCycleException.class */
public class DependencyCycleException extends DependencyException {
    public final List<C5162d<?>> componentsInCycle;

    public DependencyCycleException(List<C5162d<?>> list) {
        super("Dependency cycle detected: " + Arrays.toString(list.toArray()));
        this.componentsInCycle = list;
    }

    public List<C5162d<?>> getComponentsInCycle() {
        return this.componentsInCycle;
    }
}

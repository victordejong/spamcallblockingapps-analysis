package com.google.firebase.components;

import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/DependencyCycleException.class */
public class DependencyCycleException extends DependencyException {

    /* renamed from: a */
    private final List<C4879b<?>> f20965a;

    public DependencyCycleException(List<C4879b<?>> list) {
        super("Dependency cycle detected: " + Arrays.toString(list.toArray()));
        this.f20965a = list;
    }
}

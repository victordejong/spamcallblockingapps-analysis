package com.google.firebase.components;

import java.util.Arrays;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/DependencyCycleException.class */
public class DependencyCycleException extends DependencyException {

    /* renamed from: a */
    private final List<C15622b<?>> f56003a;

    public DependencyCycleException(List<C15622b<?>> list) {
        super("Dependency cycle detected: " + Arrays.toString(list.toArray()));
        this.f56003a = list;
    }
}

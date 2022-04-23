package com.google.firebase.components;

import java.util.Arrays;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/components/DependencyCycleException.class */
public class DependencyCycleException extends DependencyException {

    /* renamed from: a  reason: collision with root package name */
    private final List<b<?>> f32233a;

    public DependencyCycleException(List<b<?>> list) {
        super("Dependency cycle detected: " + Arrays.toString(list.toArray()));
        this.f32233a = list;
    }
}

package com.google.firebase.components;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/CycleDetector.class */
class CycleDetector {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/components/CycleDetector$ComponentNode.class */
    public static class ComponentNode {
        private final Component<?> component;
        private final Set<ComponentNode> dependencies = new HashSet();
        private final Set<ComponentNode> dependents = new HashSet();

        ComponentNode(Component<?> component) {
            this.component = component;
        }

        void addDependency(ComponentNode componentNode) {
            this.dependencies.add(componentNode);
        }

        void addDependent(ComponentNode componentNode) {
            this.dependents.add(componentNode);
        }

        Component<?> getComponent() {
            return this.component;
        }

        Set<ComponentNode> getDependencies() {
            return this.dependencies;
        }

        boolean isLeaf() {
            return this.dependencies.isEmpty();
        }

        boolean isRoot() {
            return this.dependents.isEmpty();
        }

        void removeDependent(ComponentNode componentNode) {
            this.dependents.remove(componentNode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/components/CycleDetector$Dep.class */
    public static class Dep {
        private final Class<?> anInterface;
        private final boolean set;

        private Dep(Class<?> cls, boolean z) {
            this.anInterface = cls;
            this.set = z;
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof Dep) {
                Dep dep = (Dep) obj;
                z = false;
                if (dep.anInterface.equals(this.anInterface)) {
                    z = false;
                    if (dep.set == this.set) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return ((this.anInterface.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.set).hashCode();
        }
    }

    CycleDetector() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void detect(List<Component<?>> list) {
        Set<ComponentNode> graph = toGraph(list);
        Set<ComponentNode> roots = getRoots(graph);
        int i = 0;
        while (!roots.isEmpty()) {
            ComponentNode next = roots.iterator().next();
            roots.remove(next);
            i++;
            for (ComponentNode componentNode : next.getDependencies()) {
                componentNode.removeDependent(next);
                if (componentNode.isRoot()) {
                    roots.add(componentNode);
                }
            }
        }
        if (i != list.size()) {
            ArrayList arrayList = new ArrayList();
            for (ComponentNode componentNode2 : graph) {
                if (!componentNode2.isRoot() && !componentNode2.isLeaf()) {
                    arrayList.add(componentNode2.getComponent());
                }
            }
            throw new DependencyCycleException(arrayList);
        }
    }

    private static Set<ComponentNode> getRoots(Set<ComponentNode> set) {
        HashSet hashSet = new HashSet();
        for (ComponentNode componentNode : set) {
            if (componentNode.isRoot()) {
                hashSet.add(componentNode);
            }
        }
        return hashSet;
    }

    private static Set<ComponentNode> toGraph(List<Component<?>> list) {
        Set<ComponentNode> set;
        HashMap hashMap = new HashMap(list.size());
        for (Component<?> component : list) {
            ComponentNode componentNode = new ComponentNode(component);
            for (Class<? super Object> cls : component.getProvidedInterfaces()) {
                Dep dep = new Dep(cls, !component.isValue());
                if (!hashMap.containsKey(dep)) {
                    hashMap.put(dep, new HashSet());
                }
                Set set2 = (Set) hashMap.get(dep);
                if (set2.isEmpty() || dep.set) {
                    set2.add(componentNode);
                } else {
                    throw new IllegalArgumentException(String.format("Multiple components provide %s.", cls));
                }
            }
        }
        for (Set<ComponentNode> set3 : hashMap.values()) {
            for (ComponentNode componentNode2 : set3) {
                for (Dependency dependency : componentNode2.getComponent().getDependencies()) {
                    if (dependency.isDirectInjection() && (set = (Set) hashMap.get(new Dep(dependency.getInterface(), dependency.isSet()))) != null) {
                        for (ComponentNode componentNode3 : set) {
                            componentNode2.addDependency(componentNode3);
                            componentNode3.addDependent(componentNode2);
                        }
                    }
                }
            }
        }
        HashSet hashSet = new HashSet();
        for (Set set4 : hashMap.values()) {
            hashSet.addAll(set4);
        }
        return hashSet;
    }
}

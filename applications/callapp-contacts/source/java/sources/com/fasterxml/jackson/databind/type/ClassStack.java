package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/type/ClassStack.class */
public final class ClassStack {
    protected final Class<?> _current;
    protected final ClassStack _parent;
    private ArrayList<ResolvedRecursiveType> _selfRefs;

    private ClassStack(ClassStack classStack, Class<?> cls) {
        this._parent = classStack;
        this._current = cls;
    }

    public ClassStack(Class<?> cls) {
        this(null, cls);
    }

    public final void addSelfReference(ResolvedRecursiveType resolvedRecursiveType) {
        if (this._selfRefs == null) {
            this._selfRefs = new ArrayList<>();
        }
        this._selfRefs.add(resolvedRecursiveType);
    }

    public final ClassStack child(Class<?> cls) {
        return new ClassStack(this, cls);
    }

    public final ClassStack find(Class<?> cls) {
        if (this._current == cls) {
            return this;
        }
        ClassStack classStack = this._parent;
        while (true) {
            ClassStack classStack2 = classStack;
            if (classStack2 == null) {
                return null;
            }
            if (classStack2._current == cls) {
                return classStack2;
            }
            classStack = classStack2._parent;
        }
    }

    public final void resolveSelfReferences(JavaType javaType) {
        ArrayList<ResolvedRecursiveType> arrayList = this._selfRefs;
        if (arrayList != null) {
            Iterator<ResolvedRecursiveType> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next().setReference(javaType);
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[ClassStack (self-refs: ");
        ArrayList<ResolvedRecursiveType> arrayList = this._selfRefs;
        sb.append(arrayList == null ? "0" : String.valueOf(arrayList.size()));
        sb.append(')');
        ClassStack classStack = this;
        while (true) {
            ClassStack classStack2 = classStack;
            if (classStack2 == null) {
                sb.append(']');
                return sb.toString();
            }
            sb.append(' ');
            sb.append(classStack2._current.getName());
            classStack = classStack2._parent;
        }
    }
}

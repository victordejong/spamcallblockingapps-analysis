package io.objectbox.relation;

import java.io.Serializable;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes5-dex2jar.jar:io/objectbox/relation/a.class */
public interface a extends Serializable {

    /* renamed from: io.objectbox.relation.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:io/objectbox/relation/a$a.class */
    public static final class C0592a implements a {
        @Override // io.objectbox.relation.a
        public final <T> List<T> a() {
            return new CopyOnWriteArrayList();
        }
    }

    <T> List<T> a();
}

package io.objectbox.relation;

import java.io.Serializable;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: io.objectbox.relation.a */
/* loaded from: classes5-dex2jar.jar:io/objectbox/relation/a.class */
public interface AbstractC17988a extends Serializable {

    /* renamed from: io.objectbox.relation.a$a */
    /* loaded from: classes5-dex2jar.jar:io/objectbox/relation/a$a.class */
    public static final class C17989a implements AbstractC17988a {
        @Override // io.objectbox.relation.AbstractC17988a
        /* renamed from: a */
        public final <T> List<T> mo4564a() {
            return new CopyOnWriteArrayList();
        }
    }

    /* renamed from: a */
    <T> List<T> mo4564a();
}

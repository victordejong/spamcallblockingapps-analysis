package com.google.common.collect;

import com.google.common.base.q;
import com.google.common.collect.aj;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/ai.class */
public abstract class ai<K0, V0> {

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ai$a.class */
    static final class a<V> implements q<List<V>>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final int f32002a;

        a(int i) {
            this.f32002a = i.a(i, "expectedValuesPerKey");
        }

        @Override // com.google.common.base.q
        public final /* synthetic */ Object get() {
            return new ArrayList(this.f32002a);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ai$b.class */
    public static abstract class b<K0, V0> extends ai<K0, V0> {
        b() {
            super();
        }

        public abstract <K extends K0, V extends V0> ac<K, V> a();
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ai$c.class */
    public static abstract class c<K0> {
        c() {
        }

        abstract <K extends K0, V> Map<K, Collection<V>> a();

        public final b<K0, Object> b() {
            i.a(2, "expectedValuesPerKey");
            return new b<K0, Object>() { // from class: com.google.common.collect.ai.c.1
                @Override // com.google.common.collect.ai.b
                public final <K extends K0, V> ac<K, V> a() {
                    return new aj.a(c.this.a(), new a(r5));
                }
            };
        }
    }

    private ai() {
    }
}

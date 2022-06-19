package com.google.common.collect;

import com.google.common.base.AbstractC15399q;
import com.google.common.collect.C15464aj;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.common.collect.ai */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/ai.class */
public abstract class AbstractC15457ai<K0, V0> {

    /* renamed from: com.google.common.collect.ai$a */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ai$a.class */
    static final class C15460a<V> implements AbstractC15399q<List<V>>, Serializable {

        /* renamed from: a */
        private final int f55727a;

        C15460a(int i) {
            this.f55727a = C15524i.m8781a(i, "expectedValuesPerKey");
        }

        @Override // com.google.common.base.AbstractC15399q
        public final /* synthetic */ Object get() {
            return new ArrayList(this.f55727a);
        }
    }

    /* renamed from: com.google.common.collect.ai$b */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ai$b.class */
    public static abstract class AbstractC15461b<K0, V0> extends AbstractC15457ai<K0, V0> {
        AbstractC15461b() {
            super();
        }

        /* renamed from: a */
        public abstract <K extends K0, V extends V0> AbstractC15407ac<K, V> mo8839a();
    }

    /* renamed from: com.google.common.collect.ai$c */
    /* loaded from: classes4-dex2jar.jar:com/google/common/collect/ai$c.class */
    public static abstract class AbstractC15462c<K0> {
        AbstractC15462c() {
        }

        /* renamed from: a */
        abstract <K extends K0, V> Map<K, Collection<V>> mo8841a();

        /* renamed from: b */
        public final AbstractC15461b<K0, Object> m8840b() {
            C15524i.m8781a(2, "expectedValuesPerKey");
            return new AbstractC15461b<K0, Object>() { // from class: com.google.common.collect.ai.c.1
                @Override // com.google.common.collect.AbstractC15457ai.AbstractC15461b
                /* renamed from: a */
                public final <K extends K0, V> AbstractC15407ac<K, V> mo8839a() {
                    return new C15464aj.C15465a(AbstractC15462c.this.mo8841a(), new C15460a(r5));
                }
            };
        }
    }

    private AbstractC15457ai() {
    }
}

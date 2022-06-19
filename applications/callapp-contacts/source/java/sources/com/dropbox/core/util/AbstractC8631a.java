package com.dropbox.core.util;

import java.util.ArrayList;
/* renamed from: com.dropbox.core.util.a */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/util/a.class */
public abstract class AbstractC8631a<E, L> {

    /* renamed from: com.dropbox.core.util.a$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/util/a$a.class */
    public static final class C8632a<E> extends AbstractC8631a<E, ArrayList<E>> {

        /* renamed from: a */
        private ArrayList<E> f30641a = new ArrayList<>();

        @Override // com.dropbox.core.util.AbstractC8631a
        /* renamed from: a */
        public final /* synthetic */ Object mo25241a() {
            ArrayList<E> arrayList = this.f30641a;
            if (arrayList != null) {
                this.f30641a = null;
                return arrayList;
            }
            throw new IllegalStateException("already called finish()");
        }

        @Override // com.dropbox.core.util.AbstractC8631a
        /* renamed from: a */
        public final void mo25240a(E e) {
            ArrayList<E> arrayList = this.f30641a;
            if (arrayList != null) {
                arrayList.add(e);
                return;
            }
            throw new IllegalStateException("already called finish()");
        }
    }

    /* renamed from: a */
    public abstract L mo25241a();

    /* renamed from: a */
    public abstract void mo25240a(E e);
}

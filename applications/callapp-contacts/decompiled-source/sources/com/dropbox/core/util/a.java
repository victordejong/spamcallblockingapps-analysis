package com.dropbox.core.util;

import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/util/a.class */
public abstract class a<E, L> {

    /* renamed from: com.dropbox.core.util.a$a  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/util/a$a.class */
    public static final class C0357a<E> extends a<E, ArrayList<E>> {

        /* renamed from: a  reason: collision with root package name */
        private ArrayList<E> f17841a = new ArrayList<>();

        @Override // com.dropbox.core.util.a
        public final /* synthetic */ Object a() {
            ArrayList<E> arrayList = this.f17841a;
            if (arrayList != null) {
                this.f17841a = null;
                return arrayList;
            }
            throw new IllegalStateException("already called finish()");
        }

        @Override // com.dropbox.core.util.a
        public final void a(E e) {
            ArrayList<E> arrayList = this.f17841a;
            if (arrayList != null) {
                arrayList.add(e);
                return;
            }
            throw new IllegalStateException("already called finish()");
        }
    }

    public abstract L a();

    public abstract void a(E e);
}

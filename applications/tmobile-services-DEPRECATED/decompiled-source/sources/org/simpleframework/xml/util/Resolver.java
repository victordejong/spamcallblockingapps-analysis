package org.simpleframework.xml.util;

import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.simpleframework.xml.util.Match;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/util/Resolver.class */
public class Resolver<M extends Match> extends AbstractSet<M> {
    protected final Resolver<M>.Stack stack = new Stack();
    protected final Resolver<M>.Cache cache = new Cache();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/util/Resolver$Cache.class */
    public class Cache extends LimitedCache<List<M>> {
        public Cache() {
            super(1024);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/util/Resolver$Stack.class */
    public class Stack extends LinkedList<M> {

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/util/Resolver$Stack$Sequence.class */
        public class Sequence implements Iterator<M> {
            private int cursor;

            public Sequence() {
                this.cursor = Stack.this.size();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.cursor > 0;
            }

            @Override // java.util.Iterator
            public M next() {
                if (!hasNext()) {
                    return null;
                }
                Stack stack = Stack.this;
                int i = this.cursor - 1;
                this.cursor = i;
                return (M) ((Match) stack.get(i));
            }

            @Override // java.util.Iterator
            public void remove() {
                Stack.this.purge(this.cursor);
            }
        }

        private Stack() {
        }

        public void purge(int i) {
            Resolver.this.cache.clear();
            remove(i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.LinkedList, java.util.Deque
        public /* bridge */ /* synthetic */ void push(Object obj) {
            push((Stack) ((Match) obj));
        }

        public void push(M m) {
            Resolver.this.cache.clear();
            addFirst(m);
        }

        public Iterator<M> sequence() {
            return new Sequence();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00d7, code lost:
        r11 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00df, code lost:
        if (r9.length != r10) goto L_0x00ee;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00e5, code lost:
        if (r7.length != r8) goto L_0x00eb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00e8, code lost:
        r12 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ed, code lost:
        return r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00f4, code lost:
        if (r9[r11] != '*') goto L_0x0107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00f7, code lost:
        r0 = r11 + 1;
        r11 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0102, code lost:
        if (r0 < r9.length) goto L_0x00ee;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0105, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0107, code lost:
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean match(char[] r7, int r8, char[] r9, int r10) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.simpleframework.xml.util.Resolver.match(char[], int, char[], int):boolean");
    }

    private boolean match(char[] cArr, char[] cArr2) {
        return match(cArr, 0, cArr2, 0);
    }

    private List<M> resolveAll(String str, char[] cArr) {
        ArrayList arrayList = new ArrayList();
        Iterator<M> it = this.stack.iterator();
        while (it.hasNext()) {
            Match match = (Match) it.next();
            if (match(cArr, match.getPattern().toCharArray())) {
                this.cache.put(str, arrayList);
                arrayList.add(match);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        return add((Resolver<M>) ((Match) obj));
    }

    public boolean add(M m) {
        this.stack.push((Resolver<M>.Stack) m);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.cache.clear();
        this.stack.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<M> iterator() {
        return (Iterator<M>) this.stack.sequence();
    }

    public boolean remove(M m) {
        this.cache.clear();
        return this.stack.remove(m);
    }

    public M resolve(String str) {
        List<M> list = (List) this.cache.get(str);
        List<M> list2 = list;
        if (list == null) {
            list2 = resolveAll(str);
        }
        if (list2.isEmpty()) {
            return null;
        }
        return list2.get(0);
    }

    public List<M> resolveAll(String str) {
        List<M> list = (List) this.cache.get(str);
        if (list != null) {
            return list;
        }
        char[] charArray = str.toCharArray();
        if (charArray == null) {
            return null;
        }
        return resolveAll(str, charArray);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.stack.size();
    }
}

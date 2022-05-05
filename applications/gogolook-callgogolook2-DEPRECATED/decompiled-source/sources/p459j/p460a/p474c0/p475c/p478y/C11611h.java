package p459j.p460a.p474c0.p475c.p478y;

import android.database.Cursor;
import androidx.collection.SimpleArrayMap;
import gogolook.callgogolook2.messaging.datamodel.data.ParticipantData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: j.a.c0.c.y.h */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/h.class */
public class C11611h implements Iterable<ParticipantData> {

    /* renamed from: b */
    public int f26032b = 0;

    /* renamed from: a */
    public final SimpleArrayMap<String, ParticipantData> f26031a = new SimpleArrayMap<>();

    /* renamed from: j.a.c0.c.y.h$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/h$a.class */
    public class C11612a implements Iterator<ParticipantData> {

        /* renamed from: a */
        public int f26033a = -1;

        public C11612a() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            boolean z = true;
            if (this.f26033a >= C11611h.this.f26031a.size() - 1) {
                z = false;
            }
            return z;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public ParticipantData next() {
            this.f26033a++;
            if (this.f26033a < C11611h.this.f26031a.size()) {
                return (ParticipantData) C11611h.this.f26031a.valueAt(this.f26033a);
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: a */
    public void m8877a(Cursor cursor) {
        this.f26031a.clear();
        this.f26032b = 0;
        if (cursor != null) {
            while (cursor.moveToNext()) {
                ParticipantData a = ParticipantData.m27542a(cursor);
                if (!a.m27551G()) {
                    this.f26032b++;
                }
                this.f26031a.put(a.m27523t(), a);
            }
        }
    }

    /* renamed from: b */
    public int m8875b() {
        return this.f26032b;
    }

    /* renamed from: c */
    public ParticipantData m8874c() {
        if (this.f26032b != 1) {
            return null;
        }
        for (int i = 0; i < this.f26031a.size(); i++) {
            ParticipantData valueAt = this.f26031a.valueAt(i);
            if (!valueAt.m27551G()) {
                return valueAt;
            }
        }
        return null;
    }

    public boolean isLoaded() {
        return !this.f26031a.isEmpty();
    }

    @Override // java.lang.Iterable
    public Iterator<ParticipantData> iterator() {
        return new C11612a();
    }

    /* renamed from: q */
    public ArrayList<ParticipantData> m8873q() {
        ArrayList<ParticipantData> arrayList = new ArrayList<>(this.f26031a.size());
        for (int i = 0; i < this.f26031a.size(); i++) {
            ParticipantData valueAt = this.f26031a.valueAt(i);
            if (!valueAt.m27551G()) {
                arrayList.add(valueAt);
            }
        }
        return arrayList;
    }
}

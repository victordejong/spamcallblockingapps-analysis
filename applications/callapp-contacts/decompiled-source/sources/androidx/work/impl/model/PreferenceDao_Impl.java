package androidx.work.impl.model;

import android.database.Cursor;
import androidx.lifecycle.LiveData;
import androidx.room.a;
import androidx.room.b.c;
import androidx.room.h;
import androidx.room.k;
import androidx.sqlite.db.e;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/PreferenceDao_Impl.class */
public final class PreferenceDao_Impl implements PreferenceDao {
    private final h __db;
    private final a<Preference> __insertionAdapterOfPreference;

    public PreferenceDao_Impl(h hVar) {
        this.__db = hVar;
        this.__insertionAdapterOfPreference = new a<Preference>(hVar) { // from class: androidx.work.impl.model.PreferenceDao_Impl.1
            public void bind(e eVar, Preference preference) {
                if (preference.mKey == null) {
                    eVar.a(1);
                } else {
                    eVar.a(1, preference.mKey);
                }
                if (preference.mValue == null) {
                    eVar.a(2);
                } else {
                    eVar.a(2, preference.mValue.longValue());
                }
            }

            @Override // androidx.room.o
            public String createQuery() {
                return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
            }
        };
    }

    @Override // androidx.work.impl.model.PreferenceDao
    public final Long getLongValue(String str) {
        k a2 = k.a("SELECT long_value FROM Preference where `key`=?", 1);
        if (str == null) {
            a2.e[1] = 1;
        } else {
            a2.a(1, str);
        }
        this.__db.d();
        Cursor a3 = c.a(this.__db, a2, false);
        try {
            return (!a3.moveToFirst() || a3.isNull(0)) ? null : Long.valueOf(a3.getLong(0));
        } finally {
            a3.close();
            a2.a();
        }
    }

    @Override // androidx.work.impl.model.PreferenceDao
    public final LiveData<Long> getObservableLongValue(String str) {
        final k a2 = k.a("SELECT long_value FROM Preference where `key`=?", 1);
        if (str == null) {
            a2.e[1] = 1;
        } else {
            a2.a(1, str);
        }
        return this.__db.e.a(new String[]{"Preference"}, false, (Callable) new Callable<Long>() { // from class: androidx.work.impl.model.PreferenceDao_Impl.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                Cursor a3 = c.a(PreferenceDao_Impl.this.__db, a2, false);
                try {
                    return (!a3.moveToFirst() || a3.isNull(0)) ? null : Long.valueOf(a3.getLong(0));
                } finally {
                    a3.close();
                }
            }

            protected void finalize() {
                a2.a();
            }
        });
    }

    @Override // androidx.work.impl.model.PreferenceDao
    public final void insertPreference(Preference preference) {
        this.__db.d();
        this.__db.e();
        try {
            this.__insertionAdapterOfPreference.insert((a<Preference>) preference);
            this.__db.g();
        } finally {
            this.__db.f();
        }
    }
}

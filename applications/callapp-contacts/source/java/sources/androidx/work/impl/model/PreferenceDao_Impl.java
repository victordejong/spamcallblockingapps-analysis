package androidx.work.impl.model;

import android.database.Cursor;
import androidx.lifecycle.LiveData;
import androidx.room.AbstractC2714a;
import androidx.room.AbstractC2748h;
import androidx.room.C2757k;
import androidx.room.p081b.C2721c;
import androidx.sqlite.p082db.AbstractC2795e;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/PreferenceDao_Impl.class */
public final class PreferenceDao_Impl implements PreferenceDao {
    private final AbstractC2748h __db;
    private final AbstractC2714a<Preference> __insertionAdapterOfPreference;

    public PreferenceDao_Impl(AbstractC2748h abstractC2748h) {
        this.__db = abstractC2748h;
        this.__insertionAdapterOfPreference = new AbstractC2714a<Preference>(abstractC2748h) { // from class: androidx.work.impl.model.PreferenceDao_Impl.1
            public void bind(AbstractC2795e abstractC2795e, Preference preference) {
                if (preference.mKey == null) {
                    abstractC2795e.mo39889a(1);
                } else {
                    abstractC2795e.mo39886a(1, preference.mKey);
                }
                if (preference.mValue == null) {
                    abstractC2795e.mo39889a(2);
                } else {
                    abstractC2795e.mo39887a(2, preference.mValue.longValue());
                }
            }

            @Override // androidx.room.AbstractC2764o
            public String createQuery() {
                return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
            }
        };
    }

    /* JADX WARN: Finally extract failed */
    @Override // androidx.work.impl.model.PreferenceDao
    public final Long getLongValue(String str) {
        C2757k m39945a = C2757k.m39945a("SELECT long_value FROM Preference where `key`=?", 1);
        if (str == null) {
            m39945a.f10456e[1] = 1;
        } else {
            m39945a.mo39886a(1, str);
        }
        this.__db.m39960d();
        Cursor m39997a = C2721c.m39997a(this.__db, m39945a, false);
        try {
            Long valueOf = (!m39997a.moveToFirst() || m39997a.isNull(0)) ? null : Long.valueOf(m39997a.getLong(0));
            m39997a.close();
            m39945a.m39946a();
            return valueOf;
        } catch (Throwable th) {
            m39997a.close();
            m39945a.m39946a();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.PreferenceDao
    public final LiveData<Long> getObservableLongValue(String str) {
        final C2757k m39945a = C2757k.m39945a("SELECT long_value FROM Preference where `key`=?", 1);
        if (str == null) {
            m39945a.f10456e[1] = 1;
        } else {
            m39945a.mo39886a(1, str);
        }
        return this.__db.f10419e.m39975a(new String[]{"Preference"}, false, (Callable) new Callable<Long>() { // from class: androidx.work.impl.model.PreferenceDao_Impl.2
            /* JADX WARN: Finally extract failed */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                Cursor m39997a = C2721c.m39997a(PreferenceDao_Impl.this.__db, m39945a, false);
                try {
                    Long valueOf = (!m39997a.moveToFirst() || m39997a.isNull(0)) ? null : Long.valueOf(m39997a.getLong(0));
                    m39997a.close();
                    return valueOf;
                } catch (Throwable th) {
                    m39997a.close();
                    throw th;
                }
            }

            protected void finalize() {
                m39945a.m39946a();
            }
        });
    }

    @Override // androidx.work.impl.model.PreferenceDao
    public final void insertPreference(Preference preference) {
        this.__db.m39960d();
        this.__db.m39959e();
        try {
            this.__insertionAdapterOfPreference.insert((AbstractC2714a<Preference>) preference);
            this.__db.m39957g();
        } finally {
            this.__db.m39958f();
        }
    }
}

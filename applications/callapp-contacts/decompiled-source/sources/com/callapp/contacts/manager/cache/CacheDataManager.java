package com.callapp.contacts.manager.cache;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.model.objectbox.CacheData;
import com.callapp.contacts.model.objectbox.CacheData_;
import com.callapp.contacts.util.CLog;
import io.objectbox.a;
import io.objectbox.exception.DbException;
import io.objectbox.g;
import io.objectbox.query.c;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/cache/CacheDataManager.class */
public class CacheDataManager {
    /* JADX WARN: Removed duplicated region for block: B:29:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.callapp.contacts.manager.cache.CacheManager.MemCachedObject<T> a(com.callapp.contacts.manager.cache.FileStore r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.cache.CacheDataManager.a(com.callapp.contacts.manager.cache.FileStore, java.lang.String):com.callapp.contacts.manager.cache.CacheManager$MemCachedObject");
    }

    public static Collection<String> a() {
        final ArrayList arrayList = new ArrayList();
        CallAppApplication.get().getObjectBoxStore().d(CacheData.class).e().a(CacheData_.expires, new Date()).a().a(new c<CacheData>() { // from class: com.callapp.contacts.manager.cache.CacheDataManager.1
            @Override // io.objectbox.query.c
            public final /* synthetic */ void accept(CacheData cacheData) {
                arrayList.add(cacheData.getFile());
            }
        });
        return arrayList;
    }

    public static <T> void a(FileStore fileStore, String str, Date date, Class<T> cls, T t) {
        try {
            a<T> d2 = CallAppApplication.get().getObjectBoxStore().d(CacheData.class);
            CacheData cacheData = (CacheData) d2.e().a((g<T>) CacheData_.file, str).a().a();
            T t2 = (T) cacheData;
            if (cacheData == null) {
                t2 = (T) new CacheData();
            }
            ((CacheData) t2).setFile(str);
            ((CacheData) t2).setExpires(date);
            ((CacheData) t2).setValueType(cls.getSimpleName());
            if (t != null) {
                if (cls == Long.class) {
                    ((CacheData) t2).setLongVal((Long) t);
                } else if (cls == Boolean.class) {
                    ((CacheData) t2).setBooleanVal((Boolean) t);
                } else if (cls == String.class) {
                    ((CacheData) t2).setStringVal((String) t);
                } else if (cls == Integer.class) {
                    ((CacheData) t2).setIntegerVal((Integer) t);
                } else {
                    ((CacheData) t2).setValueType(cls.getName());
                    ((CacheData) t2).setBytesVal(fileStore.a(str, t));
                }
            }
            d2.a((a<T>) t2);
            CLog.a(CacheDataManager.class, "Write to db: ".concat(String.valueOf(str)));
        } catch (DbException e) {
            CLog.a(CacheDataManager.class, e);
        }
    }

    public static void setExpires$eef1da(String str) {
        try {
            CallAppApplication.get().getObjectBoxStore().d(CacheData.class).e().a(CacheData_.file, str).a().f();
            CLog.a(CacheDataManager.class, "Delete from db:".concat(String.valueOf(str)));
        } catch (DbException e) {
            CLog.a(CacheDataManager.class, e);
        }
    }
}

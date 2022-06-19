package com.callapp.contacts.manager.cache;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.model.objectbox.CacheData;
import com.callapp.contacts.model.objectbox.CacheData_;
import com.callapp.contacts.util.CLog;
import io.objectbox.C17944a;
import io.objectbox.C17978g;
import io.objectbox.exception.DbException;
import io.objectbox.query.AbstractC17985c;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/cache/CacheDataManager.class */
public class CacheDataManager {
    /* JADX WARN: Removed duplicated region for block: B:29:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e8  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.callapp.contacts.manager.cache.CacheManager.MemCachedObject<T> m28394a(com.callapp.contacts.manager.cache.FileStore r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.cache.CacheDataManager.m28394a(com.callapp.contacts.manager.cache.FileStore, java.lang.String):com.callapp.contacts.manager.cache.CacheManager$MemCachedObject");
    }

    /* renamed from: a */
    public static Collection<String> m28395a() {
        final ArrayList arrayList = new ArrayList();
        CallAppApplication.get().getObjectBoxStore().m4727d(CacheData.class).m4700e().m4610a(CacheData_.expires, new Date()).m4618a().m4636a(new AbstractC17985c<CacheData>() { // from class: com.callapp.contacts.manager.cache.CacheDataManager.1
            @Override // io.objectbox.query.AbstractC17985c
            public final /* synthetic */ void accept(CacheData cacheData) {
                arrayList.add(cacheData.getFile());
            }
        });
        return arrayList;
    }

    /* renamed from: a */
    public static <T> void m28393a(FileStore fileStore, String str, Date date, Class<T> cls, T t) {
        try {
            C17944a<T> m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(CacheData.class);
            CacheData cacheData = (CacheData) m4727d.m4700e().m4611a((C17978g<T>) CacheData_.file, str).m4618a().m4641a();
            CacheData cacheData2 = cacheData;
            if (cacheData == null) {
                cacheData2 = new CacheData();
            }
            cacheData2.setFile(str);
            cacheData2.setExpires(date);
            cacheData2.setValueType(cls.getSimpleName());
            if (t != null) {
                if (cls == Long.class) {
                    cacheData2.setLongVal((Long) t);
                } else if (cls == Boolean.class) {
                    cacheData2.setBooleanVal((Boolean) t);
                } else if (cls == String.class) {
                    cacheData2.setStringVal((String) t);
                } else if (cls == Integer.class) {
                    cacheData2.setIntegerVal((Integer) t);
                } else {
                    cacheData2.setValueType(cls.getName());
                    cacheData2.setBytesVal(fileStore.m28374a(str, t));
                }
            }
            m4727d.m4711a((C17944a<T>) cacheData2);
            CLog.m27611a(CacheDataManager.class, "Write to db: ".concat(String.valueOf(str)));
        } catch (DbException e) {
            CLog.m27609a(CacheDataManager.class, e);
        }
    }

    public static void setExpires$eef1da(String str) {
        try {
            CallAppApplication.get().getObjectBoxStore().m4727d(CacheData.class).m4700e().m4611a(CacheData_.file, str).m4618a().m4624f();
            CLog.m27611a(CacheDataManager.class, "Delete from db:".concat(String.valueOf(str)));
        } catch (DbException e) {
            CLog.m27609a(CacheDataManager.class, e);
        }
    }
}

package androidx.collection;

import androidx.core.app.Person;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p642c.AbstractC15124r;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��:\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\u001aø\u0001\u0010��\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\b\b��\u0010\u0002*\u00020\u0004\"\b\b\u0001\u0010\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000628\b\u0006\u0010\u0007\u001a2\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0003¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u00060\b2%\b\u0006\u0010\r\u001a\u001f\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0006\u0012\u0004\u0018\u0001H\u00030\u000e2d\b\u0006\u0010\u000f\u001a^\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u0012\u0012\u0013\u0012\u0011H\u0002¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u0011H\u0003¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u0013\u0012\u0015\u0012\u0013\u0018\u0001H\u0003¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\u00150\u0010H\u0086\b¨\u0006\u0016"}, m815d2 = {"lruCache", "Landroidx/collection/LruCache;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "maxSize", "", "sizeOf", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", Person.KEY_KEY, C13032a.f29462d, "create", "Lkotlin/Function1;", "onEntryRemoved", "Lkotlin/Function4;", "", "evicted", "oldValue", "newValue", "", "collection-ktx"}, m814k = 2, m813mv = {1, 1, 13})
/* loaded from: classes-dex2jar.jar:androidx/collection/LruCacheKt.class */
public final class LruCacheKt {
    public static final <K, V> LruCache<K, V> lruCache(int i, AbstractC15122p<? super K, ? super V, Integer> pVar, AbstractC15118l<? super K, ? extends V> lVar, AbstractC15124r<? super Boolean, ? super K, ? super V, ? super V, C14989s> rVar) {
        C15149k.m377b(pVar, "sizeOf");
        C15149k.m377b(lVar, "create");
        C15149k.m377b(rVar, "onEntryRemoved");
        return new LruCacheKt$lruCache$4(pVar, lVar, rVar, i, i);
    }

    public static /* synthetic */ LruCache lruCache$default(int i, AbstractC15122p pVar, AbstractC15118l lVar, AbstractC15124r rVar, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            pVar = LruCacheKt$lruCache$1.INSTANCE;
        }
        if ((i2 & 4) != 0) {
            lVar = LruCacheKt$lruCache$2.INSTANCE;
        }
        if ((i2 & 8) != 0) {
            rVar = LruCacheKt$lruCache$3.INSTANCE;
        }
        C15149k.m377b(pVar, "sizeOf");
        C15149k.m377b(lVar, "create");
        C15149k.m377b(rVar, "onEntryRemoved");
        return new LruCacheKt$lruCache$4(pVar, lVar, rVar, i, i);
    }
}

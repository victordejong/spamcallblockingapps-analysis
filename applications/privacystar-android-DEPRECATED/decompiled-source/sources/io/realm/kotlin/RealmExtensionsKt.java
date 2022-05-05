package io.realm.kotlin;

import io.realm.Realm;
import io.realm.RealmModel;
import io.realm.RealmQuery;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 2}, m255d1 = {"��$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u001a\u001e\u0010��\u001a\u0002H\u0001\"\n\b��\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u0003H\u0086\b¢\u0006\u0002\u0010\u0004\u001a(\u0010��\u001a\u0002H\u0001\"\n\b��\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0086\b¢\u0006\u0002\u0010\u0007\u001a\u0019\u0010\b\u001a\u00020\t\"\n\b��\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u0003H\u0086\b\u001a\u001f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00010\u000b\"\n\b��\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u0003H\u0086\b¨\u0006\f"}, m254d2 = {"createObject", "T", "Lio/realm/RealmModel;", "Lio/realm/Realm;", "(Lio/realm/Realm;)Lio/realm/RealmModel;", "primaryKeyValue", "", "(Lio/realm/Realm;Ljava/lang/Object;)Lio/realm/RealmModel;", "delete", "", "where", "Lio/realm/RealmQuery;", "realm-kotlin-extensions_baseRelease"}, m253k = 2, m252mv = {1, 1, 10})
/* loaded from: classes2-dex2jar.jar:io/realm/kotlin/RealmExtensionsKt.class */
public final class RealmExtensionsKt {
    private static final <T extends RealmModel> T createObject(@NotNull Realm realm) {
        Intrinsics.reifiedOperationMarker(4, "T");
        T t = (T) realm.createObject(RealmModel.class);
        Intrinsics.checkExpressionValueIsNotNull(t, "this.createObject(T::class.java)");
        return t;
    }

    private static final <T extends RealmModel> T createObject(@NotNull Realm realm, Object obj) {
        Intrinsics.reifiedOperationMarker(4, "T");
        T t = (T) realm.createObject(RealmModel.class, obj);
        Intrinsics.checkExpressionValueIsNotNull(t, "this.createObject(T::class.java, primaryKeyValue)");
        return t;
    }

    private static final <T extends RealmModel> void delete(@NotNull Realm realm) {
        Intrinsics.reifiedOperationMarker(4, "T");
        realm.delete(RealmModel.class);
    }

    private static final <T extends RealmModel> RealmQuery<T> where(@NotNull Realm realm) {
        Intrinsics.reifiedOperationMarker(4, "T");
        RealmQuery<T> where = realm.where(RealmModel.class);
        Intrinsics.checkExpressionValueIsNotNull(where, "this.where(T::class.java)");
        return where;
    }
}

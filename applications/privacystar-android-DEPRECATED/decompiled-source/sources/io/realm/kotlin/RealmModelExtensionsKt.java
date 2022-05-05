package io.realm.kotlin;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import io.realm.RealmChangeListener;
import io.realm.RealmModel;
import io.realm.RealmObject;
import io.realm.RealmObjectChangeListener;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 2}, m255d1 = {"��$\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\u001a'\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\u0002H\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005¢\u0006\u0002\u0010\u0006\u001a'\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\u0002H\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0007¢\u0006\u0002\u0010\b\u001a\n\u0010\t\u001a\u00020\u0001*\u00020\u0003\u001a\n\u0010\n\u001a\u00020\u000b*\u00020\u0003\u001a\n\u0010\f\u001a\u00020\u000b*\u00020\u0003\u001a\n\u0010\r\u001a\u00020\u000b*\u00020\u0003\u001a\n\u0010\u000e\u001a\u00020\u000b*\u00020\u0003\u001a\n\u0010\u000f\u001a\u00020\u0001*\u00020\u0003\u001a'\u0010\u0010\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\u0002H\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005¢\u0006\u0002\u0010\u0006\u001a'\u0010\u0010\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\u0002H\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0007¢\u0006\u0002\u0010\b¨\u0006\u0011"}, m254d2 = {"addChangeListener", "", "E", "Lio/realm/RealmModel;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lio/realm/RealmChangeListener;", "(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V", "Lio/realm/RealmObjectChangeListener;", "(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V", "deleteFromRealm", "isLoaded", "", "isManaged", "isValid", "load", "removeAllChangeListeners", "removeChangeListener", "realm-kotlin-extensions_baseRelease"}, m253k = 2, m252mv = {1, 1, 10})
/* loaded from: classes2-dex2jar.jar:io/realm/kotlin/RealmModelExtensionsKt.class */
public final class RealmModelExtensionsKt {
    public static final <E extends RealmModel> void addChangeListener(@NotNull E receiver, @NotNull RealmChangeListener<E> listener) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        RealmObject.addChangeListener(receiver, listener);
    }

    public static final <E extends RealmModel> void addChangeListener(@NotNull E receiver, @NotNull RealmObjectChangeListener<E> listener) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        RealmObject.addChangeListener(receiver, listener);
    }

    public static final void deleteFromRealm(@NotNull RealmModel receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        RealmObject.deleteFromRealm(receiver);
    }

    public static final boolean isLoaded(@NotNull RealmModel receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return RealmObject.isLoaded(receiver);
    }

    public static final boolean isManaged(@NotNull RealmModel receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return RealmObject.isManaged(receiver);
    }

    public static final boolean isValid(@NotNull RealmModel receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return RealmObject.isValid(receiver);
    }

    public static final boolean load(@NotNull RealmModel receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        return RealmObject.load(receiver);
    }

    public static final void removeAllChangeListeners(@NotNull RealmModel receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        RealmObject.removeAllChangeListeners(receiver);
    }

    public static final <E extends RealmModel> void removeChangeListener(@NotNull E receiver, @NotNull RealmChangeListener<E> listener) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        RealmObject.removeChangeListener(receiver, listener);
    }

    public static final <E extends RealmModel> void removeChangeListener(@NotNull E receiver, @NotNull RealmObjectChangeListener<E> listener) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        RealmObject.removeChangeListener(receiver, listener);
    }
}

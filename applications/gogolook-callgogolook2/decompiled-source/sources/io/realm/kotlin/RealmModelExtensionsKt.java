package io.realm.kotlin;

import androidx.exifinterface.media.ExifInterface;
import io.realm.RealmChangeListener;
import io.realm.RealmModel;
import io.realm.RealmObject;
import io.realm.RealmObjectChangeListener;
import kotlin.Metadata;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��$\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\u001a'\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\u0002H\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005¢\u0006\u0002\u0010\u0006\u001a'\u0010��\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\u0002H\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0007¢\u0006\u0002\u0010\b\u001a\n\u0010\t\u001a\u00020\u0001*\u00020\u0003\u001a\n\u0010\n\u001a\u00020\u000b*\u00020\u0003\u001a\n\u0010\f\u001a\u00020\u000b*\u00020\u0003\u001a\n\u0010\r\u001a\u00020\u000b*\u00020\u0003\u001a\n\u0010\u000e\u001a\u00020\u000b*\u00020\u0003\u001a\n\u0010\u000f\u001a\u00020\u0001*\u00020\u0003\u001a'\u0010\u0010\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\u0002H\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005¢\u0006\u0002\u0010\u0006\u001a'\u0010\u0010\u001a\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\u0002H\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0007¢\u0006\u0002\u0010\b¨\u0006\u0011"}, m815d2 = {"addChangeListener", "", ExifInterface.LONGITUDE_EAST, "Lio/realm/RealmModel;", "listener", "Lio/realm/RealmChangeListener;", "(Lio/realm/RealmModel;Lio/realm/RealmChangeListener;)V", "Lio/realm/RealmObjectChangeListener;", "(Lio/realm/RealmModel;Lio/realm/RealmObjectChangeListener;)V", "deleteFromRealm", "isLoaded", "", "isManaged", "isValid", "load", "removeAllChangeListeners", "removeChangeListener", "realm-kotlin-extensions_baseRelease"}, m814k = 2, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:io/realm/kotlin/RealmModelExtensionsKt.class */
public final class RealmModelExtensionsKt {
    public static final <E extends RealmModel> void addChangeListener(E e, RealmChangeListener<E> realmChangeListener) {
        C15149k.m377b(e, "receiver$0");
        C15149k.m377b(realmChangeListener, "listener");
        RealmObject.addChangeListener(e, realmChangeListener);
    }

    public static final <E extends RealmModel> void addChangeListener(E e, RealmObjectChangeListener<E> realmObjectChangeListener) {
        C15149k.m377b(e, "receiver$0");
        C15149k.m377b(realmObjectChangeListener, "listener");
        RealmObject.addChangeListener(e, realmObjectChangeListener);
    }

    public static final void deleteFromRealm(RealmModel realmModel) {
        C15149k.m377b(realmModel, "receiver$0");
        RealmObject.deleteFromRealm(realmModel);
    }

    public static final boolean isLoaded(RealmModel realmModel) {
        C15149k.m377b(realmModel, "receiver$0");
        return RealmObject.isLoaded(realmModel);
    }

    public static final boolean isManaged(RealmModel realmModel) {
        C15149k.m377b(realmModel, "receiver$0");
        return RealmObject.isManaged(realmModel);
    }

    public static final boolean isValid(RealmModel realmModel) {
        C15149k.m377b(realmModel, "receiver$0");
        return RealmObject.isValid(realmModel);
    }

    public static final boolean load(RealmModel realmModel) {
        C15149k.m377b(realmModel, "receiver$0");
        return RealmObject.load(realmModel);
    }

    public static final void removeAllChangeListeners(RealmModel realmModel) {
        C15149k.m377b(realmModel, "receiver$0");
        RealmObject.removeAllChangeListeners(realmModel);
    }

    public static final <E extends RealmModel> void removeChangeListener(E e, RealmChangeListener<E> realmChangeListener) {
        C15149k.m377b(e, "receiver$0");
        C15149k.m377b(realmChangeListener, "listener");
        RealmObject.removeChangeListener(e, realmChangeListener);
    }

    public static final <E extends RealmModel> void removeChangeListener(E e, RealmObjectChangeListener<E> realmObjectChangeListener) {
        C15149k.m377b(e, "receiver$0");
        C15149k.m377b(realmObjectChangeListener, "listener");
        RealmObject.removeChangeListener(e, realmObjectChangeListener);
    }
}

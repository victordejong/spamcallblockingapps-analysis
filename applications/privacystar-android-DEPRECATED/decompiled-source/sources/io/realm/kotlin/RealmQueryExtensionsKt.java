package io.realm.kotlin;

import com.google.firebase.analytics.FirebaseAnalytics;
import io.realm.Case;
import io.realm.RealmModel;
import io.realm.RealmQuery;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 2}, m255d1 = {"��R\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0005\n��\n\u0002\u0010\u0006\n��\n\u0002\u0010\u0007\n��\n\u0002\u0010\b\n��\n\u0002\u0010\t\n��\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a?\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0010\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\b0\u0007¢\u0006\u0002\u0010\t\u001a?\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0010\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\n0\u0007¢\u0006\u0002\u0010\u000b\u001a?\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0010\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\f0\u0007¢\u0006\u0002\u0010\r\u001a?\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0010\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u000e0\u0007¢\u0006\u0002\u0010\u000f\u001a?\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0010\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00100\u0007¢\u0006\u0002\u0010\u0011\u001a?\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0010\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00120\u0007¢\u0006\u0002\u0010\u0013\u001a?\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0010\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00140\u0007¢\u0006\u0002\u0010\u0015\u001a?\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0010\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00160\u0007¢\u0006\u0002\u0010\u0017\u001aI\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0010\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00050\u00072\b\b\u0002\u0010\u0018\u001a\u00020\u0019¢\u0006\u0002\u0010\u001a¨\u0006\u001b"}, m254d2 = {"oneOf", "Lio/realm/RealmQuery;", "T", "Lio/realm/RealmModel;", "propertyName", "", FirebaseAnalytics.Param.VALUE, "", "Ljava/util/Date;", "(Lio/realm/RealmQuery;Ljava/lang/String;[Ljava/util/Date;)Lio/realm/RealmQuery;", "", "(Lio/realm/RealmQuery;Ljava/lang/String;[Ljava/lang/Boolean;)Lio/realm/RealmQuery;", "", "(Lio/realm/RealmQuery;Ljava/lang/String;[Ljava/lang/Byte;)Lio/realm/RealmQuery;", "", "(Lio/realm/RealmQuery;Ljava/lang/String;[Ljava/lang/Double;)Lio/realm/RealmQuery;", "", "(Lio/realm/RealmQuery;Ljava/lang/String;[Ljava/lang/Float;)Lio/realm/RealmQuery;", "", "(Lio/realm/RealmQuery;Ljava/lang/String;[Ljava/lang/Integer;)Lio/realm/RealmQuery;", "", "(Lio/realm/RealmQuery;Ljava/lang/String;[Ljava/lang/Long;)Lio/realm/RealmQuery;", "", "(Lio/realm/RealmQuery;Ljava/lang/String;[Ljava/lang/Short;)Lio/realm/RealmQuery;", "casing", "Lio/realm/Case;", "(Lio/realm/RealmQuery;Ljava/lang/String;[Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;", "realm-kotlin-extensions_baseRelease"}, m253k = 2, m252mv = {1, 1, 10})
/* loaded from: classes2-dex2jar.jar:io/realm/kotlin/RealmQueryExtensionsKt.class */
public final class RealmQueryExtensionsKt {
    @NotNull
    public static final <T extends RealmModel> RealmQuery<T> oneOf(@NotNull RealmQuery<T> receiver, @NotNull String propertyName, @NotNull Boolean[] value) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(propertyName, "propertyName");
        Intrinsics.checkParameterIsNotNull(value, "value");
        RealmQuery<T> in = receiver.m270in(propertyName, value);
        Intrinsics.checkExpressionValueIsNotNull(in, "this.`in`(propertyName, value)");
        return in;
    }

    @NotNull
    public static final <T extends RealmModel> RealmQuery<T> oneOf(@NotNull RealmQuery<T> receiver, @NotNull String propertyName, @NotNull Byte[] value) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(propertyName, "propertyName");
        Intrinsics.checkParameterIsNotNull(value, "value");
        RealmQuery<T> in = receiver.m269in(propertyName, value);
        Intrinsics.checkExpressionValueIsNotNull(in, "this.`in`(propertyName, value)");
        return in;
    }

    @NotNull
    public static final <T extends RealmModel> RealmQuery<T> oneOf(@NotNull RealmQuery<T> receiver, @NotNull String propertyName, @NotNull Double[] value) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(propertyName, "propertyName");
        Intrinsics.checkParameterIsNotNull(value, "value");
        RealmQuery<T> in = receiver.m268in(propertyName, value);
        Intrinsics.checkExpressionValueIsNotNull(in, "this.`in`(propertyName, value)");
        return in;
    }

    @NotNull
    public static final <T extends RealmModel> RealmQuery<T> oneOf(@NotNull RealmQuery<T> receiver, @NotNull String propertyName, @NotNull Float[] value) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(propertyName, "propertyName");
        Intrinsics.checkParameterIsNotNull(value, "value");
        RealmQuery<T> in = receiver.m267in(propertyName, value);
        Intrinsics.checkExpressionValueIsNotNull(in, "this.`in`(propertyName, value)");
        return in;
    }

    @NotNull
    public static final <T extends RealmModel> RealmQuery<T> oneOf(@NotNull RealmQuery<T> receiver, @NotNull String propertyName, @NotNull Integer[] value) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(propertyName, "propertyName");
        Intrinsics.checkParameterIsNotNull(value, "value");
        RealmQuery<T> in = receiver.m266in(propertyName, value);
        Intrinsics.checkExpressionValueIsNotNull(in, "this.`in`(propertyName, value)");
        return in;
    }

    @NotNull
    public static final <T extends RealmModel> RealmQuery<T> oneOf(@NotNull RealmQuery<T> receiver, @NotNull String propertyName, @NotNull Long[] value) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(propertyName, "propertyName");
        Intrinsics.checkParameterIsNotNull(value, "value");
        RealmQuery<T> in = receiver.m265in(propertyName, value);
        Intrinsics.checkExpressionValueIsNotNull(in, "this.`in`(propertyName, value)");
        return in;
    }

    @NotNull
    public static final <T extends RealmModel> RealmQuery<T> oneOf(@NotNull RealmQuery<T> receiver, @NotNull String propertyName, @NotNull Short[] value) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(propertyName, "propertyName");
        Intrinsics.checkParameterIsNotNull(value, "value");
        RealmQuery<T> in = receiver.m264in(propertyName, value);
        Intrinsics.checkExpressionValueIsNotNull(in, "this.`in`(propertyName, value)");
        return in;
    }

    @NotNull
    public static final <T extends RealmModel> RealmQuery<T> oneOf(@NotNull RealmQuery<T> receiver, @NotNull String propertyName, @NotNull String[] value, @NotNull Case casing) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(propertyName, "propertyName");
        Intrinsics.checkParameterIsNotNull(value, "value");
        Intrinsics.checkParameterIsNotNull(casing, "casing");
        RealmQuery<T> in = receiver.m262in(propertyName, value, casing);
        Intrinsics.checkExpressionValueIsNotNull(in, "this.`in`(propertyName, value, casing)");
        return in;
    }

    @NotNull
    public static final <T extends RealmModel> RealmQuery<T> oneOf(@NotNull RealmQuery<T> receiver, @NotNull String propertyName, @NotNull Date[] value) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(propertyName, "propertyName");
        Intrinsics.checkParameterIsNotNull(value, "value");
        RealmQuery<T> in = receiver.m261in(propertyName, value);
        Intrinsics.checkExpressionValueIsNotNull(in, "this.`in`(propertyName, value)");
        return in;
    }

    @NotNull
    public static /* bridge */ /* synthetic */ RealmQuery oneOf$default(RealmQuery realmQuery, String str, String[] strArr, Case r8, int i, Object obj) {
        if ((i & 4) != 0) {
            r8 = Case.SENSITIVE;
        }
        return oneOf(realmQuery, str, strArr, r8);
    }
}

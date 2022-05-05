package io.realm.kotlin;

import androidx.exifinterface.media.ExifInterface;
import io.realm.Case;
import io.realm.RealmModel;
import io.realm.RealmQuery;
import java.util.Date;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��R\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0005\n��\n\u0002\u0010\u0006\n��\n\u0002\u0010\u0007\n��\n\u0002\u0010\b\n��\n\u0002\u0010\t\n��\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a?\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0010\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\b0\u0007¢\u0006\u0002\u0010\t\u001a?\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0010\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\n0\u0007¢\u0006\u0002\u0010\u000b\u001a?\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0010\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\f0\u0007¢\u0006\u0002\u0010\r\u001a?\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0010\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u000e0\u0007¢\u0006\u0002\u0010\u000f\u001a?\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0010\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00100\u0007¢\u0006\u0002\u0010\u0011\u001a?\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0010\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00120\u0007¢\u0006\u0002\u0010\u0013\u001a?\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0010\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00140\u0007¢\u0006\u0002\u0010\u0015\u001a?\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0010\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00160\u0007¢\u0006\u0002\u0010\u0017\u001aI\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0010\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00050\u00072\b\b\u0002\u0010\u0018\u001a\u00020\u0019¢\u0006\u0002\u0010\u001a¨\u0006\u001b"}, m815d2 = {"oneOf", "Lio/realm/RealmQuery;", ExifInterface.GPS_DIRECTION_TRUE, "Lio/realm/RealmModel;", "propertyName", "", C13032a.f29462d, "", "Ljava/util/Date;", "(Lio/realm/RealmQuery;Ljava/lang/String;[Ljava/util/Date;)Lio/realm/RealmQuery;", "", "(Lio/realm/RealmQuery;Ljava/lang/String;[Ljava/lang/Boolean;)Lio/realm/RealmQuery;", "", "(Lio/realm/RealmQuery;Ljava/lang/String;[Ljava/lang/Byte;)Lio/realm/RealmQuery;", "", "(Lio/realm/RealmQuery;Ljava/lang/String;[Ljava/lang/Double;)Lio/realm/RealmQuery;", "", "(Lio/realm/RealmQuery;Ljava/lang/String;[Ljava/lang/Float;)Lio/realm/RealmQuery;", "", "(Lio/realm/RealmQuery;Ljava/lang/String;[Ljava/lang/Integer;)Lio/realm/RealmQuery;", "", "(Lio/realm/RealmQuery;Ljava/lang/String;[Ljava/lang/Long;)Lio/realm/RealmQuery;", "", "(Lio/realm/RealmQuery;Ljava/lang/String;[Ljava/lang/Short;)Lio/realm/RealmQuery;", "casing", "Lio/realm/Case;", "(Lio/realm/RealmQuery;Ljava/lang/String;[Ljava/lang/String;Lio/realm/Case;)Lio/realm/RealmQuery;", "realm-kotlin-extensions_baseRelease"}, m814k = 2, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:io/realm/kotlin/RealmQueryExtensionsKt.class */
public final class RealmQueryExtensionsKt {
    public static final <T extends RealmModel> RealmQuery<T> oneOf(RealmQuery<T> realmQuery, String str, Boolean[] boolArr) {
        C15149k.m377b(realmQuery, "receiver$0");
        C15149k.m377b(str, "propertyName");
        C15149k.m377b(boolArr, C13032a.f29462d);
        RealmQuery<T> in = realmQuery.m10381in(str, boolArr);
        C15149k.m383a((Object) in, "this.`in`(propertyName, value)");
        return in;
    }

    public static final <T extends RealmModel> RealmQuery<T> oneOf(RealmQuery<T> realmQuery, String str, Byte[] bArr) {
        C15149k.m377b(realmQuery, "receiver$0");
        C15149k.m377b(str, "propertyName");
        C15149k.m377b(bArr, C13032a.f29462d);
        RealmQuery<T> in = realmQuery.m10380in(str, bArr);
        C15149k.m383a((Object) in, "this.`in`(propertyName, value)");
        return in;
    }

    public static final <T extends RealmModel> RealmQuery<T> oneOf(RealmQuery<T> realmQuery, String str, Double[] dArr) {
        C15149k.m377b(realmQuery, "receiver$0");
        C15149k.m377b(str, "propertyName");
        C15149k.m377b(dArr, C13032a.f29462d);
        RealmQuery<T> in = realmQuery.m10379in(str, dArr);
        C15149k.m383a((Object) in, "this.`in`(propertyName, value)");
        return in;
    }

    public static final <T extends RealmModel> RealmQuery<T> oneOf(RealmQuery<T> realmQuery, String str, Float[] fArr) {
        C15149k.m377b(realmQuery, "receiver$0");
        C15149k.m377b(str, "propertyName");
        C15149k.m377b(fArr, C13032a.f29462d);
        RealmQuery<T> in = realmQuery.m10378in(str, fArr);
        C15149k.m383a((Object) in, "this.`in`(propertyName, value)");
        return in;
    }

    public static final <T extends RealmModel> RealmQuery<T> oneOf(RealmQuery<T> realmQuery, String str, Integer[] numArr) {
        C15149k.m377b(realmQuery, "receiver$0");
        C15149k.m377b(str, "propertyName");
        C15149k.m377b(numArr, C13032a.f29462d);
        RealmQuery<T> in = realmQuery.m10377in(str, numArr);
        C15149k.m383a((Object) in, "this.`in`(propertyName, value)");
        return in;
    }

    public static final <T extends RealmModel> RealmQuery<T> oneOf(RealmQuery<T> realmQuery, String str, Long[] lArr) {
        C15149k.m377b(realmQuery, "receiver$0");
        C15149k.m377b(str, "propertyName");
        C15149k.m377b(lArr, C13032a.f29462d);
        RealmQuery<T> in = realmQuery.m10376in(str, lArr);
        C15149k.m383a((Object) in, "this.`in`(propertyName, value)");
        return in;
    }

    public static final <T extends RealmModel> RealmQuery<T> oneOf(RealmQuery<T> realmQuery, String str, Short[] shArr) {
        C15149k.m377b(realmQuery, "receiver$0");
        C15149k.m377b(str, "propertyName");
        C15149k.m377b(shArr, C13032a.f29462d);
        RealmQuery<T> in = realmQuery.m10375in(str, shArr);
        C15149k.m383a((Object) in, "this.`in`(propertyName, value)");
        return in;
    }

    public static final <T extends RealmModel> RealmQuery<T> oneOf(RealmQuery<T> realmQuery, String str, String[] strArr, Case r8) {
        C15149k.m377b(realmQuery, "receiver$0");
        C15149k.m377b(str, "propertyName");
        C15149k.m377b(strArr, C13032a.f29462d);
        C15149k.m377b(r8, "casing");
        RealmQuery<T> in = realmQuery.m10373in(str, strArr, r8);
        C15149k.m383a((Object) in, "this.`in`(propertyName, value, casing)");
        return in;
    }

    public static final <T extends RealmModel> RealmQuery<T> oneOf(RealmQuery<T> realmQuery, String str, Date[] dateArr) {
        C15149k.m377b(realmQuery, "receiver$0");
        C15149k.m377b(str, "propertyName");
        C15149k.m377b(dateArr, C13032a.f29462d);
        RealmQuery<T> in = realmQuery.m10372in(str, dateArr);
        C15149k.m383a((Object) in, "this.`in`(propertyName, value)");
        return in;
    }

    public static /* synthetic */ RealmQuery oneOf$default(RealmQuery realmQuery, String str, String[] strArr, Case r8, int i, Object obj) {
        if ((i & 4) != 0) {
            r8 = Case.SENSITIVE;
        }
        return oneOf(realmQuery, str, strArr, r8);
    }
}

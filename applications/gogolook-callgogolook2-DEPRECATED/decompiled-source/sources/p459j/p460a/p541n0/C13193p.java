package p459j.p460a.p541n0;

import androidx.exifinterface.media.ExifInterface;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmObject;
import io.realm.RealmQuery;
import io.realm.exceptions.RealmError;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.Metadata;
import p459j.p460a.p582w0.C13973d4;
import p626l.C14989s;
import p626l.p640y.C15086c;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15164z;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018��2\u00020\u0001:\u0001*B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0006\u001a\u00020\u00072\u000e\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\fH\u0007JU\u0010\r\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\u000e2\u000e\u0010\u000f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\u000e2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00112\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00112\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0011H\u0007¢\u0006\u0002\u0010\u0015J'\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u00112\u0012\u0010\u0010\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0011\"\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0017J'\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00010\u00112\u0012\u0010\u0012\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0011\"\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0019J'\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00140\u00112\u0012\u0010\u001b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u0011\"\u00020\u0014H\u0007¢\u0006\u0002\u0010\u001cJ\u0016\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0007J\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u000b\u001a\u00020\fH\u0002J@\u0010 \u001a\u0004\u0018\u0001H!\"\u0004\b��\u0010!2\u0006\u0010\u000b\u001a\u00020\f2!\u0010\"\u001a\u001d\u0012\u0013\u0012\u00110\u001e¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(&\u0012\u0004\u0012\u0002H!0#H\u0007¢\u0006\u0002\u0010'J@\u0010(\u001a\u0004\u0018\u0001H!\"\u0004\b��\u0010!2\u0006\u0010\u000b\u001a\u00020\f2!\u0010)\u001a\u001d\u0012\u0013\u0012\u00110\u001e¢\u0006\f\b$\u0012\b\b%\u0012\u0004\b\b(&\u0012\u0004\u0012\u0002H!0#H\u0007¢\u0006\u0002\u0010'R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006+"}, m815d2 = {"Lgogolook/callgogolook2/realm/RealmHelper;", "", "()V", "LOG_TAG", "", "kotlin.jvm.PlatformType", "dropTable", "", "realmClass", "Ljava/lang/Class;", "Lio/realm/RealmObject;", "config", "Lio/realm/RealmConfiguration;", "generateRealmQuery", "Lio/realm/RealmQuery;", "realmQuery", "fieldNames", "", "fields", "querys", "Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;", "(Lio/realm/RealmQuery;[Ljava/lang/String;[Ljava/lang/Object;[Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;)Lio/realm/RealmQuery;", "getFieldNamesArray", "([Ljava/lang/String;)[Ljava/lang/String;", "getFieldsArray", "([Ljava/lang/Object;)[Ljava/lang/Object;", "getQuerryTypeArray", "realmQuerys", "([Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;)[Lgogolook/callgogolook2/realm/RealmHelper$RealmQuery;", "getRealmDb", "Lio/realm/Realm;", "getRealmInstance", "operateRealm", ExifInterface.GPS_DIRECTION_TRUE, "operation", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "realm", "(Lio/realm/RealmConfiguration;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "readRealm", "read", "RealmQuery", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.n0.p */
/* loaded from: classes3-dex2jar.jar:j/a/n0/p.class */
public final class C13193p {

    /* renamed from: a */
    public static final C13193p f29732a = new C13193p();

    /* renamed from: j.a.n0.p$a */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/p$a.class */
    public enum EnumC13194a {
        NOT_EQUAL_TO,
        EQUAL_TO,
        OR_EQUAL_TO,
        OR_NOT_EQUAL_TO,
        IS_EMPTY,
        GREATHER_THAN,
        OR_GREATHER_THAN
    }

    /* renamed from: j.a.n0.p$b */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/p$b.class */
    public static final class C13195b extends AbstractC15150l implements AbstractC15118l<Realm, Boolean> {

        /* renamed from: a */
        public final /* synthetic */ Class f29741a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13195b(Class cls) {
            super(1);
            this.f29741a = cls;
        }

        /* renamed from: a */
        public final boolean m4434a(Realm realm) {
            C15149k.m377b(realm, "it");
            return realm.where(this.f29741a).findAll().deleteAllFromRealm();
        }

        @Override // p626l.p641z.p642c.AbstractC15118l
        public /* bridge */ /* synthetic */ Boolean invoke(Realm realm) {
            return Boolean.valueOf(m4434a(realm));
        }
    }

    /* renamed from: j.a.n0.p$c */
    /* loaded from: classes3-dex2jar.jar:j/a/n0/p$c.class */
    public static final class C13196c implements Realm.Transaction {

        /* renamed from: a */
        public final /* synthetic */ C15164z f29742a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC15118l f29743b;

        public C13196c(C15164z zVar, AbstractC15118l lVar) {
            this.f29742a = zVar;
            this.f29743b = lVar;
        }

        /* JADX WARN: Type inference failed for: r1v2, types: [T, java.lang.Object] */
        @Override // io.realm.Realm.Transaction
        public final void execute(Realm realm) {
            try {
                C15164z zVar = this.f29742a;
                AbstractC15118l lVar = this.f29743b;
                C15149k.m383a((Object) realm, "realm");
                zVar.f33152a = lVar.invoke(realm);
            } catch (Exception e) {
                C13973d4.m2952a(e);
            }
        }
    }

    /* renamed from: a */
    public static final RealmQuery<? extends RealmObject> m4441a(RealmQuery<? extends RealmObject> realmQuery, String[] strArr, Object[] objArr, EnumC13194a[] aVarArr) {
        C15149k.m377b(realmQuery, "realmQuery");
        RealmQuery<? extends RealmObject> realmQuery2 = realmQuery;
        if (objArr != null) {
            ArrayList arrayList = new ArrayList(objArr.length);
            int length = objArr.length;
            int i = 0;
            int i2 = 0;
            while (true) {
                realmQuery2 = realmQuery;
                if (i < length) {
                    Object obj = objArr[i];
                    if (obj instanceof Long) {
                        if (aVarArr == null || strArr == null) {
                            realmQuery = realmQuery;
                        } else {
                            realmQuery = realmQuery;
                            if (aVarArr.length == objArr.length) {
                                realmQuery = realmQuery;
                                if (objArr.length == strArr.length) {
                                    switch (C13197q.f29744a[aVarArr[i2].ordinal()]) {
                                        case 1:
                                            realmQuery = realmQuery.notEqualTo(strArr[i2], (Long) obj);
                                            C15149k.m383a((Object) realmQuery, "query.notEqualTo(fieldNames[index], field)");
                                            continue;
                                        case 2:
                                            realmQuery = realmQuery.equalTo(strArr[i2], (Long) obj);
                                            C15149k.m383a((Object) realmQuery, "query.equalTo(fieldNames[index], field)");
                                            continue;
                                        case 3:
                                            realmQuery = realmQuery.m10371or().equalTo(strArr[i2], (Long) obj);
                                            C15149k.m383a((Object) realmQuery, "query.or().equalTo(fieldNames[index], field)");
                                            continue;
                                        case 4:
                                            realmQuery = realmQuery.m10371or().notEqualTo(strArr[i2], (Long) obj);
                                            C15149k.m383a((Object) realmQuery, "query.or().notEqualTo(fieldNames[index], field)");
                                            continue;
                                        case 5:
                                            realmQuery = realmQuery.greaterThan(strArr[i2], ((Number) obj).longValue());
                                            C15149k.m383a((Object) realmQuery, "query.greaterThan(fieldNames[index], field)");
                                            continue;
                                        case 6:
                                            realmQuery = realmQuery.m10371or().greaterThan(strArr[i2], ((Number) obj).longValue());
                                            C15149k.m383a((Object) realmQuery, "query.or().greaterThan(fieldNames[index], field)");
                                            continue;
                                        default:
                                            throw new Throwable("Should provide query type");
                                    }
                                } else {
                                    continue;
                                }
                            } else {
                                continue;
                            }
                        }
                    } else if (obj instanceof Integer) {
                        realmQuery = realmQuery;
                        if (aVarArr != null) {
                            realmQuery = realmQuery;
                            if (strArr != null) {
                                realmQuery = realmQuery;
                                if (aVarArr.length == objArr.length) {
                                    realmQuery = realmQuery;
                                    if (objArr.length == strArr.length) {
                                        switch (C13197q.f29745b[aVarArr[i2].ordinal()]) {
                                            case 1:
                                                realmQuery = realmQuery.notEqualTo(strArr[i2], (Integer) obj);
                                                C15149k.m383a((Object) realmQuery, "query.notEqualTo(fieldNames[index], field)");
                                                continue;
                                            case 2:
                                                realmQuery = realmQuery.equalTo(strArr[i2], (Integer) obj);
                                                C15149k.m383a((Object) realmQuery, "query.equalTo(fieldNames[index], field)");
                                                continue;
                                            case 3:
                                                realmQuery = realmQuery.m10371or().equalTo(strArr[i2], (Integer) obj);
                                                C15149k.m383a((Object) realmQuery, "query.or().equalTo(fieldNames[index], field)");
                                                continue;
                                            case 4:
                                                realmQuery = realmQuery.m10371or().notEqualTo(strArr[i2], (Integer) obj);
                                                C15149k.m383a((Object) realmQuery, "query.or().notEqualTo(fieldNames[index], field)");
                                                continue;
                                            case 5:
                                                realmQuery = realmQuery.greaterThan(strArr[i2], ((Number) obj).intValue());
                                                C15149k.m383a((Object) realmQuery, "query.greaterThan(fieldNames[index], field)");
                                                continue;
                                            case 6:
                                                realmQuery = realmQuery.m10371or().greaterThan(strArr[i2], ((Number) obj).intValue());
                                                C15149k.m383a((Object) realmQuery, "query.or().greaterThan(fieldNames[index], field)");
                                                continue;
                                            default:
                                                throw new Throwable("Should provide query type");
                                        }
                                    } else {
                                        continue;
                                    }
                                } else {
                                    continue;
                                }
                            } else {
                                continue;
                            }
                        } else {
                            continue;
                        }
                    } else if (obj instanceof Boolean) {
                        realmQuery = realmQuery;
                        if (aVarArr != null) {
                            realmQuery = realmQuery;
                            if (strArr != null) {
                                realmQuery = realmQuery;
                                if (aVarArr.length == objArr.length) {
                                    realmQuery = realmQuery;
                                    if (objArr.length == strArr.length) {
                                        int i3 = C13197q.f29746c[aVarArr[i2].ordinal()];
                                        if (i3 == 1) {
                                            realmQuery = realmQuery.notEqualTo(strArr[i2], (Boolean) obj);
                                            C15149k.m383a((Object) realmQuery, "query.notEqualTo(fieldNames[index], field)");
                                        } else if (i3 == 2) {
                                            realmQuery = realmQuery.equalTo(strArr[i2], (Boolean) obj);
                                            C15149k.m383a((Object) realmQuery, "query.equalTo(fieldNames[index], field)");
                                        } else if (i3 == 3) {
                                            realmQuery = realmQuery.m10371or().equalTo(strArr[i2], (Boolean) obj);
                                            C15149k.m383a((Object) realmQuery, "query.or().equalTo(fieldNames[index], field)");
                                        } else if (i3 == 4) {
                                            realmQuery = realmQuery.m10371or().notEqualTo(strArr[i2], (Boolean) obj);
                                            C15149k.m383a((Object) realmQuery, "query.or().notEqualTo(fieldNames[index], field)");
                                        } else {
                                            throw new Throwable("Should provide query type");
                                        }
                                    } else {
                                        continue;
                                    }
                                } else {
                                    continue;
                                }
                            } else {
                                continue;
                            }
                        } else {
                            continue;
                        }
                    } else if (obj instanceof Double) {
                        realmQuery = realmQuery;
                        if (aVarArr != null) {
                            realmQuery = realmQuery;
                            if (strArr != null) {
                                realmQuery = realmQuery;
                                if (aVarArr.length == objArr.length) {
                                    realmQuery = realmQuery;
                                    if (objArr.length == strArr.length) {
                                        switch (C13197q.f29747d[aVarArr[i2].ordinal()]) {
                                            case 1:
                                                realmQuery = realmQuery.notEqualTo(strArr[i2], (Double) obj);
                                                C15149k.m383a((Object) realmQuery, "query.notEqualTo(fieldNames[index], field)");
                                                continue;
                                            case 2:
                                                realmQuery = realmQuery.equalTo(strArr[i2], (Double) obj);
                                                C15149k.m383a((Object) realmQuery, "query.equalTo(fieldNames[index], field)");
                                                continue;
                                            case 3:
                                                realmQuery = realmQuery.m10371or().equalTo(strArr[i2], (Double) obj);
                                                C15149k.m383a((Object) realmQuery, "query.or().equalTo(fieldNames[index], field)");
                                                continue;
                                            case 4:
                                                realmQuery = realmQuery.m10371or().notEqualTo(strArr[i2], (Double) obj);
                                                C15149k.m383a((Object) realmQuery, "query.or().notEqualTo(fieldNames[index], field)");
                                                continue;
                                            case 5:
                                                realmQuery = realmQuery.greaterThan(strArr[i2], ((Number) obj).doubleValue());
                                                C15149k.m383a((Object) realmQuery, "query.greaterThan(fieldNames[index], field)");
                                                continue;
                                            case 6:
                                                realmQuery = realmQuery.m10371or().greaterThan(strArr[i2], ((Number) obj).doubleValue());
                                                C15149k.m383a((Object) realmQuery, "query.or().greaterThan(fieldNames[index], field)");
                                                continue;
                                            default:
                                                throw new Throwable("Should provide query type");
                                        }
                                    } else {
                                        continue;
                                    }
                                } else {
                                    continue;
                                }
                            } else {
                                continue;
                            }
                        } else {
                            continue;
                        }
                    } else if (obj instanceof Float) {
                        realmQuery = realmQuery;
                        if (aVarArr != null) {
                            realmQuery = realmQuery;
                            if (strArr != null) {
                                realmQuery = realmQuery;
                                if (aVarArr.length == objArr.length) {
                                    realmQuery = realmQuery;
                                    if (objArr.length == strArr.length) {
                                        switch (C13197q.f29748e[aVarArr[i2].ordinal()]) {
                                            case 1:
                                                realmQuery = realmQuery.notEqualTo(strArr[i2], (Float) obj);
                                                C15149k.m383a((Object) realmQuery, "query.notEqualTo(fieldNames[index], field)");
                                                continue;
                                            case 2:
                                                realmQuery = realmQuery.equalTo(strArr[i2], (Float) obj);
                                                C15149k.m383a((Object) realmQuery, "query.equalTo(fieldNames[index], field)");
                                                continue;
                                            case 3:
                                                realmQuery = realmQuery.m10371or().equalTo(strArr[i2], (Float) obj);
                                                C15149k.m383a((Object) realmQuery, "query.or().equalTo(fieldNames[index], field)");
                                                continue;
                                            case 4:
                                                realmQuery = realmQuery.m10371or().notEqualTo(strArr[i2], (Float) obj);
                                                C15149k.m383a((Object) realmQuery, "query.or().notEqualTo(fieldNames[index], field)");
                                                continue;
                                            case 5:
                                                realmQuery = realmQuery.greaterThan(strArr[i2], ((Number) obj).floatValue());
                                                C15149k.m383a((Object) realmQuery, "query.greaterThan(fieldNames[index], field)");
                                                continue;
                                            case 6:
                                                realmQuery = realmQuery.m10371or().greaterThan(strArr[i2], ((Number) obj).floatValue());
                                                C15149k.m383a((Object) realmQuery, "query.or().greaterThan(fieldNames[index], field)");
                                                continue;
                                            default:
                                                throw new Throwable("Should provide query type");
                                        }
                                    } else {
                                        continue;
                                    }
                                } else {
                                    continue;
                                }
                            } else {
                                continue;
                            }
                        } else {
                            continue;
                        }
                    } else if (obj instanceof String) {
                        realmQuery = realmQuery;
                        if (aVarArr != null) {
                            realmQuery = realmQuery;
                            if (strArr != null) {
                                realmQuery = realmQuery;
                                if (aVarArr.length == objArr.length) {
                                    realmQuery = realmQuery;
                                    if (objArr.length == strArr.length) {
                                        int i4 = C13197q.f29749f[aVarArr[i2].ordinal()];
                                        if (i4 == 1) {
                                            realmQuery = realmQuery.notEqualTo(strArr[i2], (String) obj);
                                            C15149k.m383a((Object) realmQuery, "query.notEqualTo(fieldNames[index], field)");
                                        } else if (i4 == 2) {
                                            realmQuery = realmQuery.equalTo(strArr[i2], (String) obj);
                                            C15149k.m383a((Object) realmQuery, "query.equalTo(fieldNames[index], field)");
                                        } else if (i4 == 3) {
                                            realmQuery = realmQuery.m10371or().equalTo(strArr[i2], (String) obj);
                                            C15149k.m383a((Object) realmQuery, "query.or().equalTo(fieldNames[index], field)");
                                        } else if (i4 == 4) {
                                            realmQuery = realmQuery.m10371or().notEqualTo(strArr[i2], (String) obj);
                                            C15149k.m383a((Object) realmQuery, "query.or().notEqualTo(fieldNames[index], field)");
                                        } else if (i4 == 5) {
                                            realmQuery = realmQuery.isEmpty(strArr[i2]);
                                            C15149k.m383a((Object) realmQuery, "query.isEmpty(fieldNames[index])");
                                        } else {
                                            throw new Throwable("Should provide query type");
                                        }
                                    } else {
                                        continue;
                                    }
                                } else {
                                    continue;
                                }
                            } else {
                                continue;
                            }
                        } else {
                            continue;
                        }
                    } else if (obj instanceof Byte) {
                        realmQuery = realmQuery;
                        if (aVarArr != null) {
                            realmQuery = realmQuery;
                            if (strArr != null) {
                                realmQuery = realmQuery;
                                if (aVarArr.length == objArr.length) {
                                    realmQuery = realmQuery;
                                    if (objArr.length == strArr.length) {
                                        int i5 = C13197q.f29750g[aVarArr[i2].ordinal()];
                                        if (i5 == 1) {
                                            realmQuery = realmQuery.notEqualTo(strArr[i2], (Byte) obj);
                                            C15149k.m383a((Object) realmQuery, "query.notEqualTo(fieldNames[index], field)");
                                        } else if (i5 == 2) {
                                            realmQuery = realmQuery.equalTo(strArr[i2], (Byte) obj);
                                            C15149k.m383a((Object) realmQuery, "query.equalTo(fieldNames[index], field)");
                                        } else if (i5 == 3) {
                                            realmQuery = realmQuery.m10371or().equalTo(strArr[i2], (Byte) obj);
                                            C15149k.m383a((Object) realmQuery, "query.or().equalTo(fieldNames[index], field)");
                                        } else if (i5 == 4) {
                                            realmQuery = realmQuery.m10371or().notEqualTo(strArr[i2], (Byte) obj);
                                            C15149k.m383a((Object) realmQuery, "query.or().notEqualTo(fieldNames[index], field)");
                                        } else if (i5 == 5) {
                                            realmQuery = realmQuery.isEmpty(strArr[i2]);
                                            C15149k.m383a((Object) realmQuery, "query.isEmpty(fieldNames[index])");
                                        } else {
                                            throw new Throwable("Should provide query type");
                                        }
                                    } else {
                                        continue;
                                    }
                                } else {
                                    continue;
                                }
                            } else {
                                continue;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        C13973d4.m2952a(new Throwable("Not support query type"));
                        realmQuery = realmQuery;
                    }
                    arrayList.add(C14989s.f33022a);
                    i++;
                    i2++;
                }
            }
        }
        return realmQuery2;
    }

    /* renamed from: a */
    public static final <T> T m4442a(RealmConfiguration realmConfiguration, AbstractC15118l<? super Realm, ? extends T> lVar) {
        T t;
        C15149k.m377b(realmConfiguration, "config");
        C15149k.m377b(lVar, "operation");
        Realm a = f29732a.m4443a(realmConfiguration);
        if (a != null) {
            try {
                C15164z zVar = new C15164z();
                zVar.f33152a = null;
                a.executeTransaction(new C13196c(zVar, lVar));
                t = zVar.f33152a;
                th = null;
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        } else {
            t = null;
        }
        return t;
    }

    /* renamed from: a */
    public static final boolean m4440a(Class<? extends RealmObject> cls, RealmConfiguration realmConfiguration) {
        C15149k.m377b(cls, "realmClass");
        C15149k.m377b(realmConfiguration, "config");
        Boolean bool = (Boolean) m4442a(realmConfiguration, new C13195b(cls));
        return bool != null ? bool.booleanValue() : false;
    }

    /* renamed from: a */
    public static final EnumC13194a[] m4439a(EnumC13194a... aVarArr) {
        C15149k.m377b(aVarArr, "realmQuerys");
        return (EnumC13194a[]) Arrays.copyOf(aVarArr, aVarArr.length);
    }

    /* renamed from: a */
    public static final Object[] m4438a(Object... objArr) {
        C15149k.m377b(objArr, "fields");
        return Arrays.copyOf(objArr, objArr.length);
    }

    /* renamed from: a */
    public static final String[] m4437a(String... strArr) {
        C15149k.m377b(strArr, "fieldNames");
        return (String[]) Arrays.copyOf(strArr, strArr.length);
    }

    /* renamed from: b */
    public static final Realm m4436b(RealmConfiguration realmConfiguration) {
        if (realmConfiguration != null) {
            return f29732a.m4443a(realmConfiguration);
        }
        return null;
    }

    /* renamed from: b */
    public static final <T> T m4435b(RealmConfiguration realmConfiguration, AbstractC15118l<? super Realm, ? extends T> lVar) {
        T t;
        C15149k.m377b(realmConfiguration, "config");
        C15149k.m377b(lVar, "read");
        Realm a = f29732a.m4443a(realmConfiguration);
        try {
            if (a != null) {
                try {
                    t = (T) lVar.invoke(a);
                } catch (Exception e) {
                    C13973d4.m2952a(e);
                    t = null;
                }
                Throwable th = null;
            } else {
                t = null;
            }
            return t;
        } catch (Throwable th2) {
            try {
                throw th2;
            } finally {
                C15086c.m447a(a, th2);
            }
        }
    }

    /* renamed from: a */
    public final Realm m4443a(RealmConfiguration realmConfiguration) {
        try {
            return Realm.getInstance(realmConfiguration);
        } catch (RealmError e) {
            C13973d4.m2952a(e);
            return null;
        } catch (Exception e2) {
            C13973d4.m2952a(e2);
            return null;
        }
    }
}

package com.truecaller.flashsdk.p165db;

import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.huawei.hms.actions.SearchIntents;
import kotlin.Metadata;
import p1727n3.p1751c0.AbstractC25677q;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1365y.p1386d.AbstractC21702d;
import p193e.p194a.p1365y.p1386d.C21703e;
import p193e.p194a.p1365y.p1386d.C21719l;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b#\u0010$J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004JM\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0006\u001a\u00020\u00052\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\b2\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\b\u0010\f\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0010\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J#\u0010\u0014\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J1\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\b2\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J;\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\u0010\n\u001a\u0004\u0018\u00010\b2\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b \u0010!¨\u0006%"}, d2 = {"Lcom/truecaller/flashsdk/db/FlashProvider;", "Landroid/content/ContentProvider;", "", "onCreate", "()Z", "Landroid/net/Uri;", "uri", "", "", "projection", "selection", "selectionArgs", "sortOrder", "Landroid/database/Cursor;", SearchIntents.EXTRA_QUERY, "(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;", "getType", "(Landroid/net/Uri;)Ljava/lang/String;", "Landroid/content/ContentValues;", "values", "insert", "(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;", "", "delete", "(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I", "update", "(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I", "Landroid/content/UriMatcher;", "a", "Landroid/content/UriMatcher;", "sURIMatcher", "Le/a/y/d/d;", C22021b.f61237c, "Le/a/y/d/d;", "flashDaoManager", "<init>", "()V", "flash_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.flashsdk.db.FlashProvider */
/* loaded from: classes9-dex2jar.jar:com/truecaller/flashsdk/db/FlashProvider.class */
public final class FlashProvider extends ContentProvider {

    /* renamed from: a */
    public final UriMatcher f11988a;

    /* renamed from: b */
    public AbstractC21702d f11989b;

    public FlashProvider() {
        UriMatcher uriMatcher = new UriMatcher(-1);
        this.f11988a = uriMatcher;
        Uri uri = C21719l.f60509a;
        uriMatcher.addURI("com.truecaller.flashsdk.provider", "flash_state", 100);
        uriMatcher.addURI("com.truecaller.flashsdk.provider", "flash_cache", 200);
        uriMatcher.addURI("com.truecaller.flashsdk.provider", "flash_state/*", 101);
        uriMatcher.addURI("com.truecaller.flashsdk.provider", "currentFlashes", 102);
        uriMatcher.addURI("com.truecaller.flashsdk.provider", "cacheNumbers", 201);
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        int i;
        ContentResolver contentResolver;
        String str2;
        l.e(uri, "uri");
        int match = this.f11988a.match(uri);
        if (match == 100) {
            AbstractC21702d abstractC21702d = this.f11989b;
            if (abstractC21702d == null) {
                l.l("flashDaoManager");
                throw null;
            } else if (strArr == null || (str2 = strArr[0]) == null) {
                return 0;
            } else {
                i = abstractC21702d.mo9191b(str2);
            }
        } else if (match == 101) {
            String lastPathSegment = uri.getLastPathSegment();
            if (lastPathSegment == null) {
                return 0;
            }
            l.d(lastPathSegment, "uri.lastPathSegment ?: return 0");
            AbstractC21702d abstractC21702d2 = this.f11989b;
            if (abstractC21702d2 == null) {
                l.l("flashDaoManager");
                throw null;
            }
            i = abstractC21702d2.mo9191b(lastPathSegment);
        } else if (match != 200) {
            throw new IllegalArgumentException("Unknown URI");
        } else {
            AbstractC21702d abstractC21702d3 = this.f11989b;
            if (abstractC21702d3 == null) {
                l.l("flashDaoManager");
                throw null;
            }
            i = abstractC21702d3.mo9190c(strArr);
        }
        Context context = getContext();
        if (context != null && (contentResolver = context.getContentResolver()) != null) {
            contentResolver.notifyChange(uri, null);
        }
        return i;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        l.e(uri, "uri");
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        char c;
        String str;
        ContentResolver contentResolver;
        l.e(uri, "uri");
        int match = this.f11988a.match(uri);
        if (match == 100) {
            AbstractC21702d abstractC21702d = this.f11989b;
            if (abstractC21702d == null) {
                l.l("flashDaoManager");
                throw null;
            }
            c = abstractC21702d.mo9185h(contentValues);
            Uri uri2 = C21719l.f60509a;
            str = "flash_state";
        } else if (match != 200) {
            throw new IllegalArgumentException("Unknown URI");
        } else {
            AbstractC21702d abstractC21702d2 = this.f11989b;
            if (abstractC21702d2 == null) {
                l.l("flashDaoManager");
                throw null;
            }
            c = abstractC21702d2.mo9189d(contentValues);
            Uri uri3 = C21719l.f60509a;
            str = "flash_cache";
        }
        Context context = getContext();
        if (context != null && (contentResolver = context.getContentResolver()) != null) {
            contentResolver.notifyChange(uri, null);
        }
        return Uri.parse(str + '/' + ((long) c));
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        AbstractC25677q.C25678a m43274R = MediaSessionCompat.m43274R(AbstractApplicationC8442a.m28551L(), FlashDatabase.class, "flashSdkDb");
        m43274R.m3063d();
        AbstractC25677q m3064c = m43274R.m3064c();
        l.d(m3064c, "Room.databaseBuilder(\n  …on()\n            .build()");
        this.f11989b = new C21703e(((FlashDatabase) m3064c).mo35394a());
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Cursor cursor;
        String str3;
        l.e(uri, "uri");
        int match = this.f11988a.match(uri);
        ContentResolver contentResolver = null;
        if (match == 200) {
            AbstractC21702d abstractC21702d = this.f11989b;
            if (abstractC21702d == null) {
                l.l("flashDaoManager");
                throw null;
            }
            cursor = abstractC21702d.mo9188e();
        } else if (match != 201) {
            switch (match) {
                case 100:
                    AbstractC21702d abstractC21702d2 = this.f11989b;
                    if (abstractC21702d2 == null) {
                        l.l("flashDaoManager");
                        throw null;
                    } else if (strArr2 != null && (str3 = strArr2[0]) != null) {
                        cursor = abstractC21702d2.mo9192a(str3);
                        break;
                    } else {
                        return null;
                    }
                case 101:
                    AbstractC21702d abstractC21702d3 = this.f11989b;
                    if (abstractC21702d3 == null) {
                        l.l("flashDaoManager");
                        throw null;
                    }
                    String lastPathSegment = uri.getLastPathSegment();
                    if (lastPathSegment == null) {
                        return null;
                    }
                    l.d(lastPathSegment, "uri.lastPathSegment ?: return null");
                    cursor = abstractC21702d3.mo9192a(lastPathSegment);
                    break;
                case 102:
                    AbstractC21702d abstractC21702d4 = this.f11989b;
                    if (abstractC21702d4 == null) {
                        l.l("flashDaoManager");
                        throw null;
                    }
                    cursor = abstractC21702d4.mo9187f();
                    break;
                default:
                    C10480a.m26061I1(new IllegalArgumentException("Unknown URI"));
                    cursor = null;
                    break;
            }
        } else {
            AbstractC21702d abstractC21702d5 = this.f11989b;
            if (abstractC21702d5 == null) {
                l.l("flashDaoManager");
                throw null;
            }
            cursor = abstractC21702d5.mo9183j(strArr2);
        }
        if (cursor != null) {
            Context context = getContext();
            if (context != null) {
                contentResolver = context.getContentResolver();
            }
            cursor.setNotificationUri(contentResolver, uri);
        }
        return cursor;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        int i;
        ContentResolver contentResolver;
        String str2;
        String str3;
        l.e(uri, "uri");
        int match = this.f11988a.match(uri);
        if (match == 100) {
            AbstractC21702d abstractC21702d = this.f11989b;
            if (abstractC21702d == null) {
                l.l("flashDaoManager");
                throw null;
            } else if (strArr == null || (str2 = strArr[0]) == null) {
                return 0;
            } else {
                i = abstractC21702d.mo9186g(str2, contentValues);
            }
        } else if (match == 101) {
            String lastPathSegment = uri.getLastPathSegment();
            if (lastPathSegment == null) {
                return 0;
            }
            l.d(lastPathSegment, "uri.lastPathSegment ?: return 0");
            AbstractC21702d abstractC21702d2 = this.f11989b;
            if (abstractC21702d2 == null) {
                l.l("flashDaoManager");
                throw null;
            }
            i = abstractC21702d2.mo9186g(lastPathSegment, contentValues);
        } else if (match != 200) {
            throw new IllegalArgumentException("Unknown URI");
        } else {
            AbstractC21702d abstractC21702d3 = this.f11989b;
            if (abstractC21702d3 == null) {
                l.l("flashDaoManager");
                throw null;
            } else if (strArr == null || (str3 = strArr[0]) == null) {
                return 0;
            } else {
                i = abstractC21702d3.mo9184i(str3, contentValues);
            }
        }
        Context context = getContext();
        if (context != null && (contentResolver = context.getContentResolver()) != null) {
            contentResolver.notifyChange(uri, null);
        }
        return i;
    }
}

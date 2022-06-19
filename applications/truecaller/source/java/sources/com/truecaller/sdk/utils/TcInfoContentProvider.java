package com.truecaller.sdk.utils;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import com.huawei.hms.actions.SearchIntents;
import com.huawei.hms.opendevice.AbstractC2405c;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p413i.p415f.C8472b;
import s1.f0.r;
import s1.f0.v;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0011\n��\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0016\u0018��2\u00020\u0001:\u0001+B\u0007¢\u0006\u0004\b1\u00102J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J#\u0010\t\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ;\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J1\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0015JM\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r2\b\u0010\u0017\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ=\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0004\b\u0019\u0010\u001fR\u0016\u0010\"\u001a\u00020\u00058\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010$\u001a\u00020\u00058\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b#\u0010!R\u0016\u0010&\u001a\u00020\u00058\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b%\u0010!R\u0016\u0010(\u001a\u00020\u00058\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b'\u0010!R\u0016\u0010*\u001a\u00020\u00058\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b)\u0010!R\"\u00100\u001a\u00020\u00058\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b+\u0010!\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/¨\u00063"}, d2 = {"Lcom/truecaller/sdk/utils/TcInfoContentProvider;", "Landroid/content/ContentProvider;", "", "onCreate", "()Z", "Landroid/net/Uri;", "uri", "Landroid/content/ContentValues;", "values", "insert", "(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;", "", "selection", "", "selectionArgs", "", "update", "(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I", "delete", "(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I", "getType", "(Landroid/net/Uri;)Ljava/lang/String;", "projection", "sortOrder", "Landroid/database/Cursor;", SearchIntents.EXTRA_QUERY, "(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;", "Landroid/os/Bundle;", "queryArgs", "Landroid/os/CancellationSignal;", "cancellationSignal", "(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;", "f", "Landroid/net/Uri;", "oAuthBlacklistedDevicesUri", C22021b.f61237c, "accountStateLegacyUri", "d", "oAuthUri", AbstractC2405c.f7629a, "bottomSheetUri", "e", "oneTapUri", "a", "getAccountStateUri", "()Landroid/net/Uri;", "setAccountStateUri", "(Landroid/net/Uri;)V", "accountStateUri", "<init>", "()V", "sdk-internal_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/utils/TcInfoContentProvider.class */
public final class TcInfoContentProvider extends ContentProvider {

    /* renamed from: a */
    public Uri f14578a;

    /* renamed from: b */
    public Uri f14579b;

    /* renamed from: c */
    public Uri f14580c;

    /* renamed from: d */
    public Uri f14581d;

    /* renamed from: e */
    public Uri f14582e;

    /* renamed from: f */
    public Uri f14583f;

    /* renamed from: com.truecaller.sdk.utils.TcInfoContentProvider$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/utils/TcInfoContentProvider$a.class */
    public interface AbstractC4436a {
        /* renamed from: n2 */
        AbstractC19230g mo12279n2();

        /* renamed from: x */
        C20592g mo9763x();
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        l.e(uri, "uri");
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        l.e(uri, "uri");
        return "vnd.android.cursor.item/";
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        l.e(uri, "uri");
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        StringBuilder m8728C = C22128a.m8728C("content://");
        String m28498f = C8472b.m28498f(getContext(), TcInfoContentProvider.class);
        l.d(m28498f, "ProviderUtil.getAuthorit…(context, this.javaClass)");
        m8728C.append((String) v.U(m28498f, new String[]{";"}, false, 0, 6).get(0));
        Uri parse = Uri.parse(m8728C.toString());
        StringBuilder m8728C2 = C22128a.m8728C("content://");
        String m28498f2 = C8472b.m28498f(getContext(), TcInfoContentProvider.class);
        l.d(m28498f2, "ProviderUtil.getAuthorit…(context, this.javaClass)");
        m8728C2.append((String) v.U(m28498f2, new String[]{";"}, false, 0, 6).get(1));
        Uri parse2 = Uri.parse(m8728C2.toString());
        Uri withAppendedPath = Uri.withAppendedPath(parse, "tcAccountState");
        l.d(withAppendedPath, "Uri.withAppendedPath(leg…eUri, ACCOUNT_STATE_PATH)");
        this.f14579b = withAppendedPath;
        Uri withAppendedPath2 = Uri.withAppendedPath(parse2, "tcAccountState");
        l.d(withAppendedPath2, "Uri.withAppendedPath(baseUri, ACCOUNT_STATE_PATH)");
        this.f14578a = withAppendedPath2;
        Uri withAppendedPath3 = Uri.withAppendedPath(parse2, "tcBottomSheet");
        l.d(withAppendedPath3, "Uri.withAppendedPath(baseUri, BOTTOM_SHEET_PATH)");
        this.f14580c = withAppendedPath3;
        Uri withAppendedPath4 = Uri.withAppendedPath(parse2, "tcOAuth");
        l.d(withAppendedPath4, "Uri.withAppendedPath(baseUri, OAUTH_PATH)");
        this.f14581d = withAppendedPath4;
        Uri withAppendedPath5 = Uri.withAppendedPath(parse2, "tc1Tap");
        l.d(withAppendedPath5, "Uri.withAppendedPath(baseUri, ONE_TAP_PATH)");
        this.f14582e = withAppendedPath5;
        Uri withAppendedPath6 = Uri.withAppendedPath(parse2, "tcOAuthBlacklistedDevice");
        l.d(withAppendedPath6, "Uri.withAppendedPath(bas…BLACKLISTED_DEVICES_PATH)");
        this.f14583f = withAppendedPath6;
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, Bundle bundle, CancellationSignal cancellationSignal) {
        l.e(uri, "uri");
        return query(uri, strArr, null, null, null);
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        MatrixCursor matrixCursor;
        Object obj;
        l.e(uri, "uri");
        Context context = getContext();
        AbstractApplicationC8442a applicationContext = context != null ? context.getApplicationContext() : null;
        AbstractApplicationC8442a abstractApplicationC8442a = applicationContext;
        if (!(applicationContext instanceof AbstractApplicationC8442a)) {
            abstractApplicationC8442a = null;
        }
        AbstractApplicationC8442a abstractApplicationC8442a2 = abstractApplicationC8442a;
        if (abstractApplicationC8442a2 != null) {
            Object m3812z0 = C25225a.m3812z0(C25225a.m4019F0(abstractApplicationC8442a2.getApplicationContext()), AbstractC4436a.class);
            l.d(m3812z0, "EntryPointAccessors.from…e, Injection::class.java)");
            AbstractC4436a abstractC4436a = (AbstractC4436a) m3812z0;
            C20592g mo9763x = abstractC4436a.mo9763x();
            Uri uri2 = this.f14579b;
            if (uri2 == null) {
                l.l("accountStateLegacyUri");
                throw null;
            }
            if (!l.a(uri, uri2)) {
                Uri uri3 = this.f14578a;
                if (uri3 == null) {
                    l.l("accountStateUri");
                    throw null;
                } else if (!l.a(uri, uri3)) {
                    Uri uri4 = this.f14580c;
                    if (uri4 == null) {
                        l.l("bottomSheetUri");
                        throw null;
                    }
                    if (l.a(uri, uri4)) {
                        matrixCursor = new MatrixCursor(new String[]{"accountState"}, 1);
                        matrixCursor.addRow(new Integer[]{Integer.valueOf(mo9763x.f57727E2.m10941a(mo9763x, C20592g.f57695p6[186]).isEnabled() ? 1 : 0)});
                    } else {
                        Uri uri5 = this.f14581d;
                        if (uri5 == null) {
                            l.l("oAuthUri");
                            throw null;
                        } else if (l.a(uri, uri5)) {
                            matrixCursor = new MatrixCursor(new String[]{"accountState"}, 1);
                            matrixCursor.addRow(new Integer[]{Integer.valueOf(mo9763x.f57931g4.m10941a(mo9763x, C20592g.f57695p6[270]).isEnabled() ? 1 : 0)});
                        } else {
                            Uri uri6 = this.f14582e;
                            if (uri6 == null) {
                                l.l("oneTapUri");
                                throw null;
                            } else if (l.a(uri, uri6)) {
                                matrixCursor = new MatrixCursor(new String[]{"accountState"}, 1);
                                matrixCursor.addRow(new Integer[]{Integer.valueOf(mo9763x.f57955j4.m10941a(mo9763x, C20592g.f57695p6[273]).isEnabled() ? 1 : 0)});
                            } else {
                                Uri uri7 = this.f14583f;
                                if (uri7 == null) {
                                    l.l("oAuthBlacklistedDevicesUri");
                                    throw null;
                                }
                                matrixCursor = null;
                                if (l.a(uri, uri7)) {
                                    AbstractC19230g mo12279n2 = abstractC4436a.mo12279n2();
                                    MatrixCursor matrixCursor2 = new MatrixCursor(new String[]{"accountState"}, 1);
                                    String mo10938g = ((AbstractC20597i) mo9763x.f57885a6.m10941a(mo9763x, C20592g.f57695p6[370])).mo10938g();
                                    if (r.p(mo10938g)) {
                                        mo10938g = null;
                                    }
                                    int i = 1;
                                    if (mo10938g != null) {
                                        List U = v.U(mo10938g, new String[]{","}, false, 0, 6);
                                        if (U.isEmpty()) {
                                            U = null;
                                        }
                                        i = 1;
                                        if (U != null) {
                                            String mo13792e = mo12279n2.mo13792e();
                                            if (r.p(mo13792e)) {
                                                mo13792e = null;
                                            }
                                            i = 1;
                                            if (mo13792e != null) {
                                                Iterator it = U.iterator();
                                                do {
                                                    obj = null;
                                                    if (!it.hasNext()) {
                                                        break;
                                                    }
                                                    obj = it.next();
                                                } while (!r.n(mo13792e, (String) obj, true));
                                                i = obj == null ? 1 : 0;
                                            }
                                        }
                                    }
                                    matrixCursor2.addRow(new Integer[]{Integer.valueOf(i)});
                                    matrixCursor = matrixCursor2;
                                }
                            }
                        }
                    }
                    return matrixCursor;
                }
            }
            matrixCursor = null;
            if (mo9763x.f57733F1.m10941a(mo9763x, C20592g.f57695p6[135]).isEnabled()) {
                matrixCursor = new MatrixCursor(new String[]{"accountState"}, 1);
                matrixCursor.addRow(new Integer[]{Integer.valueOf(abstractApplicationC8442a2.mo28540W() ? 1 : 0)});
            }
            return matrixCursor;
        }
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        l.e(uri, "uri");
        return 0;
    }
}

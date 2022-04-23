package com.netqin.p525cm.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import com.mopub.mobileads.VastIconXmlManager;
import com.netqin.p525cm.p528db.model.BlackWhiteListModel;
import com.netqin.p525cm.p528db.model.BlockedCallsModel;
import p131c.p431l.p432a.p456f.p457c.C6804b;
import p131c.p431l.p432a.p456f.p457c.C6805c;
/* renamed from: com.netqin.cm.provider.PrivacyDataProvider */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/provider/PrivacyDataProvider.class */
public class PrivacyDataProvider extends ContentProvider {

    /* renamed from: c */
    public static final UriMatcher f35661c;

    /* renamed from: a */
    public C6805c f35662a;

    /* renamed from: b */
    public C6804b f35663b;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        f35661c = uriMatcher;
        uriMatcher.addURI("com.netqin.cm.db.dao.PrivacyDataProvider", "blackwhitelist", 1);
        f35661c.addURI("com.netqin.cm.db.dao.PrivacyDataProvider", "blockedcall", 2);
    }

    @Override // android.content.ContentProvider
    public int bulkInsert(Uri uri, ContentValues[] contentValuesArr) {
        try {
            this.f35662a = C6805c.m19736a(getContext());
            this.f35663b = C6804b.m19749a(getContext());
        } catch (Exception e) {
            e.printStackTrace();
        }
        int match = f35661c.match(uri);
        int i = 0;
        if (match == 1) {
            C6804b bVar = this.f35663b;
            if (bVar == null) {
                return 0;
            }
            bVar.m19754a();
            for (int i2 = 0; i2 < contentValuesArr.length; i2++) {
                try {
                    if (this.f35663b.m19742c(contentValuesArr[i2].getAsString("address")) <= 0) {
                        BlackWhiteListModel blackWhiteListModel = new BlackWhiteListModel();
                        blackWhiteListModel.setAddress(contentValuesArr[i2].getAsString("address"));
                        blackWhiteListModel.setName(contentValuesArr[i2].getAsString("name"));
                        blackWhiteListModel.setType(contentValuesArr[i2].getAsInteger("type").intValue());
                        this.f35663b.m19748a(blackWhiteListModel);
                    }
                } catch (Exception e2) {
                    this.f35663b.m19753b();
                    i = 0;
                    return i;
                } catch (Throwable th) {
                    this.f35663b.m19753b();
                    throw th;
                }
            }
            this.f35663b.m19752c();
            this.f35663b.m19753b();
            i = 1;
        } else if (match == 2) {
            C6805c cVar = this.f35662a;
            if (cVar == null) {
                return 0;
            }
            cVar.m19754a();
            for (int i3 = 0; i3 < contentValuesArr.length; i3++) {
                try {
                    if (!this.f35662a.m19733a(contentValuesArr[i3].getAsString("address"), contentValuesArr[i3].getAsLong("date").longValue())) {
                        BlockedCallsModel blockedCallsModel = new BlockedCallsModel();
                        blockedCallsModel.setAddress(contentValuesArr[i3].getAsString("address"));
                        blockedCallsModel.setBlockMode(contentValuesArr[i3].getAsInteger("block_mode").intValue());
                        blockedCallsModel.setDate(contentValuesArr[i3].getAsLong("date").longValue());
                        blockedCallsModel.setDurtion(contentValuesArr[i3].getAsInteger(VastIconXmlManager.DURATION).intValue());
                        blockedCallsModel.setRead(contentValuesArr[i3].getAsInteger("read").intValue());
                        blockedCallsModel.setType(contentValuesArr[i3].getAsInteger("type").intValue());
                        this.f35662a.m19734a(blockedCallsModel);
                    }
                } catch (Exception e3) {
                    this.f35662a.m19753b();
                    i = 0;
                    return i;
                } catch (Throwable th2) {
                    this.f35662a.m19753b();
                    throw th2;
                }
            }
            this.f35662a.m19752c();
            this.f35662a.m19753b();
            i = 1;
        }
        return i;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return false;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}

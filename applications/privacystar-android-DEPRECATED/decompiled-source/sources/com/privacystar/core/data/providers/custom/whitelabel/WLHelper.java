package com.privacystar.core.data.providers.custom.whitelabel;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p013io.CloseableKt;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0016\u0010\u000f\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\fJ\u0018\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002¨\u0006\u0012"}, m254d2 = {"Lcom/privacystar/core/data/providers/custom/whitelabel/WLHelper;", "", "()V", "checkIfProviderExists", "", "context", "Landroid/content/Context;", "uri", "Landroid/net/Uri;", "doesHSSProviderExist", "doesRSProviderExist", "getWhiteLabelId", "", "getWhiteLabelIdFromHSS", "getWhiteLabelIdFromRS", "insertWhiteLabelID", "token", "queryProviderForToken", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/custom/whitelabel/WLHelper.class */
public final class WLHelper {
    public static final WLHelper INSTANCE = new WLHelper();

    private WLHelper() {
    }

    private final boolean checkIfProviderExists(Context context, Uri uri) {
        try {
            Cursor query = context.getContentResolver().query(uri, null, null, null, null);
            boolean z = (query == null || query.getCount() == 0) ? false : true;
            if (query != null) {
                query.close();
            }
            return z;
        } catch (Exception e) {
            Timber.m34e("Exception encountered while checking for provider: $" + e.getMessage(), new Object[0]);
            return false;
        }
    }

    private final boolean doesHSSProviderExist(Context context) {
        boolean checkIfProviderExists = checkIfProviderExists(context, WLContract.INSTANCE.getHSSContentUri());
        Timber.m37d("HSS provider exists? " + checkIfProviderExists, new Object[0]);
        return checkIfProviderExists;
    }

    private final boolean doesRSProviderExist(Context context) {
        boolean checkIfProviderExists = checkIfProviderExists(context, WLContract.INSTANCE.getRSContentUri());
        Timber.m37d("RS provider exists? " + checkIfProviderExists, new Object[0]);
        return checkIfProviderExists;
    }

    private final String getWhiteLabelIdFromHSS(Context context) {
        return queryProviderForToken(context, WLContract.INSTANCE.getHSSContentUri());
    }

    private final String getWhiteLabelIdFromRS(Context context) {
        return queryProviderForToken(context, WLContract.INSTANCE.getRSContentUri());
    }

    private final String queryProviderForToken(Context context, Uri uri) {
        try {
            Cursor query = context.getContentResolver().query(uri, null, null, null, null);
            Throwable th = null;
            Cursor cursor = query;
            if (cursor == null) {
                CloseableKt.closeFinally(query, th);
                return "";
            } else if (cursor.isClosed() || !cursor.moveToNext()) {
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(query, th);
                return "";
            } else {
                String string = cursor.getString(cursor.getColumnIndex("token"));
                StringBuilder sb = new StringBuilder();
                sb.append("Found token: ");
                sb.append(string);
                sb.append(" from URI: ");
                sb.append(uri);
                Timber.m37d(sb.toString(), new Object[0]);
                Intrinsics.checkExpressionValueIsNotNull(string, "it.getString(it.getColum…i\")\n                    }");
                CloseableKt.closeFinally(query, th);
                return string;
            }
        } catch (Exception e) {
            Timber.m32e(e, "Error encountered while adding WL ID to RS provider.", new Object[0]);
            return "";
        }
    }

    @NotNull
    public final String getWhiteLabelId(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        return doesHSSProviderExist(context) ? getWhiteLabelIdFromHSS(context) : doesRSProviderExist(context) ? getWhiteLabelIdFromRS(context) : "";
    }

    @NotNull
    public final String insertWhiteLabelID(@NotNull Context context, @NotNull String token) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(token, "token");
        ContentValues contentValues = new ContentValues();
        contentValues.put("token", token);
        context.getContentResolver().insert(WLContract.INSTANCE.getRSContentUri(), contentValues);
        Timber.m37d("Created WL ID provider with token: " + token, new Object[0]);
        return token;
    }
}

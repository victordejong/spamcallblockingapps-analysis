package com.privacystar.core.data.providers.custom.whitelabel;

import android.net.Uri;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\tJ\u0006\u0010\u0010\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0011"}, m254d2 = {"Lcom/privacystar/core/data/providers/custom/whitelabel/WLContract;", "", "()V", "AUTHORITY", "", "COLUMN_ID", "COLUMN_TOKEN", "CONTENT_PATH", "CONTENT_URI", "Landroid/net/Uri;", "CONTENT_URL", "DB_NAME", "HSS_AUTHORITY", "HSS_CONTENT_URI", "HSS_CONTENT_URL", "getHSSContentUri", "getRSContentUri", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/custom/whitelabel/WLContract.class */
public final class WLContract {
    @NotNull
    public static final String AUTHORITY = "com.privacystar.android.spg";
    @NotNull
    public static final String COLUMN_ID = "id";
    @NotNull
    public static final String COLUMN_TOKEN = "token";
    @NotNull
    public static final String CONTENT_PATH = "wl_table";
    private static final Uri CONTENT_URI;
    @NotNull
    public static final String CONTENT_URL = "content://com.privacystar.android.spg/wl_table";
    @NotNull
    public static final String DB_NAME = "whitelabelDB";
    @NotNull
    public static final String HSS_AUTHORITY = "hotspotshield.android.vpn.EliteAuthProvider";
    private static final Uri HSS_CONTENT_URI;
    @NotNull
    public static final String HSS_CONTENT_URL = "content://hotspotshield.android.vpn.EliteAuthProvider/wl_table";
    public static final WLContract INSTANCE = new WLContract();

    static {
        Uri parse = Uri.parse(CONTENT_URL);
        Intrinsics.checkExpressionValueIsNotNull(parse, "Uri.parse(CONTENT_URL)");
        CONTENT_URI = parse;
        Uri parse2 = Uri.parse(HSS_CONTENT_URL);
        Intrinsics.checkExpressionValueIsNotNull(parse2, "Uri.parse(HSS_CONTENT_URL)");
        HSS_CONTENT_URI = parse2;
    }

    private WLContract() {
    }

    @NotNull
    public final Uri getHSSContentUri() {
        return HSS_CONTENT_URI;
    }

    @NotNull
    public final Uri getRSContentUri() {
        return CONTENT_URI;
    }
}

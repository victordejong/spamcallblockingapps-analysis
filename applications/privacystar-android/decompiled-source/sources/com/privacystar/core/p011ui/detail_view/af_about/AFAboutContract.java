package com.privacystar.core.p011ui.detail_view.af_about;

import io.realm.Realm;
import java.io.File;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\u0018��2\u00020\u0001:\u0002\u0003\u0004B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/af_about/AFAboutContract;", "", "()V", "Manager", "View", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.af_about.AFAboutContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/af_about/AFAboutContract.class */
public final class AFAboutContract {

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\n\n\u0002\u0018\u0002\n\u0002\u0010��\n��\bf\u0018��2\u00020\u0001¨\u0006\u0002"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/af_about/AFAboutContract$Manager;", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.af_about.AFAboutContract$Manager */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/af_about/AFAboutContract$Manager.class */
    public interface Manager {
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0007\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0005H&J\b\u0010\u0007\u001a\u00020\bH&J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH&J\b\u0010\f\u001a\u00020\u0003H&J\b\u0010\r\u001a\u00020\u0003H&J\b\u0010\u000e\u001a\u00020\u0003H&J\b\u0010\u000f\u001a\u00020\u0003H&J\b\u0010\u0010\u001a\u00020\u0003H&¨\u0006\u0011"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/af_about/AFAboutContract$View;", "", "emailLog", "", "file", "Ljava/io/File;", "getCacheDirPath", "getRealmTemp", "Lio/realm/Realm;", "readKeyFromAssets", "", "fileName", "setVersionClickListener", "setVersionText", "setupView", "showPrivacyPolicy", "showTermsOfService", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.af_about.AFAboutContract$View */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/af_about/AFAboutContract$View.class */
    public interface View {
        void emailLog(@NotNull File file);

        @Nullable
        File getCacheDirPath();

        @NotNull
        Realm getRealmTemp();

        @NotNull
        String readKeyFromAssets(@NotNull String str);

        void setVersionClickListener();

        void setVersionText();

        void setupView();

        void showPrivacyPolicy();

        void showTermsOfService();
    }
}

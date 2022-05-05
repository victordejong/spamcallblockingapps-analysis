package com.tmobile.services.nameid.manage;

import androidx.annotation.StringRes;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.tmobile.services.nameid.NameIDPage;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.LicenseResponseItem;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.model.UserPreference;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\b\u0018��:\u0005\u0003\u0004\u0005\u0006\u0007B\u0007¢\u0006\u0004\b\u0001\u0010\u0002¨\u0006\b"}, d2 = {"Lcom/tmobile/services/nameid/manage/Manage;", "<init>", "()V", "ActivityType", "Model", "PNBTab", "Presenter", "View", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/Manage.class */
public final class Manage {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0001\u0018��2\u00020\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/tmobile/services/nameid/manage/Manage$ActivityType;", "Ljava/lang/Enum;", "", FirebaseAnalytics.Param.VALUE, "<init>", "(Ljava/lang/String;II)V", "CALLS", "MESSAGES", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/Manage$ActivityType.class */
    public enum ActivityType {
        CALLS(0),
        MESSAGES(1);

        ActivityType(int i) {
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\bf\u0018��2\u00020\u0001J\u0017\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/tmobile/services/nameid/manage/Manage$Model;", "Lkotlin/Any;", "", "action", "getCountFor", "(I)I", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/Manage$Model.class */
    public interface Model {
        /* renamed from: a */
        int mo6514a(int i);
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018�� \u0015:\u0004\u0016\u0015\u0017\u0018B!\b\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0013\u0010\u0014J\r\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0002\u0010\u0003R\u0019\u0010\u0005\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u0019\u0010\n\u001a\u00020\t8\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0019\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\u0082\u0001\u0003\u0019\u001a\u001b¨\u0006\u001c"}, d2 = {"Lcom/tmobile/services/nameid/manage/Manage$PNBTab;", "Lcom/tmobile/services/nameid/NameIDPage$ManageTab;", "getPage", "()Lcom/tmobile/services/nameid/NameIDPage$ManageTab;", "Lcom/tmobile/services/nameid/model/CallerSetting$Action;", "action", "Lcom/tmobile/services/nameid/model/CallerSetting$Action;", "getAction", "()Lcom/tmobile/services/nameid/model/CallerSetting$Action;", "", "name", "Ljava/lang/String;", "getName", "()Ljava/lang/String;", "", "position", "I", "getPosition", "()I", "<init>", "(ILcom/tmobile/services/nameid/model/CallerSetting$Action;Ljava/lang/String;)V", "Companion", "Block", "Favorite", "Voicemail", "Lcom/tmobile/services/nameid/manage/Manage$PNBTab$Favorite;", "Lcom/tmobile/services/nameid/manage/Manage$PNBTab$Block;", "Lcom/tmobile/services/nameid/manage/Manage$PNBTab$Voicemail;", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/Manage$PNBTab.class */
    public static abstract class PNBTab {

        /* renamed from: d */
        public static final Companion f13500d = new Companion(null);

        /* renamed from: a */
        private final int f13501a;
        @NotNull

        /* renamed from: b */
        private final CallerSetting.Action f13502b;
        @NotNull

        /* renamed from: c */
        private final String f13503c;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/manage/Manage$PNBTab$Block;", "com/tmobile/services/nameid/manage/Manage$PNBTab", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/Manage$PNBTab$Block.class */
        public static final class Block extends PNBTab {

            /* renamed from: e */
            public static final Block f13504e = new Block();

            private Block() {
                super(1, CallerSetting.Action.BLOCKED, "Block list", null);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcom/tmobile/services/nameid/manage/Manage$PNBTab$Companion;", "Lcom/tmobile/services/nameid/NameIDPage;", "page", "Lcom/tmobile/services/nameid/manage/Manage$PNBTab;", "getTabFromPage", "(Lcom/tmobile/services/nameid/NameIDPage;)Lcom/tmobile/services/nameid/manage/Manage$PNBTab;", "", "position", "getTabFromPosition", "(I)Lcom/tmobile/services/nameid/manage/Manage$PNBTab;", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/Manage$PNBTab$Companion.class */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            /* renamed from: a */
            public final PNBTab m6568a(int i) {
                return i == Block.f13504e.m6569d() ? Block.f13504e : i == Voicemail.f13506e.m6569d() ? Voicemail.f13506e : i == Favorite.f13505e.m6569d() ? Favorite.f13505e : Block.f13504e;
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/manage/Manage$PNBTab$Favorite;", "com/tmobile/services/nameid/manage/Manage$PNBTab", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/Manage$PNBTab$Favorite.class */
        public static final class Favorite extends PNBTab {

            /* renamed from: e */
            public static final Favorite f13505e = new Favorite();

            private Favorite() {
                super(0, CallerSetting.Action.APPROVED, "Favorites list", null);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/manage/Manage$PNBTab$Voicemail;", "com/tmobile/services/nameid/manage/Manage$PNBTab", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/Manage$PNBTab$Voicemail.class */
        public static final class Voicemail extends PNBTab {

            /* renamed from: e */
            public static final Voicemail f13506e = new Voicemail();

            private Voicemail() {
                super(2, CallerSetting.Action.VOICEMAIL, "Voicemail list", null);
            }
        }

        private PNBTab(int i, CallerSetting.Action action, String str) {
            this.f13501a = i;
            this.f13502b = action;
            this.f13503c = str;
        }

        public /* synthetic */ PNBTab(int i, CallerSetting.Action action, String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, action, str);
        }

        @NotNull
        /* renamed from: a */
        public final CallerSetting.Action m6572a() {
            return this.f13502b;
        }

        @NotNull
        /* renamed from: b */
        public final String m6571b() {
            return this.f13503c;
        }

        @NotNull
        /* renamed from: c */
        public final NameIDPage.ManageTab m6570c() {
            NameIDPage.ManageTab manageTab;
            if (Intrinsics.m1834a(this, Block.f13504e)) {
                manageTab = NameIDPage.ManageTab.BlockTab.f12678b;
            } else if (Intrinsics.m1834a(this, Voicemail.f13506e)) {
                manageTab = NameIDPage.ManageTab.VoicemailTab.f12680b;
            } else if (Intrinsics.m1834a(this, Favorite.f13505e)) {
                manageTab = NameIDPage.ManageTab.FavoritesTab.f12679b;
            } else {
                throw new NoWhenBranchMatchedException();
            }
            return manageTab;
        }

        /* renamed from: d */
        public final int m6569d() {
            return this.f13501a;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018��2\u00020\u0001J\u001d\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H&¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\n\u001a\u00020\u00052\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0002H&¢\u0006\u0004\b\n\u0010\u0007J\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000bH&¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH&¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000bH&¢\u0006\u0004\b\u0013\u0010\u000eJ\u0019\u0010\u0016\u001a\u00020\u00052\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H&¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H&¢\u0006\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Lcom/tmobile/services/nameid/manage/Manage$Presenter;", "Lkotlin/Any;", "", "Lcom/tmobile/services/nameid/model/CallerSetting;", "callerSettings", "", "onCallerSettingsUpdate", "(Ljava/util/List;)V", "Lcom/tmobile/services/nameid/model/UserPreference;", "list", "onContactUpdate", "", "tabPosition", "onFabClicked", "(I)V", "Lcom/tmobile/services/nameid/model/LicenseResponseItem;", "licenseResponse", "onMetroUserStatusUpdate", "(Lcom/tmobile/services/nameid/model/LicenseResponseItem;)V", "onTabSelected", "Lcom/tmobile/services/nameid/model/TmoUserStatus;", "userStatus", "onUserStatusUpdate", "(Lcom/tmobile/services/nameid/model/TmoUserStatus;)V", "onViewCreated", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/Manage$Presenter.class */
    public interface Presenter {
        /* renamed from: a */
        void mo6536a(@Nullable LicenseResponseItem licenseResponseItem);

        /* renamed from: b */
        void mo6535b(@Nullable TmoUserStatus tmoUserStatus);

        /* renamed from: c */
        void mo6534c(int i);

        /* renamed from: d */
        void mo6533d(@NotNull List<? extends CallerSetting> list);

        /* renamed from: e */
        void mo6532e(int i);

        /* renamed from: f */
        void mo6531f();

        /* renamed from: g */
        void mo6530g(@Nullable List<? extends UserPreference> list);
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\bf\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H&¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH&¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0002H&¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\r\u001a\u00020\u0002H&¢\u0006\u0004\b\r\u0010\u0004J\u0017\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0005H&¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH&¢\u0006\u0004\b\u0011\u0010\u000bJ\u001d\u0010\u0015\u001a\u00020\u00022\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H&¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0019\u001a\u00020\u00022\b\b\u0001\u0010\u0018\u001a\u00020\u0017H&¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0002H&¢\u0006\u0004\b\u001b\u0010\u0004J\u0017\u0010\u001c\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH&¢\u0006\u0004\b\u001c\u0010\u000bJ\u000f\u0010\u001d\u001a\u00020\u0002H&¢\u0006\u0004\b\u001d\u0010\u0004¨\u0006\u001e"}, d2 = {"Lcom/tmobile/services/nameid/manage/Manage$View;", "Lkotlin/Any;", "", "colorFab", "()V", "Lcom/tmobile/services/nameid/NameIDPage$ManageTab;", "determineLastPageShown", "()Lcom/tmobile/services/nameid/NameIDPage$ManageTab;", "Lcom/tmobile/services/nameid/manage/Manage$PNBTab;", "tab", "goToTab", "(Lcom/tmobile/services/nameid/manage/Manage$PNBTab;)V", "greyOutFab", "hideHeader", "newPage", "logPageChange", "(Lcom/tmobile/services/nameid/NameIDPage$ManageTab;)V", "logUserActivity", "", "Lcom/tmobile/services/nameid/model/UserPreference;", FirebaseAnalytics.Param.ITEMS, "publishSortedListUpdate", "(Ljava/util/List;)V", "", "headerText", "setHeader", "(I)V", "showHeader", "showSearch", "showSubscribeModal", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/Manage$View.class */
    public interface View {
        /* renamed from: G */
        void mo6567G();

        /* renamed from: J */
        void mo6563J();

        /* renamed from: O */
        void mo6556O(@NotNull PNBTab pNBTab);

        /* renamed from: S */
        void mo6553S(@NotNull PNBTab pNBTab);

        /* renamed from: X */
        void mo6552X(@StringRes int i);

        @NotNull
        /* renamed from: f0 */
        NameIDPage.ManageTab mo6551f0();

        /* renamed from: h */
        void mo6550h(@NotNull List<? extends UserPreference> list);

        /* renamed from: i0 */
        void mo6549i0();

        /* renamed from: l0 */
        void mo6548l0();

        /* renamed from: n */
        void mo6547n();

        /* renamed from: q */
        void mo6546q(@NotNull NameIDPage.ManageTab manageTab);

        /* renamed from: s */
        void mo6545s(@NotNull PNBTab pNBTab);
    }
}

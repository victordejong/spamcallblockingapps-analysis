package com.tmobile.services.nameid;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��:\t\b\t\n\u000b\f\r\u000e\u000f\u0010B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0006\u0010\u0007R\u0019\u0010\u0002\u001a\u00020\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005\u0082\u0001\t\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019¨\u0006\u001a"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage;", "", "name", "Ljava/lang/String;", "getName", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;)V", "Activity", "CallerDetailsPage", "Manage", "ManageTab", "OnboardingPage", "ScamBlock", "ScamShieldFeaturesPage", "Settings", "SettingsPage", "Lcom/tmobile/services/nameid/NameIDPage$OnboardingPage;", "Lcom/tmobile/services/nameid/NameIDPage$ScamBlock;", "Lcom/tmobile/services/nameid/NameIDPage$Activity;", "Lcom/tmobile/services/nameid/NameIDPage$CallerDetailsPage;", "Lcom/tmobile/services/nameid/NameIDPage$Manage;", "Lcom/tmobile/services/nameid/NameIDPage$ManageTab;", "Lcom/tmobile/services/nameid/NameIDPage$Settings;", "Lcom/tmobile/services/nameid/NameIDPage$SettingsPage;", "Lcom/tmobile/services/nameid/NameIDPage$ScamShieldFeaturesPage;", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage.class */
public abstract class NameIDPage {
    @NotNull

    /* renamed from: a */
    private final String f12671a;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage$Activity;", "Lcom/tmobile/services/nameid/NameIDPage;", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage$Activity.class */
    public static final class Activity extends NameIDPage {

        /* renamed from: b */
        public static final Activity f12672b = new Activity();

        private Activity() {
            super("ActivityFragment", null);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��2\u00020\u0001:\u0004\u0006\u0007\b\tB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0001\u0004\n\u000b\f\r¨\u0006\u000e"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage$CallerDetailsPage;", "Lcom/tmobile/services/nameid/NameIDPage;", "", "name", "<init>", "(Ljava/lang/String;)V", "ActivityCallerDetails", "ActivitySearchCallerDetails", "ManageCallerDetails", "ManageSearchCallerDetails", "Lcom/tmobile/services/nameid/NameIDPage$CallerDetailsPage$ActivityCallerDetails;", "Lcom/tmobile/services/nameid/NameIDPage$CallerDetailsPage$ActivitySearchCallerDetails;", "Lcom/tmobile/services/nameid/NameIDPage$CallerDetailsPage$ManageCallerDetails;", "Lcom/tmobile/services/nameid/NameIDPage$CallerDetailsPage$ManageSearchCallerDetails;", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage$CallerDetailsPage.class */
    public static abstract class CallerDetailsPage extends NameIDPage {

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage$CallerDetailsPage$ActivityCallerDetails;", "com/tmobile/services/nameid/NameIDPage$CallerDetailsPage", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage$CallerDetailsPage$ActivityCallerDetails.class */
        public static final class ActivityCallerDetails extends CallerDetailsPage {

            /* renamed from: b */
            public static final ActivityCallerDetails f12673b = new ActivityCallerDetails();

            private ActivityCallerDetails() {
                super("ActivityCallDetailsFragment", null);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage$CallerDetailsPage$ActivitySearchCallerDetails;", "com/tmobile/services/nameid/NameIDPage$CallerDetailsPage", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage$CallerDetailsPage$ActivitySearchCallerDetails.class */
        public static final class ActivitySearchCallerDetails extends CallerDetailsPage {

            /* renamed from: b */
            public static final ActivitySearchCallerDetails f12674b = new ActivitySearchCallerDetails();

            private ActivitySearchCallerDetails() {
                super("ActivitySearchCallDetailsFragment", null);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage$CallerDetailsPage$ManageCallerDetails;", "com/tmobile/services/nameid/NameIDPage$CallerDetailsPage", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage$CallerDetailsPage$ManageCallerDetails.class */
        public static final class ManageCallerDetails extends CallerDetailsPage {

            /* renamed from: b */
            public static final ManageCallerDetails f12675b = new ManageCallerDetails();

            private ManageCallerDetails() {
                super("ManageCallDetailsFragment", null);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage$CallerDetailsPage$ManageSearchCallerDetails;", "com/tmobile/services/nameid/NameIDPage$CallerDetailsPage", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage$CallerDetailsPage$ManageSearchCallerDetails.class */
        public static final class ManageSearchCallerDetails extends CallerDetailsPage {

            /* renamed from: b */
            public static final ManageSearchCallerDetails f12676b = new ManageSearchCallerDetails();

            private ManageSearchCallerDetails() {
                super("ManageSearchCallDetailsFragment", null);
            }
        }

        private CallerDetailsPage(String str) {
            super(str, null);
        }

        public /* synthetic */ CallerDetailsPage(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage$Manage;", "Lcom/tmobile/services/nameid/NameIDPage;", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage$Manage.class */
    public static final class Manage extends NameIDPage {

        /* renamed from: b */
        public static final Manage f12677b = new Manage();

        private Manage() {
            super("ManageFragment", null);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��2\u00020\u0001:\u0003\u0006\u0007\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0001\u0003\t\n\u000b¨\u0006\f"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage$ManageTab;", "Lcom/tmobile/services/nameid/NameIDPage;", "", "name", "<init>", "(Ljava/lang/String;)V", "BlockTab", "FavoritesTab", "VoicemailTab", "Lcom/tmobile/services/nameid/NameIDPage$ManageTab$BlockTab;", "Lcom/tmobile/services/nameid/NameIDPage$ManageTab$VoicemailTab;", "Lcom/tmobile/services/nameid/NameIDPage$ManageTab$FavoritesTab;", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage$ManageTab.class */
    public static abstract class ManageTab extends NameIDPage {

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage$ManageTab$BlockTab;", "com/tmobile/services/nameid/NameIDPage$ManageTab", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage$ManageTab$BlockTab.class */
        public static final class BlockTab extends ManageTab {

            /* renamed from: b */
            public static final BlockTab f12678b = new BlockTab();

            private BlockTab() {
                super("BlockFragment", null);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage$ManageTab$FavoritesTab;", "com/tmobile/services/nameid/NameIDPage$ManageTab", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage$ManageTab$FavoritesTab.class */
        public static final class FavoritesTab extends ManageTab {

            /* renamed from: b */
            public static final FavoritesTab f12679b = new FavoritesTab();

            private FavoritesTab() {
                super("FavoritesFragment", null);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage$ManageTab$VoicemailTab;", "com/tmobile/services/nameid/NameIDPage$ManageTab", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage$ManageTab$VoicemailTab.class */
        public static final class VoicemailTab extends ManageTab {

            /* renamed from: b */
            public static final VoicemailTab f12680b = new VoicemailTab();

            private VoicemailTab() {
                super("VoicemailFragment", null);
            }
        }

        private ManageTab(String str) {
            super(str, null);
        }

        public /* synthetic */ ManageTab(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��2\u00020\u0001:\u0002\u0006\u0007B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0001\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage$OnboardingPage;", "Lcom/tmobile/services/nameid/NameIDPage;", "", "name", "<init>", "(Ljava/lang/String;)V", "AuthenticationFailure", "Eula", "Lcom/tmobile/services/nameid/NameIDPage$OnboardingPage$Eula;", "Lcom/tmobile/services/nameid/NameIDPage$OnboardingPage$AuthenticationFailure;", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage$OnboardingPage.class */
    public static abstract class OnboardingPage extends NameIDPage {

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage$OnboardingPage$AuthenticationFailure;", "com/tmobile/services/nameid/NameIDPage$OnboardingPage", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage$OnboardingPage$AuthenticationFailure.class */
        public static final class AuthenticationFailure extends OnboardingPage {

            /* renamed from: b */
            public static final AuthenticationFailure f12681b = new AuthenticationFailure();

            private AuthenticationFailure() {
                super("AuthenticationFailActivity", null);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage$OnboardingPage$Eula;", "com/tmobile/services/nameid/NameIDPage$OnboardingPage", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage$OnboardingPage$Eula.class */
        public static final class Eula extends OnboardingPage {

            /* renamed from: b */
            public static final Eula f12682b = new Eula();

            private Eula() {
                super("EULAPageActivity", null);
            }
        }

        private OnboardingPage(String str) {
            super(str, null);
        }

        public /* synthetic */ OnboardingPage(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage$ScamBlock;", "Lcom/tmobile/services/nameid/NameIDPage;", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage$ScamBlock.class */
    public static final class ScamBlock extends NameIDPage {

        /* renamed from: b */
        public static final ScamBlock f12683b = new ScamBlock();

        private ScamBlock() {
            super("ScamBlockFragment", null);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��2\u00020\u0001:\u0002\u0006\u0007B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0001\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage$ScamShieldFeaturesPage;", "Lcom/tmobile/services/nameid/NameIDPage;", "", "name", "<init>", "(Ljava/lang/String;)V", "NewPhoneNumber", "ProxyByDigits", "Lcom/tmobile/services/nameid/NameIDPage$ScamShieldFeaturesPage$ProxyByDigits;", "Lcom/tmobile/services/nameid/NameIDPage$ScamShieldFeaturesPage$NewPhoneNumber;", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage$ScamShieldFeaturesPage.class */
    public static abstract class ScamShieldFeaturesPage extends NameIDPage {

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage$ScamShieldFeaturesPage$NewPhoneNumber;", "com/tmobile/services/nameid/NameIDPage$ScamShieldFeaturesPage", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* renamed from: com.tmobile.services.nameid.NameIDPage$ScamShieldFeaturesPage$NewPhoneNumber */
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage$ScamShieldFeaturesPage$NewPhoneNumber.class */
        public static final class C1527NewPhoneNumber extends ScamShieldFeaturesPage {

            /* renamed from: b */
            public static final C1527NewPhoneNumber f12684b = new C1527NewPhoneNumber();

            private C1527NewPhoneNumber() {
                super("NewPhoneNumberFragment", null);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage$ScamShieldFeaturesPage$ProxyByDigits;", "com/tmobile/services/nameid/NameIDPage$ScamShieldFeaturesPage", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* renamed from: com.tmobile.services.nameid.NameIDPage$ScamShieldFeaturesPage$ProxyByDigits */
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage$ScamShieldFeaturesPage$ProxyByDigits.class */
        public static final class C1528ProxyByDigits extends ScamShieldFeaturesPage {

            /* renamed from: b */
            public static final C1528ProxyByDigits f12685b = new C1528ProxyByDigits();

            private C1528ProxyByDigits() {
                super("ProxyByDigitsFragment", null);
            }
        }

        private ScamShieldFeaturesPage(String str) {
            super(str, null);
        }

        public /* synthetic */ ScamShieldFeaturesPage(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage$Settings;", "Lcom/tmobile/services/nameid/NameIDPage;", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.NameIDPage$Settings */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage$Settings.class */
    public static final class C1529Settings extends NameIDPage {

        /* renamed from: b */
        public static final C1529Settings f12686b = new C1529Settings();

        private C1529Settings() {
            super("SettingsFragment", null);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��2\u00020\u0001:\u0006\u0006\u0007\b\t\n\u000bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0001\u0006\f\r\u000e\u000f\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage$SettingsPage;", "Lcom/tmobile/services/nameid/NameIDPage;", "", "name", "<init>", "(Ljava/lang/String;)V", "CallerIdPrefs", "CategoryManager", "Debug", "LegalNotices", "MyAccount", "Notifications", "Lcom/tmobile/services/nameid/NameIDPage$SettingsPage$MyAccount;", "Lcom/tmobile/services/nameid/NameIDPage$SettingsPage$CategoryManager;", "Lcom/tmobile/services/nameid/NameIDPage$SettingsPage$CallerIdPrefs;", "Lcom/tmobile/services/nameid/NameIDPage$SettingsPage$Notifications;", "Lcom/tmobile/services/nameid/NameIDPage$SettingsPage$LegalNotices;", "Lcom/tmobile/services/nameid/NameIDPage$SettingsPage$Debug;", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage$SettingsPage.class */
    public static abstract class SettingsPage extends NameIDPage {

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage$SettingsPage$CallerIdPrefs;", "com/tmobile/services/nameid/NameIDPage$SettingsPage", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage$SettingsPage$CallerIdPrefs.class */
        public static final class CallerIdPrefs extends SettingsPage {

            /* renamed from: b */
            public static final CallerIdPrefs f12687b = new CallerIdPrefs();

            private CallerIdPrefs() {
                super("CallerIdPrefsFragment", null);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage$SettingsPage$CategoryManager;", "com/tmobile/services/nameid/NameIDPage$SettingsPage", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage$SettingsPage$CategoryManager.class */
        public static final class CategoryManager extends SettingsPage {

            /* renamed from: b */
            public static final CategoryManager f12688b = new CategoryManager();

            private CategoryManager() {
                super("CategoryManagerFragment", null);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage$SettingsPage$Debug;", "com/tmobile/services/nameid/NameIDPage$SettingsPage", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage$SettingsPage$Debug.class */
        public static final class Debug extends SettingsPage {

            /* renamed from: b */
            public static final Debug f12689b = new Debug();

            private Debug() {
                super("DebugFragment", null);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage$SettingsPage$LegalNotices;", "com/tmobile/services/nameid/NameIDPage$SettingsPage", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage$SettingsPage$LegalNotices.class */
        public static final class LegalNotices extends SettingsPage {

            /* renamed from: b */
            public static final LegalNotices f12690b = new LegalNotices();

            private LegalNotices() {
                super("LicenseFragment", null);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage$SettingsPage$MyAccount;", "com/tmobile/services/nameid/NameIDPage$SettingsPage", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* renamed from: com.tmobile.services.nameid.NameIDPage$SettingsPage$MyAccount */
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage$SettingsPage$MyAccount.class */
        public static final class C1530MyAccount extends SettingsPage {

            /* renamed from: b */
            public static final C1530MyAccount f12691b = new C1530MyAccount();

            private C1530MyAccount() {
                super("MyAccountFragment", null);
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/tmobile/services/nameid/NameIDPage$SettingsPage$Notifications;", "com/tmobile/services/nameid/NameIDPage$SettingsPage", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* renamed from: com.tmobile.services.nameid.NameIDPage$SettingsPage$Notifications */
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/NameIDPage$SettingsPage$Notifications.class */
        public static final class C1531Notifications extends SettingsPage {

            /* renamed from: b */
            public static final C1531Notifications f12692b = new C1531Notifications();

            private C1531Notifications() {
                super("NotificationsFragment", null);
            }
        }

        private SettingsPage(String str) {
            super(str, null);
        }

        public /* synthetic */ SettingsPage(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }
    }

    private NameIDPage(String str) {
        this.f12671a = str;
    }

    public /* synthetic */ NameIDPage(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    @NotNull
    /* renamed from: a */
    public final String m7485a() {
        return this.f12671a;
    }
}

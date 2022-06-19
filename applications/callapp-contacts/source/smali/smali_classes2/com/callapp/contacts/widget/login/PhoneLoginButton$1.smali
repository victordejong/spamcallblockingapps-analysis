.class Lcom/callapp/contacts/widget/login/PhoneLoginButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/login/PhoneLoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/login/PhoneLoginButton;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/login/PhoneLoginButton;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/callapp/contacts/widget/login/PhoneLoginButton$1;->a:Lcom/callapp/contacts/widget/login/PhoneLoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;)Landroid/util/Pair;
    .locals 0

    .line 35
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$rFlIuM_juxxskxH55qk04Od8l6w(Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;)Landroid/util/Pair;
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/widget/login/PhoneLoginButton$1;->a(Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;)V
    .locals 1

    .line 32
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 33
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b()V

    .line 34
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/callapp/contacts/widget/login/PhoneLoginButton$1;->a:Lcom/callapp/contacts/widget/login/PhoneLoginButton;

    invoke-static {p1}, Lcom/callapp/contacts/widget/login/PhoneLoginButton;->a(Lcom/callapp/contacts/widget/login/PhoneLoginButton;)Lcom/callapp/contacts/widget/login/PhoneLoginButton$Manager;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/widget/login/-$$Lambda$PhoneLoginButton$1$rFlIuM_juxxskxH55qk04Od8l6w;

    invoke-direct {v0, p2, p3}, Lcom/callapp/contacts/widget/login/-$$Lambda$PhoneLoginButton$1$rFlIuM_juxxskxH55qk04Od8l6w;-><init>(Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;)V

    invoke-interface {p1, v0}, Lcom/callapp/contacts/widget/login/PhoneLoginButton$Manager;->a(Lcom/callapp/contacts/activity/setup/SetupWizardActivity$TokenHelper;)V

    return-void

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/login/PhoneLoginButton$1;->a:Lcom/callapp/contacts/widget/login/PhoneLoginButton;

    invoke-static {p1}, Lcom/callapp/contacts/widget/login/PhoneLoginButton;->a(Lcom/callapp/contacts/widget/login/PhoneLoginButton;)Lcom/callapp/contacts/widget/login/PhoneLoginButton$Manager;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/widget/login/PhoneLoginButton$Manager;->c()V

    return-void
.end method

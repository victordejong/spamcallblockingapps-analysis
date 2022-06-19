.class public final synthetic Lcom/callapp/contacts/widget/login/-$$Lambda$PhoneLoginButton$1$rFlIuM_juxxskxH55qk04Od8l6w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/activity/setup/SetupWizardActivity$TokenHelper;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/widget/login/-$$Lambda$PhoneLoginButton$1$rFlIuM_juxxskxH55qk04Od8l6w;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/callapp/contacts/widget/login/-$$Lambda$PhoneLoginButton$1$rFlIuM_juxxskxH55qk04Od8l6w;->f$1:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    return-void
.end method


# virtual methods
.method public final getTokenAndSource()Landroid/util/Pair;
    .locals 2

    iget-object v0, p0, Lcom/callapp/contacts/widget/login/-$$Lambda$PhoneLoginButton$1$rFlIuM_juxxskxH55qk04Od8l6w;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/callapp/contacts/widget/login/-$$Lambda$PhoneLoginButton$1$rFlIuM_juxxskxH55qk04Od8l6w;->f$1:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    invoke-static {v0, v1}, Lcom/callapp/contacts/widget/login/PhoneLoginButton$1;->lambda$rFlIuM_juxxskxH55qk04Od8l6w(Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

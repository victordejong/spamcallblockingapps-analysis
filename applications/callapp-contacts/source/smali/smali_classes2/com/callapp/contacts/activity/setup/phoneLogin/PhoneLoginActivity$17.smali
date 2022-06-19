.class Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V
    .locals 0

    .line 1030
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$17;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1033
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1034
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$17;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->j(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    .line 1035
    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RESULT_USER_PHONE_NUMBER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1036
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$17;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->z(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RESULT_USER_CALLAPP_TOKEN"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1037
    sget-object v1, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->CALLAPP:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    invoke-virtual {v1}, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RESULT_USER_CALLAPP_TOKEN_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1038
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$17;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 1039
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$17;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->finish()V

    return-void
.end method

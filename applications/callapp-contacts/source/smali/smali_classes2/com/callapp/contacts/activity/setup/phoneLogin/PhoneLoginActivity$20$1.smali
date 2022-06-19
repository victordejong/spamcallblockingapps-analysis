.class Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;)V
    .locals 0

    .line 1114
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20$1;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1117
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20$1;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;

    iget-object v0, v0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    const v1, 0x7f0a0850

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1118
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20$1;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;

    iget-object v1, v1, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    const v2, 0x7f0a03da

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/login/SocialLoginButton;

    .line 1119
    iget-object v2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20$1;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;

    iget-object v2, v2, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    const v3, 0x7f0a045d

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/widget/login/SocialLoginButton;

    .line 1120
    iget-object v3, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20$1;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;

    iget-object v3, v3, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    const v4, 0x7f0a0abf

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/widget/login/SocialLoginButton;

    .line 1121
    iget-object v4, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20$1;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;

    iget-object v4, v4, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    const-string v5, "EnterSMSCode"

    invoke-static {v4, v1, v3, v2, v5}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Lcom/callapp/contacts/widget/login/SocialLoginButton;Lcom/callapp/contacts/widget/login/SocialLoginButton;Lcom/callapp/contacts/widget/login/SocialLoginButton;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1122
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

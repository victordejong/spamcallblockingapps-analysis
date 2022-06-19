.class Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Z)V
    .locals 0

    .line 1100
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1103
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->D(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 1104
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Registration"

    const-string v1, "ClickResendSMS"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->b(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Z)V

    .line 1106
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->E(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)I

    .line 1107
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->F(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    .line 1108
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->G(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/view/View;)V

    goto :goto_0

    .line 1111
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->finish()V

    .line 1113
    :goto_0
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;->a:Z

    if-eqz p1, :cond_1

    .line 1114
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20$1;-><init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$20;)V

    const-wide/16 v1, 0x4e20

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

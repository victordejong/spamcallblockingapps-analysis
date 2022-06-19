.class Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Ljava/lang/String;)V
    .locals 0

    .line 990
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$15;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$15;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 993
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Registration"

    const-string v2, "onReceiveCode success"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$15;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$15;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 995
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$15;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->x(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 996
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$15;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->x(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 997
    iget-object v2, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$15;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->x(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 998
    iget-object v3, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$15;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v3}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->x(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 999
    iget-object v4, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$15;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v4}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->x(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 1000
    iget-object v5, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$15;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v5}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->x(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 1002
    iget-object v6, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$15;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v6}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->p(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1003
    iget-object v6, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$15;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v6}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->q(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1004
    iget-object v6, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$15;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v6}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->r(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    iget-object v6, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$15;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v6}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->s(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    iget-object v6, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$15;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v6}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->t(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1007
    iget-object v6, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$15;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v6}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->u(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    iget-object v6, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$15;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v6}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->n(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1009
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gC:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$15;->b:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->w(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    :cond_0
    return-void
.end method

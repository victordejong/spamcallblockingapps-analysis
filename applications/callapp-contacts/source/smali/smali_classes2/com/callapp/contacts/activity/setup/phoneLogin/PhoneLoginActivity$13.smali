.class Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->c(Z)V
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

    .line 749
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$13;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 752
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Registration"

    const-string v1, "ClickEditPhoneNumber"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$13;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->n(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 754
    iget-object p1, p0, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity$13;->a:Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;->o(Lcom/callapp/contacts/activity/setup/phoneLogin/PhoneLoginActivity;)V

    return-void
.end method

.class Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog;Landroid/widget/TextView;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$1;->b:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$1;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 122
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$1;->b:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog;->dismiss()V

    .line 123
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$1;->a:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 124
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$1;->b:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog;

    iget-object p1, p1, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog;->a:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    sget-object v0, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;->CONFIRM:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$1;->b:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog;

    iget-object p1, p1, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog;->b:Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$UserClickOnConfirmPhone;

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$1;->b:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog;

    iget-object p1, p1, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog;->b:Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$UserClickOnConfirmPhone;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$UserClickOnConfirmPhone;->onClickConfirm()V

    :cond_0
    return-void
.end method

.class Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;Landroid/widget/TextView;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$1;->b:Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$1;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 98
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$1;->b:Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;->a(Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;)Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$UserClickOnConfirmPhone;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$1;->b:Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;->dismiss()V

    .line 100
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$1;->a:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 101
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$1;->b:Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;->a(Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;)Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$UserClickOnConfirmPhone;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$UserClickOnConfirmPhone;->onClickConfirm()V

    :cond_0
    return-void
.end method

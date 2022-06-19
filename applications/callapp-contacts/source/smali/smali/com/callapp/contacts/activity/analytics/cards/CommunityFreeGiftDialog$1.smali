.class Lcom/callapp/contacts/activity/analytics/cards/CommunityFreeGiftDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/cards/CommunityFreeGiftDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/callapp/contacts/activity/analytics/cards/CommunityFreeGiftDialog;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/CommunityFreeGiftDialog;Landroid/widget/TextView;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityFreeGiftDialog$1;->b:Lcom/callapp/contacts/activity/analytics/cards/CommunityFreeGiftDialog;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityFreeGiftDialog$1;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 106
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityFreeGiftDialog$1;->a:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 107
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityFreeGiftDialog$1;->b:Lcom/callapp/contacts/activity/analytics/cards/CommunityFreeGiftDialog;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/CommunityFreeGiftDialog;->dismiss()V

    return-void
.end method

.class Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard$3;->a:Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard$3;->a:Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;Landroid/content/Context;)V

    return-void
.end method

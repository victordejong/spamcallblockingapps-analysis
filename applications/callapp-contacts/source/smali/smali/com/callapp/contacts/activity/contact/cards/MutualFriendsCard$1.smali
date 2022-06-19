.class Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lit/gmariotti/cardslib/library/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
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

    .line 33
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/MutualFriendsCard;Landroid/content/Context;)V

    return-void
.end method

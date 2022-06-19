.class Lcom/callapp/contacts/activity/contact/cards/MultiCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/MultiCard;->removeFromMultiCard(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/MultiCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MultiCard;Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->a(Lit/gmariotti/cardslib/library/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->b(Lit/gmariotti/cardslib/library/a/b;)Z

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->access$100(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)V

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 62
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->access$202(Lcom/callapp/contacts/activity/contact/cards/MultiCard;Z)Z

    .line 63
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    :cond_2
    return-void
.end method

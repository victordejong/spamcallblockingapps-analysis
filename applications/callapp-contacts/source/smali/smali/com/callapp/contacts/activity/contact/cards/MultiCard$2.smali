.class Lcom/callapp/contacts/activity/contact/cards/MultiCard$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/MultiCard;->addToMultiCard(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)Z
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

    .line 79
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$2;->b:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$2;->b:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->a(Lit/gmariotti/cardslib/library/a/b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$2;->b:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->a(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)V

    .line 85
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$2;->b:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->access$400(Lcom/callapp/contacts/activity/contact/cards/MultiCard;Z)V

    .line 86
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$2;->b:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    invoke-static {v0, v2}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->access$500(Lcom/callapp/contacts/activity/contact/cards/MultiCard;Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)Z

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->doCollapse()V

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$2;->b:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->access$600(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$2;->b:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->getItemCount()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 93
    :goto_0
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$2;->b:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 94
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$2;->b:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->getItem(I)Lit/gmariotti/cardslib/library/a/b;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    .line 95
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$2;->b:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    invoke-static {v4}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->access$700(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)Ljava/util/List;

    move-result-object v4

    new-array v5, v1, [Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    aput-object v3, v5, v0

    invoke-static {v4, v5}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 96
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->hideWhenExceedMaxCards()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/cards/MultiCard$2;->b:Lcom/callapp/contacts/activity/contact/cards/MultiCard;

    invoke-static {v4}, Lcom/callapp/contacts/activity/contact/cards/MultiCard;->access$700(Lcom/callapp/contacts/activity/contact/cards/MultiCard;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

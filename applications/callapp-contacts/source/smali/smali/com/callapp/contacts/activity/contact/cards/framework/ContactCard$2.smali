.class Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->hideCard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard$2;->b:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard$2;->b:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard$2;->b:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard$2;->b:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;->removeFromMultiCard(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)V

    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard$2;->a:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard$2;->b:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->b(Lit/gmariotti/cardslib/library/a/b;)Z

    return-void
.end method

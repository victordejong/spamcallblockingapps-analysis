.class Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->addToMultiCard(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;)Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->a(Lit/gmariotti/cardslib/library/a/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->access$100(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;)Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->a(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)V

    .line 84
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;->access$200(Lcom/callapp/contacts/activity/contact/cards/CarrouselCard;Z)V

    :cond_0
    return-void
.end method

.class Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->showCard(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;ZLcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard$1;->c:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard$1;->a:Z

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard$1;->c:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->access$000(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)Lcom/callapp/contacts/activity/contact/cards/MultiCardContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard$1;->c:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard$1;->a:Z

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->access$100(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;Z)V

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard$1;->b:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard$1;->c:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;->a(Lit/gmariotti/cardslib/library/a/b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard$1;->c:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->access$200(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)V

    return-void

    .line 225
    :cond_1
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard$1;->a:Z

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard$1;->c:Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;)V

    :cond_2
    return-void
.end method

.class Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1;->a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1;->b:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1;->b:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;->d:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1;->b:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;->b:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1;

    iget-object v2, v2, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1;->b:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;

    iget-object v2, v2, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;)V

    :cond_0
    return-void
.end method

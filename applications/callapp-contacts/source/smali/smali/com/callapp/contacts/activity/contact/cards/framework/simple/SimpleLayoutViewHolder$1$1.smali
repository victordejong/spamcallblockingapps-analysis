.class Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/e/g<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1;->b:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/e/a/j<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 188
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1;->b:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 190
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance p2, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1$1;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1;)V

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/load/a;Z)Z
    .locals 0

    .line 185
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 1205
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1;->b:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;

    iget-object p2, p2, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    move-object p4, p1

    goto :goto_0

    :cond_0
    move-object p4, p3

    :goto_0
    invoke-virtual {p2, p4}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 1206
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1;->b:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;

    iget-object p2, p2, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1;->a:Ljava/lang/String;

    :cond_1
    invoke-virtual {p2, p3}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->setLoadedImageUrl(Ljava/lang/String;)V

    .line 1208
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1;->b:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1210
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance p2, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1$2;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1;)V

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

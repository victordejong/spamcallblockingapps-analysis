.class Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;Landroid/content/Context;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;->d:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;->b:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 181
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;->a:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;Ljava/lang/String;)V

    .line 1496
    iput-object v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->n:Lcom/bumptech/glide/e/g;

    .line 185
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;->c:Landroid/content/Context;

    .line 2432
    iput-object v0, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    .line 223
    invoke-virtual {v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->c()Lcom/bumptech/glide/e/c;

    :cond_0
    return-void
.end method

.class Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder$1;->a:Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Z)Z
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder$1;->a:Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-static {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Lcom/bumptech/glide/e/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder$1;->a:Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-static {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Lcom/bumptech/glide/e/g;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/e/g;->a(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Z)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/load/a;Z)Z
    .locals 7

    .line 627
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder$1;->a:Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-static {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder$1;->a:Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-static {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->c(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/glide/GlideUtils;->b(Landroid/content/Context;)Lcom/callapp/contacts/util/glide/GlideRequests;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder$1;->a:Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-static {v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/glide/GlideRequests;->a(Landroid/view/View;)V

    .line 629
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder$1;->a:Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-static {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder$1;->a:Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-static {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Lcom/bumptech/glide/e/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 632
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder$1;->a:Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-static {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Lcom/bumptech/glide/e/g;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/bumptech/glide/e/g;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/load/a;Z)Z

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

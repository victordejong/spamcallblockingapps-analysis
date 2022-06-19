.class Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder$2;
.super Lcom/bumptech/glide/e/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b(Lcom/callapp/contacts/util/glide/GlideRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/e/a/d<",
        "Landroid/view/View;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;Landroid/view/View;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder$2;->b:Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {p0, p2}, Lcom/bumptech/glide/e/a/d;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 658
    iget-object p1, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder$2;->b:Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-static {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Lcom/callapp/contacts/util/glide/GlideUtils$CustomViewListener;

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/e/b/d;)V
    .locals 1

    .line 650
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 1663
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder$2;->b:Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-static {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Lcom/callapp/contacts/util/glide/GlideUtils$CustomViewListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/callapp/contacts/util/glide/GlideUtils$CustomViewListener;->onResourceReady(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/e/b/d;)V

    return-void
.end method

.method public final d()V
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder$2;->b:Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-static {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Lcom/callapp/contacts/util/glide/GlideUtils$CustomViewListener;

    return-void
.end method

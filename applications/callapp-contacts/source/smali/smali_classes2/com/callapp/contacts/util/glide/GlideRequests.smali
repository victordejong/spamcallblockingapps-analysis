.class public Lcom/callapp/contacts/util/glide/GlideRequests;
.super Lcom/bumptech/glide/k;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/p;Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/k;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/p;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/j;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/glide/GlideRequests;->b(Landroid/graphics/Bitmap;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/j;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/glide/GlideRequests;->b(Landroid/graphics/drawable/Drawable;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/lang/Class;)Lcom/bumptech/glide/j;
    .locals 3

    .line 1039
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideRequest;

    iget-object v1, p0, Lcom/callapp/contacts/util/glide/GlideRequests;->a:Lcom/bumptech/glide/c;

    iget-object v2, p0, Lcom/callapp/contacts/util/glide/GlideRequests;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/callapp/contacts/util/glide/GlideRequest;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/k;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)Lcom/bumptech/glide/j;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/glide/GlideRequests;->b(Ljava/lang/Object;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/lang/String;)Lcom/bumptech/glide/j;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/glide/GlideRequests;->b(Ljava/lang/String;)Lcom/callapp/contacts/util/glide/GlideRequest;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/graphics/Bitmap;)Lcom/callapp/contacts/util/glide/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/callapp/contacts/util/glide/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-super {p0, p1}, Lcom/bumptech/glide/k;->a(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/j;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/util/glide/GlideRequest;

    return-object p1
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)Lcom/callapp/contacts/util/glide/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/callapp/contacts/util/glide/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-super {p0, p1}, Lcom/bumptech/glide/k;->a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/j;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/util/glide/GlideRequest;

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Lcom/callapp/contacts/util/glide/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/callapp/contacts/util/glide/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 141
    invoke-super {p0, p1}, Lcom/bumptech/glide/k;->a(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/util/glide/GlideRequest;

    return-object p1
.end method

.method public final b(Ljava/lang/String;)Lcom/callapp/contacts/util/glide/GlideRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/callapp/contacts/util/glide/GlideRequest<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-super {p0, p1}, Lcom/bumptech/glide/k;->a(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/util/glide/GlideRequest;

    return-object p1
.end method

.method public final bridge synthetic d()Lcom/bumptech/glide/j;
    .locals 1

    .line 4064
    invoke-super {p0}, Lcom/bumptech/glide/k;->d()Lcom/bumptech/glide/j;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/util/glide/GlideRequest;

    return-object v0
.end method

.method public final bridge synthetic e()Lcom/bumptech/glide/j;
    .locals 1

    .line 3071
    invoke-super {p0}, Lcom/bumptech/glide/k;->e()Lcom/bumptech/glide/j;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/util/glide/GlideRequest;

    return-object v0
.end method

.method public final bridge synthetic f()Lcom/bumptech/glide/j;
    .locals 1

    .line 2078
    invoke-super {p0}, Lcom/bumptech/glide/k;->f()Lcom/bumptech/glide/j;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/util/glide/GlideRequest;

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/bumptech/glide/j;
    .locals 1

    .line 1148
    invoke-super {p0}, Lcom/bumptech/glide/k;->g()Lcom/bumptech/glide/j;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/util/glide/GlideRequest;

    return-object v0
.end method

.method public final h()Lcom/callapp/contacts/util/glide/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/callapp/contacts/util/glide/GlideRequest<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-super {p0}, Lcom/bumptech/glide/k;->d()Lcom/bumptech/glide/j;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/util/glide/GlideRequest;

    return-object v0
.end method

.method public final i()Lcom/callapp/contacts/util/glide/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/callapp/contacts/util/glide/GlideRequest<",
            "Lcom/bumptech/glide/load/resource/d/c;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-super {p0}, Lcom/bumptech/glide/k;->e()Lcom/bumptech/glide/j;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/util/glide/GlideRequest;

    return-object v0
.end method

.method public final j()Lcom/callapp/contacts/util/glide/GlideRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/callapp/contacts/util/glide/GlideRequest<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 148
    invoke-super {p0}, Lcom/bumptech/glide/k;->g()Lcom/bumptech/glide/j;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/util/glide/GlideRequest;

    return-object v0
.end method

.method public setRequestOptions(Lcom/bumptech/glide/e/h;)V
    .locals 1

    .line 167
    instance-of v0, p1, Lcom/callapp/contacts/util/glide/GlideOptions;

    if-eqz v0, :cond_0

    .line 168
    invoke-super {p0, p1}, Lcom/bumptech/glide/k;->setRequestOptions(Lcom/bumptech/glide/e/h;)V

    return-void

    .line 170
    :cond_0
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideOptions;

    invoke-direct {v0}, Lcom/callapp/contacts/util/glide/GlideOptions;-><init>()V

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/util/glide/GlideOptions;->a(Lcom/bumptech/glide/e/a;)Lcom/callapp/contacts/util/glide/GlideOptions;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/bumptech/glide/k;->setRequestOptions(Lcom/bumptech/glide/e/h;)V

    return-void
.end method

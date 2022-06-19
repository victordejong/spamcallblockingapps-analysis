.class public final Lcom/bumptech/glide/load/resource/bitmap/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/j<",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/bitmap/l;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/l;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/u;->a:Lcom/bumptech/glide/load/resource/bitmap/l;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;IILcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/engine/u;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 1035
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/u;->a:Lcom/bumptech/glide/load/resource/bitmap/l;

    .line 1219
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/r$b;

    iget-object v2, v0, Lcom/bumptech/glide/load/resource/bitmap/l;->h:Ljava/util/List;

    iget-object v3, v0, Lcom/bumptech/glide/load/resource/bitmap/l;->g:Lcom/bumptech/glide/load/engine/a/b;

    invoke-direct {v1, p1, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/r$b;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Lcom/bumptech/glide/load/engine/a/b;)V

    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/l;->f:Lcom/bumptech/glide/load/resource/bitmap/l$a;

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/resource/bitmap/l;->a(Lcom/bumptech/glide/load/resource/bitmap/r;IILcom/bumptech/glide/load/h;Lcom/bumptech/glide/load/resource/bitmap/l$a;)Lcom/bumptech/glide/load/engine/u;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/load/h;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2027
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/l;->a()Z

    move-result p1

    return p1
.end method

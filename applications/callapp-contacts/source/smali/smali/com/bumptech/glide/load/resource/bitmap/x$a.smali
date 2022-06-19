.class final Lcom/bumptech/glide/load/resource/bitmap/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/bitmap/v;

.field private final b:Lcom/bumptech/glide/g/d;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/v;Lcom/bumptech/glide/g/d;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/x$a;->a:Lcom/bumptech/glide/load/resource/bitmap/v;

    .line 83
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/x$a;->b:Lcom/bumptech/glide/g/d;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/x$a;->a:Lcom/bumptech/glide/load/resource/bitmap/v;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/v;->a()V

    return-void
.end method

.method public final a(Lcom/bumptech/glide/load/engine/a/e;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/x$a;->b:Lcom/bumptech/glide/g/d;

    .line 1129
    iget-object v0, v0, Lcom/bumptech/glide/g/d;->a:Ljava/io/IOException;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 103
    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/engine/a/e;->a(Landroid/graphics/Bitmap;)V

    .line 105
    :cond_0
    throw v0

    :cond_1
    return-void
.end method

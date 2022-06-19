.class public Lcom/bumptech/glide/load/c/a/f;
.super Ljava/lang/Object;
.source "ByteBufferBitmapDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/i",
        "<",
        "Ljava/nio/ByteBuffer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/c/a/l;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/c/a/l;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/bumptech/glide/load/c/a/f;->a:Lcom/bumptech/glide/load/c/a/l;

    .line 21
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;IILcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/engine/t;
    .locals 1

    .prologue
    .line 16
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/c/a/f;->a(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/engine/t;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/engine/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "II",
            "Lcom/bumptech/glide/load/h;",
            ")",
            "Lcom/bumptech/glide/load/engine/t",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {p1}, Lcom/bumptech/glide/h/a;->b(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/bumptech/glide/load/c/a/f;->a:Lcom/bumptech/glide/load/c/a/l;

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/bumptech/glide/load/c/a/l;->a(Ljava/io/InputStream;IILcom/bumptech/glide/load/h;)Lcom/bumptech/glide/load/engine/t;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/load/h;)Z
    .locals 1

    .prologue
    .line 16
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/c/a/f;->a(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/h;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/h;)Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bumptech/glide/load/c/a/f;->a:Lcom/bumptech/glide/load/c/a/l;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/c/a/l;->a(Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method

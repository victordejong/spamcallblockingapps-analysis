.class public Lcom/allinone/callerid/d/f/b/a;
.super Ljava/lang/Object;
.source "BufferFileDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/f<",
        "Ljava/nio/ByteBuffer;",
        "Lcom/allinone/callerid/d/f/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/allinone/callerid/d/f/b/f;


# direct methods
.method public constructor <init>(Lcom/allinone/callerid/d/f/b/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/d/f/b/a;->a:Lcom/allinone/callerid/d/f/b/f;

    return-void
.end method

.method private static e(Lcom/bumptech/glide/load/e;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/load/e;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lcom/allinone/callerid/d/f/b/a;->d(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/e;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;IILcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/engine/s;
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/allinone/callerid/d/f/b/a;->c(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/engine/s;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/engine/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "II",
            "Lcom/bumptech/glide/load/e;",
            ")",
            "Lcom/bumptech/glide/load/engine/s<",
            "Lcom/allinone/callerid/d/f/b/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/d/f/b/a;->a:Lcom/allinone/callerid/d/f/b/f;

    invoke-static {p1}, Lcom/bumptech/glide/p/a;->f(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/allinone/callerid/d/f/b/f;->c(Ljava/io/InputStream;IILcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/engine/s;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/e;)Z
    .locals 2

    const-string v0, "<ytr>"

    const-string v1, "handles: BufferFileDecoder"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p2}, Lcom/allinone/callerid/d/f/b/a;->e(Lcom/bumptech/glide/load/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/allinone/callerid/d/f/b/a;->a:Lcom/allinone/callerid/d/f/b/f;

    invoke-static {p1}, Lcom/bumptech/glide/p/a;->f(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/allinone/callerid/d/f/b/f;->e(Ljava/io/InputStream;Lcom/bumptech/glide/load/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

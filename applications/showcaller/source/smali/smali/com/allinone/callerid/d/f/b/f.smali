.class public Lcom/allinone/callerid/d/f/b/f;
.super Ljava/lang/Object;
.source "StreamFileDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/f<",
        "Ljava/io/InputStream;",
        "Lcom/allinone/callerid/d/f/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/x/b;

.field private final b:Lcom/bumptech/glide/Registry;

.field private final c:Lcom/bumptech/glide/load/i/t;

.field private final d:Ljava/io/File;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/d/f/b/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/c;Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/bumptech/glide/c;->j()Lcom/bumptech/glide/Registry;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/d/f/b/f;->b:Lcom/bumptech/glide/Registry;

    .line 3
    invoke-virtual {p1}, Lcom/bumptech/glide/c;->e()Lcom/bumptech/glide/load/engine/x/b;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/d/f/b/f;->a:Lcom/bumptech/glide/load/engine/x/b;

    .line 4
    new-instance v0, Lcom/bumptech/glide/load/i/t;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/i/t;-><init>(Lcom/bumptech/glide/load/engine/x/b;)V

    iput-object v0, p0, Lcom/allinone/callerid/d/f/b/f;->c:Lcom/bumptech/glide/load/i/t;

    .line 5
    iput-object p2, p0, Lcom/allinone/callerid/d/f/b/f;->d:Ljava/io/File;

    return-void
.end method

.method private d()Lcom/allinone/callerid/d/f/b/b;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/d/f/b/f;->f()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/d/f/b/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/d/f/b/f;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/d/f/b/b;

    :goto_0
    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/allinone/callerid/d/f/b/f;->d:Ljava/io/File;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    new-instance v2, Lcom/allinone/callerid/d/f/b/b;

    invoke-direct {v2, p0, v0}, Lcom/allinone/callerid/d/f/b/b;-><init>(Lcom/allinone/callerid/d/f/b/f;Ljava/io/File;)V

    move-object v0, v2

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/allinone/callerid/d/f/b/b;->a()Ljava/io/File;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not create file bridge in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/allinone/callerid/d/f/b/f;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_3
    :goto_1
    invoke-virtual {v0, v1}, Lcom/allinone/callerid/d/f/b/b;->b(Z)V

    return-object v0
.end method

.method private f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/d/f/b/f;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/d/f/b/f;->e:Ljava/util/List;

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/d/f/b/f;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 5
    new-instance v4, Lcom/allinone/callerid/d/f/b/b;

    invoke-direct {v4, p0, v3}, Lcom/allinone/callerid/d/f/b/b;-><init>(Lcom/allinone/callerid/d/f/b/f;Ljava/io/File;)V

    .line 6
    iget-object v3, p0, Lcom/allinone/callerid/d/f/b/f;->e:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inflateFileBridgeIfNeeded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/d/f/b/f;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<ytr>"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/load/e;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lcom/allinone/callerid/d/f/b/f;->e(Ljava/io/InputStream;Lcom/bumptech/glide/load/e;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;IILcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/engine/s;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/allinone/callerid/d/f/b/f;->c(Ljava/io/InputStream;IILcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/engine/s;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/io/InputStream;IILcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/engine/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/bumptech/glide/load/e;",
            ")",
            "Lcom/bumptech/glide/load/engine/s<",
            "Lcom/allinone/callerid/d/f/b/b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/d/f/b/f;->d()Lcom/allinone/callerid/d/f/b/b;

    move-result-object p2

    .line 2
    iget-object p3, p0, Lcom/allinone/callerid/d/f/b/f;->c:Lcom/bumptech/glide/load/i/t;

    invoke-virtual {p2}, Lcom/allinone/callerid/d/f/b/b;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p3, p1, v0, p4}, Lcom/bumptech/glide/load/i/t;->c(Ljava/io/InputStream;Ljava/io/File;Lcom/bumptech/glide/load/e;)Z

    move-result p1

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "decode: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "<ytr>"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Lcom/allinone/callerid/d/f/b/c;

    invoke-direct {p1, p2}, Lcom/allinone/callerid/d/f/b/c;-><init>(Lcom/allinone/callerid/d/f/b/b;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Ljava/io/InputStream;Lcom/bumptech/glide/load/e;)Z
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/d/f/b/f;->b:Lcom/bumptech/glide/Registry;

    invoke-virtual {p2}, Lcom/bumptech/glide/Registry;->g()Ljava/util/List;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/d/f/b/f;->a:Lcom/bumptech/glide/load/engine/x/b;

    invoke-static {p2, p1, v0}, Lcom/bumptech/glide/load/b;->e(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/x/b;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g(Lcom/allinone/callerid/d/f/b/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/d/f/b/f;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

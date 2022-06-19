.class public Lcom/allinone/callerid/d/f/b/e;
.super Ljava/lang/Object;
.source "GifDrawableTranscoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/j/h/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/j/h/e<",
        "Lcom/allinone/callerid/d/f/b/b;",
        "Lpl/droidsonroids/gif/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/s;Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/engine/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/s<",
            "Lcom/allinone/callerid/d/f/b/b;",
            ">;",
            "Lcom/bumptech/glide/load/e;",
            ")",
            "Lcom/bumptech/glide/load/engine/s<",
            "Lpl/droidsonroids/gif/c;",
            ">;"
        }
    .end annotation

    const-string p2, "<ytr>"

    const-string v0, "transcode: GifDrawableTranscoder"

    .line 1
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/s;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/d/f/b/b;

    invoke-virtual {p1}, Lcom/allinone/callerid/d/f/b/b;->a()Ljava/io/File;

    move-result-object p1

    .line 3
    :try_start_0
    new-instance p2, Lcom/allinone/callerid/d/f/b/d;

    new-instance v0, Lpl/droidsonroids/gif/c;

    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/c;-><init>(Ljava/io/File;)V

    invoke-direct {p2, v0}, Lcom/allinone/callerid/d/f/b/d;-><init>(Lpl/droidsonroids/gif/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

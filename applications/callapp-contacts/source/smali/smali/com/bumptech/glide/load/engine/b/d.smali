.class public Lcom/bumptech/glide/load/engine/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/b/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/b/d$a;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Lcom/bumptech/glide/load/engine/b/d$a;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/b/d$a;J)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p2, p0, Lcom/bumptech/glide/load/engine/b/d;->a:J

    .line 57
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b/d;->b:Lcom/bumptech/glide/load/engine/b/d$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 24
    new-instance v0, Lcom/bumptech/glide/load/engine/b/d$1;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/b/d$1;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/bumptech/glide/load/engine/b/d;-><init>(Lcom/bumptech/glide/load/engine/b/d$a;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 36
    new-instance v0, Lcom/bumptech/glide/load/engine/b/d$2;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/engine/b/d$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/bumptech/glide/load/engine/b/d;-><init>(Lcom/bumptech/glide/load/engine/b/d$a;J)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/bumptech/glide/load/engine/b/a;
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/d;->b:Lcom/bumptech/glide/load/engine/b/d$a;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/b/d$a;->a()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 68
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    .line 69
    :cond_2
    :goto_0
    iget-wide v1, p0, Lcom/bumptech/glide/load/engine/b/d;->a:J

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/engine/b/e;->a(Ljava/io/File;J)Lcom/bumptech/glide/load/engine/b/a;

    move-result-object v0

    return-object v0
.end method

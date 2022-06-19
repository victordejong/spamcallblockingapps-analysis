.class public Ld2/h3$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/h3$c;->a(Ld2/t0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/t0;

.field public final synthetic b:Ld2/h3$c;


# direct methods
.method public constructor <init>(Ld2/h3$c;Ld2/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/h3$c$a;->b:Ld2/h3$c;

    iput-object p2, p0, Ld2/h3$c$a;->a:Ld2/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    iget-object v0, p0, Ld2/h3$c$a;->b:Ld2/h3$c;

    iget-object v0, v0, Ld2/h3$c;->a:Ld2/h3;

    iget-object v1, p0, Ld2/h3$c$a;->a:Ld2/t0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, v1, Ld2/t0;->b:Ld2/f4;

    const-string v2, "filepath"

    .line 4
    invoke-virtual {v0, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/a;->f()Ld2/f4;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "success"

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 7
    new-instance v6, Ld2/d4;

    invoke-direct {v6}, Ld2/d4;-><init>()V

    .line 8
    array-length v7, v3

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x1

    if-ge v8, v7, :cond_1

    aget-object v10, v3, v8

    .line 9
    new-instance v11, Ld2/f4;

    invoke-direct {v11}, Ld2/f4;-><init>()V

    const-string v12, "filename"

    .line 10
    invoke-static {v11, v12, v10}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 11
    new-instance v12, Ljava/io/File;

    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v12, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v10

    const-string v12, "is_folder"

    if-eqz v10, :cond_0

    .line 13
    invoke-static {v11, v12, v9}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    goto :goto_1

    .line 14
    :cond_0
    invoke-static {v11, v12, v5}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 15
    :goto_1
    invoke-virtual {v6, v11}, Ld2/d4;->a(Ld2/f4;)Ld2/d4;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {v2, v4, v9}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    const-string v0, "entries"

    .line 17
    invoke-static {v2, v0, v6}, Ld2/e4;->g(Ld2/f4;Ljava/lang/String;Ld2/d4;)Z

    .line 18
    invoke-virtual {v1, v2}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object v0

    invoke-virtual {v0}, Ld2/t0;->b()V

    goto :goto_2

    .line 19
    :cond_2
    invoke-static {v2, v4, v5, v1, v2}, La6/d;->h(Ld2/f4;Ljava/lang/String;ZLd2/t0;Ld2/f4;)V

    .line 20
    :goto_2
    iget-object v0, p0, Ld2/h3$c$a;->b:Ld2/h3$c;

    iget-object v0, v0, Ld2/h3$c;->a:Ld2/h3;

    invoke-static {v0}, Ld2/h3;->b(Ld2/h3;)V

    return-void
.end method

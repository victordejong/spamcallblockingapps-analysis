.class public Ld2/h3$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/h3$e;->a(Ld2/t0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/t0;

.field public final synthetic b:Ld2/h3$e;


# direct methods
.method public constructor <init>(Ld2/h3$e;Ld2/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/h3$e$a;->b:Ld2/h3$e;

    iput-object p2, p0, Ld2/h3$e$a;->a:Ld2/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Ld2/h3$e$a;->b:Ld2/h3$e;

    iget-object v0, v0, Ld2/h3$e;->a:Ld2/h3;

    iget-object v1, p0, Ld2/h3$e$a;->a:Ld2/t0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "success"

    .line 3
    iget-object v2, v1, Ld2/t0;->b:Ld2/f4;

    const-string v3, "filepath"

    .line 4
    invoke-virtual {v2, v3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "new_filepath"

    .line 5
    invoke-virtual {v2, v4}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/a;->f()Ld2/f4;

    move-result-object v4

    const/4 v5, 0x0

    .line 7
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v6, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 10
    invoke-static {v4, v0, v2}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 11
    invoke-virtual {v1, v4}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object v2

    invoke-virtual {v2}, Ld2/t0;->b()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {v4, v0, v5}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 13
    invoke-virtual {v1, v4}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object v2

    invoke-virtual {v2}, Ld2/t0;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 14
    :catch_0
    invoke-static {v4, v0, v5, v1, v4}, La6/d;->h(Ld2/f4;Ljava/lang/String;ZLd2/t0;Ld2/f4;)V

    .line 15
    :goto_0
    iget-object v0, p0, Ld2/h3$e$a;->b:Ld2/h3$e;

    iget-object v0, v0, Ld2/h3$e;->a:Ld2/h3;

    invoke-static {v0}, Ld2/h3;->b(Ld2/h3;)V

    return-void
.end method

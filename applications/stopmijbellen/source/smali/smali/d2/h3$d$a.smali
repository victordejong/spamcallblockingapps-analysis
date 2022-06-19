.class public Ld2/h3$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/h3$d;->a(Ld2/t0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/t0;

.field public final synthetic b:Ld2/h3$d;


# direct methods
.method public constructor <init>(Ld2/h3$d;Ld2/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/h3$d$a;->b:Ld2/h3$d;

    iput-object p2, p0, Ld2/h3$d$a;->a:Ld2/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Ld2/h3$d$a;->b:Ld2/h3$d;

    iget-object v0, v0, Ld2/h3$d;->a:Ld2/h3;

    iget-object v1, p0, Ld2/h3$d$a;->a:Ld2/t0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "success"

    .line 3
    iget-object v3, v1, Ld2/t0;->b:Ld2/f4;

    const-string v4, "filepath"

    .line 4
    invoke-virtual {v3, v4}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "encoding"

    .line 5
    invoke-virtual {v3, v5}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    const-string v7, "utf8"

    .line 6
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 7
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/a;->f()Ld2/f4;

    move-result-object v7

    .line 8
    :try_start_0
    invoke-virtual {v0, v4, v3}, Ld2/h3;->a(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9
    invoke-static {v7, v2, v5}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    const-string v3, "data"

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v3, v0}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 11
    invoke-virtual {v1, v7}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object v0

    invoke-virtual {v0}, Ld2/t0;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 12
    :catch_0
    invoke-static {v7, v2, v6, v1, v7}, La6/d;->h(Ld2/f4;Ljava/lang/String;ZLd2/t0;Ld2/f4;)V

    .line 13
    :goto_1
    iget-object v0, p0, Ld2/h3$d$a;->b:Ld2/h3$d;

    iget-object v0, v0, Ld2/h3$d;->a:Ld2/h3;

    invoke-static {v0}, Ld2/h3;->b(Ld2/h3;)V

    return-void
.end method

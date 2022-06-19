.class final Landroidx/media2/player/c$32;
.super Landroidx/media2/player/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/c;->c()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/player/c;


# direct methods
.method constructor <init>(Landroidx/media2/player/c;IZ)V
    .locals 0

    .line 239
    iput-object p1, p0, Landroidx/media2/player/c$32;->a:Landroidx/media2/player/c;

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/player/c$b;-><init>(Landroidx/media2/player/c;IZ)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 7

    .line 242
    iget-object v0, p0, Landroidx/media2/player/c$32;->a:Landroidx/media2/player/c;

    iget-object v0, v0, Landroidx/media2/player/c;->a:Landroidx/media2/player/e;

    .line 1204
    iget-boolean v1, v0, Landroidx/media2/player/e;->m:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Landroidx/core/e/d;->b(Z)V

    .line 1205
    iget-object v0, v0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    .line 1919
    iget-object v1, v0, Landroidx/media2/player/e$e;->b:Landroidx/media2/exoplayer/external/ak;

    iget-object v0, v0, Landroidx/media2/player/e$e;->c:Landroidx/media2/exoplayer/external/source/h;

    .line 2116
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/ak;->q()V

    .line 2117
    iget-object v3, v1, Landroidx/media2/exoplayer/external/ak;->u:Landroidx/media2/exoplayer/external/source/t;

    if-eqz v3, :cond_0

    .line 2118
    iget-object v3, v1, Landroidx/media2/exoplayer/external/ak;->u:Landroidx/media2/exoplayer/external/source/t;

    iget-object v4, v1, Landroidx/media2/exoplayer/external/ak;->k:Landroidx/media2/exoplayer/external/a/a;

    invoke-interface {v3, v4}, Landroidx/media2/exoplayer/external/source/t;->a(Landroidx/media2/exoplayer/external/source/u;)V

    .line 2119
    iget-object v3, v1, Landroidx/media2/exoplayer/external/ak;->k:Landroidx/media2/exoplayer/external/a/a;

    .line 2147
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v3, Landroidx/media2/exoplayer/external/a/a;->b:Landroidx/media2/exoplayer/external/a/a$b;

    .line 2660
    iget-object v5, v5, Landroidx/media2/exoplayer/external/a/a$b;->a:Ljava/util/ArrayList;

    .line 2148
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2149
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/a/a$a;

    .line 2150
    iget v6, v5, Landroidx/media2/exoplayer/external/a/a$a;->c:I

    iget-object v5, v5, Landroidx/media2/exoplayer/external/a/a$a;->a:Landroidx/media2/exoplayer/external/source/t$a;

    invoke-virtual {v3, v6, v5}, Landroidx/media2/exoplayer/external/a/a;->b(ILandroidx/media2/exoplayer/external/source/t$a;)V

    goto :goto_0

    .line 2121
    :cond_0
    iput-object v0, v1, Landroidx/media2/exoplayer/external/ak;->u:Landroidx/media2/exoplayer/external/source/t;

    .line 2122
    iget-object v3, v1, Landroidx/media2/exoplayer/external/ak;->d:Landroid/os/Handler;

    iget-object v4, v1, Landroidx/media2/exoplayer/external/ak;->k:Landroidx/media2/exoplayer/external/a/a;

    invoke-interface {v0, v3, v4}, Landroidx/media2/exoplayer/external/source/t;->a(Landroid/os/Handler;Landroidx/media2/exoplayer/external/source/u;)V

    .line 2124
    iget-object v3, v1, Landroidx/media2/exoplayer/external/ak;->l:Landroidx/media2/exoplayer/external/audio/e;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/ak;->n()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/audio/e;->a(Z)I

    move-result v3

    .line 2125
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/ak;->n()Z

    move-result v4

    invoke-virtual {v1, v4, v3}, Landroidx/media2/exoplayer/external/ak;->a(ZI)V

    .line 2126
    iget-object v1, v1, Landroidx/media2/exoplayer/external/ak;->c:Landroidx/media2/exoplayer/external/h;

    invoke-virtual {v1, v0, v2, v2}, Landroidx/media2/exoplayer/external/h;->a(Landroidx/media2/exoplayer/external/source/t;ZZ)V

    return-void
.end method

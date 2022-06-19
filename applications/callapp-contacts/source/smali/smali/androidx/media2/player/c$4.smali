.class final Landroidx/media2/player/c$4;
.super Landroidx/media2/player/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/c;->i()Ljava/lang/Object;
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

    .line 329
    iput-object p1, p0, Landroidx/media2/player/c$4;->a:Landroidx/media2/player/c;

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/player/c$b;-><init>(Landroidx/media2/player/c;IZ)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 332
    iget-object v0, p0, Landroidx/media2/player/c$4;->a:Landroidx/media2/player/c;

    iget-object v0, v0, Landroidx/media2/player/c;->a:Landroidx/media2/player/e;

    .line 1272
    iget-object v0, v0, Landroidx/media2/player/e;->j:Landroidx/media2/player/e$e;

    .line 1937
    iget-object v1, v0, Landroidx/media2/player/e$e;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/player/e$d;

    invoke-virtual {v0, v1}, Landroidx/media2/player/e$e;->a(Landroidx/media2/player/e$d;)V

    .line 1938
    iget-object v0, v0, Landroidx/media2/player/e$e;->c:Landroidx/media2/exoplayer/external/source/h;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/h;->g()Landroidx/media2/exoplayer/external/source/t;

    return-void
.end method

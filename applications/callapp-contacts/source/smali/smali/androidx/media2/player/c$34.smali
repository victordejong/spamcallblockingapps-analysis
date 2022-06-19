.class final Landroidx/media2/player/c$34;
.super Landroidx/media2/player/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/c;->e()Ljava/lang/Object;
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

    .line 259
    iput-object p1, p0, Landroidx/media2/player/c$34;->a:Landroidx/media2/player/c;

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/player/c$b;-><init>(Landroidx/media2/player/c;IZ)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 262
    iget-object v0, p0, Landroidx/media2/player/c$34;->a:Landroidx/media2/player/c;

    iget-object v0, v0, Landroidx/media2/player/c;->a:Landroidx/media2/player/e;

    const/4 v1, 0x0

    .line 1217
    iput-boolean v1, v0, Landroidx/media2/player/e;->n:Z

    .line 1218
    iget-object v0, v0, Landroidx/media2/player/e;->f:Landroidx/media2/exoplayer/external/ak;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/ak;->a(Z)V

    return-void
.end method

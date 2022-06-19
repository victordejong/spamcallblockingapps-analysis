.class public final Landroidx/media2/exoplayer/external/audio/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/audio/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Landroidx/media2/exoplayer/external/audio/g;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroidx/media2/exoplayer/external/audio/g;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 106
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/g$a;->a:Landroid/os/Handler;

    .line 107
    iput-object p2, p0, Landroidx/media2/exoplayer/external/audio/g$a;->b:Landroidx/media2/exoplayer/external/audio/g;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/b/d;)V
    .locals 2

    .line 157
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/g$a;->b:Landroidx/media2/exoplayer/external/audio/g;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/g$a;->a:Landroid/os/Handler;

    new-instance v1, Landroidx/media2/exoplayer/external/audio/l;

    invoke-direct {v1, p0, p1}, Landroidx/media2/exoplayer/external/audio/l;-><init>(Landroidx/media2/exoplayer/external/audio/g$a;Landroidx/media2/exoplayer/external/b/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

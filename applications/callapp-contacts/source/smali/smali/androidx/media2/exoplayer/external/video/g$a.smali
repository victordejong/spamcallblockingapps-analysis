.class public final Landroidx/media2/exoplayer/external/video/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/video/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Landroidx/media2/exoplayer/external/video/g;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroidx/media2/exoplayer/external/video/g;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 129
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/g$a;->a:Landroid/os/Handler;

    .line 130
    iput-object p2, p0, Landroidx/media2/exoplayer/external/video/g$a;->b:Landroidx/media2/exoplayer/external/video/g;

    return-void
.end method


# virtual methods
.method public final a(IIIF)V
    .locals 8

    .line 171
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/g$a;->b:Landroidx/media2/exoplayer/external/video/g;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/g$a;->a:Landroid/os/Handler;

    new-instance v7, Landroidx/media2/exoplayer/external/video/l;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/video/l;-><init>(Landroidx/media2/exoplayer/external/video/g$a;IIIF)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(IJ)V
    .locals 2

    .line 160
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/g$a;->b:Landroidx/media2/exoplayer/external/video/g;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/g$a;->a:Landroid/os/Handler;

    new-instance v1, Landroidx/media2/exoplayer/external/video/k;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/video/k;-><init>(Landroidx/media2/exoplayer/external/video/g$a;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 2

    .line 181
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/g$a;->b:Landroidx/media2/exoplayer/external/video/g;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/g$a;->a:Landroid/os/Handler;

    new-instance v1, Landroidx/media2/exoplayer/external/video/m;

    invoke-direct {v1, p0, p1}, Landroidx/media2/exoplayer/external/video/m;-><init>(Landroidx/media2/exoplayer/external/video/g$a;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/b/d;)V
    .locals 2

    .line 189
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/g$a;->b:Landroidx/media2/exoplayer/external/video/g;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/g$a;->a:Landroid/os/Handler;

    new-instance v1, Landroidx/media2/exoplayer/external/video/n;

    invoke-direct {v1, p0, p1}, Landroidx/media2/exoplayer/external/video/n;-><init>(Landroidx/media2/exoplayer/external/video/g$a;Landroidx/media2/exoplayer/external/b/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

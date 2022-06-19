.class public abstract Landroidx/media2/exoplayer/external/ae$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/ae$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/media2/exoplayer/external/ExoPlaybackException;)V
    .locals 0

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/al;I)V
    .locals 3

    .line 467
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/al;->b()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 469
    new-instance p2, Landroidx/media2/exoplayer/external/al$b;

    invoke-direct {p2}, Landroidx/media2/exoplayer/external/al$b;-><init>()V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 1648
    invoke-virtual {p1, v0, p2, v1, v2}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;

    :cond_0
    return-void
.end method

.method public a(Landroidx/media2/exoplayer/external/trackselection/f;)V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 0

    return-void
.end method

.method public a(ZI)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

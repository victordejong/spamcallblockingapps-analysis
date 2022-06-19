.class public final Landroidx/media2/exoplayer/external/source/hls/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/hls/e;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/upstream/f$a;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/f$a;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/b;->a:Landroidx/media2/exoplayer/external/upstream/f$a;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media2/exoplayer/external/upstream/f;
    .locals 1

    .line 42
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/b;->a:Landroidx/media2/exoplayer/external/upstream/f$a;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/f$a;->a()Landroidx/media2/exoplayer/external/upstream/f;

    move-result-object v0

    return-object v0
.end method

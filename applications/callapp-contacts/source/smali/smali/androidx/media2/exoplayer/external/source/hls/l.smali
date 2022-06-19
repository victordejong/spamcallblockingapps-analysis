.class final synthetic Landroidx/media2/exoplayer/external/source/hls/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/source/hls/k;


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/source/hls/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/l;->a:Landroidx/media2/exoplayer/external/source/hls/k;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/l;->a:Landroidx/media2/exoplayer/external/source/hls/k;

    .line 1000
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/hls/k;->h()V

    return-void
.end method

.class final synthetic Landroidx/media2/exoplayer/external/source/hls/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/source/hls/k;


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/source/hls/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/m;->a:Landroidx/media2/exoplayer/external/source/hls/k;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/m;->a:Landroidx/media2/exoplayer/external/source/hls/k;

    const/4 v1, 0x1

    .line 1946
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/source/hls/k;->l:Z

    .line 1947
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/hls/k;->h()V

    return-void
.end method

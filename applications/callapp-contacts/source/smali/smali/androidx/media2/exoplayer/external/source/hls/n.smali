.class final synthetic Landroidx/media2/exoplayer/external/source/hls/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/source/hls/k$a;


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/source/hls/k$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/n;->a:Landroidx/media2/exoplayer/external/source/hls/k$a;

    return-void
.end method

.method static a(Landroidx/media2/exoplayer/external/source/hls/k$a;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/n;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/source/hls/n;-><init>(Landroidx/media2/exoplayer/external/source/hls/k$a;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/n;->a:Landroidx/media2/exoplayer/external/source/hls/k$a;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/hls/k$a;->f()V

    return-void
.end method

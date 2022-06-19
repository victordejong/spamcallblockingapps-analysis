.class final synthetic Landroidx/media2/exoplayer/external/source/hls/playlist/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$a;


# static fields
.field static final a:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/playlist/c;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/source/hls/playlist/c;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/source/hls/playlist/c;->a:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/source/hls/e;Landroidx/media2/exoplayer/external/upstream/t;Landroidx/media2/exoplayer/external/source/hls/playlist/i;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;
    .locals 1

    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/playlist/b;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/hls/playlist/b;-><init>(Landroidx/media2/exoplayer/external/source/hls/e;Landroidx/media2/exoplayer/external/upstream/t;Landroidx/media2/exoplayer/external/source/hls/playlist/i;)V

    check-cast v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    return-object v0
.end method

.class public final Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;

.field private final c:Landroidx/media2/exoplayer/external/source/hls/e;

.field private d:Landroidx/media2/exoplayer/external/source/hls/f;

.field private e:Landroidx/media2/exoplayer/external/source/hls/playlist/i;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$a;

.field private h:Landroidx/media2/exoplayer/external/source/g;

.field private i:Landroidx/media2/exoplayer/external/drm/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/drm/k<",
            "*>;"
        }
    .end annotation
.end field

.field private j:Landroidx/media2/exoplayer/external/upstream/t;

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/hls/e;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/hls/e;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->c:Landroidx/media2/exoplayer/external/source/hls/e;

    .line 104
    new-instance p1, Landroidx/media2/exoplayer/external/source/hls/playlist/a;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/a;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->e:Landroidx/media2/exoplayer/external/source/hls/playlist/i;

    .line 105
    sget-object p1, Landroidx/media2/exoplayer/external/source/hls/playlist/b;->a:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$a;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->g:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$a;

    .line 106
    sget-object p1, Landroidx/media2/exoplayer/external/source/hls/f;->a:Landroidx/media2/exoplayer/external/source/hls/f;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->d:Landroidx/media2/exoplayer/external/source/hls/f;

    .line 1040
    sget-object p1, Landroidx/media2/exoplayer/external/drm/k;->e:Landroidx/media2/exoplayer/external/drm/k;

    .line 107
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->i:Landroidx/media2/exoplayer/external/drm/k;

    .line 108
    new-instance p1, Landroidx/media2/exoplayer/external/upstream/q;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/upstream/q;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->j:Landroidx/media2/exoplayer/external/upstream/t;

    .line 109
    new-instance p1, Landroidx/media2/exoplayer/external/source/k;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/source/k;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->h:Landroidx/media2/exoplayer/external/source/g;

    return-void
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/f$a;)V
    .locals 1

    .line 93
    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/b;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/source/hls/b;-><init>(Landroidx/media2/exoplayer/external/upstream/f$a;)V

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;-><init>(Landroidx/media2/exoplayer/external/source/hls/e;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 290
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->a:Z

    .line 291
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->f:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 292
    new-instance v2, Landroidx/media2/exoplayer/external/source/hls/playlist/d;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->e:Landroidx/media2/exoplayer/external/source/hls/playlist/i;

    invoke-direct {v2, v3, v1}, Landroidx/media2/exoplayer/external/source/hls/playlist/d;-><init>(Landroidx/media2/exoplayer/external/source/hls/playlist/i;Ljava/util/List;)V

    iput-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->e:Landroidx/media2/exoplayer/external/source/hls/playlist/i;

    .line 295
    :cond_0
    new-instance v1, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;

    iget-object v6, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->c:Landroidx/media2/exoplayer/external/source/hls/e;

    iget-object v7, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->d:Landroidx/media2/exoplayer/external/source/hls/f;

    iget-object v8, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->h:Landroidx/media2/exoplayer/external/source/g;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->i:Landroidx/media2/exoplayer/external/drm/k;

    iget-object v10, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->j:Landroidx/media2/exoplayer/external/upstream/t;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->g:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$a;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->e:Landroidx/media2/exoplayer/external/source/hls/playlist/i;

    .line 302
    invoke-interface {v2, v6, v10, v3}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker$a;->a(Landroidx/media2/exoplayer/external/source/hls/e;Landroidx/media2/exoplayer/external/upstream/t;Landroidx/media2/exoplayer/external/source/hls/playlist/i;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;

    move-result-object v11

    iget-boolean v12, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->k:Z

    iget-boolean v13, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->l:Z

    iget-object v14, v0, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->b:Ljava/lang/Object;

    const/4 v15, 0x0

    move-object v4, v1

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v15}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/source/hls/e;Landroidx/media2/exoplayer/external/source/hls/f;Landroidx/media2/exoplayer/external/source/g;Landroidx/media2/exoplayer/external/drm/k;Landroidx/media2/exoplayer/external/upstream/t;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylistTracker;ZZLjava/lang/Object;Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$1;)V

    return-object v1
.end method

.method public final synthetic b(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/t;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->a(Landroid/net/Uri;)Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;

    move-result-object p1

    return-object p1
.end method

.class public final Landroidx/media2/exoplayer/external/upstream/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/f;


# instance fields
.field public a:J

.field public b:Landroid/net/Uri;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Landroidx/media2/exoplayer/external/upstream/f;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/f;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/upstream/f;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/v;->d:Landroidx/media2/exoplayer/external/upstream/f;

    .line 52
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/v;->b:Landroid/net/Uri;

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/v;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/v;->d:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/upstream/f;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 99
    iget-wide p2, p0, Landroidx/media2/exoplayer/external/upstream/v;->a:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media2/exoplayer/external/upstream/v;->a:J

    :cond_0
    return p1
.end method

.method public final a(Landroidx/media2/exoplayer/external/upstream/h;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p1, Landroidx/media2/exoplayer/external/upstream/h;->a:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/v;->b:Landroid/net/Uri;

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/v;->c:Ljava/util/Map;

    .line 89
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/v;->d:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/upstream/f;->a(Landroidx/media2/exoplayer/external/upstream/h;)J

    move-result-wide v0

    .line 90
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/v;->a()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/v;->b:Landroid/net/Uri;

    .line 91
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/v;->b()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/v;->c:Ljava/util/Map;

    return-wide v0
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    .line 107
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/v;->d:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/f;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroidx/media2/exoplayer/external/upstream/w;)V
    .locals 1

    .line 81
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/v;->d:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/upstream/f;->a(Landroidx/media2/exoplayer/external/upstream/w;)V

    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/v;->d:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/f;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/v;->d:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/f;->c()V

    return-void
.end method

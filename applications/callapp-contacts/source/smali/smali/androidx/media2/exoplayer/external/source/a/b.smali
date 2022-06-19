.class public abstract Landroidx/media2/exoplayer/external/source/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/Loader$d;


# instance fields
.field public final a:Landroidx/media2/exoplayer/external/upstream/h;

.field public final b:I

.field public final c:Landroidx/media2/exoplayer/external/Format;

.field public final d:I

.field public final e:Ljava/lang/Object;

.field public final f:J

.field public final g:J

.field protected final h:Landroidx/media2/exoplayer/external/upstream/v;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/upstream/h;ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/v;

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/upstream/v;-><init>(Landroidx/media2/exoplayer/external/upstream/f;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/a/b;->h:Landroidx/media2/exoplayer/external/upstream/v;

    .line 99
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/upstream/h;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/a/b;->a:Landroidx/media2/exoplayer/external/upstream/h;

    .line 100
    iput p3, p0, Landroidx/media2/exoplayer/external/source/a/b;->b:I

    .line 101
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/a/b;->c:Landroidx/media2/exoplayer/external/Format;

    .line 102
    iput p5, p0, Landroidx/media2/exoplayer/external/source/a/b;->d:I

    .line 103
    iput-object p6, p0, Landroidx/media2/exoplayer/external/source/a/b;->e:Ljava/lang/Object;

    .line 104
    iput-wide p7, p0, Landroidx/media2/exoplayer/external/source/a/b;->f:J

    .line 105
    iput-wide p9, p0, Landroidx/media2/exoplayer/external/source/a/b;->g:J

    return-void
.end method


# virtual methods
.method public final c()J
    .locals 2

    .line 120
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/a/b;->h:Landroidx/media2/exoplayer/external/upstream/v;

    .line 1063
    iget-wide v0, v0, Landroidx/media2/exoplayer/external/upstream/v;->a:J

    return-wide v0
.end method

.method public final d()Landroid/net/Uri;
    .locals 1

    .line 131
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/a/b;->h:Landroidx/media2/exoplayer/external/upstream/v;

    .line 1071
    iget-object v0, v0, Landroidx/media2/exoplayer/external/upstream/v;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public final e()Ljava/util/Map;
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

    .line 141
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/a/b;->h:Landroidx/media2/exoplayer/external/upstream/v;

    .line 1076
    iget-object v0, v0, Landroidx/media2/exoplayer/external/upstream/v;->c:Ljava/util/Map;

    return-object v0
.end method

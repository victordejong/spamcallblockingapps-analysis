.class public abstract Leq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ldt$e;


# instance fields
.field public final a:Los;

.field public final b:I

.field public final c:Landroidx/media2/exoplayer/external/Format;

.field public final d:I

.field public final e:Ljava/lang/Object;

.field public final f:J

.field public final g:J

.field public final h:Lgt;


# direct methods
.method public constructor <init>(Lls;Los;ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lgt;

    invoke-direct {v0, p1}, Lgt;-><init>(Lls;)V

    iput-object v0, p0, Leq;->h:Lgt;

    invoke-static {p2}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Los;

    iput-object p2, p0, Leq;->a:Los;

    iput p3, p0, Leq;->b:I

    iput-object p4, p0, Leq;->c:Landroidx/media2/exoplayer/external/Format;

    iput p5, p0, Leq;->d:I

    iput-object p6, p0, Leq;->e:Ljava/lang/Object;

    iput-wide p7, p0, Leq;->f:J

    iput-wide p9, p0, Leq;->g:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Leq;->h:Lgt;

    invoke-virtual {v0}, Lgt;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()J
    .locals 4

    iget-wide v0, p0, Leq;->g:J

    iget-wide v2, p0, Leq;->f:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final c()Ljava/util/Map;
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

    iget-object v0, p0, Leq;->h:Lgt;

    invoke-virtual {v0}, Lgt;->e()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final d()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Leq;->h:Lgt;

    invoke-virtual {v0}, Lgt;->d()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

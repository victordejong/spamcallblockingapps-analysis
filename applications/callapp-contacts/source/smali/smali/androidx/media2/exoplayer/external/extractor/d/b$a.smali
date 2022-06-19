.class final Landroidx/media2/exoplayer/external/extractor/d/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/d/g;
.implements Landroidx/media2/exoplayer/external/extractor/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:[J

.field b:[J

.field c:J

.field final synthetic d:Landroidx/media2/exoplayer/external/extractor/d/b;

.field private e:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/d/b;)V
    .locals 2

    .line 153
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/d/b$a;->d:Landroidx/media2/exoplayer/external/extractor/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 154
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/d/b$a;->c:J

    .line 155
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/d/b$a;->e:J

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/extractor/h;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 185
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/d/b$a;->e:J

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-ltz p1, :cond_0

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    neg-long v0, v0

    .line 187
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/d/b$a;->e:J

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public final a(J)Landroidx/media2/exoplayer/external/extractor/o$a;
    .locals 9

    .line 211
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d/b$a;->d:Landroidx/media2/exoplayer/external/extractor/d/b;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/d/b;->b(J)J

    move-result-wide v0

    .line 212
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/d/b$a;->a:[J

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Landroidx/media2/exoplayer/external/util/ac;->a([JJZ)I

    move-result v0

    .line 213
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/d/b$a;->d:Landroidx/media2/exoplayer/external/extractor/d/b;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/d/b$a;->a:[J

    aget-wide v4, v2, v0

    invoke-virtual {v1, v4, v5}, Landroidx/media2/exoplayer/external/extractor/d/b;->a(J)J

    move-result-wide v1

    .line 214
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/d/b$a;->c:J

    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/d/b$a;->b:[J

    aget-wide v7, v6, v0

    add-long/2addr v4, v7

    .line 215
    new-instance v6, Landroidx/media2/exoplayer/external/extractor/p;

    invoke-direct {v6, v1, v2, v4, v5}, Landroidx/media2/exoplayer/external/extractor/p;-><init>(JJ)V

    cmp-long v4, v1, p1

    if-gez v4, :cond_1

    .line 216
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/d/b$a;->a:[J

    array-length p2, p1

    sub-int/2addr p2, v3

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/d/b$a;->d:Landroidx/media2/exoplayer/external/extractor/d/b;

    add-int/2addr v0, v3

    aget-wide v1, p1, v0

    invoke-virtual {p2, v1, v2}, Landroidx/media2/exoplayer/external/extractor/d/b;->a(J)J

    move-result-wide p1

    .line 220
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/d/b$a;->c:J

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/d/b$a;->b:[J

    aget-wide v4, v3, v0

    add-long/2addr v1, v4

    .line 221
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/p;

    invoke-direct {v0, p1, p2, v1, v2}, Landroidx/media2/exoplayer/external/extractor/p;-><init>(JJ)V

    .line 222
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/o$a;

    invoke-direct {p1, v6, v0}, Landroidx/media2/exoplayer/external/extractor/o$a;-><init>(Landroidx/media2/exoplayer/external/extractor/p;Landroidx/media2/exoplayer/external/extractor/p;)V

    return-object p1

    .line 217
    :cond_1
    :goto_0
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/o$a;

    invoke-direct {p1, v6}, Landroidx/media2/exoplayer/external/extractor/o$a;-><init>(Landroidx/media2/exoplayer/external/extractor/p;)V

    return-object p1
.end method

.method public final a()Landroidx/media2/exoplayer/external/extractor/o;
    .locals 0

    return-object p0
.end method

.method public final a_(J)V
    .locals 2

    .line 195
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d/b$a;->a:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroidx/media2/exoplayer/external/util/ac;->a([JJZ)I

    move-result p1

    .line 196
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/d/b$a;->a:[J

    aget-wide p1, p2, p1

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/d/b$a;->e:J

    return-void
.end method

.method public final b()J
    .locals 5

    .line 228
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d/b$a;->d:Landroidx/media2/exoplayer/external/extractor/d/b;

    .line 1040
    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/d/b;->a:Landroidx/media2/exoplayer/external/util/h;

    .line 1125
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/util/h;->h:J

    const-wide/32 v3, 0xf4240

    mul-long v1, v1, v3

    iget v0, v0, Landroidx/media2/exoplayer/external/util/h;->e:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    return-wide v1
.end method

.method public final j_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

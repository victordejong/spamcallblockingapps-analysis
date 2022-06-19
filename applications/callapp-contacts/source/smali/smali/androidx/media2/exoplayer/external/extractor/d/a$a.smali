.class final Landroidx/media2/exoplayer/external/extractor/d/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/exoplayer/external/extractor/d/a;


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/extractor/d/a;)V
    .locals 0

    .line 296
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/d/a$a;->a:Landroidx/media2/exoplayer/external/extractor/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/extractor/d/a;Landroidx/media2/exoplayer/external/extractor/d/a$1;)V
    .locals 0

    .line 296
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/d/a$a;-><init>(Landroidx/media2/exoplayer/external/extractor/d/a;)V

    return-void
.end method


# virtual methods
.method public final a(J)Landroidx/media2/exoplayer/external/extractor/o$a;
    .locals 10

    .line 305
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d/a$a;->a:Landroidx/media2/exoplayer/external/extractor/d/a;

    .line 1038
    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->c:Landroidx/media2/exoplayer/external/extractor/d/i;

    .line 305
    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/d/i;->b(J)J

    move-result-wide v0

    .line 306
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/d/a$a;->a:Landroidx/media2/exoplayer/external/extractor/d/a;

    .line 2038
    iget-wide v2, v2, Landroidx/media2/exoplayer/external/extractor/d/a;->a:J

    .line 307
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/d/a$a;->a:Landroidx/media2/exoplayer/external/extractor/d/a;

    .line 3038
    iget-wide v4, v4, Landroidx/media2/exoplayer/external/extractor/d/a;->b:J

    .line 308
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/d/a$a;->a:Landroidx/media2/exoplayer/external/extractor/d/a;

    .line 4038
    iget-wide v6, v6, Landroidx/media2/exoplayer/external/extractor/d/a;->a:J

    sub-long/2addr v4, v6

    mul-long v0, v0, v4

    .line 308
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/d/a$a;->a:Landroidx/media2/exoplayer/external/extractor/d/a;

    .line 5038
    iget-wide v4, v4, Landroidx/media2/exoplayer/external/extractor/d/a;->d:J

    .line 308
    div-long/2addr v0, v4

    add-long/2addr v2, v0

    const-wide/16 v0, 0x7530

    sub-long v4, v2, v0

    .line 310
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d/a$a;->a:Landroidx/media2/exoplayer/external/extractor/d/a;

    .line 6038
    iget-wide v6, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->a:J

    .line 311
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d/a$a;->a:Landroidx/media2/exoplayer/external/extractor/d/a;

    .line 7038
    iget-wide v0, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->b:J

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    .line 311
    invoke-static/range {v4 .. v9}, Landroidx/media2/exoplayer/external/util/ac;->a(JJJ)J

    move-result-wide v0

    .line 312
    new-instance v2, Landroidx/media2/exoplayer/external/extractor/o$a;

    new-instance v3, Landroidx/media2/exoplayer/external/extractor/p;

    invoke-direct {v3, p1, p2, v0, v1}, Landroidx/media2/exoplayer/external/extractor/p;-><init>(JJ)V

    invoke-direct {v2, v3}, Landroidx/media2/exoplayer/external/extractor/o$a;-><init>(Landroidx/media2/exoplayer/external/extractor/p;)V

    return-object v2
.end method

.method public final b()J
    .locals 3

    .line 317
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/d/a$a;->a:Landroidx/media2/exoplayer/external/extractor/d/a;

    .line 8038
    iget-object v0, v0, Landroidx/media2/exoplayer/external/extractor/d/a;->c:Landroidx/media2/exoplayer/external/extractor/d/i;

    .line 317
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/d/a$a;->a:Landroidx/media2/exoplayer/external/extractor/d/a;

    .line 9038
    iget-wide v1, v1, Landroidx/media2/exoplayer/external/extractor/d/a;->d:J

    .line 317
    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/d/i;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final j_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

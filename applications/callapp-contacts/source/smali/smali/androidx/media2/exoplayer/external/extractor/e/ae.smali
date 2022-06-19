.class final Landroidx/media2/exoplayer/external/extractor/e/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroidx/media2/exoplayer/external/util/z;

.field final b:Landroidx/media2/exoplayer/external/util/p;

.field c:Z

.field d:Z

.field e:Z

.field f:J

.field g:J

.field h:J


# direct methods
.method constructor <init>()V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroidx/media2/exoplayer/external/util/z;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/z;-><init>(J)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/ae;->a:Landroidx/media2/exoplayer/external/util/z;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 60
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/e/ae;->f:J

    .line 61
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/e/ae;->g:J

    .line 62
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/e/ae;->h:J

    .line 63
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/ae;->b:Landroidx/media2/exoplayer/external/util/p;

    return-void
.end method


# virtual methods
.method final a(Landroidx/media2/exoplayer/external/extractor/h;)I
    .locals 3

    .line 126
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/ae;->b:Landroidx/media2/exoplayer/external/util/p;

    sget-object v1, Landroidx/media2/exoplayer/external/util/ac;->f:[B

    .line 1099
    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/ae;->c:Z

    .line 128
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    const/4 p1, 0x0

    return p1
.end method

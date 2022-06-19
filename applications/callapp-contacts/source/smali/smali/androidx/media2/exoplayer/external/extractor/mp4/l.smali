.class public final Landroidx/media2/exoplayer/external/extractor/mp4/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Landroidx/media2/exoplayer/external/Format;

.field public final g:I

.field public final h:[J

.field public final i:[J

.field public final j:I

.field private final k:[Landroidx/media2/exoplayer/external/extractor/mp4/m;


# direct methods
.method public constructor <init>(IIJJJLandroidx/media2/exoplayer/external/Format;I[Landroidx/media2/exoplayer/external/extractor/mp4/m;I[J[J)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/l;->a:I

    .line 113
    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/l;->b:I

    .line 114
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/l;->c:J

    .line 115
    iput-wide p5, p0, Landroidx/media2/exoplayer/external/extractor/mp4/l;->d:J

    .line 116
    iput-wide p7, p0, Landroidx/media2/exoplayer/external/extractor/mp4/l;->e:J

    .line 117
    iput-object p9, p0, Landroidx/media2/exoplayer/external/extractor/mp4/l;->f:Landroidx/media2/exoplayer/external/Format;

    .line 118
    iput p10, p0, Landroidx/media2/exoplayer/external/extractor/mp4/l;->g:I

    .line 119
    iput-object p11, p0, Landroidx/media2/exoplayer/external/extractor/mp4/l;->k:[Landroidx/media2/exoplayer/external/extractor/mp4/m;

    .line 120
    iput p12, p0, Landroidx/media2/exoplayer/external/extractor/mp4/l;->j:I

    .line 121
    iput-object p13, p0, Landroidx/media2/exoplayer/external/extractor/mp4/l;->h:[J

    .line 122
    iput-object p14, p0, Landroidx/media2/exoplayer/external/extractor/mp4/l;->i:[J

    return-void
.end method


# virtual methods
.method public final a(I)Landroidx/media2/exoplayer/external/extractor/mp4/m;
    .locals 1

    .line 134
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/l;->k:[Landroidx/media2/exoplayer/external/extractor/mp4/m;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 135
    :cond_0
    aget-object p1, v0, p1

    return-object p1
.end method

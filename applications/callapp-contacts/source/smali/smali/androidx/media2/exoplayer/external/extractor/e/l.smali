.class public final Landroidx/media2/exoplayer/external/extractor/e/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/e/m;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/extractor/e/ah$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[Landroidx/media2/exoplayer/external/extractor/q;

.field private c:Z

.field private d:I

.field private e:I

.field private f:J


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/extractor/e/ah$a;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/l;->a:Ljava/util/List;

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/media2/exoplayer/external/extractor/q;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/l;->b:[Landroidx/media2/exoplayer/external/extractor/q;

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/util/p;I)Z
    .locals 2

    .line 126
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 129
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result p1

    if-eq p1, p2, :cond_1

    .line 130
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/e/l;->c:Z

    .line 132
    :cond_1
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/e/l;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/l;->d:I

    .line 133
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/e/l;->c:Z

    return p1
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/l;->c:Z

    return-void
.end method

.method public final a(JI)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 88
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/extractor/e/l;->c:Z

    .line 89
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/e/l;->f:J

    const/4 p1, 0x0

    .line 90
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/l;->e:I

    const/4 p1, 0x2

    .line 91
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/l;->d:I

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/e/ah$d;)V
    .locals 11

    const/4 v0, 0x0

    .line 65
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/e/l;->b:[Landroidx/media2/exoplayer/external/extractor/q;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 66
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/e/l;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/extractor/e/ah$a;

    .line 67
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->a()V

    .line 68
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->b()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object v2

    .line 71
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    iget-object v4, v1, Landroidx/media2/exoplayer/external/extractor/e/ah$a;->c:[B

    .line 76
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iget-object v9, v1, Landroidx/media2/exoplayer/external/extractor/e/ah$a;->a:Ljava/lang/String;

    const/4 v10, 0x0

    const-string v4, "application/dvbsubs"

    .line 70
    invoke-static/range {v3 .. v10}, Landroidx/media2/exoplayer/external/Format;->createImageSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 69
    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    .line 79
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/e/l;->b:[Landroidx/media2/exoplayer/external/extractor/q;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/util/p;)V
    .locals 6

    .line 106
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/l;->c:Z

    if-eqz v0, :cond_3

    .line 107
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/e/l;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/extractor/e/l;->a(Landroidx/media2/exoplayer/external/util/p;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/e/l;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1, v1}, Landroidx/media2/exoplayer/external/extractor/e/l;->a(Landroidx/media2/exoplayer/external/util/p;I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1142
    :cond_1
    iget v0, p1, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 116
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v2

    .line 117
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/e/l;->b:[Landroidx/media2/exoplayer/external/extractor/q;

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 118
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 119
    invoke-interface {v5, p1, v2}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_2
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/e/l;->e:I

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/l;->e:I

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 11

    .line 96
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/l;->c:Z

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/l;->b:[Landroidx/media2/exoplayer/external/extractor/q;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 98
    iget-wide v5, p0, Landroidx/media2/exoplayer/external/extractor/e/l;->f:J

    const/4 v7, 0x1

    iget v8, p0, Landroidx/media2/exoplayer/external/extractor/e/l;->e:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    :cond_0
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/e/l;->c:Z

    :cond_1
    return-void
.end method

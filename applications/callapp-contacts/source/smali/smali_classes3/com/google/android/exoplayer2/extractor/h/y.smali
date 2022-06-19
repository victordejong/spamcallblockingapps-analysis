.class public final Lcom/google/android/exoplayer2/extractor/h/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h/ad;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/extractor/h/x;

.field private final b:Lcom/google/android/exoplayer2/util/u;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/h/x;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/y;->a:Lcom/google/android/exoplayer2/extractor/h/x;

    .line 47
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/y;->b:Lcom/google/android/exoplayer2/util/u;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/y;->f:Z

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/util/ad;Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/y;->a:Lcom/google/android/exoplayer2/extractor/h/x;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/h/x;->a(Lcom/google/android/exoplayer2/util/ad;Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/h/y;->f:Z

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/util/u;I)V
    .locals 5

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 67
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v2

    .line 1144
    iget v3, p1, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/2addr v3, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 71
    :goto_1
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/h/y;->f:Z

    if-eqz v2, :cond_3

    if-nez p2, :cond_2

    return-void

    .line 75
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/h/y;->f:Z

    .line 76
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 77
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/h/y;->d:I

    .line 80
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result p2

    if-lez p2, :cond_9

    .line 81
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/h/y;->d:I

    const/4 v2, 0x3

    if-ge p2, v2, :cond_6

    if-nez p2, :cond_4

    .line 85
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result p2

    .line 2144
    iget v3, p1, Lcom/google/android/exoplayer2/util/u;->b:I

    sub-int/2addr v3, v0

    .line 86
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    const/16 v3, 0xff

    if-ne p2, v3, :cond_4

    .line 89
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/y;->f:Z

    return-void

    .line 93
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result p2

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/h/y;->d:I

    rsub-int/lit8 v3, v3, 0x3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 96
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/h/y;->b:Lcom/google/android/exoplayer2/util/u;

    .line 2169
    iget-object v3, v3, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 96
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/h/y;->d:I

    invoke-virtual {p1, v3, v4, p2}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 97
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/h/y;->d:I

    add-int/2addr v3, p2

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/h/y;->d:I

    if-ne v3, v2, :cond_3

    .line 99
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/y;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 100
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/y;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/util/u;->c(I)V

    .line 101
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/y;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 102
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/y;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result p2

    .line 103
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/h/y;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v3

    and-int/lit16 v4, p2, 0x80

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    .line 104
    :goto_3
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/h/y;->e:Z

    and-int/lit8 p2, p2, 0xf

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v3

    add-int/2addr p2, v2

    .line 105
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/h/y;->c:I

    .line 107
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/y;->b:Lcom/google/android/exoplayer2/util/u;

    .line 2174
    iget-object p2, p2, Lcom/google/android/exoplayer2/util/u;->a:[B

    array-length p2, p2

    .line 107
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/h/y;->c:I

    if-ge p2, v2, :cond_3

    const/16 p2, 0x1002

    .line 109
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/h/y;->b:Lcom/google/android/exoplayer2/util/u;

    .line 3174
    iget-object v3, v3, Lcom/google/android/exoplayer2/util/u;->a:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    .line 110
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 111
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/y;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/util/u;->b(I)V

    goto/16 :goto_2

    .line 116
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result p2

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/h/y;->c:I

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/h/y;->d:I

    sub-int/2addr v2, v3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 118
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/y;->b:Lcom/google/android/exoplayer2/util/u;

    .line 4169
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 118
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/h/y;->d:I

    invoke-virtual {p1, v2, v3, p2}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 119
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/h/y;->d:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/h/y;->d:I

    .line 120
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/h/y;->c:I

    if-ne v2, p2, :cond_3

    .line 121
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/h/y;->e:Z

    if-eqz v2, :cond_8

    .line 123
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/y;->b:Lcom/google/android/exoplayer2/util/u;

    .line 5169
    iget-object p2, p2, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 123
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/h/y;->c:I

    const/4 v3, -0x1

    invoke-static {p2, v2, v3}, Lcom/google/android/exoplayer2/util/af;->b([BII)I

    move-result p2

    if-eqz p2, :cond_7

    .line 125
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/y;->f:Z

    return-void

    .line 128
    :cond_7
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/y;->b:Lcom/google/android/exoplayer2/util/u;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/h/y;->c:I

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/util/u;->c(I)V

    goto :goto_4

    .line 131
    :cond_8
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/y;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2, p2}, Lcom/google/android/exoplayer2/util/u;->c(I)V

    .line 133
    :goto_4
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/y;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 134
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/y;->a:Lcom/google/android/exoplayer2/extractor/h/x;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/y;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-interface {p2, v2}, Lcom/google/android/exoplayer2/extractor/h/x;->a(Lcom/google/android/exoplayer2/util/u;)V

    .line 135
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/h/y;->d:I

    goto/16 :goto_2

    :cond_9
    return-void
.end method

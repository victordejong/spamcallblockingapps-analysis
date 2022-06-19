.class public final Lcom/google/android/exoplayer2/extractor/h/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h/j;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/u;

.field private b:Lcom/google/android/exoplayer2/extractor/x;

.field private c:Z

.field private d:J

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/o;->a:Lcom/google/android/exoplayer2/util/u;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/o;->c:Z

    return-void
.end method

.method public final a(JI)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 77
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/extractor/h/o;->c:Z

    .line 78
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/h/o;->d:J

    const/4 p1, 0x0

    .line 79
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/h/o;->e:I

    .line 80
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/h/o;->f:I

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V
    .locals 2

    .line 63
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->a()V

    .line 64
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->b()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/o;->b:Lcom/google/android/exoplayer2/extractor/x;

    .line 65
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 67
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->c()Ljava/lang/String;

    move-result-object p2

    .line 1244
    iput-object p2, v0, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    const-string p2, "application/id3"

    .line 1370
    iput-object p2, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 69
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 65
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/util/u;)V
    .locals 7

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/o;->b:Lcom/google/android/exoplayer2/extractor/x;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/o;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    .line 90
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/h/o;->f:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    rsub-int/lit8 v1, v1, 0xa

    .line 92
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2169
    iget-object v3, p1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 3144
    iget v4, p1, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 95
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/h/o;->a:Lcom/google/android/exoplayer2/util/u;

    .line 3169
    iget-object v5, v5, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 96
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/h/o;->f:I

    .line 93
    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/h/o;->f:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_3

    .line 101
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/h/o;->a:Lcom/google/android/exoplayer2/util/u;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    const/16 v1, 0x49

    .line 102
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/o;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v4

    if-ne v1, v4, :cond_2

    const/16 v1, 0x44

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/o;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v4

    if-ne v1, v4, :cond_2

    const/16 v1, 0x33

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/o;->a:Lcom/google/android/exoplayer2/util/u;

    .line 103
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v4

    if-eq v1, v4, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/h/o;->a:Lcom/google/android/exoplayer2/util/u;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 109
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/h/o;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/u;->n()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/h/o;->e:I

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    .line 104
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/h/o;->c:Z

    return-void

    .line 113
    :cond_3
    :goto_1
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/h/o;->e:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/h/o;->f:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/h/o;->b:Lcom/google/android/exoplayer2/extractor/x;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 115
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/h/o;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/h/o;->f:I

    return-void
.end method

.method public final b()V
    .locals 8

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/o;->b:Lcom/google/android/exoplayer2/extractor/x;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/o;->c:Z

    if-eqz v0, :cond_1

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/h/o;->e:I

    if-eqz v5, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/h/o;->f:I

    if-eq v0, v5, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/h/o;->b:Lcom/google/android/exoplayer2/extractor/x;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/h/o;->d:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/o;->c:Z

    :cond_1
    :goto_0
    return-void
.end method

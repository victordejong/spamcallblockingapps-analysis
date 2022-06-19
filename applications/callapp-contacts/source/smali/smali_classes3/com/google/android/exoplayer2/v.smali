.class final Lcom/google/android/exoplayer2/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/r$a;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Z

.field public final g:Z

.field public final h:Z


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/r$a;JJJJZZZ)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    .line 74
    iput-wide p2, p0, Lcom/google/android/exoplayer2/v;->b:J

    .line 75
    iput-wide p4, p0, Lcom/google/android/exoplayer2/v;->c:J

    .line 76
    iput-wide p6, p0, Lcom/google/android/exoplayer2/v;->d:J

    .line 77
    iput-wide p8, p0, Lcom/google/android/exoplayer2/v;->e:J

    .line 78
    iput-boolean p10, p0, Lcom/google/android/exoplayer2/v;->f:Z

    .line 79
    iput-boolean p11, p0, Lcom/google/android/exoplayer2/v;->g:Z

    .line 80
    iput-boolean p12, p0, Lcom/google/android/exoplayer2/v;->h:Z

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/google/android/exoplayer2/v;
    .locals 16

    move-object/from16 v0, p0

    .line 88
    iget-wide v1, v0, Lcom/google/android/exoplayer2/v;->b:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    return-object v0

    .line 90
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/v;

    iget-object v4, v0, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    iget-wide v7, v0, Lcom/google/android/exoplayer2/v;->c:J

    iget-wide v9, v0, Lcom/google/android/exoplayer2/v;->d:J

    iget-wide v11, v0, Lcom/google/android/exoplayer2/v;->e:J

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/v;->f:Z

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/v;->g:Z

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/v;->h:Z

    move-object v3, v1

    move-wide/from16 v5, p1

    invoke-direct/range {v3 .. v15}, Lcom/google/android/exoplayer2/v;-><init>(Lcom/google/android/exoplayer2/source/r$a;JJJJZZZ)V

    return-object v1
.end method

.method public final b(J)Lcom/google/android/exoplayer2/v;
    .locals 16

    move-object/from16 v0, p0

    .line 106
    iget-wide v1, v0, Lcom/google/android/exoplayer2/v;->c:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    return-object v0

    .line 108
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/v;

    iget-object v4, v0, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    iget-wide v5, v0, Lcom/google/android/exoplayer2/v;->b:J

    iget-wide v9, v0, Lcom/google/android/exoplayer2/v;->d:J

    iget-wide v11, v0, Lcom/google/android/exoplayer2/v;->e:J

    iget-boolean v13, v0, Lcom/google/android/exoplayer2/v;->f:Z

    iget-boolean v14, v0, Lcom/google/android/exoplayer2/v;->g:Z

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/v;->h:Z

    move-object v3, v1

    move-wide/from16 v7, p1

    invoke-direct/range {v3 .. v15}, Lcom/google/android/exoplayer2/v;-><init>(Lcom/google/android/exoplayer2/source/r$a;JJJJZZZ)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/v;

    .line 128
    iget-wide v2, p0, Lcom/google/android/exoplayer2/v;->b:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/v;->b:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/v;->c:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/v;->c:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/v;->d:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/v;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/v;->e:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/v;->e:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/v;->f:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/v;->f:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/v;->g:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/v;->g:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/v;->h:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/v;->h:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    iget-object p1, p1, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    .line 135
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/r$a;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 142
    iget-wide v1, p0, Lcom/google/android/exoplayer2/v;->b:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 143
    iget-wide v1, p0, Lcom/google/android/exoplayer2/v;->c:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 144
    iget-wide v1, p0, Lcom/google/android/exoplayer2/v;->d:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 145
    iget-wide v1, p0, Lcom/google/android/exoplayer2/v;->e:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 146
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/v;->f:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 147
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/v;->g:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 148
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/v;->h:Z

    add-int/2addr v0, v1

    return v0
.end method

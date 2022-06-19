.class final Landroidx/media2/exoplayer/external/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/media2/exoplayer/external/source/t$a;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Z

.field public final g:Z


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/source/t$a;JJJJZZ)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroidx/media2/exoplayer/external/aa;->a:Landroidx/media2/exoplayer/external/source/t$a;

    .line 77
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/aa;->b:J

    .line 78
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/aa;->c:J

    .line 79
    iput-wide p6, p0, Landroidx/media2/exoplayer/external/aa;->d:J

    .line 80
    iput-wide p8, p0, Landroidx/media2/exoplayer/external/aa;->e:J

    .line 81
    iput-boolean p10, p0, Landroidx/media2/exoplayer/external/aa;->f:Z

    .line 82
    iput-boolean p11, p0, Landroidx/media2/exoplayer/external/aa;->g:Z

    return-void
.end method


# virtual methods
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
    check-cast p1, Landroidx/media2/exoplayer/external/aa;

    .line 128
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/aa;->b:J

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/aa;->b:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/aa;->c:J

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/aa;->c:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/aa;->d:J

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/aa;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/aa;->e:J

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/aa;->e:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/aa;->f:Z

    iget-boolean v3, p1, Landroidx/media2/exoplayer/external/aa;->f:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/aa;->g:Z

    iget-boolean v3, p1, Landroidx/media2/exoplayer/external/aa;->g:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/aa;->a:Landroidx/media2/exoplayer/external/source/t$a;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/aa;->a:Landroidx/media2/exoplayer/external/source/t$a;

    .line 134
    invoke-static {v2, p1}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 140
    iget-object v0, p0, Landroidx/media2/exoplayer/external/aa;->a:Landroidx/media2/exoplayer/external/source/t$a;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/t$a;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 141
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/aa;->b:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 142
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/aa;->c:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 143
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/aa;->d:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 144
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/aa;->e:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 145
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/aa;->f:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 146
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/aa;->g:Z

    add-int/2addr v0, v1

    return v0
.end method

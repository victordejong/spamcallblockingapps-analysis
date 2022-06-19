.class public final Lcom/google/android/exoplayer2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/g;


# instance fields
.field public a:J

.field public b:J

.field private final c:Lcom/google/android/exoplayer2/al$b;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v0, 0x3a98

    const-wide/16 v2, 0x1388

    .line 38
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/h;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Lcom/google/android/exoplayer2/h;->b:J

    .line 51
    iput-wide p3, p0, Lcom/google/android/exoplayer2/h;->a:J

    .line 52
    new-instance p1, Lcom/google/android/exoplayer2/al$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/al$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/h;->c:Lcom/google/android/exoplayer2/al$b;

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/ac;J)V
    .locals 5

    .line 192
    invoke-interface {p0}, Lcom/google/android/exoplayer2/ac;->A()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 193
    invoke-interface {p0}, Lcom/google/android/exoplayer2/ac;->z()J

    move-result-wide p1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    .line 195
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    const-wide/16 p1, 0x0

    .line 197
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 198
    invoke-interface {p0}, Lcom/google/android/exoplayer2/ac;->y()I

    move-result v0

    invoke-interface {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/ac;->a(IJ)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    .line 153
    iget-wide v0, p0, Lcom/google/android/exoplayer2/h;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/google/android/exoplayer2/ac;)Z
    .locals 0

    .line 57
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->q()V

    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/google/android/exoplayer2/ac;I)Z
    .locals 0

    .line 128
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/ac;->a(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/google/android/exoplayer2/ac;IJ)Z
    .locals 0

    .line 69
    invoke-interface {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ac;->a(IJ)V

    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/google/android/exoplayer2/ac;Lcom/google/android/exoplayer2/aa;)Z
    .locals 0

    .line 147
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/ac;->a(Lcom/google/android/exoplayer2/aa;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/google/android/exoplayer2/ac;Z)Z
    .locals 0

    .line 63
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/ac;->a(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b()Z
    .locals 5

    .line 158
    iget-wide v0, p0, Lcom/google/android/exoplayer2/h;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/google/android/exoplayer2/ac;)Z
    .locals 11

    .line 75
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->K()Lcom/google/android/exoplayer2/al;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->y()I

    move-result v1

    .line 80
    iget-object v3, p0, Lcom/google/android/exoplayer2/h;->c:Lcom/google/android/exoplayer2/al$b;

    const-wide/16 v4, 0x0

    .line 1809
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    .line 81
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->g()I

    move-result v0

    .line 82
    iget-object v3, p0, Lcom/google/android/exoplayer2/h;->c:Lcom/google/android/exoplayer2/al$b;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/al$b;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/h;->c:Lcom/google/android/exoplayer2/al$b;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/al$b;->i:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v6, -0x1

    if-eq v0, v6, :cond_3

    .line 84
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->A()J

    move-result-wide v6

    const-wide/16 v8, 0xbb8

    cmp-long v10, v6, v8

    if-lez v10, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 86
    invoke-interface {p1, v0, v3, v4}, Lcom/google/android/exoplayer2/ac;->a(IJ)V

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    .line 88
    invoke-interface {p1, v1, v4, v5}, Lcom/google/android/exoplayer2/ac;->a(IJ)V

    :cond_4
    :goto_1
    return v2
.end method

.method public final b(Lcom/google/android/exoplayer2/ac;Z)Z
    .locals 0

    .line 134
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/ac;->b(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public final c(Lcom/google/android/exoplayer2/ac;)Z
    .locals 6

    .line 95
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->K()Lcom/google/android/exoplayer2/al;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->C()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->y()I

    move-result v1

    .line 100
    iget-object v3, p0, Lcom/google/android/exoplayer2/h;->c:Lcom/google/android/exoplayer2/al$b;

    const-wide/16 v4, 0x0

    .line 2809
    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    .line 101
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->f()I

    move-result v0

    const/4 v3, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v0, v3, :cond_1

    .line 103
    invoke-interface {p1, v0, v4, v5}, Lcom/google/android/exoplayer2/ac;->a(IJ)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/h;->c:Lcom/google/android/exoplayer2/al$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al$b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/h;->c:Lcom/google/android/exoplayer2/al$b;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/al$b;->j:Z

    if-eqz v0, :cond_2

    .line 105
    invoke-interface {p1, v1, v4, v5}, Lcom/google/android/exoplayer2/ac;->a(IJ)V

    :cond_2
    :goto_0
    return v2
.end method

.method public final d(Lcom/google/android/exoplayer2/ac;)Z
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-wide v0, p0, Lcom/google/android/exoplayer2/h;->a:J

    neg-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/h;->a(Lcom/google/android/exoplayer2/ac;J)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final e(Lcom/google/android/exoplayer2/ac;)Z
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ac;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-wide v0, p0, Lcom/google/android/exoplayer2/h;->b:J

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/h;->a(Lcom/google/android/exoplayer2/ac;J)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

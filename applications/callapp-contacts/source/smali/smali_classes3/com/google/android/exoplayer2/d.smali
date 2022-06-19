.class public abstract Lcom/google/android/exoplayer2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/ac;


# instance fields
.field protected final a:Lcom/google/android/exoplayer2/al$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/google/android/exoplayer2/al$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/al$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/d;->a:Lcom/google/android/exoplayer2/al$b;

    return-void
.end method

.method private j()I
    .locals 2

    .line 249
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->s()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method public final A_()Z
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->n()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->o()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 3

    .line 103
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->y()I

    move-result v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/d;->a(IJ)V

    return-void
.end method

.method public final c()Z
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->g()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->f()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/d;->c(Z)V

    return-void
.end method

.method public final f()I
    .locals 4

    .line 139
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->K()Lcom/google/android/exoplayer2/al;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->y()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/d;->j()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->t()Z

    move-result v3

    .line 142
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/al;->a(IIZ)I

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 4

    .line 148
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->K()Lcom/google/android/exoplayer2/al;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->y()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/d;->j()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->t()Z

    move-result v3

    .line 151
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/al;->b(IIZ)I

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 5

    .line 235
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->K()Lcom/google/android/exoplayer2/al;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->y()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/d;->a:Lcom/google/android/exoplayer2/al$b;

    const-wide/16 v3, 0x0

    .line 1809
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object v0

    .line 236
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/al$b;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()J
    .locals 5

    .line 241
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->K()Lcom/google/android/exoplayer2/al;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/d;->y()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/d;->a:Lcom/google/android/exoplayer2/al$b;

    const-wide/16 v3, 0x0

    .line 2809
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object v0

    .line 3308
    iget-wide v0, v0, Lcom/google/android/exoplayer2/al$b;->q:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

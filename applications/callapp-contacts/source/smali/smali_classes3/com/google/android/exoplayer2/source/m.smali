.class public final Lcom/google/android/exoplayer2/source/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/p;
.implements Lcom/google/android/exoplayer2/source/p$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/m$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/r$a;

.field final b:J

.field public c:Lcom/google/android/exoplayer2/source/m$a;

.field d:J

.field private final e:Lcom/google/android/exoplayer2/upstream/b;

.field private f:Lcom/google/android/exoplayer2/source/r;

.field private g:Lcom/google/android/exoplayer2/source/p;

.field private h:Lcom/google/android/exoplayer2/source/p$a;

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/upstream/b;J)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/m;->a:Lcom/google/android/exoplayer2/source/r$a;

    .line 77
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/m;->e:Lcom/google/android/exoplayer2/upstream/b;

    .line 78
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/m;->b:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 79
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/m;->d:J

    return-void
.end method

.method private d(J)J
    .locals 5

    .line 250
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/m;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    return-wide p1
.end method


# virtual methods
.method public final D_()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->g:Lcom/google/android/exoplayer2/source/p;

    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/p;->D_()V

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->f:Lcom/google/android/exoplayer2/source/r;

    if-eqz v0, :cond_1

    .line 156
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/r;->f()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 159
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/m;->c:Lcom/google/android/exoplayer2/source/m$a;

    if-eqz v1, :cond_3

    .line 162
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/m;->i:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .line 163
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/m;->i:Z

    .line 164
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/m;->a:Lcom/google/android/exoplayer2/source/r$a;

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer2/source/m$a;->a(Lcom/google/android/exoplayer2/source/r$a;Ljava/io/IOException;)V

    :cond_2
    return-void

    .line 160
    :cond_3
    throw v0
.end method

.method public final a(JLcom/google/android/exoplayer2/ai;)J
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->g:Lcom/google/android/exoplayer2/source/p;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/p;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/p;->a(JLcom/google/android/exoplayer2/ai;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a([Lcom/google/android/exoplayer2/trackselection/c;[Z[Lcom/google/android/exoplayer2/source/aa;[ZJ)J
    .locals 15

    move-object v0, p0

    .line 181
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/m;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/m;->b:J

    cmp-long v7, p5, v5

    if-nez v7, :cond_0

    .line 183
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/m;->d:J

    move-wide v13, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v13, p5

    .line 185
    :goto_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/m;->g:Lcom/google/android/exoplayer2/source/p;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/exoplayer2/source/p;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 186
    invoke-interface/range {v8 .. v14}, Lcom/google/android/exoplayer2/source/p;->a([Lcom/google/android/exoplayer2/trackselection/c;[Z[Lcom/google/android/exoplayer2/source/aa;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public final a(J)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->g:Lcom/google/android/exoplayer2/source/p;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/p;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/p;->a(J)V

    return-void
.end method

.method public final a(JZ)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->g:Lcom/google/android/exoplayer2/source/p;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/p;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/p;->a(JZ)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/google/android/exoplayer2/source/ab;)V
    .locals 0

    .line 1236
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/m;->h:Lcom/google/android/exoplayer2/source/p$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/p$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/p$a;->a(Lcom/google/android/exoplayer2/source/ab;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/p$a;J)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/m;->h:Lcom/google/android/exoplayer2/source/p$a;

    .line 144
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/m;->g:Lcom/google/android/exoplayer2/source/p;

    if-eqz p1, :cond_0

    .line 145
    iget-wide p2, p0, Lcom/google/android/exoplayer2/source/m;->b:J

    .line 146
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/source/m;->d(J)J

    move-result-wide p2

    .line 145
    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/exoplayer2/source/p;->a(Lcom/google/android/exoplayer2/source/p$a;J)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/p;)V
    .locals 1

    .line 243
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/m;->h:Lcom/google/android/exoplayer2/source/p$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/p$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/p$a;->a(Lcom/google/android/exoplayer2/source/p;)V

    .line 244
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/m;->c:Lcom/google/android/exoplayer2/source/m$a;

    if-eqz p1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->a:Lcom/google/android/exoplayer2/source/r$a;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/source/m$a;->a(Lcom/google/android/exoplayer2/source/r$a;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/r$a;)V
    .locals 4

    .line 127
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/m;->b:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/m;->d(J)J

    move-result-wide v0

    .line 128
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/m;->f:Lcom/google/android/exoplayer2/source/r;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/r;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/m;->e:Lcom/google/android/exoplayer2/upstream/b;

    invoke-interface {v2, p1, v3, v0, v1}, Lcom/google/android/exoplayer2/source/r;->a(Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/p;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/m;->g:Lcom/google/android/exoplayer2/source/p;

    .line 129
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/m;->h:Lcom/google/android/exoplayer2/source/p$a;

    if-eqz v2, :cond_0

    .line 130
    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/exoplayer2/source/p;->a(Lcom/google/android/exoplayer2/source/p$a;J)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/r;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->f:Lcom/google/android/exoplayer2/source/r;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 116
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/m;->f:Lcom/google/android/exoplayer2/source/r;

    return-void
.end method

.method public final b(J)J
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->g:Lcom/google/android/exoplayer2/source/p;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/p;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/p;->b(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final b()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->g:Lcom/google/android/exoplayer2/source/p;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/p;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/p;->b()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->g:Lcom/google/android/exoplayer2/source/p;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/p;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/p;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(J)Z
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->g:Lcom/google/android/exoplayer2/source/p;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/p;->c(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()J
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->g:Lcom/google/android/exoplayer2/source/p;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/p;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/p;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()J
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->g:Lcom/google/android/exoplayer2/source/p;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/p;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/p;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()Z
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->g:Lcom/google/android/exoplayer2/source/p;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/p;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->g:Lcom/google/android/exoplayer2/source/p;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->f:Lcom/google/android/exoplayer2/source/r;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/r;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/m;->g:Lcom/google/android/exoplayer2/source/p;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/r;->a(Lcom/google/android/exoplayer2/source/p;)V

    :cond_0
    return-void
.end method

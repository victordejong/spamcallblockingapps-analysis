.class public final Landroidx/media2/exoplayer/external/source/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/s;
.implements Landroidx/media2/exoplayer/external/source/s$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/q$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media2/exoplayer/external/source/t;

.field public final b:Landroidx/media2/exoplayer/external/source/t$a;

.field c:J

.field public d:Landroidx/media2/exoplayer/external/source/q$a;

.field e:J

.field private final f:Landroidx/media2/exoplayer/external/upstream/b;

.field private g:Landroidx/media2/exoplayer/external/source/s;

.field private h:Landroidx/media2/exoplayer/external/source/s$a;

.field private i:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/t;Landroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/upstream/b;J)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/q;->b:Landroidx/media2/exoplayer/external/source/t$a;

    .line 77
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/q;->f:Landroidx/media2/exoplayer/external/upstream/b;

    .line 78
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/q;->a:Landroidx/media2/exoplayer/external/source/t;

    .line 79
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/source/q;->c:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 80
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/q;->e:J

    return-void
.end method

.method private d(J)J
    .locals 5

    .line 233
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/q;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    return-wide p1
.end method


# virtual methods
.method public final a(JLandroidx/media2/exoplayer/external/aj;)J
    .locals 1

    .line 202
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/q;->g:Landroidx/media2/exoplayer/external/source/s;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/s;->a(JLandroidx/media2/exoplayer/external/aj;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a([Landroidx/media2/exoplayer/external/trackselection/e;[Z[Landroidx/media2/exoplayer/external/source/al;[ZJ)J
    .locals 15

    move-object v0, p0

    .line 172
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/source/q;->e:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v0, Landroidx/media2/exoplayer/external/source/q;->c:J

    cmp-long v7, p5, v5

    if-nez v7, :cond_0

    .line 174
    iput-wide v3, v0, Landroidx/media2/exoplayer/external/source/q;->e:J

    move-wide v13, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v13, p5

    .line 176
    :goto_0
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/q;->g:Landroidx/media2/exoplayer/external/source/s;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/media2/exoplayer/external/source/s;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 177
    invoke-interface/range {v8 .. v14}, Landroidx/media2/exoplayer/external/source/s;->a([Landroidx/media2/exoplayer/external/trackselection/e;[Z[Landroidx/media2/exoplayer/external/source/al;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public final a(J)V
    .locals 1

    .line 212
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/q;->g:Landroidx/media2/exoplayer/external/source/s;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/s;->a(J)V

    return-void
.end method

.method public final a(JZ)V
    .locals 1

    .line 182
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/q;->g:Landroidx/media2/exoplayer/external/source/s;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/s;->a(JZ)V

    return-void
.end method

.method public final bridge synthetic a(Landroidx/media2/exoplayer/external/source/am;)V
    .locals 0

    .line 1222
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/q;->h:Landroidx/media2/exoplayer/external/source/s$a;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/s$a;

    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/source/s$a;->a(Landroidx/media2/exoplayer/external/source/am;)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/s$a;J)V
    .locals 0

    .line 135
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/q;->h:Landroidx/media2/exoplayer/external/source/s$a;

    .line 136
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/q;->g:Landroidx/media2/exoplayer/external/source/s;

    if-eqz p1, :cond_0

    .line 137
    iget-wide p2, p0, Landroidx/media2/exoplayer/external/source/q;->c:J

    invoke-direct {p0, p2, p3}, Landroidx/media2/exoplayer/external/source/q;->d(J)J

    move-result-wide p2

    invoke-interface {p1, p0, p2, p3}, Landroidx/media2/exoplayer/external/source/s;->a(Landroidx/media2/exoplayer/external/source/s$a;J)V

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/s;)V
    .locals 0

    .line 229
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/q;->h:Landroidx/media2/exoplayer/external/source/s$a;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/s$a;

    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/source/s$a;->a(Landroidx/media2/exoplayer/external/source/s;)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/t$a;)V
    .locals 4

    .line 117
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/q;->c:J

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/q;->d(J)J

    move-result-wide v0

    .line 118
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/q;->a:Landroidx/media2/exoplayer/external/source/t;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/q;->f:Landroidx/media2/exoplayer/external/upstream/b;

    invoke-interface {v2, p1, v3, v0, v1}, Landroidx/media2/exoplayer/external/source/t;->a(Landroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/upstream/b;J)Landroidx/media2/exoplayer/external/source/s;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/q;->g:Landroidx/media2/exoplayer/external/source/s;

    .line 119
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/q;->h:Landroidx/media2/exoplayer/external/source/s$a;

    if-eqz v2, :cond_0

    .line 120
    invoke-interface {p1, p0, v0, v1}, Landroidx/media2/exoplayer/external/source/s;->a(Landroidx/media2/exoplayer/external/source/s$a;J)V

    :cond_0
    return-void
.end method

.method public final b(J)J
    .locals 1

    .line 197
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/q;->g:Landroidx/media2/exoplayer/external/source/s;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/s;->b(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final b()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 1

    .line 162
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/q;->g:Landroidx/media2/exoplayer/external/source/s;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/s;->b()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 187
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/q;->g:Landroidx/media2/exoplayer/external/source/s;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/s;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(J)Z
    .locals 1

    .line 217
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/q;->g:Landroidx/media2/exoplayer/external/source/s;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/s;->c(J)Z

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

    .line 192
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/q;->g:Landroidx/media2/exoplayer/external/source/s;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/s;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()J
    .locals 2

    .line 207
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/q;->g:Landroidx/media2/exoplayer/external/source/s;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/s;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()V
    .locals 2

    .line 128
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/q;->g:Landroidx/media2/exoplayer/external/source/s;

    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/q;->a:Landroidx/media2/exoplayer/external/source/t;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/source/t;->a(Landroidx/media2/exoplayer/external/source/s;)V

    :cond_0
    return-void
.end method

.method public final k_()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/q;->g:Landroidx/media2/exoplayer/external/source/s;

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/s;->k_()V

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/q;->a:Landroidx/media2/exoplayer/external/source/t;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/t;->f()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 150
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/q;->d:Landroidx/media2/exoplayer/external/source/q$a;

    if-eqz v1, :cond_2

    .line 153
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/source/q;->i:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 154
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/source/q;->i:Z

    .line 155
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/q;->b:Landroidx/media2/exoplayer/external/source/t$a;

    invoke-interface {v1, v2, v0}, Landroidx/media2/exoplayer/external/source/q$a;->a(Landroidx/media2/exoplayer/external/source/t$a;Ljava/io/IOException;)V

    :cond_1
    return-void

    .line 151
    :cond_2
    throw v0
.end method

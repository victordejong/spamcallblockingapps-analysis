.class public final Landroidx/media2/exoplayer/external/source/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/s;
.implements Landroidx/media2/exoplayer/external/source/s$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/c$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media2/exoplayer/external/source/s;

.field b:J

.field c:J

.field private d:Landroidx/media2/exoplayer/external/source/s$a;

.field private e:[Landroidx/media2/exoplayer/external/source/c$a;

.field private f:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/s;ZJJ)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/c;->a:Landroidx/media2/exoplayer/external/source/s;

    const/4 p1, 0x0

    new-array p1, p1, [Landroidx/media2/exoplayer/external/source/c$a;

    .line 71
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/c;->e:[Landroidx/media2/exoplayer/external/source/c$a;

    if-eqz p2, :cond_0

    move-wide p1, p3

    goto :goto_0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 72
    :goto_0
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/c;->f:J

    .line 73
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/source/c;->b:J

    .line 74
    iput-wide p5, p0, Landroidx/media2/exoplayer/external/source/c;->c:J

    return-void
.end method


# virtual methods
.method public final a(JLandroidx/media2/exoplayer/external/aj;)J
    .locals 11

    .line 197
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/c;->b:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 2237
    :cond_0
    iget-wide v3, p3, Landroidx/media2/exoplayer/external/aj;->f:J

    const-wide/16 v5, 0x0

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/c;->b:J

    sub-long v7, p1, v0

    .line 2238
    invoke-static/range {v3 .. v8}, Landroidx/media2/exoplayer/external/util/ac;->a(JJJ)J

    move-result-wide v0

    .line 2240
    iget-wide v2, p3, Landroidx/media2/exoplayer/external/aj;->g:J

    const-wide/16 v4, 0x0

    .line 2244
    iget-wide v6, p0, Landroidx/media2/exoplayer/external/source/c;->c:J

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v10, v6, v8

    if-nez v10, :cond_1

    const-wide v6, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    sub-long/2addr v6, p1

    .line 2241
    :goto_0
    invoke-static/range {v2 .. v7}, Landroidx/media2/exoplayer/external/util/ac;->a(JJJ)J

    move-result-wide v2

    .line 2245
    iget-wide v4, p3, Landroidx/media2/exoplayer/external/aj;->f:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    iget-wide v4, p3, Landroidx/media2/exoplayer/external/aj;->g:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    goto :goto_1

    .line 2249
    :cond_2
    new-instance p3, Landroidx/media2/exoplayer/external/aj;

    invoke-direct {p3, v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/aj;-><init>(JJ)V

    .line 202
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/c;->a:Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/s;->a(JLandroidx/media2/exoplayer/external/aj;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a([Landroidx/media2/exoplayer/external/trackselection/e;[Z[Landroidx/media2/exoplayer/external/source/al;[ZJ)J
    .locals 15

    move-object v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    .line 112
    array-length v1, v9

    new-array v1, v1, [Landroidx/media2/exoplayer/external/source/c$a;

    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/c;->e:[Landroidx/media2/exoplayer/external/source/c$a;

    .line 113
    array-length v1, v9

    new-array v10, v1, [Landroidx/media2/exoplayer/external/source/al;

    const/4 v11, 0x0

    const/4 v1, 0x0

    .line 114
    :goto_0
    array-length v2, v9

    const/4 v12, 0x0

    if-ge v1, v2, :cond_1

    .line 115
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/c;->e:[Landroidx/media2/exoplayer/external/source/c$a;

    aget-object v3, v9, v1

    check-cast v3, Landroidx/media2/exoplayer/external/source/c$a;

    aput-object v3, v2, v1

    .line 116
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    aget-object v2, v2, v1

    iget-object v12, v2, Landroidx/media2/exoplayer/external/source/c$a;->a:Landroidx/media2/exoplayer/external/source/al;

    :cond_0
    aput-object v12, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_1
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/c;->a:Landroidx/media2/exoplayer/external/source/s;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v10

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    .line 119
    invoke-interface/range {v1 .. v7}, Landroidx/media2/exoplayer/external/source/s;->a([Landroidx/media2/exoplayer/external/trackselection/e;[Z[Landroidx/media2/exoplayer/external/source/al;[ZJ)J

    move-result-wide v1

    .line 122
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/c;->f()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    iget-wide v5, v0, Landroidx/media2/exoplayer/external/source/c;->b:J

    cmp-long v3, p5, v5

    if-nez v3, :cond_4

    const-wide/16 v13, 0x0

    cmp-long v3, v5, v13

    if-eqz v3, :cond_3

    .line 1265
    array-length v3, v8

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_3

    aget-object v6, v8, v5

    if-eqz v6, :cond_2

    .line 1267
    invoke-interface {v6}, Landroidx/media2/exoplayer/external/trackselection/e;->g()Landroidx/media2/exoplayer/external/Format;

    move-result-object v6

    .line 1268
    iget-object v6, v6, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/util/m;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    move-wide v5, v1

    goto :goto_3

    :cond_4
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 126
    :goto_3
    iput-wide v5, v0, Landroidx/media2/exoplayer/external/source/c;->f:J

    cmp-long v3, v1, p5

    if-eqz v3, :cond_6

    .line 127
    iget-wide v5, v0, Landroidx/media2/exoplayer/external/source/c;->b:J

    cmp-long v3, v1, v5

    if-ltz v3, :cond_5

    iget-wide v5, v0, Landroidx/media2/exoplayer/external/source/c;->c:J

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v3, v5, v7

    if-eqz v3, :cond_6

    cmp-long v3, v1, v5

    if-gtz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_4
    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 131
    :goto_5
    array-length v3, v9

    if-ge v11, v3, :cond_a

    .line 132
    aget-object v3, v10, v11

    if-nez v3, :cond_7

    .line 133
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/c;->e:[Landroidx/media2/exoplayer/external/source/c$a;

    aput-object v12, v3, v11

    goto :goto_6

    .line 134
    :cond_7
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/c;->e:[Landroidx/media2/exoplayer/external/source/c$a;

    aget-object v4, v3, v11

    if-eqz v4, :cond_8

    aget-object v3, v3, v11

    iget-object v3, v3, Landroidx/media2/exoplayer/external/source/c$a;->a:Landroidx/media2/exoplayer/external/source/al;

    aget-object v4, v10, v11

    if-eq v3, v4, :cond_9

    .line 135
    :cond_8
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/c;->e:[Landroidx/media2/exoplayer/external/source/c$a;

    new-instance v4, Landroidx/media2/exoplayer/external/source/c$a;

    aget-object v5, v10, v11

    invoke-direct {v4, p0, v5}, Landroidx/media2/exoplayer/external/source/c$a;-><init>(Landroidx/media2/exoplayer/external/source/c;Landroidx/media2/exoplayer/external/source/al;)V

    aput-object v4, v3, v11

    .line 137
    :cond_9
    :goto_6
    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/c;->e:[Landroidx/media2/exoplayer/external/source/c$a;

    aget-object v3, v3, v11

    aput-object v3, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_a
    return-wide v1
.end method

.method public final a(J)V
    .locals 1

    .line 149
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/c;->a:Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/s;->a(J)V

    return-void
.end method

.method public final a(JJ)V
    .locals 0

    .line 85
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/c;->b:J

    .line 86
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/source/c;->c:J

    return-void
.end method

.method public final a(JZ)V
    .locals 1

    .line 144
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/c;->a:Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/s;->a(JZ)V

    return-void
.end method

.method public final bridge synthetic a(Landroidx/media2/exoplayer/external/source/am;)V
    .locals 0

    .line 3229
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/c;->d:Landroidx/media2/exoplayer/external/source/s$a;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/s$a;

    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/source/s$a;->a(Landroidx/media2/exoplayer/external/source/am;)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/s$a;J)V
    .locals 0

    .line 91
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/c;->d:Landroidx/media2/exoplayer/external/source/s$a;

    .line 92
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/c;->a:Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {p1, p0, p2, p3}, Landroidx/media2/exoplayer/external/source/s;->a(Landroidx/media2/exoplayer/external/source/s$a;J)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/s;)V
    .locals 0

    .line 224
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/c;->d:Landroidx/media2/exoplayer/external/source/s$a;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/s$a;

    invoke-interface {p1, p0}, Landroidx/media2/exoplayer/external/source/s$a;->a(Landroidx/media2/exoplayer/external/source/s;)V

    return-void
.end method

.method public final b(J)J
    .locals 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 182
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/c;->f:J

    .line 183
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/c;->e:[Landroidx/media2/exoplayer/external/source/c$a;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 1291
    iput-boolean v2, v4, Landroidx/media2/exoplayer/external/source/c$a;->b:Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/c;->a:Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/s;->b(J)J

    move-result-wide v0

    cmp-long v3, v0, p1

    if-eqz v3, :cond_2

    .line 189
    iget-wide p1, p0, Landroidx/media2/exoplayer/external/source/c;->b:J

    cmp-long v3, v0, p1

    if-ltz v3, :cond_3

    iget-wide p1, p0, Landroidx/media2/exoplayer/external/source/c;->c:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, p1, v3

    if-eqz v5, :cond_2

    cmp-long v3, v0, p1

    if-gtz v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    return-wide v0
.end method

.method public final b()Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    .locals 1

    .line 102
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/c;->a:Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/s;->b()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public final c()J
    .locals 9

    .line 154
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/c;->f()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    .line 155
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/source/c;->f:J

    .line 156
    iput-wide v1, p0, Landroidx/media2/exoplayer/external/source/c;->f:J

    .line 158
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/c;->c()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_0

    return-wide v5

    :cond_0
    return-wide v3

    .line 161
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/c;->a:Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/s;->c()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    return-wide v1

    .line 165
    :cond_2
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/c;->b:J

    const/4 v2, 0x1

    const/4 v5, 0x0

    cmp-long v6, v3, v0

    if-ltz v6, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 166
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/c;->c:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v0, v6

    if-eqz v8, :cond_5

    cmp-long v6, v3, v0

    if-gtz v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_1
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    return-wide v3
.end method

.method public final c(J)Z
    .locals 1

    .line 217
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/c;->a:Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/source/s;->c(J)Z

    move-result p1

    return p1
.end method

.method public final d()J
    .locals 7

    .line 172
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/c;->a:Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/s;->d()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 173
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/source/c;->c:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final e()J
    .locals 7

    .line 207
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/c;->a:Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/s;->e()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 208
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/source/c;->c:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method final f()Z
    .locals 5

    .line 233
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/c;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k_()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/c;->a:Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/s;->k_()V

    return-void
.end method

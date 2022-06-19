.class public final Lcom/google/android/exoplayer2/source/n;
.super Lcom/google/android/exoplayer2/source/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/n$b;,
        Lcom/google/android/exoplayer2/source/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/d<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/google/android/exoplayer2/source/n$a;

.field private final b:Lcom/google/android/exoplayer2/source/r;

.field private final c:Z

.field private final d:Lcom/google/android/exoplayer2/al$b;

.field private final e:Lcom/google/android/exoplayer2/al$a;

.field private f:Lcom/google/android/exoplayer2/source/m;

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/r;Z)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/d;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/n;->b:Lcom/google/android/exoplayer2/source/r;

    .line 60
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/n;->c:Z

    .line 61
    new-instance p2, Lcom/google/android/exoplayer2/al$b;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/al$b;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/n;->d:Lcom/google/android/exoplayer2/al$b;

    .line 62
    new-instance p2, Lcom/google/android/exoplayer2/al$a;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/al$a;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/n;->e:Lcom/google/android/exoplayer2/al$a;

    .line 70
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/r;->e()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/n$a;->a(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/n$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/n;->a:Lcom/google/android/exoplayer2/source/n$a;

    return-void
.end method

.method private b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n;->a:Lcom/google/android/exoplayer2/source/n$a;

    .line 225
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/n$a;->a(Lcom/google/android/exoplayer2/source/n$a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/source/n$a;->c:Ljava/lang/Object;

    .line 226
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/n;->a:Lcom/google/android/exoplayer2/source/n$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/n$a;->a(Lcom/google/android/exoplayer2/source/n$a;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private b(J)V
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "unpreparedMaskingMediaPeriod"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n;->f:Lcom/google/android/exoplayer2/source/m;

    .line 241
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/n;->a:Lcom/google/android/exoplayer2/source/n$a;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/m;->a:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/n$a;->c(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 249
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/n;->a:Lcom/google/android/exoplayer2/source/n$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/n;->e:Lcom/google/android/exoplayer2/al$a;

    const/4 v4, 0x0

    .line 1955
    invoke-virtual {v2, v1, v3, v4}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    move-result-object v1

    .line 249
    iget-wide v1, v1, Lcom/google/android/exoplayer2/al$a;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    const-wide/16 p1, 0x0

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    .line 253
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 2105
    :cond_1
    iput-wide p1, v0, Lcom/google/android/exoplayer2/source/m;->d:J

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/p;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/n;->b(Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/m;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic a(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/source/r$a;
    .locals 1

    .line 2221
    iget-object p1, p2, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    .line 2233
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n;->a:Lcom/google/android/exoplayer2/source/n$a;

    .line 2232
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/n$a;->a(Lcom/google/android/exoplayer2/source/n$a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n;->a:Lcom/google/android/exoplayer2/source/n$a;

    .line 2233
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/n$a;->a(Lcom/google/android/exoplayer2/source/n$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2234
    sget-object p1, Lcom/google/android/exoplayer2/source/n$a;->c:Ljava/lang/Object;

    .line 2221
    :cond_0
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/r$a;->b(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/r$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/exoplayer2/source/p;)V
    .locals 1

    .line 134
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/m;->g()V

    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n;->f:Lcom/google/android/exoplayer2/source/m;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 136
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/n;->f:Lcom/google/android/exoplayer2/source/m;

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/v;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/d;->a(Lcom/google/android/exoplayer2/upstream/v;)V

    .line 82
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/n;->c:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/n;->g:Z

    const/4 p1, 0x0

    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n;->b:Lcom/google/android/exoplayer2/source/r;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/source/n;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/r;)V

    :cond_0
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/r;Lcom/google/android/exoplayer2/al;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v7, p3

    .line 3151
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/n;->h:Z

    if-eqz v1, :cond_0

    .line 3152
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/n;->a:Lcom/google/android/exoplayer2/source/n$a;

    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/source/n$a;->a(Lcom/google/android/exoplayer2/al;)Lcom/google/android/exoplayer2/source/n$a;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/n;->a:Lcom/google/android/exoplayer2/source/n$a;

    .line 3153
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/n;->f:Lcom/google/android/exoplayer2/source/m;

    if-eqz v1, :cond_5

    .line 4110
    iget-wide v1, v1, Lcom/google/android/exoplayer2/source/m;->d:J

    .line 3155
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/n;->b(J)V

    goto/16 :goto_2

    .line 3158
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3160
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/n;->i:Z

    if-eqz v1, :cond_1

    .line 3161
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/n;->a:Lcom/google/android/exoplayer2/source/n$a;

    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/source/n$a;->a(Lcom/google/android/exoplayer2/al;)Lcom/google/android/exoplayer2/source/n$a;

    move-result-object v1

    goto :goto_0

    .line 3162
    :cond_1
    sget-object v1, Lcom/google/android/exoplayer2/al$b;->a:Ljava/lang/Object;

    sget-object v2, Lcom/google/android/exoplayer2/source/n$a;->c:Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/google/android/exoplayer2/source/n$a;->a(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/n$a;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/n;->a:Lcom/google/android/exoplayer2/source/n$a;

    goto/16 :goto_2

    .line 3179
    :cond_2
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/n;->d:Lcom/google/android/exoplayer2/al$b;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    .line 4809
    invoke-virtual {v7, v2, v1, v3, v4}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    .line 3180
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/n;->d:Lcom/google/android/exoplayer2/al$b;

    .line 5301
    iget-wide v5, v1, Lcom/google/android/exoplayer2/al$b;->p:J

    .line 3181
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/n;->d:Lcom/google/android/exoplayer2/al$b;

    iget-object v8, v1, Lcom/google/android/exoplayer2/al$b;->b:Ljava/lang/Object;

    .line 3182
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/n;->f:Lcom/google/android/exoplayer2/source/m;

    if-eqz v1, :cond_3

    .line 6095
    iget-wide v9, v1, Lcom/google/android/exoplayer2/source/m;->b:J

    .line 3184
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/n;->a:Lcom/google/android/exoplayer2/source/n$a;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/n;->f:Lcom/google/android/exoplayer2/source/m;

    iget-object v11, v11, Lcom/google/android/exoplayer2/source/m;->a:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v11, v11, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/n;->e:Lcom/google/android/exoplayer2/al$a;

    invoke-virtual {v1, v11, v12}, Lcom/google/android/exoplayer2/source/n$a;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    .line 3185
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/n;->e:Lcom/google/android/exoplayer2/al$a;

    .line 6532
    iget-wide v11, v1, Lcom/google/android/exoplayer2/al$a;->e:J

    add-long/2addr v11, v9

    .line 3186
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/n;->a:Lcom/google/android/exoplayer2/source/n$a;

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/n;->d:Lcom/google/android/exoplayer2/al$b;

    .line 6809
    invoke-virtual {v1, v2, v9, v3, v4}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object v1

    .line 7301
    iget-wide v1, v1, Lcom/google/android/exoplayer2/al$b;->p:J

    cmp-long v3, v11, v1

    if-eqz v3, :cond_3

    move-wide v5, v11

    .line 3192
    :cond_3
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/n;->d:Lcom/google/android/exoplayer2/al$b;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/n;->e:Lcom/google/android/exoplayer2/al$a;

    const/4 v4, 0x0

    move-object/from16 v1, p3

    .line 3193
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/al;->a(Lcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 3195
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3196
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 3198
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/n;->i:Z

    if-eqz v1, :cond_4

    .line 3199
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/n;->a:Lcom/google/android/exoplayer2/source/n$a;

    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/source/n$a;->a(Lcom/google/android/exoplayer2/al;)Lcom/google/android/exoplayer2/source/n$a;

    move-result-object v1

    goto :goto_1

    .line 3200
    :cond_4
    invoke-static {v7, v8, v2}, Lcom/google/android/exoplayer2/source/n$a;->a(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/n$a;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lcom/google/android/exoplayer2/source/n;->a:Lcom/google/android/exoplayer2/source/n$a;

    .line 3201
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/n;->f:Lcom/google/android/exoplayer2/source/m;

    if-eqz v1, :cond_5

    .line 3203
    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/source/n;->b(J)V

    .line 3204
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/m;->a:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/m;->a:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    .line 3205
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/r$a;->b(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/r$a;

    move-result-object v1

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v1, 0x0

    :goto_3
    const/4 v2, 0x1

    .line 3208
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/n;->i:Z

    .line 3209
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/n;->h:Z

    .line 3210
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/n;->a:Lcom/google/android/exoplayer2/source/n$a;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/n;->a(Lcom/google/android/exoplayer2/al;)V

    if-eqz v1, :cond_6

    .line 3212
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/n;->f:Lcom/google/android/exoplayer2/source/m;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/m;

    .line 3213
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/m;->a(Lcom/google/android/exoplayer2/source/r$a;)V

    :cond_6
    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/m;
    .locals 1

    .line 114
    new-instance v0, Lcom/google/android/exoplayer2/source/m;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/m;-><init>(Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/upstream/b;J)V

    .line 115
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/n;->b:Lcom/google/android/exoplayer2/source/r;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/m;->a(Lcom/google/android/exoplayer2/source/r;)V

    .line 116
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/n;->h:Z

    if-eqz p2, :cond_0

    .line 117
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/n;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/r$a;->b(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/r$a;

    move-result-object p1

    .line 118
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/m;->a(Lcom/google/android/exoplayer2/source/r$a;)V

    goto :goto_0

    .line 123
    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/n;->f:Lcom/google/android/exoplayer2/source/m;

    .line 124
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/n;->g:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 125
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/n;->g:Z

    const/4 p1, 0x0

    .line 126
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/n;->b:Lcom/google/android/exoplayer2/source/r;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/n;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/r;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/n;->h:Z

    .line 143
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/n;->g:Z

    .line 144
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/d;->c()V

    return-void
.end method

.method public final e()Lcom/google/android/exoplayer2/MediaItem;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n;->b:Lcom/google/android/exoplayer2/source/r;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/r;->e()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 0

    return-void
.end method

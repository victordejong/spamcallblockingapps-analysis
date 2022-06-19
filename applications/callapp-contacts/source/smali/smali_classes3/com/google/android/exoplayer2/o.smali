.class final Lcom/google/android/exoplayer2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/exoplayer2/ad$a;
.implements Lcom/google/android/exoplayer2/k$a;
.implements Lcom/google/android/exoplayer2/source/p$a;
.implements Lcom/google/android/exoplayer2/trackselection/h$a;
.implements Lcom/google/android/exoplayer2/y$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/o$b;,
        Lcom/google/android/exoplayer2/o$a;,
        Lcom/google/android/exoplayer2/o$c;,
        Lcom/google/android/exoplayer2/o$f;,
        Lcom/google/android/exoplayer2/o$g;,
        Lcom/google/android/exoplayer2/o$e;,
        Lcom/google/android/exoplayer2/o$d;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:I

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:I

.field private J:Lcom/google/android/exoplayer2/o$g;

.field private K:J

.field private L:I

.field private M:Z

.field private N:Lcom/google/android/exoplayer2/ExoPlaybackException;

.field private O:J

.field final a:Lcom/google/android/exoplayer2/util/k;

.field final b:Landroid/os/Looper;

.field private final c:[Lcom/google/android/exoplayer2/af;

.field private final d:[Lcom/google/android/exoplayer2/ag;

.field private final e:Lcom/google/android/exoplayer2/trackselection/h;

.field private final f:Lcom/google/android/exoplayer2/trackselection/i;

.field private final g:Lcom/google/android/exoplayer2/s;

.field private final h:Lcom/google/android/exoplayer2/upstream/c;

.field private final i:Landroid/os/HandlerThread;

.field private final j:Lcom/google/android/exoplayer2/al$b;

.field private final k:Lcom/google/android/exoplayer2/al$a;

.field private final l:J

.field private final m:Z

.field private final n:Lcom/google/android/exoplayer2/k;

.field private final o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/o$c;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lcom/google/android/exoplayer2/util/c;

.field private final q:Lcom/google/android/exoplayer2/o$e;

.field private final r:Lcom/google/android/exoplayer2/w;

.field private final s:Lcom/google/android/exoplayer2/y;

.field private final t:Lcom/google/android/exoplayer2/r;

.field private final u:J

.field private v:Lcom/google/android/exoplayer2/ai;

.field private w:Lcom/google/android/exoplayer2/z;

.field private x:Lcom/google/android/exoplayer2/o$d;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/af;Lcom/google/android/exoplayer2/trackselection/h;Lcom/google/android/exoplayer2/trackselection/i;Lcom/google/android/exoplayer2/s;Lcom/google/android/exoplayer2/upstream/c;IZLcom/google/android/exoplayer2/a/a;Lcom/google/android/exoplayer2/ai;Lcom/google/android/exoplayer2/r;JZLandroid/os/Looper;Lcom/google/android/exoplayer2/util/c;Lcom/google/android/exoplayer2/o$e;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-wide/from16 v5, p11

    move-object/from16 v7, p15

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v8, p16

    .line 226
    iput-object v8, v0, Lcom/google/android/exoplayer2/o;->q:Lcom/google/android/exoplayer2/o$e;

    .line 227
    iput-object v1, v0, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    .line 228
    iput-object v2, v0, Lcom/google/android/exoplayer2/o;->e:Lcom/google/android/exoplayer2/trackselection/h;

    move-object v8, p3

    .line 229
    iput-object v8, v0, Lcom/google/android/exoplayer2/o;->f:Lcom/google/android/exoplayer2/trackselection/i;

    move-object v9, p4

    .line 230
    iput-object v9, v0, Lcom/google/android/exoplayer2/o;->g:Lcom/google/android/exoplayer2/s;

    .line 231
    iput-object v3, v0, Lcom/google/android/exoplayer2/o;->h:Lcom/google/android/exoplayer2/upstream/c;

    move/from16 v10, p6

    .line 232
    iput v10, v0, Lcom/google/android/exoplayer2/o;->D:I

    move/from16 v10, p7

    .line 233
    iput-boolean v10, v0, Lcom/google/android/exoplayer2/o;->E:Z

    move-object/from16 v10, p9

    .line 234
    iput-object v10, v0, Lcom/google/android/exoplayer2/o;->v:Lcom/google/android/exoplayer2/ai;

    move-object/from16 v10, p10

    .line 235
    iput-object v10, v0, Lcom/google/android/exoplayer2/o;->t:Lcom/google/android/exoplayer2/r;

    .line 236
    iput-wide v5, v0, Lcom/google/android/exoplayer2/o;->u:J

    .line 237
    iput-wide v5, v0, Lcom/google/android/exoplayer2/o;->O:J

    move/from16 v5, p13

    .line 238
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/o;->z:Z

    .line 239
    iput-object v7, v0, Lcom/google/android/exoplayer2/o;->p:Lcom/google/android/exoplayer2/util/c;

    .line 241
    invoke-interface {p4}, Lcom/google/android/exoplayer2/s;->e()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/exoplayer2/o;->l:J

    .line 242
    invoke-interface {p4}, Lcom/google/android/exoplayer2/s;->f()Z

    move-result v5

    iput-boolean v5, v0, Lcom/google/android/exoplayer2/o;->m:Z

    .line 244
    invoke-static {p3}, Lcom/google/android/exoplayer2/z;->a(Lcom/google/android/exoplayer2/trackselection/i;)Lcom/google/android/exoplayer2/z;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    .line 245
    new-instance v6, Lcom/google/android/exoplayer2/o$d;

    invoke-direct {v6, v5}, Lcom/google/android/exoplayer2/o$d;-><init>(Lcom/google/android/exoplayer2/z;)V

    iput-object v6, v0, Lcom/google/android/exoplayer2/o;->x:Lcom/google/android/exoplayer2/o$d;

    .line 246
    array-length v5, v1

    new-array v5, v5, [Lcom/google/android/exoplayer2/ag;

    iput-object v5, v0, Lcom/google/android/exoplayer2/o;->d:[Lcom/google/android/exoplayer2/ag;

    const/4 v5, 0x0

    .line 247
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_0

    .line 248
    aget-object v6, v1, v5

    invoke-interface {v6, v5}, Lcom/google/android/exoplayer2/af;->a(I)V

    .line 249
    iget-object v6, v0, Lcom/google/android/exoplayer2/o;->d:[Lcom/google/android/exoplayer2/ag;

    aget-object v8, v1, v5

    invoke-interface {v8}, Lcom/google/android/exoplayer2/af;->b()Lcom/google/android/exoplayer2/ag;

    move-result-object v8

    aput-object v8, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 251
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/k;

    invoke-direct {v1, p0, v7}, Lcom/google/android/exoplayer2/k;-><init>(Lcom/google/android/exoplayer2/k$a;Lcom/google/android/exoplayer2/util/c;)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/o;->n:Lcom/google/android/exoplayer2/k;

    .line 252
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/o;->o:Ljava/util/ArrayList;

    .line 253
    new-instance v1, Lcom/google/android/exoplayer2/al$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/al$b;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/al$b;

    .line 254
    new-instance v1, Lcom/google/android/exoplayer2/al$a;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/al$a;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/o;->k:Lcom/google/android/exoplayer2/al$a;

    .line 255
    invoke-virtual {p2, p0, v3}, Lcom/google/android/exoplayer2/trackselection/h;->a(Lcom/google/android/exoplayer2/trackselection/h$a;Lcom/google/android/exoplayer2/upstream/c;)V

    const/4 v1, 0x1

    .line 257
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/o;->M:Z

    .line 259
    new-instance v1, Landroid/os/Handler;

    move-object/from16 v2, p14

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 260
    new-instance v2, Lcom/google/android/exoplayer2/w;

    invoke-direct {v2, v4, v1}, Lcom/google/android/exoplayer2/w;-><init>(Lcom/google/android/exoplayer2/a/a;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 261
    new-instance v2, Lcom/google/android/exoplayer2/y;

    invoke-direct {v2, p0, v4, v1}, Lcom/google/android/exoplayer2/y;-><init>(Lcom/google/android/exoplayer2/y$d;Lcom/google/android/exoplayer2/a/a;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/google/android/exoplayer2/o;->s:Lcom/google/android/exoplayer2/y;

    .line 265
    new-instance v1, Landroid/os/HandlerThread;

    const/16 v2, -0x10

    const-string v3, "ExoPlayer:Playback"

    invoke-direct {v1, v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/o;->i:Landroid/os/HandlerThread;

    .line 266
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 267
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/o;->b:Landroid/os/Looper;

    .line 268
    invoke-interface {v7, v1, p0}, Lcom/google/android/exoplayer2/util/c;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/k;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;J)J
    .locals 3

    .line 1046
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->k:Lcom/google/android/exoplayer2/al$a;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/al$a;->c:I

    .line 1047
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/al$b;

    const-wide/16 v1, 0x0

    .line 50245
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    .line 1048
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/al$b;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/al$b;->g:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/al$b;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/al$b;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/al$b;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/al$b;->j:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 1051
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/al$b;

    .line 50246
    iget-wide p1, p1, Lcom/google/android/exoplayer2/al$b;->h:J

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/af;->a(J)J

    move-result-wide p1

    .line 1051
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/al$b;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/al$b;->g:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->k:Lcom/google/android/exoplayer2/al$a;

    .line 50247
    iget-wide v0, v0, Lcom/google/android/exoplayer2/al$a;->e:J

    add-long/2addr p3, v0

    sub-long/2addr p1, p3

    return-wide p1

    :cond_1
    :goto_0
    return-wide v0
.end method

.method private a(Lcom/google/android/exoplayer2/source/r$a;JZ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1188
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50249
    iget-object v0, v0, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    .line 1191
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50250
    iget-object v1, v1, Lcom/google/android/exoplayer2/w;->d:Lcom/google/android/exoplayer2/u;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v6, p4

    .line 1188
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/source/r$a;JZZ)J

    move-result-wide p1

    return-wide p1
.end method

.method private a(Lcom/google/android/exoplayer2/source/r$a;JZZ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1201
    invoke-direct {p0}, Lcom/google/android/exoplayer2/o;->g()V

    const/4 v0, 0x0

    .line 1202
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/o;->B:Z

    const/4 v1, 0x2

    if-nez p5, :cond_0

    .line 1203
    iget-object p5, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget p5, p5, Lcom/google/android/exoplayer2/z;->d:I

    const/4 v2, 0x3

    if-ne p5, v2, :cond_1

    .line 1204
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/o;->a(I)V

    .line 1208
    :cond_1
    iget-object p5, p0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50251
    iget-object p5, p5, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    move-object v2, p5

    :goto_0
    if-eqz v2, :cond_2

    .line 1211
    iget-object v3, v2, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-object v3, v3, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/source/r$a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 50252
    iget-object v2, v2, Lcom/google/android/exoplayer2/u;->h:Lcom/google/android/exoplayer2/u;

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x0

    if-nez p4, :cond_3

    if-ne p5, v2, :cond_3

    if-eqz v2, :cond_6

    .line 50254
    iget-wide p4, v2, Lcom/google/android/exoplayer2/u;->k:J

    add-long/2addr p4, p2

    cmp-long p1, p4, v3

    if-gez p1, :cond_6

    .line 1223
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    array-length p4, p1

    const/4 p5, 0x0

    :goto_1
    if-ge p5, p4, :cond_4

    aget-object v5, p1, p5

    .line 1224
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer2/o;->b(Lcom/google/android/exoplayer2/af;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_6

    .line 1228
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50255
    iget-object p1, p1, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    if-eq p1, v2, :cond_5

    .line 1229
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/w;->a()Lcom/google/android/exoplayer2/u;

    goto :goto_2

    .line 1231
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/u;)Z

    .line 50256
    iput-wide v3, v2, Lcom/google/android/exoplayer2/u;->k:J

    .line 1233
    invoke-direct {p0}, Lcom/google/android/exoplayer2/o;->r()V

    :cond_6
    if-eqz v2, :cond_a

    .line 1239
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/u;)Z

    .line 1240
    iget-boolean p1, v2, Lcom/google/android/exoplayer2/u;->d:Z

    if-nez p1, :cond_7

    .line 1241
    iget-object p1, v2, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    .line 1242
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/v;->a(J)Lcom/google/android/exoplayer2/v;

    move-result-object p1

    iput-object p1, v2, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    goto :goto_3

    .line 1244
    :cond_7
    iget-object p1, v2, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-wide p4, p1, Lcom/google/android/exoplayer2/v;->e:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p4, v5

    if-eqz p1, :cond_8

    iget-object p1, v2, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-wide p4, p1, Lcom/google/android/exoplayer2/v;->e:J

    cmp-long p1, p2, p4

    if-ltz p1, :cond_8

    .line 1247
    iget-object p1, v2, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/v;->e:J

    const-wide/16 p3, 0x1

    sub-long/2addr p1, p3

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 1249
    :cond_8
    iget-boolean p1, v2, Lcom/google/android/exoplayer2/u;->e:Z

    if-eqz p1, :cond_9

    .line 1250
    iget-object p1, v2, Lcom/google/android/exoplayer2/u;->a:Lcom/google/android/exoplayer2/source/p;

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplayer2/source/p;->b(J)J

    move-result-wide p1

    .line 1251
    iget-object p3, v2, Lcom/google/android/exoplayer2/u;->a:Lcom/google/android/exoplayer2/source/p;

    iget-wide p4, p0, Lcom/google/android/exoplayer2/o;->l:J

    sub-long p4, p1, p4

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/o;->m:Z

    invoke-interface {p3, p4, p5, v2}, Lcom/google/android/exoplayer2/source/p;->a(JZ)V

    move-wide p2, p1

    .line 1255
    :cond_9
    :goto_3
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/o;->a(J)V

    .line 1256
    invoke-direct {p0}, Lcom/google/android/exoplayer2/o;->n()V

    goto :goto_4

    .line 1259
    :cond_a
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/w;->b()V

    .line 1260
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/o;->a(J)V

    .line 1263
    :goto_4
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/o;->b(Z)V

    .line 1264
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)Z

    return-wide p2
.end method

.method private a(Lcom/google/android/exoplayer2/al;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/al;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/source/r$a;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1417
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 1418
    invoke-static {}, Lcom/google/android/exoplayer2/z;->a()Lcom/google/android/exoplayer2/source/r$a;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 1420
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/o;->E:Z

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/al;->b(Z)I

    move-result v6

    .line 1421
    iget-object v4, p0, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/al$b;

    iget-object v5, p0, Lcom/google/android/exoplayer2/o;->k:Lcom/google/android/exoplayer2/al$a;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p1

    .line 1422
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/al;->a(Lcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 1425
    iget-object v3, p0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1426
    invoke-virtual {v3, p1, v4, v1, v2}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/r$a;

    move-result-object v3

    .line 1428
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1429
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/r$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1430
    iget-object v0, v3, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/exoplayer2/o;->k:Lcom/google/android/exoplayer2/al$a;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    .line 1432
    iget p1, v3, Lcom/google/android/exoplayer2/source/r$a;->c:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->k:Lcom/google/android/exoplayer2/al$a;

    iget v4, v3, Lcom/google/android/exoplayer2/source/r$a;->b:I

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/al$a;->b(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1433
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->k:Lcom/google/android/exoplayer2/al$a;

    .line 50261
    iget-object p1, p1, Lcom/google/android/exoplayer2/al$a;->f:Lcom/google/android/exoplayer2/source/ads/a;

    iget-wide v1, p1, Lcom/google/android/exoplayer2/source/ads/a;->f:J

    :cond_1
    move-wide v4, v1

    .line 1436
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private static a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/o$g;ZIZLcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/al;",
            "Lcom/google/android/exoplayer2/o$g;",
            "ZIZ",
            "Lcom/google/android/exoplayer2/al$b;",
            "Lcom/google/android/exoplayer2/al$a;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object v7, p0

    move-object v0, p1

    move-object/from16 v8, p6

    .line 2710
    iget-object v1, v0, Lcom/google/android/exoplayer2/o$g;->a:Lcom/google/android/exoplayer2/al;

    .line 2711
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    return-object v9

    .line 2715
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v10, v7

    goto :goto_0

    :cond_1
    move-object v10, v1

    .line 2723
    :goto_0
    :try_start_0
    iget v4, v0, Lcom/google/android/exoplayer2/o$g;->b:I

    iget-wide v5, v0, Lcom/google/android/exoplayer2/o$g;->c:J

    move-object v1, v10

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 2724
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/al;->a(Lcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;IJ)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2730
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/al;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 2735
    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/al;->c(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 2738
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v2, v8}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    .line 2739
    iget v2, v8, Lcom/google/android/exoplayer2/al$a;->c:I

    const-wide/16 v3, 0x0

    move-object/from16 v11, p5

    .line 50550
    invoke-virtual {v10, v2, v11, v3, v4}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object v2

    .line 2739
    iget-boolean v2, v2, Lcom/google/android/exoplayer2/al$b;->m:Z

    if-eqz v2, :cond_3

    .line 2742
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v1, v8}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    move-result-object v1

    iget v3, v1, Lcom/google/android/exoplayer2/al$a;->c:I

    .line 2743
    iget-wide v4, v0, Lcom/google/android/exoplayer2/o$g;->c:J

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 2744
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/al;->a(Lcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;IJ)Landroid/util/Pair;

    move-result-object v1

    :cond_3
    return-object v1

    :cond_4
    move-object/from16 v11, p5

    if-eqz p2, :cond_5

    .line 2752
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move v2, p3

    move/from16 v3, p4

    move-object v5, v10

    move-object v6, p0

    .line 2753
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;IZLjava/lang/Object;Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/al;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2766
    invoke-virtual {p0, v0, v8}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    move-result-object v0

    iget v3, v0, Lcom/google/android/exoplayer2/al$a;->c:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 2763
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/al;->a(Lcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_0
    :cond_5
    return-object v9
.end method

.method private a(Lcom/google/android/exoplayer2/source/r$a;JJ)Lcom/google/android/exoplayer2/z;
    .locals 12

    move-object v0, p0

    move-object v2, p1

    move-wide/from16 v5, p4

    .line 2244
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/o;->M:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/z;->r:J

    cmp-long v1, p2, v3

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v1, v1, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    .line 2247
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/r$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/o;->M:Z

    .line 2248
    invoke-direct {p0}, Lcom/google/android/exoplayer2/o;->m()V

    .line 2249
    iget-object v1, v0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v1, v1, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 2250
    iget-object v3, v0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v3, v3, Lcom/google/android/exoplayer2/z;->h:Lcom/google/android/exoplayer2/trackselection/i;

    .line 2251
    iget-object v4, v0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v4, v4, Lcom/google/android/exoplayer2/z;->i:Ljava/util/List;

    .line 2252
    iget-object v7, v0, Lcom/google/android/exoplayer2/o;->s:Lcom/google/android/exoplayer2/y;

    .line 50524
    iget-boolean v7, v7, Lcom/google/android/exoplayer2/y;->i:Z

    if-eqz v7, :cond_5

    .line 2253
    iget-object v1, v0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50525
    iget-object v1, v1, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    if-nez v1, :cond_2

    .line 2256
    sget-object v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    goto :goto_2

    .line 50526
    :cond_2
    iget-object v3, v1, Lcom/google/android/exoplayer2/u;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    :goto_2
    if-nez v1, :cond_3

    .line 2260
    iget-object v4, v0, Lcom/google/android/exoplayer2/o;->f:Lcom/google/android/exoplayer2/trackselection/i;

    goto :goto_3

    .line 50527
    :cond_3
    iget-object v4, v1, Lcom/google/android/exoplayer2/u;->j:Lcom/google/android/exoplayer2/trackselection/i;

    .line 2262
    :goto_3
    iget-object v7, v4, Lcom/google/android/exoplayer2/trackselection/i;->c:[Lcom/google/android/exoplayer2/trackselection/c;

    invoke-static {v7}, Lcom/google/android/exoplayer2/o;->a([Lcom/google/android/exoplayer2/trackselection/c;)Lcom/google/common/collect/v;

    move-result-object v7

    if-eqz v1, :cond_4

    .line 2264
    iget-object v8, v1, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-wide v8, v8, Lcom/google/android/exoplayer2/v;->c:J

    cmp-long v10, v8, v5

    if-eqz v10, :cond_4

    .line 2266
    iget-object v8, v1, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    .line 2267
    invoke-virtual {v8, v5, v6}, Lcom/google/android/exoplayer2/v;->b(J)Lcom/google/android/exoplayer2/v;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    :cond_4
    move-object v9, v3

    move-object v10, v4

    move-object v11, v7

    goto :goto_4

    .line 2269
    :cond_5
    iget-object v7, v0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v7, v7, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/source/r$a;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 2271
    sget-object v1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 2272
    iget-object v3, v0, Lcom/google/android/exoplayer2/o;->f:Lcom/google/android/exoplayer2/trackselection/i;

    .line 2273
    invoke-static {}, Lcom/google/common/collect/v;->g()Lcom/google/common/collect/v;

    move-result-object v4

    :cond_6
    move-object v9, v1

    move-object v10, v3

    move-object v11, v4

    .line 2276
    :goto_4
    iget-object v1, v0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    .line 2280
    invoke-direct {p0}, Lcom/google/android/exoplayer2/o;->s()J

    move-result-wide v7

    move-object v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    .line 2276
    invoke-virtual/range {v1 .. v11}, Lcom/google/android/exoplayer2/z;->a(Lcom/google/android/exoplayer2/source/r$a;JJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/i;Ljava/util/List;)Lcom/google/android/exoplayer2/z;

    move-result-object v1

    return-object v1
.end method

.method private static a([Lcom/google/android/exoplayer2/trackselection/c;)Lcom/google/common/collect/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/exoplayer2/trackselection/c;",
            ")",
            "Lcom/google/common/collect/v<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;"
        }
    .end annotation

    .line 2288
    new-instance v0, Lcom/google/common/collect/v$a;

    invoke-direct {v0}, Lcom/google/common/collect/v$a;-><init>()V

    .line 2290
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, p0, v3

    if-eqz v5, :cond_1

    .line 2292
    invoke-interface {v5, v2}, Lcom/google/android/exoplayer2/trackselection/c;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 2293
    iget-object v6, v5, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v6, :cond_0

    .line 2294
    new-instance v5, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v6, v2, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    invoke-direct {v5, v6}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    invoke-virtual {v0, v5}, Lcom/google/common/collect/v$a;->b(Ljava/lang/Object;)Lcom/google/common/collect/v$a;

    goto :goto_1

    .line 2296
    :cond_0
    iget-object v4, v5, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v0, v4}, Lcom/google/common/collect/v$a;->b(Ljava/lang/Object;)Lcom/google/common/collect/v$a;

    const/4 v4, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 2301
    invoke-virtual {v0}, Lcom/google/common/collect/v$a;->a()Lcom/google/common/collect/v;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Lcom/google/common/collect/v;->g()Lcom/google/common/collect/v;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;IZLjava/lang/Object;Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/al;)Ljava/lang/Object;
    .locals 9

    .line 2796
    invoke-virtual {p5, p4}, Lcom/google/android/exoplayer2/al;->c(Ljava/lang/Object;)I

    move-result p4

    .line 2798
    invoke-virtual {p5}, Lcom/google/android/exoplayer2/al;->b()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p4

    const/4 p4, -0x1

    :goto_0
    if-ge v2, v0, :cond_0

    if-ne p4, v1, :cond_0

    move-object v3, p5

    move-object v5, p1

    move-object v6, p0

    move v7, p2

    move v8, p3

    .line 2801
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Lcom/google/android/exoplayer2/al$b;IZ)I

    move-result v4

    if-eq v4, v1, :cond_0

    .line 2807
    invoke-virtual {p5, v4}, Lcom/google/android/exoplayer2/al;->a(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p6, p4}, Lcom/google/android/exoplayer2/al;->c(Ljava/lang/Object;)I

    move-result p4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ne p4, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 2809
    :cond_1
    invoke-virtual {p6, p4}, Lcom/google/android/exoplayer2/al;->a(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private a(F)V
    .locals 5

    .line 1688
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50284
    iget-object v0, v0, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    :goto_0
    if-eqz v0, :cond_2

    .line 50285
    iget-object v1, v0, Lcom/google/android/exoplayer2/u;->j:Lcom/google/android/exoplayer2/trackselection/i;

    .line 1690
    iget-object v1, v1, Lcom/google/android/exoplayer2/trackselection/i;->c:[Lcom/google/android/exoplayer2/trackselection/c;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 1692
    invoke-interface {v4, p1}, Lcom/google/android/exoplayer2/trackselection/c;->a(F)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 50286
    :cond_1
    iget-object v0, v0, Lcom/google/android/exoplayer2/u;->h:Lcom/google/android/exoplayer2/u;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(I)V
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget v0, v0, Lcom/google/android/exoplayer2/z;->d:I

    if-eq v0, p1, :cond_0

    .line 642
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/z;->a(I)Lcom/google/android/exoplayer2/z;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    :cond_0
    return-void
.end method

.method private a(IZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2329
    iget-object v1, v0, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    aget-object v1, v1, p1

    .line 2330
    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->c(Lcom/google/android/exoplayer2/af;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 2333
    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50530
    iget-object v2, v2, Lcom/google/android/exoplayer2/w;->d:Lcom/google/android/exoplayer2/u;

    .line 2334
    iget-object v3, v0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50531
    iget-object v3, v3, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 50532
    :goto_0
    iget-object v3, v2, Lcom/google/android/exoplayer2/u;->j:Lcom/google/android/exoplayer2/trackselection/i;

    .line 2336
    iget-object v6, v3, Lcom/google/android/exoplayer2/trackselection/i;->b:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v6, v6, p1

    .line 2338
    iget-object v3, v3, Lcom/google/android/exoplayer2/trackselection/i;->c:[Lcom/google/android/exoplayer2/trackselection/c;

    aget-object v3, v3, p1

    .line 2339
    invoke-static {v3}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/trackselection/c;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    .line 2341
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->t()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget v3, v3, Lcom/google/android/exoplayer2/z;->d:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_2

    const/4 v14, 0x1

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    :goto_1
    if-nez p2, :cond_3

    if-eqz v14, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 2345
    :goto_2
    iget v3, v0, Lcom/google/android/exoplayer2/o;->I:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/exoplayer2/o;->I:I

    .line 2346
    iget-object v3, v2, Lcom/google/android/exoplayer2/u;->c:[Lcom/google/android/exoplayer2/source/aa;

    aget-object v5, v3, p1

    iget-wide v10, v0, Lcom/google/android/exoplayer2/o;->K:J

    .line 2353
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/u;->a()J

    move-result-wide v12

    .line 50533
    iget-wide v3, v2, Lcom/google/android/exoplayer2/u;->k:J

    move-object v2, v1

    move-wide v15, v3

    move-object v3, v6

    move-object v4, v7

    move-wide v6, v10

    move-wide v10, v12

    move-wide v12, v15

    .line 2346
    invoke-interface/range {v2 .. v13}, Lcom/google/android/exoplayer2/af;->a(Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/aa;JZZJJ)V

    const/16 v2, 0x67

    .line 2356
    new-instance v3, Lcom/google/android/exoplayer2/o$1;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/o$1;-><init>(Lcom/google/android/exoplayer2/o;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/af;->a(ILjava/lang/Object;)V

    .line 2373
    iget-object v2, v0, Lcom/google/android/exoplayer2/o;->n:Lcom/google/android/exoplayer2/k;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/k;->a(Lcom/google/android/exoplayer2/af;)V

    if-eqz v14, :cond_4

    .line 2376
    invoke-interface {v1}, Lcom/google/android/exoplayer2/af;->e()V

    :cond_4
    return-void
.end method

.method private a(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1269
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50258
    iget-object v0, v0, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    if-nez v0, :cond_0

    goto :goto_0

    .line 50260
    :cond_0
    iget-wide v0, v0, Lcom/google/android/exoplayer2/u;->k:J

    add-long/2addr p1, v0

    .line 1273
    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/o;->K:J

    .line 1274
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->n:Lcom/google/android/exoplayer2/k;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/k;->a(J)V

    .line 1275
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    aget-object v1, p1, v0

    .line 1276
    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->c(Lcom/google/android/exoplayer2/af;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1277
    iget-wide v2, p0, Lcom/google/android/exoplayer2/o;->K:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/af;->a(J)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private a(JJ)V
    .locals 1

    .line 1066
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/k;->b()V

    .line 1067
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    add-long/2addr p1, p3

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/util/k;->a(J)Z

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/aa;FZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 2183
    iget-object p3, p0, Lcom/google/android/exoplayer2/o;->x:Lcom/google/android/exoplayer2/o$d;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/o$d;->a(I)V

    .line 2185
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/z;->a(Lcom/google/android/exoplayer2/aa;)Lcom/google/android/exoplayer2/z;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    .line 2187
    :cond_1
    iget p3, p1, Lcom/google/android/exoplayer2/aa;->b:F

    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/o;->a(F)V

    .line 2188
    iget-object p3, p0, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    array-length p4, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_3

    aget-object v1, p3, v0

    if-eqz v1, :cond_2

    .line 2190
    iget v2, p1, Lcom/google/android/exoplayer2/aa;->b:F

    invoke-interface {v1, p2, v2}, Lcom/google/android/exoplayer2/af;->a(FF)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/aa;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2168
    iget v0, p1, Lcom/google/android/exoplayer2/aa;->b:F

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/aa;FZZ)V

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/af;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1597
    invoke-interface {p0}, Lcom/google/android/exoplayer2/af;->C_()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1598
    invoke-interface {p0}, Lcom/google/android/exoplayer2/af;->l()V

    :cond_0
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/af;J)V
    .locals 1

    .line 2127
    invoke-interface {p0}, Lcom/google/android/exoplayer2/af;->i()V

    .line 2128
    instance-of v0, p0, Lcom/google/android/exoplayer2/text/k;

    if-eqz v0, :cond_0

    .line 2129
    check-cast p0, Lcom/google/android/exoplayer2/text/k;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/text/k;->c(J)V

    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/al;)V
    .locals 9

    .line 1510
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1514
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1515
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->o:Ljava/util/ArrayList;

    .line 1516
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/o$c;

    iget v5, p0, Lcom/google/android/exoplayer2/o;->D:I

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/o;->E:Z

    iget-object v7, p0, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/al$b;

    iget-object v8, p0, Lcom/google/android/exoplayer2/o;->k:Lcom/google/android/exoplayer2/al$a;

    move-object v3, p1

    move-object v4, p2

    .line 1515
    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/o$c;Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/al;IZLcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1524
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/o$c;

    iget-object v1, v1, Lcom/google/android/exoplayer2/o$c;->a:Lcom/google/android/exoplayer2/ad;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ad;->a(Z)V

    .line 1525
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1529
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->o:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/o$c;Lcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;)V
    .locals 5

    .line 2683
    iget-object v0, p1, Lcom/google/android/exoplayer2/o$c;->d:Ljava/lang/Object;

    invoke-virtual {p0, v0, p3}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/al$a;->c:I

    const-wide/16 v1, 0x0

    .line 50549
    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object p2

    .line 2684
    iget p2, p2, Lcom/google/android/exoplayer2/al$b;->o:I

    const/4 v0, 0x1

    .line 2685
    invoke-virtual {p0, p2, p3, v0}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/exoplayer2/al$a;->b:Ljava/lang/Object;

    .line 2686
    iget-wide v0, p3, Lcom/google/android/exoplayer2/al$a;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p3, Lcom/google/android/exoplayer2/al$a;->d:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 2687
    :goto_0
    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/google/android/exoplayer2/o$c;->a(IJLjava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;J)V
    .locals 5

    .line 1832
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1839
    :cond_0
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->k:Lcom/google/android/exoplayer2/al$a;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/al$a;->c:I

    .line 1840
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/al$b;

    const-wide/16 v2, 0x0

    .line 50512
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    .line 1841
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->t:Lcom/google/android/exoplayer2/r;

    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/al$b;

    iget-object v1, v1, Lcom/google/android/exoplayer2/al$b;->l:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/r;->a(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p5, v0

    if-eqz v4, :cond_1

    .line 1843
    iget-object p3, p0, Lcom/google/android/exoplayer2/o;->t:Lcom/google/android/exoplayer2/r;

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    .line 1844
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;J)J

    move-result-wide p1

    .line 1843
    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplayer2/r;->a(J)V

    return-void

    .line 1846
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/al$b;

    iget-object p1, p1, Lcom/google/android/exoplayer2/al$b;->b:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 1848
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result p5

    if-nez p5, :cond_2

    .line 1849
    iget-object p2, p4, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-object p4, p0, Lcom/google/android/exoplayer2/o;->k:Lcom/google/android/exoplayer2/al$a;

    invoke-virtual {p3, p2, p4}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/al$a;->c:I

    .line 1850
    iget-object p4, p0, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/al$b;

    .line 50513
    invoke-virtual {p3, p2, p4, v2, v3}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object p2

    .line 1850
    iget-object p2, p2, Lcom/google/android/exoplayer2/al$b;->b:Ljava/lang/Object;

    .line 1852
    :cond_2
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1854
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->t:Lcom/google/android/exoplayer2/r;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/r;->a(J)V

    :cond_3
    return-void

    .line 1834
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->n:Lcom/google/android/exoplayer2/k;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k;->d()Lcom/google/android/exoplayer2/aa;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/aa;->b:F

    iget-object p2, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object p2, p2, Lcom/google/android/exoplayer2/z;->m:Lcom/google/android/exoplayer2/aa;

    iget p2, p2, Lcom/google/android/exoplayer2/aa;->b:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_5

    .line 1835
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->n:Lcom/google/android/exoplayer2/k;

    iget-object p2, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object p2, p2, Lcom/google/android/exoplayer2/z;->m:Lcom/google/android/exoplayer2/aa;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/k;->a(Lcom/google/android/exoplayer2/aa;)V

    :cond_5
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/trackselection/i;)V
    .locals 2

    .line 2419
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->g:Lcom/google/android/exoplayer2/s;

    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/i;->c:[Lcom/google/android/exoplayer2/trackselection/c;

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/s;->a([Lcom/google/android/exoplayer2/af;[Lcom/google/android/exoplayer2/trackselection/c;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/google/common/base/q;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/q<",
            "Ljava/lang/Boolean;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    .line 623
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->p:Lcom/google/android/exoplayer2/util/c;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/c;->a()J

    move-result-wide v0

    add-long/2addr v0, p2

    const/4 v2, 0x0

    .line 626
    :goto_0
    invoke-interface {p1}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-lez v5, :cond_0

    .line 628
    :try_start_1
    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    const/4 p2, 0x1

    const/4 v2, 0x1

    .line 632
    :goto_1
    :try_start_2
    iget-object p2, p0, Lcom/google/android/exoplayer2/o;->p:Lcom/google/android/exoplayer2/util/c;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/util/c;->a()J

    move-result-wide p2

    sub-long p2, v0, p2

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 636
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 638
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 808
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50239
    iget-object v0, v0, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    .line 808
    iget-object v0, v0, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-object v0, v0, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    .line 809
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/z;->r:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    .line 810
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/source/r$a;JZZ)J

    move-result-wide v3

    .line 815
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/z;->r:J

    cmp-long v5, v3, v1

    if-eqz v5, :cond_0

    .line 816
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/z;->c:J

    move-object v1, p0

    move-object v2, v0

    .line 817
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/source/r$a;JJ)Lcom/google/android/exoplayer2/z;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    if-eqz p1, :cond_0

    .line 820
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->x:Lcom/google/android/exoplayer2/o$d;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/o$d;->b(I)V

    :cond_0
    return-void
.end method

.method private a(ZIZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 744
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->x:Lcom/google/android/exoplayer2/o$d;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/o$d;->a(I)V

    .line 745
    iget-object p3, p0, Lcom/google/android/exoplayer2/o;->x:Lcom/google/android/exoplayer2/o$d;

    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/o$d;->c(I)V

    .line 746
    iget-object p3, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/z;->a(ZI)Lcom/google/android/exoplayer2/z;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    const/4 p1, 0x0

    .line 747
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/o;->B:Z

    .line 749
    invoke-direct {p0}, Lcom/google/android/exoplayer2/o;->t()Z

    move-result p1

    if-nez p1, :cond_0

    .line 750
    invoke-direct {p0}, Lcom/google/android/exoplayer2/o;->g()V

    .line 751
    invoke-direct {p0}, Lcom/google/android/exoplayer2/o;->h()V

    return-void

    .line 753
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget p1, p1, Lcom/google/android/exoplayer2/z;->d:I

    const/4 p2, 0x3

    const/4 p3, 0x2

    if-ne p1, p2, :cond_1

    .line 754
    invoke-direct {p0}, Lcom/google/android/exoplayer2/o;->f()V

    .line 755
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    invoke-interface {p1, p3}, Lcom/google/android/exoplayer2/util/k;->b(I)Z

    return-void

    .line 756
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget p1, p1, Lcom/google/android/exoplayer2/z;->d:I

    if-ne p1, p3, :cond_2

    .line 757
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    invoke-interface {p1, p3}, Lcom/google/android/exoplayer2/util/k;->b(I)Z

    :cond_2
    return-void
.end method

.method private a(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4

    .line 1295
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/o;->F:Z

    if-eq v0, p1, :cond_1

    .line 1296
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/o;->F:Z

    if-nez p1, :cond_1

    .line 1298
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1299
    invoke-static {v2}, Lcom/google/android/exoplayer2/o;->c(Lcom/google/android/exoplayer2/af;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1300
    invoke-interface {v2}, Lcom/google/android/exoplayer2/af;->n()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1306
    monitor-enter p0

    const/4 p1, 0x1

    .line 1307
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1308
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1309
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return-void
.end method

.method private a(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 1314
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/o;->F:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/exoplayer2/o;->a(ZZZZ)V

    .line 1319
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->x:Lcom/google/android/exoplayer2/o$d;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/o$d;->a(I)V

    .line 1320
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->g:Lcom/google/android/exoplayer2/s;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/s;->b()V

    .line 1321
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/o;->a(I)V

    return-void
.end method

.method private a(ZZZZ)V
    .locals 33

    move-object/from16 v1, p0

    .line 1344
    iget-object v0, v1, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/k;->b()V

    const/4 v2, 0x0

    .line 1345
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/o;->B:Z

    .line 1346
    iget-object v0, v1, Lcom/google/android/exoplayer2/o;->n:Lcom/google/android/exoplayer2/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k;->b()V

    const-wide/16 v3, 0x0

    .line 1347
    iput-wide v3, v1, Lcom/google/android/exoplayer2/o;->K:J

    .line 1348
    iget-object v3, v1, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    const-string v6, "ExoPlayerImplInternal"

    if-ge v5, v4, :cond_0

    aget-object v0, v3, v5

    .line 1350
    :try_start_0
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/o;->b(Lcom/google/android/exoplayer2/af;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v7, "Disable failed."

    .line 1353
    invoke-static {v6, v7, v0}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1357
    iget-object v3, v1, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_1

    aget-object v0, v3, v5

    .line 1359
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/exoplayer2/af;->n()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v7, v0

    const-string v0, "Reset failed."

    .line 1362
    invoke-static {v6, v0, v7}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1366
    :cond_1
    iput v2, v1, Lcom/google/android/exoplayer2/o;->I:I

    .line 1368
    iget-object v0, v1, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    .line 1369
    iget-object v3, v1, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/z;->r:J

    .line 1371
    iget-object v5, v1, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v6, v1, Lcom/google/android/exoplayer2/o;->k:Lcom/google/android/exoplayer2/al$a;

    iget-object v7, v1, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/al$b;

    invoke-static {v5, v6, v7}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/al$a;Lcom/google/android/exoplayer2/al$b;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1372
    iget-object v5, v1, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/z;->c:J

    goto :goto_5

    .line 1373
    :cond_2
    iget-object v5, v1, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-wide v5, v5, Lcom/google/android/exoplayer2/z;->r:J

    :goto_5
    const/4 v7, 0x0

    if-eqz p2, :cond_4

    .line 1376
    iput-object v7, v1, Lcom/google/android/exoplayer2/o;->J:Lcom/google/android/exoplayer2/o$g;

    .line 1377
    iget-object v0, v1, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    .line 1378
    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/al;)Landroid/util/Pair;

    move-result-object v0

    .line 1379
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/source/r$a;

    .line 1380
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 1382
    iget-object v0, v1, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/source/r$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    move-object/from16 v21, v3

    move-wide/from16 v29, v4

    move-wide v13, v8

    goto :goto_7

    :cond_3
    move-object/from16 v21, v3

    move-wide/from16 v29, v4

    move-wide v13, v8

    goto :goto_6

    :cond_4
    move-object/from16 v21, v0

    move-wide/from16 v29, v3

    move-wide v13, v5

    :goto_6
    const/4 v0, 0x0

    .line 1387
    :goto_7
    iget-object v3, v1, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/w;->b()V

    .line 1388
    iput-boolean v2, v1, Lcom/google/android/exoplayer2/o;->C:Z

    .line 1390
    new-instance v2, Lcom/google/android/exoplayer2/z;

    iget-object v3, v1, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v11, v3, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v3, v1, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget v15, v3, Lcom/google/android/exoplayer2/z;->d:I

    if-eqz p4, :cond_5

    move-object/from16 v16, v7

    goto :goto_8

    .line 1396
    :cond_5
    iget-object v3, v1, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v3, v3, Lcom/google/android/exoplayer2/z;->e:Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-object/from16 v16, v3

    :goto_8
    const/16 v17, 0x0

    if-eqz v0, :cond_6

    .line 1398
    sget-object v3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    goto :goto_9

    :cond_6
    iget-object v3, v1, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v3, v3, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    :goto_9
    move-object/from16 v18, v3

    if-eqz v0, :cond_7

    .line 1399
    iget-object v3, v1, Lcom/google/android/exoplayer2/o;->f:Lcom/google/android/exoplayer2/trackselection/i;

    goto :goto_a

    :cond_7
    iget-object v3, v1, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v3, v3, Lcom/google/android/exoplayer2/z;->h:Lcom/google/android/exoplayer2/trackselection/i;

    :goto_a
    move-object/from16 v19, v3

    if-eqz v0, :cond_8

    .line 1400
    invoke-static {}, Lcom/google/common/collect/v;->g()Lcom/google/common/collect/v;

    move-result-object v0

    goto :goto_b

    :cond_8
    iget-object v0, v1, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->i:Ljava/util/List;

    :goto_b
    move-object/from16 v20, v0

    iget-object v0, v1, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/z;->k:Z

    move/from16 v22, v0

    iget-object v0, v1, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget v0, v0, Lcom/google/android/exoplayer2/z;->l:I

    move/from16 v23, v0

    iget-object v0, v1, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->m:Lcom/google/android/exoplayer2/aa;

    move-object/from16 v24, v0

    const-wide/16 v27, 0x0

    iget-boolean v0, v1, Lcom/google/android/exoplayer2/o;->H:Z

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object v10, v2

    move-object/from16 v12, v21

    move-wide/from16 v25, v29

    invoke-direct/range {v10 .. v32}, Lcom/google/android/exoplayer2/z;-><init>(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;JILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/i;Ljava/util/List;Lcom/google/android/exoplayer2/source/r$a;ZILcom/google/android/exoplayer2/aa;JJJZZ)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    if-eqz p3, :cond_9

    .line 1411
    iget-object v0, v1, Lcom/google/android/exoplayer2/o;->s:Lcom/google/android/exoplayer2/y;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/y;->b()V

    .line 1413
    :cond_9
    iput-object v7, v1, Lcom/google/android/exoplayer2/o;->N:Lcom/google/android/exoplayer2/ExoPlaybackException;

    return-void
.end method

.method private a([Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2309
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50528
    iget-object v0, v0, Lcom/google/android/exoplayer2/w;->d:Lcom/google/android/exoplayer2/u;

    .line 50529
    iget-object v1, v0, Lcom/google/android/exoplayer2/u;->j:Lcom/google/android/exoplayer2/trackselection/i;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2313
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 2314
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/trackselection/i;->a(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2315
    iget-object v4, p0, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/android/exoplayer2/af;->n()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2319
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 2320
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/trackselection/i;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2321
    aget-boolean v3, p1, v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/o;->a(IZ)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 2324
    iput-boolean p1, v0, Lcom/google/android/exoplayer2/u;->g:Z

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;)Z
    .locals 4

    .line 1057
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/r$a;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1060
    :cond_0
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->k:Lcom/google/android/exoplayer2/al$a;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplayer2/al$a;->c:I

    .line 1061
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/al$b;

    const-wide/16 v2, 0x0

    .line 50248
    invoke-virtual {p1, p2, v0, v2, v3}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    .line 1062
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/al$b;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/al$b;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/al$b;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/al$b;->j:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/al$b;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/al$b;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method private static a(Lcom/google/android/exoplayer2/o$c;Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/al;IZLcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 2618
    iget-object v2, v0, Lcom/google/android/exoplayer2/o$c;->d:Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/high16 v13, -0x8000000000000000L

    if-nez v2, :cond_3

    .line 2621
    iget-object v1, v0, Lcom/google/android/exoplayer2/o$c;->a:Lcom/google/android/exoplayer2/ad;

    .line 50541
    iget-wide v1, v1, Lcom/google/android/exoplayer2/ad;->g:J

    cmp-long v3, v1, v13

    if-nez v3, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 2623
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/o$c;->a:Lcom/google/android/exoplayer2/ad;

    .line 50542
    iget-wide v1, v1, Lcom/google/android/exoplayer2/ad;->g:J

    .line 2623
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide v1

    .line 2625
    :goto_0
    new-instance v3, Lcom/google/android/exoplayer2/o$g;

    iget-object v4, v0, Lcom/google/android/exoplayer2/o$c;->a:Lcom/google/android/exoplayer2/ad;

    .line 50543
    iget-object v4, v4, Lcom/google/android/exoplayer2/ad;->b:Lcom/google/android/exoplayer2/al;

    .line 2629
    iget-object v5, v0, Lcom/google/android/exoplayer2/o$c;->a:Lcom/google/android/exoplayer2/ad;

    .line 50544
    iget v5, v5, Lcom/google/android/exoplayer2/ad;->f:I

    .line 2630
    invoke-direct {v3, v4, v5, v1, v2}, Lcom/google/android/exoplayer2/o$g;-><init>(Lcom/google/android/exoplayer2/al;IJ)V

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v4

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 2626
    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/o$g;ZIZLcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    return v11

    .line 2640
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2641
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/al;->c(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 2642
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2640
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/google/android/exoplayer2/o$c;->a(IJLjava/lang/Object;)V

    .line 2644
    iget-object v1, v0, Lcom/google/android/exoplayer2/o$c;->a:Lcom/google/android/exoplayer2/ad;

    .line 50545
    iget-wide v1, v1, Lcom/google/android/exoplayer2/ad;->g:J

    cmp-long v3, v1, v13

    if-nez v3, :cond_2

    .line 2645
    invoke-static {v8, p0, v9, v10}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/o$c;Lcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;)V

    :cond_2
    return v12

    .line 2650
    :cond_3
    iget-object v2, v0, Lcom/google/android/exoplayer2/o$c;->d:Ljava/lang/Object;

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/al;->c(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    return v11

    .line 2654
    :cond_4
    iget-object v3, v0, Lcom/google/android/exoplayer2/o$c;->a:Lcom/google/android/exoplayer2/ad;

    .line 50546
    iget-wide v3, v3, Lcom/google/android/exoplayer2/ad;->g:J

    cmp-long v5, v3, v13

    if-nez v5, :cond_5

    .line 2656
    invoke-static {v8, p0, v9, v10}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/o$c;Lcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;)V

    return v12

    .line 2659
    :cond_5
    iput v2, v0, Lcom/google/android/exoplayer2/o$c;->b:I

    .line 2660
    iget-object v2, v0, Lcom/google/android/exoplayer2/o$c;->d:Ljava/lang/Object;

    invoke-virtual {v1, v2, v10}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    .line 2661
    iget v2, v10, Lcom/google/android/exoplayer2/al$a;->c:I

    const-wide/16 v3, 0x0

    .line 50547
    invoke-virtual {v1, v2, v9, v3, v4}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object v1

    .line 2661
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/al$b;->m:Z

    if-eqz v1, :cond_6

    .line 2664
    iget-wide v1, v0, Lcom/google/android/exoplayer2/o$c;->c:J

    .line 50548
    iget-wide v3, v10, Lcom/google/android/exoplayer2/al$a;->e:J

    add-long v5, v1, v3

    .line 2666
    iget-object v1, v0, Lcom/google/android/exoplayer2/o$c;->d:Ljava/lang/Object;

    .line 2667
    invoke-virtual {v8, v1, v10}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    move-result-object v1

    iget v4, v1, Lcom/google/android/exoplayer2/al$a;->c:I

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 2669
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/al;->a(Lcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 2670
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2671
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/al;->c(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 2672
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2670
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/google/android/exoplayer2/o$c;->a(IJLjava/lang/Object;)V

    :cond_6
    return v12
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/o;)Z
    .locals 1

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/o;->G:Z

    return v0
.end method

.method private static a(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/al$a;Lcom/google/android/exoplayer2/al$b;)Z
    .locals 2

    .line 2589
    iget-object v0, p0, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    .line 2590
    iget-object p0, p0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    .line 2591
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/r$a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2592
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    .line 2594
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplayer2/al$a;->c:I

    const-wide/16 v0, 0x0

    .line 50540
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    move-result-object p0

    .line 2593
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/al$b;->m:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Lcom/google/android/exoplayer2/trackselection/c;)[Lcom/google/android/exoplayer2/Format;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2814
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/c;->e()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2815
    :goto_0
    new-array v2, v1, [Lcom/google/android/exoplayer2/Format;

    :goto_1
    if-ge v0, v1, :cond_1

    .line 2817
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/trackselection/c;->a(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private b(J)J
    .locals 7

    .line 2408
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50537
    iget-object v0, v0, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2412
    :cond_0
    iget-wide v3, p0, Lcom/google/android/exoplayer2/o;->K:J

    .line 50539
    iget-wide v5, v0, Lcom/google/android/exoplayer2/u;->k:J

    sub-long/2addr v3, v5

    sub-long/2addr p1, v3

    .line 2414
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/o;)Lcom/google/android/exoplayer2/util/k;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    return-object p0
.end method

.method private b(JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1534
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/r$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 1539
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/o;->M:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    const/4 v0, 0x0

    .line 1541
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/o;->M:Z

    .line 1545
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v1, v1, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    .line 1546
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/al;->c(Ljava/lang/Object;)I

    move-result v0

    .line 1547
    iget v1, p0, Lcom/google/android/exoplayer2/o;->L:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 1549
    iget-object v3, p0, Lcom/google/android/exoplayer2/o;->o:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/o$c;

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_4

    .line 1550
    iget v4, v3, Lcom/google/android/exoplayer2/o$c;->b:I

    if-gt v4, v0, :cond_3

    iget v4, v3, Lcom/google/android/exoplayer2/o$c;->b:I

    if-ne v4, v0, :cond_4

    iget-wide v3, v3, Lcom/google/android/exoplayer2/o$c;->c:J

    cmp-long v5, v3, p1

    if-lez v5, :cond_4

    :cond_3
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_2

    .line 1556
    iget-object v3, p0, Lcom/google/android/exoplayer2/o;->o:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/o$c;

    goto :goto_0

    .line 1559
    :cond_4
    iget-object v3, p0, Lcom/google/android/exoplayer2/o;->o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 1560
    iget-object v3, p0, Lcom/google/android/exoplayer2/o;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/o$c;

    goto :goto_1

    :cond_5
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_7

    .line 1562
    iget-object v4, v3, Lcom/google/android/exoplayer2/o$c;->d:Ljava/lang/Object;

    if-eqz v4, :cond_7

    iget v4, v3, Lcom/google/android/exoplayer2/o$c;->b:I

    if-lt v4, v0, :cond_6

    iget v4, v3, Lcom/google/android/exoplayer2/o$c;->b:I

    if-ne v4, v0, :cond_7

    iget-wide v4, v3, Lcom/google/android/exoplayer2/o$c;->c:J

    cmp-long v6, v4, p1

    if-gtz v6, :cond_7

    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 1569
    iget-object v3, p0, Lcom/google/android/exoplayer2/o;->o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 1570
    iget-object v3, p0, Lcom/google/android/exoplayer2/o;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/o$c;

    goto :goto_1

    :cond_7
    :goto_2
    if-eqz v3, :cond_d

    .line 1574
    iget-object v4, v3, Lcom/google/android/exoplayer2/o$c;->d:Ljava/lang/Object;

    if-eqz v4, :cond_d

    iget v4, v3, Lcom/google/android/exoplayer2/o$c;->b:I

    if-ne v4, v0, :cond_d

    iget-wide v4, v3, Lcom/google/android/exoplayer2/o$c;->c:J

    cmp-long v6, v4, p1

    if-lez v6, :cond_d

    iget-wide v4, v3, Lcom/google/android/exoplayer2/o$c;->c:J

    cmp-long v6, v4, p3

    if-gtz v6, :cond_d

    .line 1580
    :try_start_0
    iget-object v4, v3, Lcom/google/android/exoplayer2/o$c;->a:Lcom/google/android/exoplayer2/ad;

    invoke-direct {p0, v4}, Lcom/google/android/exoplayer2/o;->b(Lcom/google/android/exoplayer2/ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1582
    iget-object v4, v3, Lcom/google/android/exoplayer2/o$c;->a:Lcom/google/android/exoplayer2/ad;

    .line 50266
    iget-boolean v4, v4, Lcom/google/android/exoplayer2/ad;->h:Z

    if-nez v4, :cond_9

    .line 1582
    iget-object v3, v3, Lcom/google/android/exoplayer2/o$c;->a:Lcom/google/android/exoplayer2/ad;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/ad;->b()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1583
    :cond_9
    :goto_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/o;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1589
    :goto_4
    iget-object v3, p0, Lcom/google/android/exoplayer2/o;->o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    .line 1590
    iget-object v3, p0, Lcom/google/android/exoplayer2/o;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/o$c;

    goto :goto_2

    :cond_a
    move-object v3, v2

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 1582
    iget-object p2, v3, Lcom/google/android/exoplayer2/o$c;->a:Lcom/google/android/exoplayer2/ad;

    .line 50267
    iget-boolean p2, p2, Lcom/google/android/exoplayer2/ad;->h:Z

    if-nez p2, :cond_b

    .line 1582
    iget-object p2, v3, Lcom/google/android/exoplayer2/o$c;->a:Lcom/google/android/exoplayer2/ad;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ad;->b()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 1583
    :cond_b
    iget-object p2, p0, Lcom/google/android/exoplayer2/o;->o:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1587
    :cond_c
    throw p1

    .line 1593
    :cond_d
    iput v1, p0, Lcom/google/android/exoplayer2/o;->L:I

    :cond_e
    :goto_5
    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/ad;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 50262
    iget-object v0, p1, Lcom/google/android/exoplayer2/ad;->e:Landroid/os/Looper;

    .line 1466
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->b:Landroid/os/Looper;

    if-ne v0, v1, :cond_1

    .line 1467
    invoke-static {p1}, Lcom/google/android/exoplayer2/o;->c(Lcom/google/android/exoplayer2/ad;)V

    .line 1468
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget p1, p1, Lcom/google/android/exoplayer2/z;->d:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget p1, p1, Lcom/google/android/exoplayer2/z;->d:I

    if-ne p1, v1, :cond_2

    .line 1471
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)Z

    return-void

    .line 1474
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0xf

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/k;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/af;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1603
    invoke-static {p1}, Lcom/google/android/exoplayer2/o;->c(Lcom/google/android/exoplayer2/af;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1606
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->n:Lcom/google/android/exoplayer2/k;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/k;->b(Lcom/google/android/exoplayer2/af;)V

    .line 1607
    invoke-static {p1}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/af;)V

    .line 1608
    invoke-interface {p1}, Lcom/google/android/exoplayer2/af;->m()V

    .line 1609
    iget p1, p0, Lcom/google/android/exoplayer2/o;->I:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/o;->I:I

    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/al;)V
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 1754
    iget-object v0, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v10, v8, Lcom/google/android/exoplayer2/o;->J:Lcom/google/android/exoplayer2/o$g;

    iget-object v11, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    iget v4, v8, Lcom/google/android/exoplayer2/o;->D:I

    iget-boolean v12, v8, Lcom/google/android/exoplayer2/o;->E:Z

    iget-object v13, v8, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/al$b;

    iget-object v14, v8, Lcom/google/android/exoplayer2/o;->k:Lcom/google/android/exoplayer2/al$a;

    .line 50288
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v1

    const/4 v7, 0x4

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_0

    .line 50289
    new-instance v0, Lcom/google/android/exoplayer2/o$f;

    .line 50290
    invoke-static {}, Lcom/google/android/exoplayer2/z;->a()Lcom/google/android/exoplayer2/source/r$a;

    move-result-object v20

    const-wide/16 v21, 0x0

    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v27}, Lcom/google/android/exoplayer2/o$f;-><init>(Lcom/google/android/exoplayer2/source/r$a;JJZZZ)V

    move-object v1, v0

    const/4 v11, 0x4

    goto/16 :goto_e

    .line 50297
    :cond_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    .line 50298
    iget-object v2, v3, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    .line 50300
    invoke-static {v0, v14, v13}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/z;Lcom/google/android/exoplayer2/al$a;Lcom/google/android/exoplayer2/al$b;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50303
    iget-wide v5, v0, Lcom/google/android/exoplayer2/z;->c:J

    goto :goto_0

    .line 50304
    :cond_1
    iget-wide v5, v0, Lcom/google/android/exoplayer2/z;->r:J

    :goto_0
    move-wide/from16 v21, v5

    const/4 v6, -0x1

    if-eqz v10, :cond_5

    const/4 v5, 0x1

    move-object/from16 v1, p1

    move-object v15, v2

    move-object v2, v10

    move-object v8, v3

    move v3, v5

    move v5, v12

    move-object v6, v13

    move-object/from16 v16, v11

    const/4 v11, 0x4

    move-object v7, v14

    .line 50314
    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/o$g;ZIZLcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_2

    .line 50325
    invoke-virtual {v9, v12}, Lcom/google/android/exoplayer2/al;->b(Z)I

    move-result v1

    move v4, v1

    move-object v2, v15

    const/4 v10, -0x1

    :goto_1
    const/16 v34, 0x0

    const/16 v35, 0x1

    goto :goto_5

    .line 50328
    :cond_2
    iget-wide v2, v10, Lcom/google/android/exoplayer2/o$g;->c:J

    cmp-long v4, v2, v17

    if-nez v4, :cond_3

    .line 50329
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 50330
    invoke-virtual {v9, v1, v14}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    move-result-object v1

    iget v6, v1, Lcom/google/android/exoplayer2/al$a;->c:I

    move-object v2, v15

    const/4 v1, 0x0

    goto :goto_2

    .line 50332
    :cond_3
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 50333
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    const/4 v1, 0x1

    const/4 v6, -0x1

    .line 50337
    :goto_2
    iget v3, v0, Lcom/google/android/exoplayer2/z;->d:I

    if-ne v3, v11, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    move/from16 v36, v1

    move/from16 v34, v3

    move v4, v6

    const/4 v10, -0x1

    const/16 v35, 0x0

    goto/16 :goto_7

    :cond_5
    move-object v15, v2

    move-object v8, v3

    move-object/from16 v16, v11

    const/4 v11, 0x4

    .line 50339
    iget-object v2, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 50341
    invoke-virtual {v9, v12}, Lcom/google/android/exoplayer2/al;->b(Z)I

    move-result v1

    move v4, v1

    move-object v2, v15

    const/4 v10, -0x1

    :goto_4
    const/16 v34, 0x0

    const/16 v35, 0x0

    :goto_5
    const/16 v36, 0x0

    goto/16 :goto_7

    .line 50342
    :cond_6
    invoke-virtual {v9, v15}, Lcom/google/android/exoplayer2/al;->c(Ljava/lang/Object;)I

    move-result v2

    const/4 v10, -0x1

    if-ne v2, v10, :cond_8

    .line 50346
    iget-object v6, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    move-object v1, v13

    move-object v2, v14

    move v3, v4

    move v4, v12

    move-object v5, v15

    move-object/from16 v7, p1

    .line 50347
    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;IZLjava/lang/Object;Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/al;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    .line 50358
    invoke-virtual {v9, v12}, Lcom/google/android/exoplayer2/al;->b(Z)I

    move-result v1

    move v4, v1

    move-object v2, v15

    goto :goto_1

    .line 50363
    :cond_7
    invoke-virtual {v9, v1, v14}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/al$a;->c:I

    :goto_6
    move v4, v1

    move-object v2, v15

    goto :goto_4

    :cond_8
    if-eqz v1, :cond_a

    cmp-long v1, v21, v17

    if-nez v1, :cond_9

    .line 50370
    invoke-virtual {v9, v15, v14}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplayer2/al$a;->c:I

    goto :goto_6

    .line 50372
    :cond_9
    iget-object v1, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v2, v8, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v14}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    .line 50429
    iget-wide v1, v14, Lcom/google/android/exoplayer2/al$a;->e:J

    add-long v5, v21, v1

    .line 50374
    invoke-virtual {v9, v15, v14}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    move-result-object v1

    iget v4, v1, Lcom/google/android/exoplayer2/al$a;->c:I

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v14

    .line 50376
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/al;->a(Lcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 50377
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 50378
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    const/4 v4, -0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x1

    goto :goto_7

    :cond_a
    move-object v2, v15

    const/4 v4, -0x1

    goto :goto_4

    :goto_7
    if-eq v4, v10, :cond_b

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v14

    .line 50388
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/al;->a(Lcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 50393
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 50394
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    move-object/from16 v1, v16

    move-wide/from16 v32, v17

    move-wide/from16 v3, v21

    goto :goto_8

    :cond_b
    move-object/from16 v1, v16

    move-wide/from16 v3, v21

    move-wide/from16 v32, v3

    .line 50400
    :goto_8
    invoke-virtual {v1, v9, v2, v3, v4}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/r$a;

    move-result-object v1

    .line 50401
    iget v5, v1, Lcom/google/android/exoplayer2/source/r$a;->e:I

    if-eq v5, v10, :cond_d

    iget v5, v8, Lcom/google/android/exoplayer2/source/r$a;->e:I

    if-eq v5, v10, :cond_c

    iget v5, v1, Lcom/google/android/exoplayer2/source/r$a;->b:I

    iget v6, v8, Lcom/google/android/exoplayer2/source/r$a;->e:I

    if-lt v5, v6, :cond_c

    goto :goto_9

    :cond_c
    const/4 v6, 0x0

    goto :goto_a

    :cond_d
    :goto_9
    const/4 v6, 0x1

    .line 50408
    :goto_a
    iget-object v5, v8, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    .line 50409
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 50410
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/r$a;->a()Z

    move-result v2

    if-nez v2, :cond_e

    .line 50411
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/r$a;->a()Z

    move-result v2

    if-nez v2, :cond_e

    if-eqz v6, :cond_e

    const/4 v6, 0x1

    goto :goto_b

    :cond_e
    const/4 v6, 0x0

    :goto_b
    if-eqz v6, :cond_f

    move-object v1, v8

    .line 50416
    :cond_f
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/r$a;->a()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 50417
    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/source/r$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 50418
    iget-wide v2, v0, Lcom/google/android/exoplayer2/z;->r:J

    goto :goto_c

    .line 50420
    :cond_10
    iget-object v0, v1, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    invoke-virtual {v9, v0, v14}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    .line 50422
    iget v0, v1, Lcom/google/android/exoplayer2/source/r$a;->c:I

    iget v2, v1, Lcom/google/android/exoplayer2/source/r$a;->b:I

    invoke-virtual {v14, v2}, Lcom/google/android/exoplayer2/al$a;->b(I)I

    move-result v2

    if-ne v0, v2, :cond_11

    .line 50430
    iget-object v0, v14, Lcom/google/android/exoplayer2/al$a;->f:Lcom/google/android/exoplayer2/source/ads/a;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/ads/a;->f:J

    goto :goto_c

    :cond_11
    const-wide/16 v2, 0x0

    :goto_c
    move-wide/from16 v30, v2

    goto :goto_d

    :cond_12
    move-wide/from16 v30, v3

    .line 50428
    :goto_d
    new-instance v0, Lcom/google/android/exoplayer2/o$f;

    move-object/from16 v28, v0

    move-object/from16 v29, v1

    invoke-direct/range {v28 .. v36}, Lcom/google/android/exoplayer2/o$f;-><init>(Lcom/google/android/exoplayer2/source/r$a;JJZZZ)V

    move-object v1, v0

    .line 1764
    :goto_e
    iget-object v8, v1, Lcom/google/android/exoplayer2/o$f;->a:Lcom/google/android/exoplayer2/source/r$a;

    .line 1765
    iget-wide v12, v1, Lcom/google/android/exoplayer2/o$f;->c:J

    .line 1766
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/o$f;->d:Z

    .line 1767
    iget-wide v14, v1, Lcom/google/android/exoplayer2/o$f;->b:J

    move-object/from16 v10, p0

    .line 1768
    iget-object v2, v10, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v2, v2, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    .line 1769
    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/source/r$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v10, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/z;->r:J

    cmp-long v4, v14, v2

    if-eqz v4, :cond_13

    goto :goto_f

    :cond_13
    const/16 v16, 0x0

    goto :goto_10

    :cond_14
    :goto_f
    const/16 v16, 0x1

    .line 1772
    :goto_10
    :try_start_0
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/o$f;->e:Z

    if-eqz v2, :cond_16

    .line 1773
    iget-object v2, v10, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget v2, v2, Lcom/google/android/exoplayer2/z;->d:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_15

    .line 1774
    invoke-direct {v10, v11}, Lcom/google/android/exoplayer2/o;->a(I)V

    :cond_15
    const/4 v11, 0x0

    .line 1776
    invoke-direct {v10, v11, v11, v11, v3}, Lcom/google/android/exoplayer2/o;->a(ZZZZ)V

    goto :goto_11

    :cond_16
    const/4 v3, 0x1

    const/4 v11, 0x0

    :goto_11
    if-nez v16, :cond_29

    .line 1784
    iget-object v0, v10, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    iget-wide v4, v10, Lcom/google/android/exoplayer2/o;->K:J

    .line 50453
    iget-object v2, v0, Lcom/google/android/exoplayer2/w;->d:Lcom/google/android/exoplayer2/u;

    const-wide/high16 v19, -0x8000000000000000L

    if-nez v2, :cond_17

    move-wide/from16 v22, v12

    const-wide/16 v6, 0x0

    goto :goto_13

    .line 50454
    :cond_17
    iget-wide v6, v2, Lcom/google/android/exoplayer2/u;->k:J

    .line 50436
    iget-boolean v3, v2, Lcom/google/android/exoplayer2/u;->d:Z

    if-eqz v3, :cond_1a

    const/4 v3, 0x0

    .line 50439
    :goto_12
    iget-object v11, v10, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-wide/from16 v22, v12

    :try_start_1
    array-length v12, v11

    if-ge v3, v12, :cond_1b

    .line 50440
    aget-object v11, v11, v3

    invoke-static {v11}, Lcom/google/android/exoplayer2/o;->c(Lcom/google/android/exoplayer2/af;)Z

    move-result v11

    if-eqz v11, :cond_19

    iget-object v11, v10, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    aget-object v11, v11, v3

    .line 50441
    invoke-interface {v11}, Lcom/google/android/exoplayer2/af;->f()Lcom/google/android/exoplayer2/source/aa;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/exoplayer2/u;->c:[Lcom/google/android/exoplayer2/source/aa;

    aget-object v12, v12, v3

    if-ne v11, v12, :cond_19

    .line 50445
    iget-object v11, v10, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    aget-object v11, v11, v3

    invoke-interface {v11}, Lcom/google/android/exoplayer2/af;->h()J

    move-result-wide v11

    cmp-long v13, v11, v19

    if-nez v13, :cond_18

    move-wide/from16 v6, v19

    goto :goto_13

    .line 50449
    :cond_18
    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :cond_19
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v12, v22

    goto :goto_12

    :cond_1a
    move-wide/from16 v22, v12

    .line 50456
    :cond_1b
    :goto_13
    iget-object v2, v0, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    const/4 v3, 0x0

    :goto_14
    if-eqz v2, :cond_27

    .line 50458
    iget-object v11, v2, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    if-nez v3, :cond_1c

    .line 50466
    invoke-virtual {v0, v9, v11}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/v;)Lcom/google/android/exoplayer2/v;

    move-result-object v3

    move-wide/from16 v24, v4

    move-wide/from16 v26, v14

    goto :goto_18

    .line 50469
    :cond_1c
    invoke-virtual {v0, v9, v3, v4, v5}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/u;J)Lcom/google/android/exoplayer2/v;

    move-result-object v12

    if-nez v12, :cond_1e

    .line 50472
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/u;)Z

    move-result v0

    if-eqz v0, :cond_27

    move-wide/from16 v26, v14

    :cond_1d
    :goto_15
    const/4 v6, 0x0

    goto/16 :goto_1d

    :cond_1e
    move-wide/from16 v24, v4

    .line 50505
    iget-wide v4, v11, Lcom/google/android/exoplayer2/v;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide/from16 v26, v14

    :try_start_2
    iget-wide v13, v12, Lcom/google/android/exoplayer2/v;->b:J

    cmp-long v15, v4, v13

    if-nez v15, :cond_1f

    iget-object v4, v11, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v5, v12, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/r$a;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v4, 0x1

    goto :goto_16

    :cond_1f
    const/4 v4, 0x0

    :goto_16
    if-nez v4, :cond_20

    .line 50476
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/u;)Z

    move-result v0

    if-eqz v0, :cond_28

    :goto_17
    goto :goto_15

    :cond_20
    move-object v3, v12

    .line 50482
    :goto_18
    iget-wide v4, v11, Lcom/google/android/exoplayer2/v;->c:J

    .line 50483
    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplayer2/v;->b(J)Lcom/google/android/exoplayer2/v;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    .line 50486
    iget-wide v4, v11, Lcom/google/android/exoplayer2/v;->e:J

    iget-wide v11, v3, Lcom/google/android/exoplayer2/v;->e:J

    cmp-long v13, v4, v17

    if-eqz v13, :cond_22

    cmp-long v13, v4, v11

    if-nez v13, :cond_21

    goto :goto_19

    :cond_21
    const/4 v4, 0x0

    goto :goto_1a

    :cond_22
    :goto_19
    const/4 v4, 0x1

    :goto_1a
    if-nez v4, :cond_26

    .line 50490
    iget-wide v4, v3, Lcom/google/android/exoplayer2/v;->e:J

    cmp-long v11, v4, v17

    if-nez v11, :cond_23

    const-wide v3, 0x7fffffffffffffffL

    goto :goto_1b

    .line 50492
    :cond_23
    iget-wide v3, v3, Lcom/google/android/exoplayer2/v;->e:J

    .line 50508
    iget-wide v11, v2, Lcom/google/android/exoplayer2/u;->k:J

    add-long/2addr v3, v11

    .line 50493
    :goto_1b
    iget-object v5, v0, Lcom/google/android/exoplayer2/w;->d:Lcom/google/android/exoplayer2/u;

    if-ne v2, v5, :cond_25

    cmp-long v5, v6, v19

    if-eqz v5, :cond_24

    cmp-long v5, v6, v3

    if-ltz v5, :cond_25

    :cond_24
    const/4 v6, 0x1

    goto :goto_1c

    :cond_25
    const/4 v6, 0x0

    .line 50497
    :goto_1c
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/u;)Z

    move-result v0

    if-nez v0, :cond_1d

    if-eqz v6, :cond_28

    goto :goto_17

    .line 50509
    :cond_26
    iget-object v3, v2, Lcom/google/android/exoplayer2/u;->h:Lcom/google/android/exoplayer2/u;

    move-wide/from16 v4, v24

    move-wide/from16 v14, v26

    move-object/from16 v37, v3

    move-object v3, v2

    move-object/from16 v2, v37

    goto/16 :goto_14

    :cond_27
    move-wide/from16 v26, v14

    :cond_28
    const/4 v6, 0x1

    :goto_1d
    if-nez v6, :cond_2c

    const/4 v2, 0x0

    .line 1786
    invoke-direct {v10, v2}, Lcom/google/android/exoplayer2/o;->a(Z)V

    goto :goto_1f

    :catchall_0
    move-exception v0

    goto/16 :goto_22

    :cond_29
    move-wide/from16 v22, v12

    move-wide/from16 v26, v14

    .line 1788
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 1790
    iget-object v2, v10, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50510
    iget-object v2, v2, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    :goto_1e
    if-eqz v2, :cond_2b

    .line 1793
    iget-object v3, v2, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-object v3, v3, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer2/source/r$a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1794
    iget-object v3, v10, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    iget-object v4, v2, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    invoke-virtual {v3, v9, v4}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/v;)Lcom/google/android/exoplayer2/v;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    .line 50511
    :cond_2a
    iget-object v2, v2, Lcom/google/android/exoplayer2/u;->h:Lcom/google/android/exoplayer2/u;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1e

    :cond_2b
    move-wide/from16 v11, v26

    .line 1798
    :try_start_3
    invoke-direct {v10, v8, v11, v12, v0}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/source/r$a;JZ)J

    move-result-wide v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-wide v11, v2

    goto :goto_20

    :catchall_1
    move-exception v0

    goto :goto_23

    :cond_2c
    :goto_1f
    move-wide/from16 v11, v26

    .line 1801
    :goto_20
    iget-object v0, v10, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v4, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v0, v10, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v5, v0, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    .line 1806
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/o$f;->f:Z

    if-eqz v0, :cond_2d

    move-wide v6, v11

    goto :goto_21

    :cond_2d
    move-wide/from16 v6, v17

    :goto_21
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    const/4 v13, 0x0

    .line 1801
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;J)V

    if-nez v16, :cond_2e

    .line 1809
    iget-object v0, v10, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/z;->c:J

    cmp-long v2, v22, v0

    if-eqz v2, :cond_2f

    :cond_2e
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v11

    move-wide/from16 v5, v22

    .line 1812
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/source/r$a;JJ)Lcom/google/android/exoplayer2/z;

    move-result-object v0

    iput-object v0, v10, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    .line 1814
    :cond_2f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->m()V

    .line 1815
    iget-object v0, v10, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    invoke-direct {v10, v9, v0}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/al;)V

    .line 1817
    iget-object v0, v10, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/z;->a(Lcom/google/android/exoplayer2/al;)Lcom/google/android/exoplayer2/z;

    move-result-object v0

    iput-object v0, v10, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    .line 1818
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1820
    iput-object v13, v10, Lcom/google/android/exoplayer2/o;->J:Lcom/google/android/exoplayer2/o$g;

    :cond_30
    const/4 v1, 0x0

    .line 1822
    invoke-direct {v10, v1}, Lcom/google/android/exoplayer2/o;->b(Z)V

    return-void

    :catchall_2
    move-exception v0

    move-wide/from16 v11, v26

    goto :goto_23

    :catchall_3
    move-exception v0

    move-wide/from16 v22, v12

    :goto_22
    move-wide v11, v14

    :goto_23
    const/4 v13, 0x0

    .line 1801
    iget-object v2, v10, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v4, v2, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v2, v10, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v5, v2, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    .line 1806
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/o$f;->f:Z

    if-eqz v1, :cond_31

    move-wide v6, v11

    goto :goto_24

    :cond_31
    move-wide/from16 v6, v17

    :goto_24
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    .line 1801
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;J)V

    if-nez v16, :cond_32

    .line 1809
    iget-object v1, v10, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/z;->c:J

    cmp-long v3, v22, v1

    if-eqz v3, :cond_33

    :cond_32
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v11

    move-wide/from16 v5, v22

    .line 1812
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/source/r$a;JJ)Lcom/google/android/exoplayer2/z;

    move-result-object v1

    iput-object v1, v10, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    .line 1814
    :cond_33
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->m()V

    .line 1815
    iget-object v1, v10, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v1, v1, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    invoke-direct {v10, v9, v1}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/al;)V

    .line 1817
    iget-object v1, v10, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/z;->a(Lcom/google/android/exoplayer2/al;)Lcom/google/android/exoplayer2/z;

    move-result-object v1

    iput-object v1, v10, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    .line 1818
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v1

    if-nez v1, :cond_34

    .line 1820
    iput-object v13, v10, Lcom/google/android/exoplayer2/o;->J:Lcom/google/android/exoplayer2/o$g;

    :cond_34
    const/4 v1, 0x0

    .line 1822
    invoke-direct {v10, v1}, Lcom/google/android/exoplayer2/o;->b(Z)V

    .line 1823
    throw v0
.end method

.method private b(Z)V
    .locals 5

    .line 2381
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50534
    iget-object v0, v0, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    if-nez v0, :cond_0

    .line 2383
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v1, v1, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-object v1, v1, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    .line 2384
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v2, v2, Lcom/google/android/exoplayer2/z;->j:Lcom/google/android/exoplayer2/source/r$a;

    .line 2385
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/r$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 2387
    iget-object v3, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/z;->a(Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/z;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    .line 2389
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    if-nez v0, :cond_2

    .line 2391
    iget-wide v3, v1, Lcom/google/android/exoplayer2/z;->r:J

    goto :goto_1

    .line 2392
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/u;->c()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v1, Lcom/google/android/exoplayer2/z;->p:J

    .line 2393
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/o;->s()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/google/android/exoplayer2/z;->q:J

    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    .line 2394
    iget-boolean p1, v0, Lcom/google/android/exoplayer2/u;->d:Z

    if-eqz p1, :cond_4

    .line 50536
    iget-object p1, v0, Lcom/google/android/exoplayer2/u;->j:Lcom/google/android/exoplayer2/trackselection/i;

    .line 2397
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/trackselection/i;)V

    :cond_4
    return-void
.end method

.method private static c(Lcom/google/android/exoplayer2/ad;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1499
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ad;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 50263
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ad;->a:Lcom/google/android/exoplayer2/ad$b;

    .line 50264
    iget v2, p0, Lcom/google/android/exoplayer2/ad;->c:I

    .line 50265
    iget-object v3, p0, Lcom/google/android/exoplayer2/ad;->d:Ljava/lang/Object;

    .line 1503
    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/ad$b;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1505
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ad;->a(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ad;->a(Z)V

    .line 1506
    throw v1
.end method

.method private static c(Lcom/google/android/exoplayer2/af;)Z
    .locals 0

    .line 2823
    invoke-interface {p0}, Lcom/google/android/exoplayer2/af;->C_()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic d(Lcom/google/android/exoplayer2/ad;)V
    .locals 2

    .line 1490
    :try_start_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/o;->c(Lcom/google/android/exoplayer2/ad;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Unexpected error delivering message on external thread."

    .line 1492
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1493
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private e()V
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->x:Lcom/google/android/exoplayer2/o$d;

    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o$d;->a(Lcom/google/android/exoplayer2/z;)V

    .line 648
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->x:Lcom/google/android/exoplayer2/o$d;

    .line 50238
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/o$d;->a:Z

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->q:Lcom/google/android/exoplayer2/o$e;

    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->x:Lcom/google/android/exoplayer2/o$d;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/o$e;->onPlaybackInfoUpdate(Lcom/google/android/exoplayer2/o$d;)V

    .line 650
    new-instance v0, Lcom/google/android/exoplayer2/o$d;

    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/o$d;-><init>(Lcom/google/android/exoplayer2/z;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->x:Lcom/google/android/exoplayer2/o$d;

    :cond_0
    return-void
.end method

.method private f()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 826
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/o;->B:Z

    .line 827
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->n:Lcom/google/android/exoplayer2/k;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/k;->a()V

    .line 828
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 829
    invoke-static {v3}, Lcom/google/android/exoplayer2/o;->c(Lcom/google/android/exoplayer2/af;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 830
    invoke-interface {v3}, Lcom/google/android/exoplayer2/af;->e()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private g()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 836
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->n:Lcom/google/android/exoplayer2/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k;->b()V

    .line 837
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 838
    invoke-static {v3}, Lcom/google/android/exoplayer2/o;->c(Lcom/google/android/exoplayer2/af;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 839
    invoke-static {v3}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/af;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private h()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 845
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50240
    iget-object v0, v0, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    if-nez v0, :cond_0

    return-void

    .line 852
    :cond_0
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/u;->d:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_1

    .line 853
    iget-object v1, v0, Lcom/google/android/exoplayer2/u;->a:Lcom/google/android/exoplayer2/source/p;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/p;->c()J

    move-result-wide v4

    move-wide v8, v4

    goto :goto_0

    :cond_1
    move-wide v8, v2

    :goto_0
    const/4 v1, 0x0

    cmp-long v4, v8, v2

    if-eqz v4, :cond_2

    .line 856
    invoke-direct {p0, v8, v9}, Lcom/google/android/exoplayer2/o;->a(J)V

    .line 859
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/z;->r:J

    cmp-long v0, v8, v2

    if-eqz v0, :cond_4

    .line 860
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v7, v0, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-wide v10, v0, Lcom/google/android/exoplayer2/z;->c:J

    move-object v6, p0

    .line 861
    invoke-direct/range {v6 .. v11}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/source/r$a;JJ)Lcom/google/android/exoplayer2/z;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    .line 865
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->x:Lcom/google/android/exoplayer2/o$d;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/o$d;->b(I)V

    goto :goto_2

    .line 868
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->n:Lcom/google/android/exoplayer2/k;

    iget-object v3, p0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50241
    iget-object v3, v3, Lcom/google/android/exoplayer2/w;->d:Lcom/google/android/exoplayer2/u;

    if-eq v0, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 869
    :goto_1
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/k;->a(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer2/o;->K:J

    .line 50243
    iget-wide v4, v0, Lcom/google/android/exoplayer2/u;->k:J

    sub-long/2addr v2, v4

    .line 872
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/z;->r:J

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/google/android/exoplayer2/o;->b(JJ)V

    .line 873
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iput-wide v2, v0, Lcom/google/android/exoplayer2/z;->r:J

    .line 877
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50244
    iget-object v0, v0, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    .line 878
    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/u;->c()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/exoplayer2/z;->p:J

    .line 879
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/o;->s()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/exoplayer2/z;->q:J

    .line 882
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/z;->k:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget v0, v0, Lcom/google/android/exoplayer2/z;->d:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v2, v2, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    .line 884
    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->m:Lcom/google/android/exoplayer2/aa;

    iget v0, v0, Lcom/google/android/exoplayer2/aa;->b:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    .line 886
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->t:Lcom/google/android/exoplayer2/r;

    .line 888
    invoke-direct {p0}, Lcom/google/android/exoplayer2/o;->i()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/google/android/exoplayer2/o;->s()J

    move-result-wide v4

    .line 887
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/r;->a(JJ)F

    move-result v0

    .line 889
    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->n:Lcom/google/android/exoplayer2/k;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/k;->d()Lcom/google/android/exoplayer2/aa;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/aa;->b:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_5

    .line 890
    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->n:Lcom/google/android/exoplayer2/k;

    iget-object v3, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v3, v3, Lcom/google/android/exoplayer2/z;->m:Lcom/google/android/exoplayer2/aa;

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/aa;->a(F)Lcom/google/android/exoplayer2/aa;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/k;->a(Lcom/google/android/exoplayer2/aa;)V

    .line 891
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->m:Lcom/google/android/exoplayer2/aa;

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->n:Lcom/google/android/exoplayer2/k;

    .line 893
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/k;->d()Lcom/google/android/exoplayer2/aa;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/aa;->b:F

    .line 891
    invoke-direct {p0, v0, v2, v1, v1}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/aa;FZZ)V

    :cond_5
    return-void
.end method

.method private i()J
    .locals 4

    .line 1041
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v0, v0, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v1, v1, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/z;->r:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private j()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1325
    invoke-direct {p0, v0, v1, v0, v1}, Lcom/google/android/exoplayer2/o;->a(ZZZZ)V

    .line 1330
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->g:Lcom/google/android/exoplayer2/s;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/s;->c()V

    .line 1331
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/o;->a(I)V

    .line 1332
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 1333
    monitor-enter p0

    .line 1334
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/o;->y:Z

    .line 1335
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1336
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private k()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 1613
    iget-object v0, v6, Lcom/google/android/exoplayer2/o;->n:Lcom/google/android/exoplayer2/k;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k;->d()Lcom/google/android/exoplayer2/aa;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/aa;->b:F

    .line 1615
    iget-object v1, v6, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50268
    iget-object v1, v1, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    .line 1616
    iget-object v2, v6, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50269
    iget-object v2, v2, Lcom/google/android/exoplayer2/w;->d:Lcom/google/android/exoplayer2/u;

    const/4 v7, 0x1

    const/4 v3, 0x1

    :goto_0
    if-eqz v1, :cond_d

    .line 1620
    iget-boolean v4, v1, Lcom/google/android/exoplayer2/u;->d:Z

    if-nez v4, :cond_0

    goto/16 :goto_7

    .line 1624
    :cond_0
    iget-object v4, v6, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v4, v4, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    invoke-virtual {v1, v0, v4}, Lcom/google/android/exoplayer2/u;->a(FLcom/google/android/exoplayer2/al;)Lcom/google/android/exoplayer2/trackselection/i;

    move-result-object v9

    .line 50270
    iget-object v4, v1, Lcom/google/android/exoplayer2/u;->j:Lcom/google/android/exoplayer2/trackselection/i;

    const/4 v14, 0x0

    if-eqz v4, :cond_4

    .line 50271
    iget-object v5, v4, Lcom/google/android/exoplayer2/trackselection/i;->c:[Lcom/google/android/exoplayer2/trackselection/c;

    array-length v5, v5

    iget-object v8, v9, Lcom/google/android/exoplayer2/trackselection/i;->c:[Lcom/google/android/exoplayer2/trackselection/c;

    array-length v8, v8

    if-eq v5, v8, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    .line 50274
    :goto_1
    iget-object v8, v9, Lcom/google/android/exoplayer2/trackselection/i;->c:[Lcom/google/android/exoplayer2/trackselection/c;

    array-length v8, v8

    if-ge v5, v8, :cond_3

    .line 50275
    invoke-virtual {v9, v4, v5}, Lcom/google/android/exoplayer2/trackselection/i;->a(Lcom/google/android/exoplayer2/trackselection/i;I)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_6

    if-ne v1, v2, :cond_5

    const/4 v3, 0x0

    .line 50280
    :cond_5
    iget-object v1, v1, Lcom/google/android/exoplayer2/u;->h:Lcom/google/android/exoplayer2/u;

    goto :goto_0

    :cond_6
    const/4 v15, 0x4

    if-eqz v3, :cond_b

    .line 1638
    iget-object v0, v6, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50281
    iget-object v4, v0, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    .line 1639
    iget-object v0, v6, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/u;)Z

    move-result v12

    .line 1641
    iget-object v0, v6, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    array-length v0, v0

    new-array v5, v0, [Z

    .line 1642
    iget-object v0, v6, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-wide v10, v0, Lcom/google/android/exoplayer2/z;->r:J

    move-object v8, v4

    move-object v13, v5

    .line 1643
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/exoplayer2/u;->a(Lcom/google/android/exoplayer2/trackselection/i;JZ[Z)J

    move-result-wide v8

    .line 1645
    iget-object v0, v6, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v1, v0, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v0, v6, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-wide v10, v0, Lcom/google/android/exoplayer2/z;->c:J

    move-object/from16 v0, p0

    move-wide v2, v8

    move-object v12, v4

    move-wide v4, v10

    .line 1646
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/source/r$a;JJ)Lcom/google/android/exoplayer2/z;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    .line 1648
    iget v0, v0, Lcom/google/android/exoplayer2/z;->d:I

    if-eq v0, v15, :cond_7

    iget-object v0, v6, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/z;->r:J

    cmp-long v2, v8, v0

    if-eqz v2, :cond_7

    .line 1650
    iget-object v0, v6, Lcom/google/android/exoplayer2/o;->x:Lcom/google/android/exoplayer2/o$d;

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/o$d;->b(I)V

    .line 1651
    invoke-direct {v6, v8, v9}, Lcom/google/android/exoplayer2/o;->a(J)V

    .line 1654
    :cond_7
    iget-object v0, v6, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    array-length v0, v0

    new-array v0, v0, [Z

    .line 1655
    :goto_4
    iget-object v1, v6, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    array-length v2, v1

    if-ge v14, v2, :cond_a

    .line 1656
    aget-object v1, v1, v14

    .line 1657
    invoke-static {v1}, Lcom/google/android/exoplayer2/o;->c(Lcom/google/android/exoplayer2/af;)Z

    move-result v2

    aput-boolean v2, v0, v14

    .line 1658
    iget-object v2, v12, Lcom/google/android/exoplayer2/u;->c:[Lcom/google/android/exoplayer2/source/aa;

    aget-object v2, v2, v14

    .line 1659
    aget-boolean v3, v0, v14

    if-eqz v3, :cond_9

    .line 1660
    invoke-interface {v1}, Lcom/google/android/exoplayer2/af;->f()Lcom/google/android/exoplayer2/source/aa;

    move-result-object v3

    if-eq v2, v3, :cond_8

    .line 1662
    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/o;->b(Lcom/google/android/exoplayer2/af;)V

    goto :goto_5

    .line 1663
    :cond_8
    aget-boolean v2, v13, v14

    if-eqz v2, :cond_9

    .line 1665
    iget-wide v2, v6, Lcom/google/android/exoplayer2/o;->K:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/af;->a(J)V

    :cond_9
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 1669
    :cond_a
    invoke-direct {v6, v0}, Lcom/google/android/exoplayer2/o;->a([Z)V

    goto :goto_6

    .line 1672
    :cond_b
    iget-object v0, v6, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/u;)Z

    .line 1673
    iget-boolean v0, v1, Lcom/google/android/exoplayer2/u;->d:Z

    if-eqz v0, :cond_c

    .line 1674
    iget-object v0, v1, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/v;->b:J

    iget-wide v4, v6, Lcom/google/android/exoplayer2/o;->K:J

    .line 50283
    iget-wide v10, v1, Lcom/google/android/exoplayer2/u;->k:J

    sub-long/2addr v4, v10

    .line 1675
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1676
    invoke-virtual {v1, v9, v2, v3}, Lcom/google/android/exoplayer2/u;->a(Lcom/google/android/exoplayer2/trackselection/i;J)J

    .line 1679
    :cond_c
    :goto_6
    invoke-direct {v6, v7}, Lcom/google/android/exoplayer2/o;->b(Z)V

    .line 1680
    iget-object v0, v6, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget v0, v0, Lcom/google/android/exoplayer2/z;->d:I

    if-eq v0, v15, :cond_d

    .line 1681
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->n()V

    .line 1682
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->h()V

    .line 1683
    iget-object v0, v6, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)Z

    :cond_d
    :goto_7
    return-void
.end method

.method private l()Z
    .locals 5

    .line 1745
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50287
    iget-object v0, v0, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    .line 1746
    iget-object v1, v0, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/v;->e:J

    .line 1747
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/u;->d:Z

    if-eqz v0, :cond_1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/z;->r:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    .line 1750
    invoke-direct {p0}, Lcom/google/android/exoplayer2/o;->t()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$LQRMnE3eDLRsmHYxjsI_c0oVSVw(Lcom/google/android/exoplayer2/o;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/o;->u()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$nL6x-5fHIrO1xn6Z-CjO4CZ6uto(Lcom/google/android/exoplayer2/o;Lcom/google/android/exoplayer2/ad;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/o;->d(Lcom/google/android/exoplayer2/ad;)V

    return-void
.end method

.method private m()V
    .locals 1

    .line 2079
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50514
    iget-object v0, v0, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    if-eqz v0, :cond_0

    .line 2080
    iget-object v0, v0, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/v;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/o;->z:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/o;->A:Z

    return-void
.end method

.method private n()V
    .locals 3

    .line 2197
    invoke-direct {p0}, Lcom/google/android/exoplayer2/o;->o()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/o;->C:Z

    if-eqz v0, :cond_0

    .line 2199
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50515
    iget-object v0, v0, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    .line 2199
    iget-wide v1, p0, Lcom/google/android/exoplayer2/o;->K:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/u;->b(J)V

    .line 2201
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/o;->q()V

    return-void
.end method

.method private o()Z
    .locals 4

    .line 2205
    invoke-direct {p0}, Lcom/google/android/exoplayer2/o;->p()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2208
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50516
    iget-object v0, v0, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    .line 2210
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/u;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/o;->b(J)J

    move-result-wide v0

    .line 2216
    iget-object v2, p0, Lcom/google/android/exoplayer2/o;->g:Lcom/google/android/exoplayer2/s;

    iget-object v3, p0, Lcom/google/android/exoplayer2/o;->n:Lcom/google/android/exoplayer2/k;

    .line 2217
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/k;->d()Lcom/google/android/exoplayer2/aa;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/aa;->b:F

    .line 2216
    invoke-interface {v2, v0, v1, v3}, Lcom/google/android/exoplayer2/s;->a(JF)Z

    move-result v0

    return v0
.end method

.method private p()Z
    .locals 6

    .line 2221
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50522
    iget-object v0, v0, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2225
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/u;->d()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private q()V
    .locals 2

    .line 2233
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50523
    iget-object v0, v0, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    .line 2234
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/o;->C:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/exoplayer2/u;->a:Lcom/google/android/exoplayer2/source/p;

    .line 2235
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/p;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2236
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/z;->f:Z

    if-eq v0, v1, :cond_2

    .line 2237
    iget-object v1, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/z;->a(Z)Lcom/google/android/exoplayer2/z;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    :cond_2
    return-void
.end method

.method private r()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 2305
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/o;->a([Z)V

    return-void
.end method

.method private s()J
    .locals 2

    .line 2404
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/z;->p:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/o;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private t()Z
    .locals 1

    .line 2423
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/z;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget v0, v0, Lcom/google/android/exoplayer2/z;->l:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic u()Ljava/lang/Boolean;
    .locals 1

    .line 412
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/o;->y:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/k;->a(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(IILcom/google/android/exoplayer2/source/ac;)V
    .locals 2

    .line 353
    iget-object p1, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    const/16 v0, 0x14

    const/4 v1, 0x0

    .line 354
    invoke-interface {p1, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/util/k;->a(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 355
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/aa;)V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0x10

    .line 451
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/k;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 452
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/exoplayer2/ad;)V
    .locals 2

    monitor-enter p0

    .line 371
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/o;->y:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0xe

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/k;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    .line 372
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 373
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ad;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic a(Lcom/google/android/exoplayer2/source/ab;)V
    .locals 2

    .line 63
    check-cast p1, Lcom/google/android/exoplayer2/source/p;

    .line 50551
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/k;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/p;)V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/util/k;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Ljava/util/List;IJLcom/google/android/exoplayer2/source/ac;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/y$c;",
            ">;IJ",
            "Lcom/google/android/exoplayer2/source/ac;",
            ")V"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    new-instance v8, Lcom/google/android/exoplayer2/o$a;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/o$a;-><init>(Ljava/util/List;Lcom/google/android/exoplayer2/source/ac;IJLcom/google/android/exoplayer2/o$1;)V

    const/16 p1, 0x11

    .line 331
    invoke-interface {v0, p1, v8}, Lcom/google/android/exoplayer2/util/k;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 334
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(ZI)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    const/4 v1, 0x1

    .line 289
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/util/k;->a(III)Landroid/os/Message;

    move-result-object p1

    .line 290
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/k;->a(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final declared-synchronized c()Z
    .locals 3

    monitor-enter p0

    .line 408
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/o;->y:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)Z

    .line 412
    new-instance v0, Lcom/google/android/exoplayer2/-$$Lambda$o$LQRMnE3eDLRsmHYxjsI_c0oVSVw;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/-$$Lambda$o$LQRMnE3eDLRsmHYxjsI_c0oVSVw;-><init>(Lcom/google/android/exoplayer2/o;)V

    iget-wide v1, p0, Lcom/google/android/exoplayer2/o;->u:J

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/common/base/q;J)V

    .line 413
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/o;->y:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 409
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 48

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    const-string v9, "Playback error"

    const-string v10, "ExoPlayerImplInternal"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 460
    :try_start_0
    iget v2, v1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_16

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    const/4 v15, 0x4

    const/4 v7, 0x2

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    packed-switch v2, :pswitch_data_0

    move-object v2, v8

    const/4 v1, 0x0

    return v1

    .line 539
    :pswitch_0
    :try_start_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 50226
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/ExoPlaybackException;->h:Z

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/google/android/exoplayer2/ExoPlaybackException;->a:I

    if-ne v2, v13, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Z)V
    :try_end_1
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 50230
    :try_start_2
    invoke-direct {v8, v13}, Lcom/google/android/exoplayer2/o;->a(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 50232
    :try_start_3
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 50233
    throw v1

    .line 536
    :pswitch_1
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-ne v1, v13, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 50215
    :goto_1
    iget-boolean v2, v8, Lcom/google/android/exoplayer2/o;->H:Z

    if-eq v1, v2, :cond_13

    .line 50218
    iput-boolean v1, v8, Lcom/google/android/exoplayer2/o;->H:Z

    .line 50219
    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget v2, v2, Lcom/google/android/exoplayer2/z;->d:I

    if-nez v1, :cond_3

    if-eq v2, v15, :cond_3

    if-ne v2, v13, :cond_2

    goto :goto_2

    .line 50223
    :cond_2
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    invoke-interface {v1, v7}, Lcom/google/android/exoplayer2/util/k;->b(I)Z

    goto/16 :goto_7

    .line 50221
    :cond_3
    :goto_2
    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/z;->b(Z)Lcom/google/android/exoplayer2/z;

    move-result-object v1

    iput-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    goto/16 :goto_7

    .line 533
    :pswitch_2
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 49764
    :goto_3
    iput-boolean v1, v8, Lcom/google/android/exoplayer2/o;->z:Z

    .line 49765
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->m()V

    .line 49766
    iget-boolean v1, v8, Lcom/google/android/exoplayer2/o;->A:Z

    if-eqz v1, :cond_13

    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50213
    iget-object v1, v1, Lcom/google/android/exoplayer2/w;->d:Lcom/google/android/exoplayer2/u;

    .line 49766
    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50214
    iget-object v2, v2, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    if-eq v1, v2, :cond_13

    .line 49769
    invoke-direct {v8, v13}, Lcom/google/android/exoplayer2/o;->a(Z)V

    .line 49770
    invoke-direct {v8, v12}, Lcom/google/android/exoplayer2/o;->b(Z)V

    goto/16 :goto_7

    .line 49717
    :pswitch_3
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->s:Lcom/google/android/exoplayer2/y;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/y;->c()Lcom/google/android/exoplayer2/al;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/google/android/exoplayer2/o;->b(Lcom/google/android/exoplayer2/al;)V

    goto/16 :goto_7

    .line 527
    :pswitch_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/source/ac;

    .line 48721
    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->x:Lcom/google/android/exoplayer2/o$d;

    invoke-virtual {v2, v13}, Lcom/google/android/exoplayer2/o$d;->a(I)V

    .line 48722
    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->s:Lcom/google/android/exoplayer2/y;

    .line 49270
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/y;->a()I

    move-result v3

    .line 49271
    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/ac;->a()I

    move-result v4

    if-eq v4, v3, :cond_5

    .line 49274
    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/ac;->d()Lcom/google/android/exoplayer2/source/ac;

    move-result-object v1

    .line 49275
    invoke-interface {v1, v12, v3}, Lcom/google/android/exoplayer2/source/ac;->a(II)Lcom/google/android/exoplayer2/source/ac;

    move-result-object v1

    .line 49277
    :cond_5
    iput-object v1, v2, Lcom/google/android/exoplayer2/y;->h:Lcom/google/android/exoplayer2/source/ac;

    .line 49278
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/y;->c()Lcom/google/android/exoplayer2/al;

    move-result-object v1

    .line 48723
    invoke-direct {v8, v1}, Lcom/google/android/exoplayer2/o;->b(Lcom/google/android/exoplayer2/al;)V

    goto/16 :goto_7

    .line 524
    :pswitch_5
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget v3, v1, Landroid/os/Message;->arg2:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/source/ac;

    .line 47711
    iget-object v4, v8, Lcom/google/android/exoplayer2/o;->x:Lcom/google/android/exoplayer2/o$d;

    invoke-virtual {v4, v13}, Lcom/google/android/exoplayer2/o$d;->a(I)V

    .line 47712
    iget-object v4, v8, Lcom/google/android/exoplayer2/o;->s:Lcom/google/android/exoplayer2/y;

    if-ltz v2, :cond_6

    if-gt v2, v3, :cond_6

    .line 48187
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/y;->a()I

    move-result v5

    if-gt v3, v5, :cond_6

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 48188
    iput-object v1, v4, Lcom/google/android/exoplayer2/y;->h:Lcom/google/android/exoplayer2/source/ac;

    .line 48189
    invoke-virtual {v4, v2, v3}, Lcom/google/android/exoplayer2/y;->a(II)V

    .line 48190
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/y;->c()Lcom/google/android/exoplayer2/al;

    move-result-object v1

    .line 47713
    invoke-direct {v8, v1}, Lcom/google/android/exoplayer2/o;->b(Lcom/google/android/exoplayer2/al;)V

    goto/16 :goto_7

    .line 521
    :pswitch_6
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/o$b;

    .line 47699
    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->x:Lcom/google/android/exoplayer2/o$d;

    invoke-virtual {v2, v13}, Lcom/google/android/exoplayer2/o$d;->a(I)V

    .line 47700
    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->s:Lcom/google/android/exoplayer2/y;

    iget v3, v1, Lcom/google/android/exoplayer2/o$b;->a:I

    iget v4, v1, Lcom/google/android/exoplayer2/o$b;->b:I

    iget v5, v1, Lcom/google/android/exoplayer2/o$b;->c:I

    iget-object v1, v1, Lcom/google/android/exoplayer2/o$b;->d:Lcom/google/android/exoplayer2/source/ac;

    .line 47701
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/google/android/exoplayer2/y;->a(IIILcom/google/android/exoplayer2/source/ac;)Lcom/google/android/exoplayer2/al;

    move-result-object v1

    .line 47706
    invoke-direct {v8, v1}, Lcom/google/android/exoplayer2/o;->b(Lcom/google/android/exoplayer2/al;)V

    goto/16 :goto_7

    .line 518
    :pswitch_7
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/o$a;

    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 45688
    iget-object v4, v8, Lcom/google/android/exoplayer2/o;->x:Lcom/google/android/exoplayer2/o$d;

    invoke-virtual {v4, v13}, Lcom/google/android/exoplayer2/o$d;->a(I)V

    .line 45689
    iget-object v4, v8, Lcom/google/android/exoplayer2/o;->s:Lcom/google/android/exoplayer2/y;

    if-ne v1, v3, :cond_7

    .line 45691
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/y;->a()I

    move-result v1

    .line 45900
    :cond_7
    iget-object v3, v2, Lcom/google/android/exoplayer2/o$a;->a:Ljava/util/List;

    .line 46900
    iget-object v2, v2, Lcom/google/android/exoplayer2/o$a;->b:Lcom/google/android/exoplayer2/source/ac;

    .line 45690
    invoke-virtual {v4, v1, v3, v2}, Lcom/google/android/exoplayer2/y;->a(ILjava/util/List;Lcom/google/android/exoplayer2/source/ac;)Lcom/google/android/exoplayer2/al;

    move-result-object v1

    .line 45694
    invoke-direct {v8, v1}, Lcom/google/android/exoplayer2/o;->b(Lcom/google/android/exoplayer2/al;)V

    goto/16 :goto_7

    .line 515
    :pswitch_8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/o$a;

    .line 38669
    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->x:Lcom/google/android/exoplayer2/o$d;

    invoke-virtual {v2, v13}, Lcom/google/android/exoplayer2/o$d;->a(I)V

    .line 38900
    iget v2, v1, Lcom/google/android/exoplayer2/o$a;->c:I

    if-eq v2, v3, :cond_8

    .line 38671
    new-instance v2, Lcom/google/android/exoplayer2/o$g;

    new-instance v3, Lcom/google/android/exoplayer2/ae;

    .line 39900
    iget-object v4, v1, Lcom/google/android/exoplayer2/o$a;->a:Ljava/util/List;

    .line 40900
    iget-object v5, v1, Lcom/google/android/exoplayer2/o$a;->b:Lcom/google/android/exoplayer2/source/ac;

    .line 38675
    invoke-direct {v3, v4, v5}, Lcom/google/android/exoplayer2/ae;-><init>(Ljava/util/Collection;Lcom/google/android/exoplayer2/source/ac;)V

    .line 41900
    iget v4, v1, Lcom/google/android/exoplayer2/o$a;->c:I

    .line 42900
    iget-wide v5, v1, Lcom/google/android/exoplayer2/o$a;->d:J

    .line 38677
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/exoplayer2/o$g;-><init>(Lcom/google/android/exoplayer2/al;IJ)V

    iput-object v2, v8, Lcom/google/android/exoplayer2/o;->J:Lcom/google/android/exoplayer2/o$g;

    .line 38679
    :cond_8
    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->s:Lcom/google/android/exoplayer2/y;

    .line 43900
    iget-object v3, v1, Lcom/google/android/exoplayer2/o$a;->a:Ljava/util/List;

    .line 44900
    iget-object v1, v1, Lcom/google/android/exoplayer2/o$a;->b:Lcom/google/android/exoplayer2/source/ac;

    .line 45123
    iget-object v4, v2, Lcom/google/android/exoplayer2/y;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v12, v4}, Lcom/google/android/exoplayer2/y;->a(II)V

    .line 45124
    iget-object v4, v2, Lcom/google/android/exoplayer2/y;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4, v3, v1}, Lcom/google/android/exoplayer2/y;->a(ILjava/util/List;Lcom/google/android/exoplayer2/source/ac;)Lcom/google/android/exoplayer2/al;

    move-result-object v1

    .line 38683
    invoke-direct {v8, v1}, Lcom/google/android/exoplayer2/o;->b(Lcom/google/android/exoplayer2/al;)V

    goto/16 :goto_7

    .line 506
    :pswitch_9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/aa;

    invoke-direct {v8, v1, v12}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/aa;Z)V

    goto/16 :goto_7

    .line 512
    :pswitch_a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/ad;

    .line 38170
    iget-object v2, v1, Lcom/google/android/exoplayer2/ad;->e:Landroid/os/Looper;

    .line 37480
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_9

    const-string v2, "TAG"

    const-string v3, "Trying to send message on a dead thread."

    .line 37481
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37482
    invoke-virtual {v1, v12}, Lcom/google/android/exoplayer2/ad;->a(Z)V

    goto/16 :goto_7

    .line 37485
    :cond_9
    iget-object v3, v8, Lcom/google/android/exoplayer2/o;->p:Lcom/google/android/exoplayer2/util/c;

    .line 37486
    invoke-interface {v3, v2, v11}, Lcom/google/android/exoplayer2/util/c;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/k;

    move-result-object v2
    :try_end_3
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    new-instance v3, Lcom/google/android/exoplayer2/-$$Lambda$o$nL6x-5fHIrO1xn6Z-CjO4CZ6uto;

    invoke-direct {v3, v8, v1}, Lcom/google/android/exoplayer2/-$$Lambda$o$nL6x-5fHIrO1xn6Z-CjO4CZ6uto;-><init>(Lcom/google/android/exoplayer2/o;Lcom/google/android/exoplayer2/ad;)V
    :try_end_4
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 37487
    :try_start_5
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/util/k;->a(Ljava/lang/Runnable;)Z

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v3, v1

    goto/16 :goto_13

    .line 509
    :pswitch_b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/ad;

    .line 37180
    iget-wide v2, v1, Lcom/google/android/exoplayer2/ad;->g:J

    cmp-long v4, v2, v16

    if-nez v4, :cond_a

    .line 36442
    invoke-direct {v8, v1}, Lcom/google/android/exoplayer2/o;->b(Lcom/google/android/exoplayer2/ad;)V

    goto/16 :goto_7

    .line 36443
    :cond_a
    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v2, v2, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 36445
    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->o:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/exoplayer2/o$c;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/o$c;-><init>(Lcom/google/android/exoplayer2/ad;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 36447
    :cond_b
    new-instance v2, Lcom/google/android/exoplayer2/o$c;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/o$c;-><init>(Lcom/google/android/exoplayer2/ad;)V

    .line 36448
    iget-object v3, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v15, v3, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v3, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v3, v3, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget v4, v8, Lcom/google/android/exoplayer2/o;->D:I

    iget-boolean v5, v8, Lcom/google/android/exoplayer2/o;->E:Z

    iget-object v6, v8, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/al$b;

    iget-object v7, v8, Lcom/google/android/exoplayer2/o;->k:Lcom/google/android/exoplayer2/al$a;

    move-object v14, v2

    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    invoke-static/range {v14 .. v20}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/o$c;Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/al;IZLcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 36456
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36458
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->o:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto/16 :goto_7

    .line 36460
    :cond_c
    invoke-virtual {v1, v12}, Lcom/google/android/exoplayer2/ad;->a(Z)V

    goto/16 :goto_7

    .line 490
    :pswitch_c
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_5

    :cond_d
    const/4 v2, 0x0

    :goto_5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v8, v2, v1}, Lcom/google/android/exoplayer2/o;->a(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_7

    .line 475
    :pswitch_d
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_6

    :cond_e
    const/4 v1, 0x0

    .line 5798
    :goto_6
    iput-boolean v1, v8, Lcom/google/android/exoplayer2/o;->E:Z

    .line 5799
    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    iget-object v3, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v3, v3, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    .line 6100
    iput-boolean v1, v2, Lcom/google/android/exoplayer2/w;->b:Z

    .line 6101
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/al;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 5800
    invoke-direct {v8, v13}, Lcom/google/android/exoplayer2/o;->a(Z)V

    .line 5802
    :cond_f
    invoke-direct {v8, v12}, Lcom/google/android/exoplayer2/o;->b(Z)V

    goto/16 :goto_7

    .line 472
    :pswitch_e
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 4789
    iput v1, v8, Lcom/google/android/exoplayer2/o;->D:I

    .line 4790
    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    iget-object v3, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v3, v3, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    .line 5087
    iput v1, v2, Lcom/google/android/exoplayer2/w;->a:I

    .line 5088
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/al;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 4791
    invoke-direct {v8, v13}, Lcom/google/android/exoplayer2/o;->a(Z)V

    .line 4793
    :cond_10
    invoke-direct {v8, v12}, Lcom/google/android/exoplayer2/o;->b(Z)V

    goto/16 :goto_7

    .line 503
    :pswitch_f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->k()V

    goto/16 :goto_7

    .line 500
    :pswitch_10
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/source/p;

    .line 36157
    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/source/p;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 36161
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    iget-wide v2, v8, Lcom/google/android/exoplayer2/o;->K:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/w;->a(J)V

    .line 36162
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->n()V

    goto/16 :goto_7

    .line 497
    :pswitch_11
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/source/p;

    .line 33134
    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/source/p;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 33138
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 33198
    iget-object v1, v1, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    .line 33139
    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->n:Lcom/google/android/exoplayer2/k;

    .line 33140
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/k;->d()Lcom/google/android/exoplayer2/aa;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/aa;->b:F

    iget-object v3, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v3, v3, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    .line 34180
    iput-boolean v13, v1, Lcom/google/android/exoplayer2/u;->d:Z

    .line 34181
    iget-object v6, v1, Lcom/google/android/exoplayer2/u;->a:Lcom/google/android/exoplayer2/source/p;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/source/p;->b()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplayer2/u;->i:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 34182
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/u;->a(FLcom/google/android/exoplayer2/al;)Lcom/google/android/exoplayer2/trackselection/i;

    move-result-object v2

    .line 34183
    iget-object v3, v1, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-wide v6, v3, Lcom/google/android/exoplayer2/v;->b:J

    .line 34184
    iget-object v3, v1, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-wide v14, v3, Lcom/google/android/exoplayer2/v;->e:J

    cmp-long v3, v14, v16

    if-eqz v3, :cond_11

    iget-object v3, v1, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-wide v14, v3, Lcom/google/android/exoplayer2/v;->e:J

    cmp-long v3, v6, v14

    if-ltz v3, :cond_11

    .line 34186
    iget-object v3, v1, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-wide v6, v3, Lcom/google/android/exoplayer2/v;->e:J

    const-wide/16 v14, 0x1

    sub-long/2addr v6, v14

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 34189
    :cond_11
    invoke-virtual {v1, v2, v6, v7}, Lcom/google/android/exoplayer2/u;->a(Lcom/google/android/exoplayer2/trackselection/i;J)J

    move-result-wide v2

    .line 34191
    iget-wide v4, v1, Lcom/google/android/exoplayer2/u;->k:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/v;->b:J

    sub-long/2addr v6, v2

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/google/android/exoplayer2/u;->k:J

    .line 34192
    iget-object v4, v1, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/exoplayer2/v;->a(J)Lcom/google/android/exoplayer2/v;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    .line 34353
    iget-object v2, v1, Lcom/google/android/exoplayer2/u;->j:Lcom/google/android/exoplayer2/trackselection/i;

    .line 33141
    invoke-direct {v8, v2}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/trackselection/i;)V

    .line 33143
    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 35207
    iget-object v2, v2, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    if-ne v1, v2, :cond_12

    .line 33145
    iget-object v2, v1, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/v;->b:J

    invoke-direct {v8, v2, v3}, Lcom/google/android/exoplayer2/o;->a(J)V

    .line 33146
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->r()V

    .line 33147
    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v2, v2, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v1, v1, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/v;->b:J

    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/z;->c:J

    move-object/from16 v1, p0

    .line 33148
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/source/r$a;JJ)Lcom/google/android/exoplayer2/z;

    move-result-object v1

    iput-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    .line 33153
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->n()V

    goto :goto_7

    .line 542
    :pswitch_12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->j()V

    return v13

    .line 494
    :pswitch_13
    invoke-direct {v8, v12, v13}, Lcom/google/android/exoplayer2/o;->a(ZZ)V

    :cond_13
    :goto_7
    move-object v2, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    goto/16 :goto_4a

    .line 487
    :pswitch_14
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/ai;

    .line 32290
    iput-object v1, v8, Lcom/google/android/exoplayer2/o;->v:Lcom/google/android/exoplayer2/ai;

    goto :goto_7

    .line 484
    :pswitch_15
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/aa;

    .line 32285
    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->n:Lcom/google/android/exoplayer2/k;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/k;->a(Lcom/google/android/exoplayer2/aa;)V

    .line 32286
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->n:Lcom/google/android/exoplayer2/k;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/k;->d()Lcom/google/android/exoplayer2/aa;

    move-result-object v1

    invoke-direct {v8, v1, v13}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/aa;Z)V

    goto :goto_7

    .line 481
    :pswitch_16
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer2/o$g;

    .line 31080
    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->x:Lcom/google/android/exoplayer2/o$d;

    invoke-virtual {v2, v13}, Lcom/google/android/exoplayer2/o$d;->a(I)V

    .line 31087
    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v2, v2, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    const/16 v20, 0x1

    iget v3, v8, Lcom/google/android/exoplayer2/o;->D:I

    iget-boolean v6, v8, Lcom/google/android/exoplayer2/o;->E:Z

    iget-object v11, v8, Lcom/google/android/exoplayer2/o;->j:Lcom/google/android/exoplayer2/al$b;

    iget-object v14, v8, Lcom/google/android/exoplayer2/o;->k:Lcom/google/android/exoplayer2/al$a;

    move-object/from16 v18, v2

    move-object/from16 v19, v1

    move/from16 v21, v3

    move/from16 v22, v6

    move-object/from16 v23, v11

    move-object/from16 v24, v14

    .line 31088
    invoke-static/range {v18 .. v24}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/o$g;ZIZLcom/google/android/exoplayer2/al$b;Lcom/google/android/exoplayer2/al$a;)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_14

    .line 31099
    iget-object v3, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v3, v3, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    .line 31100
    invoke-direct {v8, v3}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/al;)Landroid/util/Pair;

    move-result-object v3

    .line 31101
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/exoplayer2/source/r$a;

    .line 31102
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 31104
    iget-object v3, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v3, v3, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v3

    xor-int/2addr v3, v13

    move v13, v3

    move-object v12, v6

    move-wide/from16 v4, v18

    goto :goto_b

    .line 31107
    :cond_14
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 31108
    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 31110
    iget-wide v12, v1, Lcom/google/android/exoplayer2/o$g;->c:J

    cmp-long v6, v12, v16

    if-nez v6, :cond_15

    move-wide/from16 v12, v16

    goto :goto_8

    :cond_15
    move-wide v12, v4

    .line 31111
    :goto_8
    iget-object v6, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    iget-object v11, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v11, v11, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    .line 31112
    invoke-virtual {v6, v11, v3, v4, v5}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;J)Lcom/google/android/exoplayer2/source/r$a;

    move-result-object v3

    .line 31114
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/r$a;->a()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 31115
    iget-object v4, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v4, v4, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v5, v3, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    iget-object v6, v8, Lcom/google/android/exoplayer2/o;->k:Lcom/google/android/exoplayer2/al$a;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/exoplayer2/al;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/al$a;

    .line 31117
    iget-object v4, v8, Lcom/google/android/exoplayer2/o;->k:Lcom/google/android/exoplayer2/al$a;

    iget v5, v3, Lcom/google/android/exoplayer2/source/r$a;->b:I

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/al$a;->b(I)I

    move-result v4

    iget v5, v3, Lcom/google/android/exoplayer2/source/r$a;->c:I

    if-ne v4, v5, :cond_16

    .line 31118
    iget-object v4, v8, Lcom/google/android/exoplayer2/o;->k:Lcom/google/android/exoplayer2/al$a;

    .line 31647
    iget-object v4, v4, Lcom/google/android/exoplayer2/al$a;->f:Lcom/google/android/exoplayer2/source/ads/a;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/ads/a;->f:J

    goto :goto_9

    :cond_16
    const-wide/16 v4, 0x0

    :goto_9
    move-wide/from16 v16, v12

    const/4 v13, 0x1

    move-object v12, v3

    goto :goto_b

    .line 31123
    :cond_17
    iget-wide v14, v1, Lcom/google/android/exoplayer2/o$g;->c:J
    :try_end_5
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    cmp-long v11, v14, v16

    if-nez v11, :cond_18

    const/4 v11, 0x1

    goto :goto_a

    :cond_18
    const/4 v11, 0x0

    :goto_a
    move-wide/from16 v16, v12

    move-object v12, v3

    move v13, v11

    .line 31128
    :goto_b
    :try_start_6
    iget-object v3, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v3, v3, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v3, :cond_19

    .line 31130
    :try_start_7
    iput-object v1, v8, Lcom/google/android/exoplayer2/o;->J:Lcom/google/android/exoplayer2/o$g;

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v7, v0

    move-wide v3, v4

    const/4 v11, 0x2

    goto/16 :goto_12

    :cond_19
    if-nez v2, :cond_1b

    .line 31133
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget v1, v1, Lcom/google/android/exoplayer2/z;->d:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1a

    const/4 v1, 0x4

    .line 31134
    invoke-direct {v8, v1}, Lcom/google/android/exoplayer2/o;->a(I)V

    :cond_1a
    const/4 v1, 0x0

    .line 31136
    invoke-direct {v8, v1, v2, v1, v2}, Lcom/google/android/exoplayer2/o;->a(ZZZZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_c
    move-wide v3, v4

    const/4 v11, 0x2

    goto/16 :goto_10

    .line 31144
    :cond_1b
    :try_start_8
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v1, v1, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    invoke-virtual {v12, v1}, Lcom/google/android/exoplayer2/source/r$a;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v1, :cond_1e

    .line 31145
    :try_start_9
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 32207
    iget-object v1, v1, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    if-eqz v1, :cond_1c

    .line 31146
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/u;->d:Z

    if-eqz v2, :cond_1c

    const-wide/16 v2, 0x0

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1c

    .line 31149
    iget-object v1, v1, Lcom/google/android/exoplayer2/u;->a:Lcom/google/android/exoplayer2/source/p;

    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->v:Lcom/google/android/exoplayer2/ai;

    .line 31150
    invoke-interface {v1, v4, v5, v2}, Lcom/google/android/exoplayer2/source/p;->a(JLcom/google/android/exoplayer2/ai;)J

    move-result-wide v1

    goto :goto_d

    :cond_1c
    move-wide v1, v4

    .line 31153
    :goto_d
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v18

    iget-object v3, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-wide v14, v3, Lcom/google/android/exoplayer2/z;->r:J

    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide v14

    cmp-long v3, v18, v14

    if-nez v3, :cond_1f

    iget-object v3, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget v3, v3, Lcom/google/android/exoplayer2/z;->d:I

    if-eq v3, v7, :cond_1d

    iget-object v3, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget v3, v3, Lcom/google/android/exoplayer2/z;->d:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1f

    .line 31157
    :cond_1d
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/z;->r:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v1, p0

    move-object v2, v12

    move-wide/from16 v5, v16

    .line 31177
    :try_start_a
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/source/r$a;JJ)Lcom/google/android/exoplayer2/z;

    move-result-object v1

    iput-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    if-eqz v13, :cond_13

    .line 31179
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->x:Lcom/google/android/exoplayer2/o$d;

    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/o$d;->b(I)V
    :try_end_a
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_7

    :cond_1e
    move-wide v1, v4

    .line 31161
    :cond_1f
    :try_start_b
    iget-object v3, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget v3, v3, Lcom/google/android/exoplayer2/z;->d:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_20

    const/4 v3, 0x1

    goto :goto_e

    :cond_20
    const/4 v3, 0x0

    .line 31162
    :goto_e
    invoke-direct {v8, v12, v1, v2, v3}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/source/r$a;JZ)J

    move-result-wide v14
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    cmp-long v1, v4, v14

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    goto :goto_f

    :cond_21
    const/4 v1, 0x0

    :goto_f
    or-int/2addr v13, v1

    .line 31168
    :try_start_c
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v2, v1, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v4, v1, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v5, v1, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object/from16 v1, p0

    move-object v3, v12

    const/4 v11, 0x2

    move-wide/from16 v6, v16

    :try_start_d
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;J)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-wide v3, v14

    :goto_10
    move-object/from16 v1, p0

    move-object v2, v12

    move-wide/from16 v5, v16

    .line 31177
    :try_start_e
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/source/r$a;JJ)Lcom/google/android/exoplayer2/z;

    move-result-object v1

    iput-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    if-eqz v13, :cond_13

    .line 31179
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->x:Lcom/google/android/exoplayer2/o$d;

    invoke-virtual {v1, v11}, Lcom/google/android/exoplayer2/o$d;->b(I)V

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    goto :goto_11

    :catchall_2
    move-exception v0

    const/4 v11, 0x2

    :goto_11
    move-object v7, v0

    move-wide v3, v14

    goto :goto_12

    :catchall_3
    move-exception v0

    const/4 v11, 0x2

    move-object v7, v0

    move-wide v3, v4

    :goto_12
    move-object/from16 v1, p0

    move-object v2, v12

    move-wide/from16 v5, v16

    .line 31177
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/source/r$a;JJ)Lcom/google/android/exoplayer2/z;

    move-result-object v1

    iput-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    if-eqz v13, :cond_22

    .line 31179
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->x:Lcom/google/android/exoplayer2/o$d;

    invoke-virtual {v1, v11}, Lcom/google/android/exoplayer2/o$d;->b(I)V

    .line 31181
    :cond_22
    throw v7
    :try_end_e
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2

    :catch_2
    move-exception v0

    move-object v3, v0

    :goto_13
    move-object v2, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    goto/16 :goto_4c

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    goto/16 :goto_44

    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    goto/16 :goto_45

    :pswitch_17
    move-wide v2, v4

    const/4 v11, 0x2

    .line 6913
    :try_start_f
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->p:Lcom/google/android/exoplayer2/util/c;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/c;->b()J

    move-result-wide v12

    .line 7885
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v1, v1, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v1
    :try_end_f
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_f .. :try_end_f} :catch_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_10

    if-nez v1, :cond_49

    :try_start_10
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->s:Lcom/google/android/exoplayer2/y;

    .line 8256
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/y;->i:Z

    if-nez v1, :cond_23

    goto/16 :goto_2c

    .line 8896
    :cond_23
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    iget-wide v4, v8, Lcom/google/android/exoplayer2/o;->K:J

    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplayer2/w;->a(J)V

    .line 8897
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 9122
    iget-object v4, v1, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    if-eqz v4, :cond_25

    iget-object v4, v1, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    iget-object v4, v4, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/v;->h:Z

    if-nez v4, :cond_24

    iget-object v4, v1, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    .line 9124
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/u;->b()Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, v1, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    iget-object v4, v4, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/v;->e:J

    cmp-long v6, v4, v16

    if-eqz v6, :cond_24

    iget v1, v1, Lcom/google/android/exoplayer2/w;->f:I

    const/16 v4, 0x64

    if-ge v1, v4, :cond_24

    goto :goto_14

    :cond_24
    const/4 v1, 0x0

    goto :goto_15

    :cond_25
    :goto_14
    const/4 v1, 0x1

    :goto_15
    if-eqz v1, :cond_2b

    .line 8899
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    iget-wide v4, v8, Lcom/google/android/exoplayer2/o;->K:J

    iget-object v6, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    .line 9140
    iget-object v7, v1, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    if-nez v7, :cond_26

    .line 9582
    iget-object v4, v6, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v5, v6, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget-wide v14, v6, Lcom/google/android/exoplayer2/z;->c:J

    iget-wide v6, v6, Lcom/google/android/exoplayer2/z;->r:J

    move-object/from16 v26, v1

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-wide/from16 v29, v14

    move-wide/from16 v31, v6

    invoke-virtual/range {v26 .. v32}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;JJ)Lcom/google/android/exoplayer2/v;

    move-result-object v1

    goto :goto_16

    .line 9142
    :cond_26
    iget-object v6, v6, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v7, v1, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    invoke-virtual {v1, v6, v7, v4, v5}, Lcom/google/android/exoplayer2/w;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/u;J)Lcom/google/android/exoplayer2/v;

    move-result-object v1

    :goto_16
    if-eqz v1, :cond_2b

    .line 8901
    iget-object v4, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    iget-object v5, v8, Lcom/google/android/exoplayer2/o;->d:[Lcom/google/android/exoplayer2/ag;

    iget-object v6, v8, Lcom/google/android/exoplayer2/o;->e:Lcom/google/android/exoplayer2/trackselection/h;

    iget-object v7, v8, Lcom/google/android/exoplayer2/o;->g:Lcom/google/android/exoplayer2/s;

    .line 8905
    invoke-interface {v7}, Lcom/google/android/exoplayer2/s;->d()Lcom/google/android/exoplayer2/upstream/b;

    move-result-object v31

    iget-object v7, v8, Lcom/google/android/exoplayer2/o;->s:Lcom/google/android/exoplayer2/y;

    iget-object v14, v8, Lcom/google/android/exoplayer2/o;->f:Lcom/google/android/exoplayer2/trackselection/i;

    .line 10165
    iget-object v15, v4, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    if-nez v15, :cond_28

    .line 10166
    iget-object v15, v1, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    invoke-virtual {v15}, Lcom/google/android/exoplayer2/source/r$a;->a()Z

    move-result v15

    if-eqz v15, :cond_27

    iget-wide v2, v1, Lcom/google/android/exoplayer2/v;->c:J

    cmp-long v15, v2, v16

    if-eqz v15, :cond_27

    .line 10167
    iget-wide v2, v1, Lcom/google/android/exoplayer2/v;->c:J

    move-wide/from16 v28, v2

    move-wide/from16 v21, v12

    goto :goto_17

    :cond_27
    move-wide/from16 v21, v12

    const-wide/16 v28, 0x0

    goto :goto_17

    .line 10169
    :cond_28
    iget-object v2, v4, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    .line 11126
    iget-wide v2, v2, Lcom/google/android/exoplayer2/u;->k:J

    .line 10169
    iget-object v15, v4, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    iget-object v15, v15, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    move-wide/from16 v21, v12

    iget-wide v11, v15, Lcom/google/android/exoplayer2/v;->e:J

    add-long/2addr v2, v11

    iget-wide v11, v1, Lcom/google/android/exoplayer2/v;->b:J

    sub-long/2addr v2, v11

    move-wide/from16 v28, v2

    .line 10170
    :goto_17
    new-instance v2, Lcom/google/android/exoplayer2/u;

    move-object/from16 v26, v2

    move-object/from16 v27, v5

    move-object/from16 v30, v6

    move-object/from16 v32, v7

    move-object/from16 v33, v1

    move-object/from16 v34, v14

    invoke-direct/range {v26 .. v34}, Lcom/google/android/exoplayer2/u;-><init>([Lcom/google/android/exoplayer2/ag;JLcom/google/android/exoplayer2/trackselection/h;Lcom/google/android/exoplayer2/upstream/b;Lcom/google/android/exoplayer2/y;Lcom/google/android/exoplayer2/v;Lcom/google/android/exoplayer2/trackselection/i;)V

    .line 10179
    iget-object v3, v4, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    if-eqz v3, :cond_29

    .line 10180
    iget-object v3, v4, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/u;->a(Lcom/google/android/exoplayer2/u;)V

    goto :goto_18

    .line 10182
    :cond_29
    iput-object v2, v4, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    .line 10183
    iput-object v2, v4, Lcom/google/android/exoplayer2/w;->d:Lcom/google/android/exoplayer2/u;

    :goto_18
    const/4 v3, 0x0

    .line 10185
    iput-object v3, v4, Lcom/google/android/exoplayer2/w;->g:Ljava/lang/Object;

    .line 10186
    iput-object v2, v4, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    .line 10187
    iget v3, v4, Lcom/google/android/exoplayer2/w;->f:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    iput v3, v4, Lcom/google/android/exoplayer2/w;->f:I

    .line 10188
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/w;->c()V

    .line 8909
    iget-object v3, v2, Lcom/google/android/exoplayer2/u;->a:Lcom/google/android/exoplayer2/source/p;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/v;->b:J

    invoke-interface {v3, v8, v4, v5}, Lcom/google/android/exoplayer2/source/p;->a(Lcom/google/android/exoplayer2/source/p$a;J)V

    .line 8910
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 11207
    iget-object v1, v1, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    if-ne v1, v2, :cond_2a

    .line 8911
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/u;->a()J

    move-result-wide v1

    invoke-direct {v8, v1, v2}, Lcom/google/android/exoplayer2/o;->a(J)V
    :try_end_10
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_2

    :cond_2a
    const/4 v1, 0x0

    .line 8913
    :try_start_11
    invoke-direct {v8, v1}, Lcom/google/android/exoplayer2/o;->b(Z)V
    :try_end_11
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_5

    goto :goto_19

    :catch_5
    move-exception v0

    move-object v3, v0

    move-object v2, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    goto/16 :goto_50

    :cond_2b
    move-wide/from16 v21, v12

    .line 8916
    :goto_19
    :try_start_12
    iget-boolean v1, v8, Lcom/google/android/exoplayer2/o;->C:Z

    if-eqz v1, :cond_2c

    .line 8919
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->p()Z

    move-result v1

    iput-boolean v1, v8, Lcom/google/android/exoplayer2/o;->C:Z

    .line 8920
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->q()V

    goto :goto_1a

    .line 8922
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->n()V

    .line 11927
    :goto_1a
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 12213
    iget-object v1, v1, Lcom/google/android/exoplayer2/w;->d:Lcom/google/android/exoplayer2/u;

    if-eqz v1, :cond_3d

    .line 12343
    iget-object v2, v1, Lcom/google/android/exoplayer2/u;->h:Lcom/google/android/exoplayer2/u;

    if-eqz v2, :cond_39

    .line 11932
    iget-boolean v2, v8, Lcom/google/android/exoplayer2/o;->A:Z

    if-eqz v2, :cond_2d

    goto/16 :goto_22

    .line 14102
    :cond_2d
    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 14213
    iget-object v2, v2, Lcom/google/android/exoplayer2/w;->d:Lcom/google/android/exoplayer2/u;

    .line 14103
    iget-boolean v3, v2, Lcom/google/android/exoplayer2/u;->d:Z

    if-nez v3, :cond_2f

    :cond_2e
    :goto_1b
    const/4 v2, 0x0

    goto :goto_1d

    :cond_2f
    const/4 v3, 0x0

    .line 14106
    :goto_1c
    iget-object v4, v8, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    array-length v5, v4

    if-ge v3, v5, :cond_31

    .line 14107
    aget-object v4, v4, v3

    .line 14108
    iget-object v5, v2, Lcom/google/android/exoplayer2/u;->c:[Lcom/google/android/exoplayer2/source/aa;

    aget-object v5, v5, v3

    .line 14109
    invoke-interface {v4}, Lcom/google/android/exoplayer2/af;->f()Lcom/google/android/exoplayer2/source/aa;

    move-result-object v6

    if-ne v6, v5, :cond_2e

    if-eqz v5, :cond_30

    .line 14110
    invoke-interface {v4}, Lcom/google/android/exoplayer2/af;->g()Z

    move-result v4

    if-nez v4, :cond_30

    goto :goto_1b

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_31
    const/4 v2, 0x1

    :goto_1d
    if-eqz v2, :cond_3d

    .line 14343
    iget-object v2, v1, Lcom/google/android/exoplayer2/u;->h:Lcom/google/android/exoplayer2/u;

    .line 11960
    iget-boolean v2, v2, Lcom/google/android/exoplayer2/u;->d:Z

    if-nez v2, :cond_32

    iget-wide v2, v8, Lcom/google/android/exoplayer2/o;->K:J

    .line 15343
    iget-object v4, v1, Lcom/google/android/exoplayer2/u;->h:Lcom/google/android/exoplayer2/u;

    .line 11961
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/u;->a()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3d

    .line 15353
    :cond_32
    iget-object v1, v1, Lcom/google/android/exoplayer2/u;->j:Lcom/google/android/exoplayer2/trackselection/i;

    .line 11967
    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 16222
    iget-object v3, v2, Lcom/google/android/exoplayer2/w;->d:Lcom/google/android/exoplayer2/u;

    if-eqz v3, :cond_33

    iget-object v3, v2, Lcom/google/android/exoplayer2/w;->d:Lcom/google/android/exoplayer2/u;

    .line 16343
    iget-object v3, v3, Lcom/google/android/exoplayer2/u;->h:Lcom/google/android/exoplayer2/u;

    if-eqz v3, :cond_33

    const/4 v3, 0x1

    goto :goto_1e

    :cond_33
    const/4 v3, 0x0

    .line 16222
    :goto_1e
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 16223
    iget-object v3, v2, Lcom/google/android/exoplayer2/w;->d:Lcom/google/android/exoplayer2/u;

    .line 17343
    iget-object v3, v3, Lcom/google/android/exoplayer2/u;->h:Lcom/google/android/exoplayer2/u;

    .line 16223
    iput-object v3, v2, Lcom/google/android/exoplayer2/w;->d:Lcom/google/android/exoplayer2/u;

    .line 16224
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/w;->c()V

    .line 16225
    iget-object v2, v2, Lcom/google/android/exoplayer2/w;->d:Lcom/google/android/exoplayer2/u;

    .line 17353
    iget-object v3, v2, Lcom/google/android/exoplayer2/u;->j:Lcom/google/android/exoplayer2/trackselection/i;

    .line 11970
    iget-boolean v4, v2, Lcom/google/android/exoplayer2/u;->d:Z

    if-eqz v4, :cond_35

    iget-object v4, v2, Lcom/google/android/exoplayer2/u;->a:Lcom/google/android/exoplayer2/source/p;

    .line 11971
    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/p;->c()J

    move-result-wide v4

    cmp-long v6, v4, v16

    if-eqz v6, :cond_35

    .line 11975
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/u;->a()J

    move-result-wide v1

    .line 18119
    iget-object v3, v8, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1f
    if-ge v5, v4, :cond_3d

    aget-object v6, v3, v5

    .line 18120
    invoke-interface {v6}, Lcom/google/android/exoplayer2/af;->f()Lcom/google/android/exoplayer2/source/aa;

    move-result-object v7

    if-eqz v7, :cond_34

    .line 18121
    invoke-static {v6, v1, v2}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/af;J)V

    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_35
    const/4 v4, 0x0

    .line 11978
    :goto_20
    iget-object v5, v8, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    array-length v5, v5

    if-ge v4, v5, :cond_3d

    .line 11979
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/trackselection/i;->a(I)Z

    move-result v5

    .line 11980
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/trackselection/i;->a(I)Z

    move-result v6

    if-eqz v5, :cond_38

    .line 11981
    iget-object v5, v8, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    aget-object v5, v5, v4

    invoke-interface {v5}, Lcom/google/android/exoplayer2/af;->j()Z

    move-result v5

    if-nez v5, :cond_38

    .line 11982
    iget-object v5, v8, Lcom/google/android/exoplayer2/o;->d:[Lcom/google/android/exoplayer2/ag;

    aget-object v5, v5, v4

    invoke-interface {v5}, Lcom/google/android/exoplayer2/ag;->a()I

    move-result v5

    const/4 v7, 0x7

    if-ne v5, v7, :cond_36

    const/4 v5, 0x1

    goto :goto_21

    :cond_36
    const/4 v5, 0x0

    .line 11983
    :goto_21
    iget-object v7, v1, Lcom/google/android/exoplayer2/trackselection/i;->b:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v7, v7, v4

    .line 11984
    iget-object v12, v3, Lcom/google/android/exoplayer2/trackselection/i;->b:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v12, v12, v4

    if-eqz v6, :cond_37

    .line 11985
    invoke-virtual {v12, v7}, Lcom/google/android/exoplayer2/RendererConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    if-eqz v5, :cond_38

    .line 11991
    :cond_37
    iget-object v5, v8, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    aget-object v5, v5, v4

    .line 11993
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/u;->a()J

    move-result-wide v6

    .line 11991
    invoke-static {v5, v6, v7}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/af;J)V

    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 11935
    :cond_39
    :goto_22
    iget-object v2, v1, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/v;->h:Z

    if-nez v2, :cond_3a

    iget-boolean v2, v8, Lcom/google/android/exoplayer2/o;->A:Z

    if-eqz v2, :cond_3d

    :cond_3a
    const/4 v2, 0x0

    .line 11936
    :goto_23
    iget-object v3, v8, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    array-length v4, v3

    if-ge v2, v4, :cond_3d

    .line 11937
    aget-object v3, v3, v2

    .line 11938
    iget-object v4, v1, Lcom/google/android/exoplayer2/u;->c:[Lcom/google/android/exoplayer2/source/aa;

    aget-object v4, v4, v2

    if-eqz v4, :cond_3c

    .line 11942
    invoke-interface {v3}, Lcom/google/android/exoplayer2/af;->f()Lcom/google/android/exoplayer2/source/aa;

    move-result-object v5

    if-ne v5, v4, :cond_3c

    .line 11943
    invoke-interface {v3}, Lcom/google/android/exoplayer2/af;->g()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 11946
    iget-object v4, v1, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/v;->e:J

    cmp-long v6, v4, v16

    if-eqz v6, :cond_3b

    iget-object v4, v1, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/v;->e:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v12, v4, v6

    if-eqz v12, :cond_3b

    .line 13126
    iget-wide v4, v1, Lcom/google/android/exoplayer2/u;->k:J

    .line 11947
    iget-object v6, v1, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-wide v6, v6, Lcom/google/android/exoplayer2/v;->e:J

    add-long/2addr v4, v6

    goto :goto_24

    :cond_3b
    move-wide/from16 v4, v16

    .line 11949
    :goto_24
    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/af;J)V

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 19000
    :cond_3d
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 19213
    iget-object v1, v1, Lcom/google/android/exoplayer2/w;->d:Lcom/google/android/exoplayer2/u;

    if-eqz v1, :cond_45

    .line 19001
    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 20207
    iget-object v2, v2, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    if-eq v2, v1, :cond_45

    .line 19002
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/u;->g:Z

    if-eqz v1, :cond_3e

    goto :goto_28

    .line 21013
    :cond_3e
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 21213
    iget-object v1, v1, Lcom/google/android/exoplayer2/w;->d:Lcom/google/android/exoplayer2/u;

    .line 21353
    iget-object v2, v1, Lcom/google/android/exoplayer2/u;->j:Lcom/google/android/exoplayer2/trackselection/i;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 21016
    :goto_25
    iget-object v5, v8, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    array-length v6, v5

    if-ge v3, v6, :cond_44

    .line 21017
    aget-object v5, v5, v3

    .line 21018
    invoke-static {v5}, Lcom/google/android/exoplayer2/o;->c(Lcom/google/android/exoplayer2/af;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 21022
    invoke-interface {v5}, Lcom/google/android/exoplayer2/af;->f()Lcom/google/android/exoplayer2/source/aa;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/exoplayer2/u;->c:[Lcom/google/android/exoplayer2/source/aa;

    aget-object v7, v7, v3

    if-eq v6, v7, :cond_3f

    const/4 v6, 0x1

    goto :goto_26

    :cond_3f
    const/4 v6, 0x0

    .line 21023
    :goto_26
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/trackselection/i;->a(I)Z

    move-result v7

    if-eqz v7, :cond_40

    if-eqz v6, :cond_43

    .line 21028
    :cond_40
    invoke-interface {v5}, Lcom/google/android/exoplayer2/af;->j()Z

    move-result v6

    if-nez v6, :cond_41

    .line 21030
    iget-object v6, v2, Lcom/google/android/exoplayer2/trackselection/i;->c:[Lcom/google/android/exoplayer2/trackselection/c;

    aget-object v6, v6, v3

    invoke-static {v6}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/trackselection/c;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v27

    .line 21031
    iget-object v6, v1, Lcom/google/android/exoplayer2/u;->c:[Lcom/google/android/exoplayer2/source/aa;

    aget-object v28, v6, v3

    .line 21034
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/u;->a()J

    move-result-wide v29

    .line 22126
    iget-wide v6, v1, Lcom/google/android/exoplayer2/u;->k:J

    move-object/from16 v26, v5

    move-wide/from16 v31, v6

    .line 21031
    invoke-interface/range {v26 .. v32}, Lcom/google/android/exoplayer2/af;->a([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/aa;JJ)V

    goto :goto_27

    .line 21036
    :cond_41
    invoke-interface {v5}, Lcom/google/android/exoplayer2/af;->z()Z

    move-result v6

    if-eqz v6, :cond_42

    .line 21038
    invoke-direct {v8, v5}, Lcom/google/android/exoplayer2/o;->b(Lcom/google/android/exoplayer2/af;)V

    goto :goto_27

    :cond_42
    const/4 v4, 0x1

    :cond_43
    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_44
    const/4 v1, 0x1

    xor-int/lit8 v2, v4, 0x1

    if-eqz v2, :cond_45

    .line 19008
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->r()V

    :cond_45
    :goto_28
    const/4 v1, 0x0

    .line 23085
    :goto_29
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->t()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 23088
    iget-boolean v2, v8, Lcom/google/android/exoplayer2/o;->A:Z

    if-nez v2, :cond_46

    .line 23091
    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 23207
    iget-object v2, v2, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    if-eqz v2, :cond_46

    .line 23343
    iget-object v2, v2, Lcom/google/android/exoplayer2/u;->h:Lcom/google/android/exoplayer2/u;

    if-eqz v2, :cond_46

    .line 23096
    iget-wide v3, v8, Lcom/google/android/exoplayer2/o;->K:J

    .line 23097
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/u;->a()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-ltz v7, :cond_46

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/u;->g:Z

    if-eqz v2, :cond_46

    const/4 v2, 0x1

    goto :goto_2a

    :cond_46
    const/4 v2, 0x0

    :goto_2a
    if-eqz v2, :cond_4a

    if-eqz v1, :cond_47

    .line 23052
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->e()V

    .line 23054
    :cond_47
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 24207
    iget-object v7, v1, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    .line 23055
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/w;->a()Lcom/google/android/exoplayer2/u;

    move-result-object v12

    .line 23056
    iget-object v1, v12, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-object v2, v1, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v1, v12, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/v;->b:J

    iget-object v1, v12, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-wide v5, v1, Lcom/google/android/exoplayer2/v;->c:J

    move-object/from16 v1, p0

    .line 23057
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/source/r$a;JJ)Lcom/google/android/exoplayer2/z;

    move-result-object v1

    iput-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    .line 23062
    iget-object v1, v7, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/v;->f:Z

    if-eqz v1, :cond_48

    const/4 v1, 0x0

    goto :goto_2b

    :cond_48
    const/4 v1, 0x3

    .line 23065
    :goto_2b
    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->x:Lcom/google/android/exoplayer2/o$d;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/o$d;->b(I)V

    .line 23066
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v2, v1, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v1, v12, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-object v3, v1, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v4, v1, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v1, v7, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-object v5, v1, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;J)V

    .line 23072
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->m()V

    .line 23073
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->h()V
    :try_end_12
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_2

    const/4 v1, 0x1

    goto :goto_29

    :cond_49
    :goto_2c
    move-wide/from16 v21, v12

    .line 6916
    :cond_4a
    :try_start_13
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget v1, v1, Lcom/google/android/exoplayer2/z;->d:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_71

    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget v1, v1, Lcom/google/android/exoplayer2/z;->d:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4b

    goto/16 :goto_42

    .line 6923
    :cond_4b
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 25207
    iget-object v1, v1, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;
    :try_end_13
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_13 .. :try_end_13} :catch_12
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_10

    const-wide/16 v2, 0xa

    if-nez v1, :cond_4c

    move-wide/from16 v4, v21

    .line 6926
    :try_start_14
    invoke-direct {v8, v4, v5, v2, v3}, Lcom/google/android/exoplayer2/o;->a(JJ)V
    :try_end_14
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_14 .. :try_end_14} :catch_4
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_2

    goto/16 :goto_7

    :cond_4c
    move-wide/from16 v4, v21

    :try_start_15
    const-string v6, "doSomeWork"

    .line 6930
    invoke-static {v6}, Lcom/google/android/exoplayer2/util/ae;->a(Ljava/lang/String;)V

    .line 6932
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->h()V

    .line 6936
    iget-boolean v6, v1, Lcom/google/android/exoplayer2/u;->d:Z
    :try_end_15
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_15 .. :try_end_15} :catch_12
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_10

    const-wide/16 v12, 0x3e8

    if-eqz v6, :cond_55

    .line 6937
    :try_start_16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    mul-long v6, v6, v12

    .line 6938
    iget-object v15, v1, Lcom/google/android/exoplayer2/u;->a:Lcom/google/android/exoplayer2/source/p;

    iget-object v11, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-wide v12, v11, Lcom/google/android/exoplayer2/z;->r:J

    iget-wide v2, v8, Lcom/google/android/exoplayer2/o;->l:J

    sub-long/2addr v12, v2

    iget-boolean v2, v8, Lcom/google/android/exoplayer2/o;->m:Z

    invoke-interface {v15, v12, v13, v2}, Lcom/google/android/exoplayer2/source/p;->a(JZ)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v11, 0x0

    .line 6940
    :goto_2d
    iget-object v12, v8, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    array-length v13, v12

    if-ge v11, v13, :cond_54

    .line 6941
    aget-object v12, v12, v11

    .line 6942
    invoke-static {v12}, Lcom/google/android/exoplayer2/o;->c(Lcom/google/android/exoplayer2/af;)Z

    move-result v13

    if-eqz v13, :cond_53

    .line 6948
    iget-wide v14, v8, Lcom/google/android/exoplayer2/o;->K:J

    invoke-interface {v12, v14, v15, v6, v7}, Lcom/google/android/exoplayer2/af;->a(JJ)V

    if-eqz v2, :cond_4d

    .line 6949
    invoke-interface {v12}, Lcom/google/android/exoplayer2/af;->z()Z

    move-result v2

    if-eqz v2, :cond_4d

    const/4 v2, 0x1

    goto :goto_2e

    :cond_4d
    const/4 v2, 0x0

    .line 6955
    :goto_2e
    iget-object v14, v1, Lcom/google/android/exoplayer2/u;->c:[Lcom/google/android/exoplayer2/source/aa;

    aget-object v14, v14, v11

    invoke-interface {v12}, Lcom/google/android/exoplayer2/af;->f()Lcom/google/android/exoplayer2/source/aa;

    move-result-object v15

    if-eq v14, v15, :cond_4e

    const/4 v14, 0x1

    goto :goto_2f

    :cond_4e
    const/4 v14, 0x0

    :goto_2f
    if-nez v14, :cond_4f

    .line 6956
    invoke-interface {v12}, Lcom/google/android/exoplayer2/af;->g()Z

    move-result v15

    if-eqz v15, :cond_4f

    const/4 v15, 0x1

    goto :goto_30

    :cond_4f
    const/4 v15, 0x0

    :goto_30
    if-nez v14, :cond_51

    if-nez v15, :cond_51

    .line 6958
    invoke-interface {v12}, Lcom/google/android/exoplayer2/af;->y()Z

    move-result v14

    if-nez v14, :cond_51

    invoke-interface {v12}, Lcom/google/android/exoplayer2/af;->z()Z

    move-result v14

    if-eqz v14, :cond_50

    goto :goto_31

    :cond_50
    const/4 v14, 0x0

    goto :goto_32

    :cond_51
    :goto_31
    const/4 v14, 0x1

    :goto_32
    if-eqz v3, :cond_52

    if-eqz v14, :cond_52

    const/4 v3, 0x1

    goto :goto_33

    :cond_52
    const/4 v3, 0x0

    :goto_33
    if-nez v14, :cond_53

    .line 6961
    invoke-interface {v12}, Lcom/google/android/exoplayer2/af;->k()V
    :try_end_16
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_16 .. :try_end_16} :catch_4
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_2

    :cond_53
    add-int/lit8 v11, v11, 0x1

    goto :goto_2d

    :cond_54
    move v14, v2

    goto :goto_34

    .line 6965
    :cond_55
    :try_start_17
    iget-object v2, v1, Lcom/google/android/exoplayer2/u;->a:Lcom/google/android/exoplayer2/source/p;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/p;->D_()V

    const/4 v3, 0x1

    const/4 v14, 0x1

    .line 6968
    :goto_34
    iget-object v2, v1, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-wide v6, v2, Lcom/google/android/exoplayer2/v;->e:J
    :try_end_17
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_17 .. :try_end_17} :catch_12
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_10

    if-eqz v14, :cond_57

    .line 6969
    :try_start_18
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/u;->d:Z

    if-eqz v2, :cond_57

    cmp-long v2, v6, v16

    if-eqz v2, :cond_56

    iget-object v2, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-wide v11, v2, Lcom/google/android/exoplayer2/z;->r:J

    cmp-long v2, v6, v11

    if-gtz v2, :cond_57

    :cond_56
    const/4 v11, 0x1

    goto :goto_35

    :cond_57
    const/4 v11, 0x0

    :goto_35
    if-eqz v11, :cond_58

    .line 6974
    iget-boolean v2, v8, Lcom/google/android/exoplayer2/o;->A:Z

    if-eqz v2, :cond_58

    const/4 v2, 0x0

    .line 6975
    iput-boolean v2, v8, Lcom/google/android/exoplayer2/o;->A:Z

    .line 6976
    iget-object v6, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget v6, v6, Lcom/google/android/exoplayer2/z;->l:I

    const/4 v7, 0x5

    invoke-direct {v8, v2, v6, v2, v7}, Lcom/google/android/exoplayer2/o;->a(ZIZI)V

    :cond_58
    if-eqz v11, :cond_59

    .line 6982
    iget-object v6, v1, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-boolean v6, v6, Lcom/google/android/exoplayer2/v;->h:Z

    if-eqz v6, :cond_59

    const/4 v6, 0x4

    .line 6983
    invoke-direct {v8, v6}, Lcom/google/android/exoplayer2/o;->a(I)V
    :try_end_18
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_18 .. :try_end_18} :catch_4
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_2

    goto/16 :goto_3a

    .line 6985
    :cond_59
    :try_start_19
    iget-object v6, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget v6, v6, Lcom/google/android/exoplayer2/z;->d:I
    :try_end_19
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_19 .. :try_end_19} :catch_12
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_10

    const/4 v7, 0x2

    if-ne v6, v7, :cond_61

    .line 25712
    :try_start_1a
    iget v6, v8, Lcom/google/android/exoplayer2/o;->I:I

    if-nez v6, :cond_5a

    .line 25714
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->l()Z

    move-result v11

    goto/16 :goto_39

    :cond_5a
    if-eqz v3, :cond_60

    .line 25719
    iget-object v6, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-boolean v6, v6, Lcom/google/android/exoplayer2/z;->f:Z

    if-nez v6, :cond_5c

    :cond_5b
    :goto_36
    const/4 v11, 0x1

    goto :goto_39

    .line 25726
    :cond_5c
    iget-object v6, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v6, v6, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v7, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 26207
    iget-object v7, v7, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    .line 25726
    iget-object v7, v7, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-object v7, v7, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    invoke-direct {v8, v6, v7}, Lcom/google/android/exoplayer2/o;->a(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 25727
    iget-object v6, v8, Lcom/google/android/exoplayer2/o;->t:Lcom/google/android/exoplayer2/r;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/r;->b()J

    move-result-wide v16

    :cond_5d
    move-wide/from16 v31, v16

    .line 25729
    iget-object v6, v8, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 27198
    iget-object v6, v6, Lcom/google/android/exoplayer2/w;->e:Lcom/google/android/exoplayer2/u;

    .line 25730
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/u;->b()Z

    move-result v7

    if-eqz v7, :cond_5e

    iget-object v7, v6, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-boolean v7, v7, Lcom/google/android/exoplayer2/v;->h:Z

    if-eqz v7, :cond_5e

    const/4 v11, 0x1

    goto :goto_37

    :cond_5e
    const/4 v11, 0x0

    .line 25734
    :goto_37
    iget-object v7, v6, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-object v7, v7, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/source/r$a;->a()Z

    move-result v7

    if-eqz v7, :cond_5f

    iget-boolean v6, v6, Lcom/google/android/exoplayer2/u;->d:Z

    if-nez v6, :cond_5f

    const/4 v6, 0x1

    goto :goto_38

    :cond_5f
    const/4 v6, 0x0

    :goto_38
    if-nez v11, :cond_5b

    if-nez v6, :cond_5b

    .line 25735
    iget-object v6, v8, Lcom/google/android/exoplayer2/o;->g:Lcom/google/android/exoplayer2/s;

    .line 25738
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->s()J

    move-result-wide v27

    iget-object v7, v8, Lcom/google/android/exoplayer2/o;->n:Lcom/google/android/exoplayer2/k;

    .line 25739
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/k;->d()Lcom/google/android/exoplayer2/aa;

    move-result-object v7

    iget v7, v7, Lcom/google/android/exoplayer2/aa;->b:F

    iget-boolean v11, v8, Lcom/google/android/exoplayer2/o;->B:Z

    move-object/from16 v26, v6

    move/from16 v29, v7

    move/from16 v30, v11

    .line 25737
    invoke-interface/range {v26 .. v32}, Lcom/google/android/exoplayer2/s;->a(JFZJ)Z

    move-result v6

    if-eqz v6, :cond_60

    goto :goto_36

    :cond_60
    const/4 v11, 0x0

    :goto_39
    if-eqz v11, :cond_61

    const/4 v6, 0x3

    .line 6987
    invoke-direct {v8, v6}, Lcom/google/android/exoplayer2/o;->a(I)V

    const/4 v3, 0x0

    .line 6988
    iput-object v3, v8, Lcom/google/android/exoplayer2/o;->N:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 6989
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->t()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 6990
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->f()V
    :try_end_1a
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_1a .. :try_end_1a} :catch_4
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_2

    goto :goto_3b

    .line 6992
    :cond_61
    :try_start_1b
    iget-object v6, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget v6, v6, Lcom/google/android/exoplayer2/z;->d:I
    :try_end_1b
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_1b .. :try_end_1b} :catch_12
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_10

    const/4 v7, 0x3

    if-ne v6, v7, :cond_65

    :try_start_1c
    iget v6, v8, Lcom/google/android/exoplayer2/o;->I:I

    if-nez v6, :cond_62

    .line 6993
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->l()Z

    move-result v3

    if-eqz v3, :cond_63

    goto :goto_3b

    :cond_62
    if-nez v3, :cond_65

    .line 6994
    :cond_63
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->t()Z

    move-result v3

    iput-boolean v3, v8, Lcom/google/android/exoplayer2/o;->B:Z

    const/4 v3, 0x2

    .line 6995
    invoke-direct {v8, v3}, Lcom/google/android/exoplayer2/o;->a(I)V

    .line 6996
    iget-boolean v3, v8, Lcom/google/android/exoplayer2/o;->B:Z

    if-eqz v3, :cond_64

    .line 6998
    iget-object v3, v8, Lcom/google/android/exoplayer2/o;->t:Lcom/google/android/exoplayer2/r;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/r;->a()V

    .line 7000
    :cond_64
    :goto_3a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->g()V
    :try_end_1c
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_1c .. :try_end_1c} :catch_4
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_2

    .line 7003
    :cond_65
    :goto_3b
    :try_start_1d
    iget-object v3, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget v3, v3, Lcom/google/android/exoplayer2/z;->d:I
    :try_end_1d
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_1d .. :try_end_1d} :catch_12
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_10

    const/4 v6, 0x2

    if-ne v3, v6, :cond_69

    const/4 v11, 0x0

    .line 7004
    :goto_3c
    :try_start_1e
    iget-object v3, v8, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    array-length v6, v3

    if-ge v11, v6, :cond_67

    .line 7005
    aget-object v3, v3, v11

    invoke-static {v3}, Lcom/google/android/exoplayer2/o;->c(Lcom/google/android/exoplayer2/af;)Z

    move-result v3

    if-eqz v3, :cond_66

    iget-object v3, v8, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    aget-object v3, v3, v11

    .line 7006
    invoke-interface {v3}, Lcom/google/android/exoplayer2/af;->f()Lcom/google/android/exoplayer2/source/aa;

    move-result-object v3

    iget-object v6, v1, Lcom/google/android/exoplayer2/u;->c:[Lcom/google/android/exoplayer2/source/aa;

    aget-object v6, v6, v11

    if-ne v3, v6, :cond_66

    .line 7007
    iget-object v3, v8, Lcom/google/android/exoplayer2/o;->c:[Lcom/google/android/exoplayer2/af;

    aget-object v3, v3, v11

    invoke-interface {v3}, Lcom/google/android/exoplayer2/af;->k()V

    :cond_66
    add-int/lit8 v11, v11, 0x1

    goto :goto_3c

    .line 7010
    :cond_67
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/z;->f:Z

    if-nez v1, :cond_69

    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-wide v6, v1, Lcom/google/android/exoplayer2/z;->q:J

    const-wide/32 v11, 0x7a120

    cmp-long v1, v6, v11

    if-gez v1, :cond_69

    .line 7012
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->p()Z

    move-result v1

    if-nez v1, :cond_68

    goto :goto_3d

    .line 7016
    :cond_68
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Playback stuck buffering and not loading"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1e
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_1e .. :try_end_1e} :catch_4
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_2

    .line 7019
    :cond_69
    :goto_3d
    :try_start_1f
    iget-boolean v1, v8, Lcom/google/android/exoplayer2/o;->H:Z

    iget-object v3, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/z;->n:Z
    :try_end_1f
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_1f .. :try_end_1f} :catch_12
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_10

    if-eq v1, v3, :cond_6a

    .line 7020
    :try_start_20
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-boolean v3, v8, Lcom/google/android/exoplayer2/o;->H:Z

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/z;->b(Z)Lcom/google/android/exoplayer2/z;

    move-result-object v1

    iput-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;
    :try_end_20
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_20 .. :try_end_20} :catch_4
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_2

    .line 7024
    :cond_6a
    :try_start_21
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->t()Z

    move-result v1
    :try_end_21
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_21 .. :try_end_21} :catch_12
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_10

    if-eqz v1, :cond_6b

    :try_start_22
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget v1, v1, Lcom/google/android/exoplayer2/z;->d:I
    :try_end_22
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_22 .. :try_end_22} :catch_4
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_6c

    :cond_6b
    :try_start_23
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget v1, v1, Lcom/google/android/exoplayer2/z;->d:I
    :try_end_23
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_23 .. :try_end_23} :catch_12
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_10

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6e

    .line 30071
    :cond_6c
    :try_start_24
    iget-boolean v1, v8, Lcom/google/android/exoplayer2/o;->H:Z

    if-eqz v1, :cond_6d

    iget-boolean v1, v8, Lcom/google/android/exoplayer2/o;->G:Z

    if-eqz v1, :cond_6d

    const/4 v11, 0x0

    goto :goto_3e

    :cond_6d
    const-wide/16 v6, 0xa

    .line 30075
    invoke-direct {v8, v4, v5, v6, v7}, Lcom/google/android/exoplayer2/o;->a(JJ)V
    :try_end_24
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_24 .. :try_end_24} :catch_4
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_2

    const/4 v11, 0x1

    :goto_3e
    const/4 v1, 0x1

    xor-int/2addr v11, v1

    goto :goto_40

    .line 7027
    :cond_6e
    :try_start_25
    iget v1, v8, Lcom/google/android/exoplayer2/o;->I:I
    :try_end_25
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_25 .. :try_end_25} :catch_12
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_10

    if-eqz v1, :cond_6f

    :try_start_26
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget v1, v1, Lcom/google/android/exoplayer2/z;->d:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_6f

    const-wide/16 v6, 0x3e8

    .line 7028
    invoke-direct {v8, v4, v5, v6, v7}, Lcom/google/android/exoplayer2/o;->a(JJ)V
    :try_end_26
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_26 .. :try_end_26} :catch_4
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_2

    goto :goto_3f

    .line 7030
    :cond_6f
    :try_start_27
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/k;->b()V

    :goto_3f
    const/4 v11, 0x0

    .line 7032
    :goto_40
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/z;->o:Z

    if-eq v1, v11, :cond_70

    .line 7033
    iget-object v1, v8, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    .line 30480
    new-instance v3, Lcom/google/android/exoplayer2/z;

    iget-object v4, v1, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    iget-object v5, v1, Lcom/google/android/exoplayer2/z;->b:Lcom/google/android/exoplayer2/source/r$a;

    iget-wide v6, v1, Lcom/google/android/exoplayer2/z;->c:J

    iget v12, v1, Lcom/google/android/exoplayer2/z;->d:I

    iget-object v13, v1, Lcom/google/android/exoplayer2/z;->e:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v15, v1, Lcom/google/android/exoplayer2/z;->f:Z

    iget-object v2, v1, Lcom/google/android/exoplayer2/z;->g:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v14, v1, Lcom/google/android/exoplayer2/z;->h:Lcom/google/android/exoplayer2/trackselection/i;
    :try_end_27
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_27 .. :try_end_27} :catch_12
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_27} :catch_10

    move-object/from16 v17, v9

    :try_start_28
    iget-object v9, v1, Lcom/google/android/exoplayer2/z;->i:Ljava/util/List;
    :try_end_28
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_28 .. :try_end_28} :catch_e
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_28} :catch_c

    move-object/from16 v18, v10

    :try_start_29
    iget-object v10, v1, Lcom/google/android/exoplayer2/z;->j:Lcom/google/android/exoplayer2/source/r$a;
    :try_end_29
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_29 .. :try_end_29} :catch_b
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_29} :catch_9

    :try_start_2a
    iget-boolean v8, v1, Lcom/google/android/exoplayer2/z;->k:Z

    move/from16 v19, v11

    iget v11, v1, Lcom/google/android/exoplayer2/z;->l:I

    move/from16 v20, v11

    iget-object v11, v1, Lcom/google/android/exoplayer2/z;->m:Lcom/google/android/exoplayer2/aa;

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    iget-wide v10, v1, Lcom/google/android/exoplayer2/z;->p:J

    move-wide/from16 v23, v10

    iget-wide v10, v1, Lcom/google/android/exoplayer2/z;->q:J

    move-wide/from16 v42, v10

    iget-wide v10, v1, Lcom/google/android/exoplayer2/z;->r:J

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/z;->n:Z

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-wide/from16 v28, v6

    move/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v32, v15

    move-object/from16 v33, v2

    move-object/from16 v34, v14

    move-object/from16 v35, v9

    move-object/from16 v36, v21

    move/from16 v37, v8

    move/from16 v38, v20

    move-object/from16 v39, v22

    move-wide/from16 v40, v23

    move-wide/from16 v44, v10

    move/from16 v46, v1

    move/from16 v47, v19

    invoke-direct/range {v25 .. v47}, Lcom/google/android/exoplayer2/z;-><init>(Lcom/google/android/exoplayer2/al;Lcom/google/android/exoplayer2/source/r$a;JILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/i;Ljava/util/List;Lcom/google/android/exoplayer2/source/r$a;ZILcom/google/android/exoplayer2/aa;JJJZZ)V
    :try_end_2a
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_2a .. :try_end_2a} :catch_8
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2a} :catch_6

    move-object/from16 v2, p0

    .line 7033
    :try_start_2b
    iput-object v3, v2, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;
    :try_end_2b
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_2b .. :try_end_2b} :catch_15
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2b} :catch_13

    goto :goto_41

    :catch_6
    move-exception v0

    move-object/from16 v2, p0

    goto/16 :goto_4b

    :catch_7
    move-exception v0

    move-object/from16 v2, p0

    goto/16 :goto_4d

    :catch_8
    move-exception v0

    move-object/from16 v2, p0

    goto/16 :goto_4e

    :catch_9
    move-exception v0

    move-object v2, v8

    goto/16 :goto_4b

    :catch_a
    move-exception v0

    move-object v2, v8

    goto/16 :goto_4d

    :catch_b
    move-exception v0

    move-object v2, v8

    goto/16 :goto_4e

    :catch_c
    move-exception v0

    move-object v2, v8

    goto :goto_43

    :catch_d
    move-exception v0

    move-object v2, v8

    move-object v1, v0

    move-object v4, v10

    move-object/from16 v5, v17

    goto/16 :goto_52

    :catch_e
    move-exception v0

    move-object v2, v8

    move-object v1, v0

    move-object v4, v10

    move-object/from16 v5, v17

    goto/16 :goto_53

    :cond_70
    move-object v2, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    :goto_41
    const/4 v1, 0x0

    .line 7035
    :try_start_2c
    iput-boolean v1, v2, Lcom/google/android/exoplayer2/o;->G:Z
    :try_end_2c
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_2c .. :try_end_2c} :catch_15
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_2c} :catch_f

    .line 7037
    :try_start_2d
    invoke-static {}, Lcom/google/android/exoplayer2/util/ae;->a()V

    goto/16 :goto_4a

    :catch_f
    move-exception v0

    goto/16 :goto_4f

    :cond_71
    :goto_42
    move-object v2, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    .line 6919
    iget-object v1, v2, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/k;->b()V

    goto/16 :goto_4a

    :catch_10
    move-exception v0

    move-object v2, v8

    move-object/from16 v17, v9

    :goto_43
    move-object/from16 v18, v10

    goto/16 :goto_4b

    :catch_11
    move-exception v0

    move-object v2, v8

    move-object v1, v0

    :goto_44
    move-object v5, v9

    move-object v4, v10

    goto/16 :goto_52

    :catch_12
    move-exception v0

    move-object v2, v8

    move-object v1, v0

    :goto_45
    move-object v5, v9

    move-object v4, v10

    goto/16 :goto_53

    :pswitch_18
    move-object v2, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    .line 465
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_72

    const/4 v11, 0x1

    goto :goto_46

    :cond_72
    const/4 v11, 0x0

    :goto_46
    iget v1, v1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    invoke-direct {v2, v11, v1, v3, v3}, Lcom/google/android/exoplayer2/o;->a(ZIZI)V

    goto :goto_4a

    :pswitch_19
    move-object v2, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    const/4 v3, 0x4

    .line 3655
    iget-object v1, v2, Lcom/google/android/exoplayer2/o;->x:Lcom/google/android/exoplayer2/o$d;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/o$d;->a(I)V

    const/4 v1, 0x0

    .line 3656
    invoke-direct {v2, v1, v1, v1, v5}, Lcom/google/android/exoplayer2/o;->a(ZZZZ)V

    .line 3661
    iget-object v4, v2, Lcom/google/android/exoplayer2/o;->g:Lcom/google/android/exoplayer2/s;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/s;->a()V

    .line 3662
    iget-object v4, v2, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    iget-object v4, v4, Lcom/google/android/exoplayer2/z;->a:Lcom/google/android/exoplayer2/al;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v4

    if-eqz v4, :cond_73

    const/4 v15, 0x4

    goto :goto_47

    :cond_73
    const/4 v15, 0x2

    :goto_47
    invoke-direct {v2, v15}, Lcom/google/android/exoplayer2/o;->a(I)V

    .line 3663
    iget-object v3, v2, Lcom/google/android/exoplayer2/o;->s:Lcom/google/android/exoplayer2/y;

    iget-object v4, v2, Lcom/google/android/exoplayer2/o;->h:Lcom/google/android/exoplayer2/upstream/c;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/upstream/c;->a()Lcom/google/android/exoplayer2/upstream/v;

    move-result-object v4

    .line 4283
    iget-boolean v5, v3, Lcom/google/android/exoplayer2/y;->i:Z

    if-nez v5, :cond_74

    const/4 v11, 0x1

    goto :goto_48

    :cond_74
    const/4 v11, 0x0

    :goto_48
    invoke-static {v11}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 4284
    iput-object v4, v3, Lcom/google/android/exoplayer2/y;->j:Lcom/google/android/exoplayer2/upstream/v;

    const/4 v11, 0x0

    .line 4285
    :goto_49
    iget-object v4, v3, Lcom/google/android/exoplayer2/y;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v11, v4, :cond_75

    .line 4286
    iget-object v4, v3, Lcom/google/android/exoplayer2/y;->a:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/y$c;

    .line 4287
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/y;->a(Lcom/google/android/exoplayer2/y$c;)V

    .line 4288
    iget-object v5, v3, Lcom/google/android/exoplayer2/y;->g:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_49

    :cond_75
    const/4 v4, 0x1

    .line 4290
    iput-boolean v4, v3, Lcom/google/android/exoplayer2/y;->i:Z

    .line 3664
    iget-object v3, v2, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/util/k;->b(I)Z

    .line 548
    :goto_4a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->e()V
    :try_end_2d
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_2d .. :try_end_2d} :catch_15
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_2d} :catch_13

    goto :goto_51

    :catch_13
    move-exception v0

    :goto_4b
    move-object v3, v0

    :goto_4c
    const/4 v1, 0x0

    goto :goto_50

    :catch_14
    move-exception v0

    :goto_4d
    move-object v1, v0

    move-object/from16 v5, v17

    move-object/from16 v4, v18

    goto :goto_52

    :catch_15
    move-exception v0

    :goto_4e
    move-object v1, v0

    move-object/from16 v5, v17

    move-object/from16 v4, v18

    goto :goto_53

    :catch_16
    move-exception v0

    move-object v2, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    const/4 v1, 0x0

    :goto_4f
    move-object v3, v0

    .line 587
    :goto_50
    invoke-static {v3}, Lcom/google/android/exoplayer2/ExoPlaybackException;->a(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v3

    move-object/from16 v5, v17

    move-object/from16 v4, v18

    .line 588
    invoke-static {v4, v5, v3}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x1

    .line 589
    invoke-direct {v2, v4, v1}, Lcom/google/android/exoplayer2/o;->a(ZZ)V

    .line 590
    iget-object v1, v2, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/z;->a(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/z;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    .line 591
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->e()V

    :goto_51
    const/4 v4, 0x1

    goto/16 :goto_55

    :catch_17
    move-exception v0

    move-object v2, v8

    move-object v5, v9

    move-object v4, v10

    move-object v1, v0

    .line 576
    :goto_52
    invoke-static {v1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->a(Ljava/io/IOException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    .line 577
    iget-object v3, v2, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50237
    iget-object v3, v3, Lcom/google/android/exoplayer2/w;->c:Lcom/google/android/exoplayer2/u;

    if-eqz v3, :cond_76

    .line 580
    iget-object v3, v3, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-object v3, v3, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ExoPlaybackException;->a(Lcom/google/android/exoplayer2/source/q;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    .line 582
    :cond_76
    invoke-static {v4, v5, v1}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    .line 583
    invoke-direct {v2, v3, v3}, Lcom/google/android/exoplayer2/o;->a(ZZ)V

    .line 584
    iget-object v3, v2, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/z;->a(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/z;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    .line 585
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->e()V

    goto :goto_51

    :catch_18
    move-exception v0

    move-object v2, v8

    move-object v5, v9

    move-object v4, v10

    move-object v1, v0

    .line 550
    :goto_53
    iget v3, v1, Lcom/google/android/exoplayer2/ExoPlaybackException;->a:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_77

    .line 551
    iget-object v3, v2, Lcom/google/android/exoplayer2/o;->r:Lcom/google/android/exoplayer2/w;

    .line 50236
    iget-object v3, v3, Lcom/google/android/exoplayer2/w;->d:Lcom/google/android/exoplayer2/u;

    if-eqz v3, :cond_77

    .line 555
    iget-object v3, v3, Lcom/google/android/exoplayer2/u;->f:Lcom/google/android/exoplayer2/v;

    iget-object v3, v3, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/source/r$a;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ExoPlaybackException;->a(Lcom/google/android/exoplayer2/source/q;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    .line 558
    :cond_77
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/ExoPlaybackException;->h:Z

    if-eqz v3, :cond_78

    iget-object v3, v2, Lcom/google/android/exoplayer2/o;->N:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-nez v3, :cond_78

    const-string v3, "Recoverable playback error"

    .line 559
    invoke-static {v4, v3, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 560
    iput-object v1, v2, Lcom/google/android/exoplayer2/o;->N:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 561
    iget-object v3, v2, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    const/16 v4, 0x19

    invoke-interface {v3, v4, v1}, Lcom/google/android/exoplayer2/util/k;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 564
    invoke-virtual {v1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    const/4 v4, 0x1

    goto :goto_54

    .line 566
    :cond_78
    iget-object v3, v2, Lcom/google/android/exoplayer2/o;->N:Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eqz v3, :cond_79

    .line 567
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/ExoPlaybackException;->addSuppressed(Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    .line 568
    iput-object v3, v2, Lcom/google/android/exoplayer2/o;->N:Lcom/google/android/exoplayer2/ExoPlaybackException;

    .line 570
    :cond_79
    invoke-static {v4, v5, v1}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 571
    invoke-direct {v2, v4, v3}, Lcom/google/android/exoplayer2/o;->a(ZZ)V

    .line 572
    iget-object v3, v2, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/z;->a(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/z;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/exoplayer2/o;->w:Lcom/google/android/exoplayer2/z;

    .line 574
    :goto_54
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/o;->e()V

    :goto_55
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onTrackSelectionsInvalidated()V
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/google/android/exoplayer2/o;->a:Lcom/google/android/exoplayer2/util/k;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/k;->b(I)Z

    return-void
.end method

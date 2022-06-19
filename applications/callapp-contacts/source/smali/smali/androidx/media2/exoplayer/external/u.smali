.class public final Landroidx/media2/exoplayer/external/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroidx/media2/exoplayer/external/af$a;
.implements Landroidx/media2/exoplayer/external/e$a;
.implements Landroidx/media2/exoplayer/external/source/s$a;
.implements Landroidx/media2/exoplayer/external/source/t$b;
.implements Landroidx/media2/exoplayer/external/trackselection/g$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/u$c;,
        Landroidx/media2/exoplayer/external/u$a;,
        Landroidx/media2/exoplayer/external/u$b;,
        Landroidx/media2/exoplayer/external/u$d;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:I

.field private D:Landroidx/media2/exoplayer/external/u$d;

.field private E:J

.field private F:I

.field public final a:Landroidx/media2/exoplayer/external/util/i;

.field final b:Landroid/os/HandlerThread;

.field private final c:[Landroidx/media2/exoplayer/external/ag;

.field private final d:[Landroidx/media2/exoplayer/external/ah;

.field private final e:Landroidx/media2/exoplayer/external/trackselection/g;

.field private final f:Landroidx/media2/exoplayer/external/trackselection/h;

.field private final g:Landroidx/media2/exoplayer/external/y;

.field private final h:Landroidx/media2/exoplayer/external/upstream/c;

.field private final i:Landroid/os/Handler;

.field private final j:Landroidx/media2/exoplayer/external/al$b;

.field private final k:Landroidx/media2/exoplayer/external/al$a;

.field private final l:J

.field private final m:Z

.field private final n:Landroidx/media2/exoplayer/external/e;

.field private final o:Landroidx/media2/exoplayer/external/u$c;

.field private final p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/u$b;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Landroidx/media2/exoplayer/external/util/b;

.field private final r:Landroidx/media2/exoplayer/external/ab;

.field private s:Landroidx/media2/exoplayer/external/aj;

.field private t:Landroidx/media2/exoplayer/external/ac;

.field private u:Landroidx/media2/exoplayer/external/source/t;

.field private v:[Landroidx/media2/exoplayer/external/ag;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>([Landroidx/media2/exoplayer/external/ag;Landroidx/media2/exoplayer/external/trackselection/g;Landroidx/media2/exoplayer/external/trackselection/h;Landroidx/media2/exoplayer/external/y;Landroidx/media2/exoplayer/external/upstream/c;ZIZLandroid/os/Handler;Landroidx/media2/exoplayer/external/util/b;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Landroidx/media2/exoplayer/external/u;->c:[Landroidx/media2/exoplayer/external/ag;

    .line 145
    iput-object p2, p0, Landroidx/media2/exoplayer/external/u;->e:Landroidx/media2/exoplayer/external/trackselection/g;

    .line 146
    iput-object p3, p0, Landroidx/media2/exoplayer/external/u;->f:Landroidx/media2/exoplayer/external/trackselection/h;

    .line 147
    iput-object p4, p0, Landroidx/media2/exoplayer/external/u;->g:Landroidx/media2/exoplayer/external/y;

    .line 148
    iput-object p5, p0, Landroidx/media2/exoplayer/external/u;->h:Landroidx/media2/exoplayer/external/upstream/c;

    .line 149
    iput-boolean p6, p0, Landroidx/media2/exoplayer/external/u;->x:Z

    .line 150
    iput p7, p0, Landroidx/media2/exoplayer/external/u;->z:I

    .line 151
    iput-boolean p8, p0, Landroidx/media2/exoplayer/external/u;->A:Z

    .line 152
    iput-object p9, p0, Landroidx/media2/exoplayer/external/u;->i:Landroid/os/Handler;

    .line 153
    iput-object p10, p0, Landroidx/media2/exoplayer/external/u;->q:Landroidx/media2/exoplayer/external/util/b;

    .line 154
    new-instance p6, Landroidx/media2/exoplayer/external/ab;

    invoke-direct {p6}, Landroidx/media2/exoplayer/external/ab;-><init>()V

    iput-object p6, p0, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 156
    invoke-interface {p4}, Landroidx/media2/exoplayer/external/y;->e()J

    move-result-wide p6

    iput-wide p6, p0, Landroidx/media2/exoplayer/external/u;->l:J

    .line 157
    invoke-interface {p4}, Landroidx/media2/exoplayer/external/y;->f()Z

    move-result p4

    iput-boolean p4, p0, Landroidx/media2/exoplayer/external/u;->m:Z

    .line 159
    sget-object p4, Landroidx/media2/exoplayer/external/aj;->e:Landroidx/media2/exoplayer/external/aj;

    iput-object p4, p0, Landroidx/media2/exoplayer/external/u;->s:Landroidx/media2/exoplayer/external/aj;

    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    .line 161
    invoke-static {p6, p7, p3}, Landroidx/media2/exoplayer/external/ac;->a(JLandroidx/media2/exoplayer/external/trackselection/h;)Landroidx/media2/exoplayer/external/ac;

    move-result-object p3

    iput-object p3, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    .line 162
    new-instance p3, Landroidx/media2/exoplayer/external/u$c;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Landroidx/media2/exoplayer/external/u$c;-><init>(Landroidx/media2/exoplayer/external/u$1;)V

    iput-object p3, p0, Landroidx/media2/exoplayer/external/u;->o:Landroidx/media2/exoplayer/external/u$c;

    .line 163
    array-length p3, p1

    new-array p3, p3, [Landroidx/media2/exoplayer/external/ah;

    iput-object p3, p0, Landroidx/media2/exoplayer/external/u;->d:[Landroidx/media2/exoplayer/external/ah;

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 164
    :goto_0
    array-length p6, p1

    if-ge p4, p6, :cond_0

    .line 165
    aget-object p6, p1, p4

    invoke-interface {p6, p4}, Landroidx/media2/exoplayer/external/ag;->a(I)V

    .line 166
    iget-object p6, p0, Landroidx/media2/exoplayer/external/u;->d:[Landroidx/media2/exoplayer/external/ah;

    aget-object p7, p1, p4

    invoke-interface {p7}, Landroidx/media2/exoplayer/external/ag;->b()Landroidx/media2/exoplayer/external/ah;

    move-result-object p7

    aput-object p7, p6, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 168
    :cond_0
    new-instance p1, Landroidx/media2/exoplayer/external/e;

    invoke-direct {p1, p0, p10}, Landroidx/media2/exoplayer/external/e;-><init>(Landroidx/media2/exoplayer/external/e$a;Landroidx/media2/exoplayer/external/util/b;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/u;->n:Landroidx/media2/exoplayer/external/e;

    .line 169
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/u;->p:Ljava/util/ArrayList;

    new-array p1, p3, [Landroidx/media2/exoplayer/external/ag;

    .line 170
    iput-object p1, p0, Landroidx/media2/exoplayer/external/u;->v:[Landroidx/media2/exoplayer/external/ag;

    .line 171
    new-instance p1, Landroidx/media2/exoplayer/external/al$b;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/al$b;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/u;->j:Landroidx/media2/exoplayer/external/al$b;

    .line 172
    new-instance p1, Landroidx/media2/exoplayer/external/al$a;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/al$a;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/u;->k:Landroidx/media2/exoplayer/external/al$a;

    .line 2118
    iput-object p0, p2, Landroidx/media2/exoplayer/external/trackselection/g;->b:Landroidx/media2/exoplayer/external/trackselection/g$a;

    .line 2119
    iput-object p5, p2, Landroidx/media2/exoplayer/external/trackselection/g;->c:Landroidx/media2/exoplayer/external/upstream/c;

    .line 177
    new-instance p1, Landroid/os/HandlerThread;

    const/16 p2, -0x10

    const-string p3, "ExoPlayerImplInternal:Handler"

    invoke-direct {p1, p3, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/u;->b:Landroid/os/HandlerThread;

    .line 179
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 180
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-interface {p10, p1, p0}, Landroidx/media2/exoplayer/external/util/b;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media2/exoplayer/external/util/i;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/u;->a:Landroidx/media2/exoplayer/external/util/i;

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/source/t$a;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 739
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 50202
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    .line 740
    iget-object v1, p0, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 50203
    iget-object v1, v1, Landroidx/media2/exoplayer/external/ab;->e:Landroidx/media2/exoplayer/external/z;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 739
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media2/exoplayer/external/u;->a(Landroidx/media2/exoplayer/external/source/t$a;JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method private a(Landroidx/media2/exoplayer/external/source/t$a;JZ)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 746
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/u;->e()V

    const/4 v0, 0x0

    .line 747
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/u;->y:Z

    const/4 v1, 0x2

    .line 748
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/u;->a(I)V

    .line 751
    iget-object v2, p0, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 50204
    iget-object v2, v2, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 754
    iget-object v4, v3, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/aa;->a:Landroidx/media2/exoplayer/external/source/t$a;

    invoke-virtual {p1, v4}, Landroidx/media2/exoplayer/external/source/t$a;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Landroidx/media2/exoplayer/external/z;->d:Z

    if-eqz v4, :cond_0

    .line 755
    iget-object p1, p0, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/ab;->a(Landroidx/media2/exoplayer/external/z;)Z

    goto :goto_1

    .line 758
    :cond_0
    iget-object v3, p0, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/ab;->a()Landroidx/media2/exoplayer/external/z;

    move-result-object v3

    goto :goto_0

    :cond_1
    :goto_1
    const-wide/16 v4, 0x0

    if-nez p4, :cond_2

    if-ne v2, v3, :cond_2

    if-eqz v3, :cond_4

    .line 50206
    iget-wide v6, v3, Landroidx/media2/exoplayer/external/z;->j:J

    add-long/2addr v6, p2

    cmp-long p1, v6, v4

    if-gez p1, :cond_4

    .line 767
    :cond_2
    iget-object p1, p0, Landroidx/media2/exoplayer/external/u;->v:[Landroidx/media2/exoplayer/external/ag;

    array-length p4, p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p4, :cond_3

    aget-object v6, p1, v2

    .line 768
    invoke-direct {p0, v6}, Landroidx/media2/exoplayer/external/u;->b(Landroidx/media2/exoplayer/external/ag;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-array p1, v0, [Landroidx/media2/exoplayer/external/ag;

    .line 770
    iput-object p1, p0, Landroidx/media2/exoplayer/external/u;->v:[Landroidx/media2/exoplayer/external/ag;

    const/4 v2, 0x0

    if-eqz v3, :cond_4

    .line 50207
    iput-wide v4, v3, Landroidx/media2/exoplayer/external/z;->j:J

    :cond_4
    if-eqz v3, :cond_6

    .line 779
    invoke-direct {p0, v2}, Landroidx/media2/exoplayer/external/u;->a(Landroidx/media2/exoplayer/external/z;)V

    .line 780
    iget-boolean p1, v3, Landroidx/media2/exoplayer/external/z;->e:Z

    if-eqz p1, :cond_5

    .line 781
    iget-object p1, v3, Landroidx/media2/exoplayer/external/z;->a:Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {p1, p2, p3}, Landroidx/media2/exoplayer/external/source/s;->b(J)J

    move-result-wide p1

    .line 782
    iget-object p3, v3, Landroidx/media2/exoplayer/external/z;->a:Landroidx/media2/exoplayer/external/source/s;

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/u;->l:J

    sub-long v2, p1, v2

    iget-boolean p4, p0, Landroidx/media2/exoplayer/external/u;->m:Z

    invoke-interface {p3, v2, v3, p4}, Landroidx/media2/exoplayer/external/source/s;->a(JZ)V

    move-wide p2, p1

    .line 785
    :cond_5
    invoke-direct {p0, p2, p3}, Landroidx/media2/exoplayer/external/u;->a(J)V

    .line 786
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/u;->m()V

    goto :goto_3

    .line 788
    :cond_6
    iget-object p1, p0, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Landroidx/media2/exoplayer/external/ab;->a(Z)V

    .line 790
    iget-object p1, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    sget-object p4, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->EMPTY:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/u;->f:Landroidx/media2/exoplayer/external/trackselection/h;

    .line 791
    invoke-virtual {p1, p4, v2}, Landroidx/media2/exoplayer/external/ac;->a(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/h;)Landroidx/media2/exoplayer/external/ac;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    .line 792
    invoke-direct {p0, p2, p3}, Landroidx/media2/exoplayer/external/u;->a(J)V

    .line 795
    :goto_3
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/u;->c(Z)V

    .line 796
    iget-object p1, p0, Landroidx/media2/exoplayer/external/u;->a:Landroidx/media2/exoplayer/external/util/i;

    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/util/i;->b(I)Z

    return-wide p2
.end method

.method private a(Landroidx/media2/exoplayer/external/al;I)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/al;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1494
    iget-object v1, p0, Landroidx/media2/exoplayer/external/u;->j:Landroidx/media2/exoplayer/external/al$b;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/u;->k:Landroidx/media2/exoplayer/external/al$a;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/media2/exoplayer/external/al;->a(Landroidx/media2/exoplayer/external/al$b;Landroidx/media2/exoplayer/external/al$a;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroidx/media2/exoplayer/external/u$d;Z)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/u$d;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1445
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    .line 1446
    iget-object v1, p1, Landroidx/media2/exoplayer/external/u$d;->a:Landroidx/media2/exoplayer/external/al;

    .line 1447
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/al;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 1451
    :cond_0
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/al;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 1459
    :cond_1
    :try_start_0
    iget-object v5, p0, Landroidx/media2/exoplayer/external/u;->j:Landroidx/media2/exoplayer/external/al$b;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/u;->k:Landroidx/media2/exoplayer/external/al$a;

    iget v7, p1, Landroidx/media2/exoplayer/external/u$d;->b:I

    iget-wide v8, p1, Landroidx/media2/exoplayer/external/u$d;->c:J

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Landroidx/media2/exoplayer/external/al;->a(Landroidx/media2/exoplayer/external/al$b;Landroidx/media2/exoplayer/external/al$a;IJ)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_2

    return-object p1

    .line 1470
    :cond_2
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    .line 1477
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {p0, p1, v1, v0}, Landroidx/media2/exoplayer/external/u;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/al;Landroidx/media2/exoplayer/external/al;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1480
    iget-object p1, p0, Landroidx/media2/exoplayer/external/u;->k:Landroidx/media2/exoplayer/external/al$a;

    const/4 p2, 0x0

    .line 50228
    invoke-virtual {v0, v2, p1, p2}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$a;Z)Landroidx/media2/exoplayer/external/al$a;

    move-result-object p1

    .line 1481
    iget p1, p1, Landroidx/media2/exoplayer/external/al$a;->c:I

    .line 1480
    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/u;->a(Landroidx/media2/exoplayer/external/al;I)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :catch_0
    :cond_4
    return-object v3
.end method

.method private a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/al;Landroidx/media2/exoplayer/external/al;)Ljava/lang/Object;
    .locals 9

    .line 1417
    invoke-virtual {p2, p1}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;)I

    move-result p1

    .line 1419
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/al;->c()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p1

    const/4 p1, -0x1

    :goto_0
    if-ge v2, v0, :cond_0

    if-ne p1, v1, :cond_0

    .line 1421
    iget-object v5, p0, Landroidx/media2/exoplayer/external/u;->k:Landroidx/media2/exoplayer/external/al$a;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/u;->j:Landroidx/media2/exoplayer/external/al$b;

    iget v7, p0, Landroidx/media2/exoplayer/external/u;->z:I

    iget-boolean v8, p0, Landroidx/media2/exoplayer/external/u;->A:Z

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$a;Landroidx/media2/exoplayer/external/al$b;IZ)I

    move-result v4

    if-eq v4, v1, :cond_0

    .line 1427
    invoke-virtual {p2, v4}, Landroidx/media2/exoplayer/external/al;->a(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1429
    :cond_1
    invoke-virtual {p3, p1}, Landroidx/media2/exoplayer/external/al;->a(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private a(I)V
    .locals 1

    .line 417
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget v0, v0, Landroidx/media2/exoplayer/external/ac;->e:I

    if-eq v0, p1, :cond_0

    .line 418
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/ac;->a(I)Landroidx/media2/exoplayer/external/ac;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    :cond_0
    return-void
.end method

.method private a(IZI)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1809
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 50238
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    .line 1810
    iget-object v1, p0, Landroidx/media2/exoplayer/external/u;->c:[Landroidx/media2/exoplayer/external/ag;

    aget-object v1, v1, p1

    .line 1811
    iget-object v2, p0, Landroidx/media2/exoplayer/external/u;->v:[Landroidx/media2/exoplayer/external/ag;

    aput-object v1, v2, p3

    .line 1812
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/ag;->i_()I

    move-result p3

    if-nez p3, :cond_2

    .line 50239
    iget-object p3, v0, Landroidx/media2/exoplayer/external/z;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    .line 1814
    iget-object v2, p3, Landroidx/media2/exoplayer/external/trackselection/h;->b:[Landroidx/media2/exoplayer/external/RendererConfiguration;

    aget-object v3, v2, p1

    .line 1816
    iget-object p3, p3, Landroidx/media2/exoplayer/external/trackselection/h;->c:Landroidx/media2/exoplayer/external/trackselection/f;

    .line 50240
    iget-object p3, p3, Landroidx/media2/exoplayer/external/trackselection/f;->b:[Landroidx/media2/exoplayer/external/trackselection/e;

    aget-object p3, p3, p1

    .line 1817
    invoke-static {p3}, Landroidx/media2/exoplayer/external/u;->a(Landroidx/media2/exoplayer/external/trackselection/e;)[Landroidx/media2/exoplayer/external/Format;

    move-result-object v4

    .line 1819
    iget-boolean p3, p0, Landroidx/media2/exoplayer/external/u;->x:Z

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    iget-object p3, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget p3, p3, Landroidx/media2/exoplayer/external/ac;->e:I

    const/4 v6, 0x3

    if-ne p3, v6, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 1823
    :goto_1
    iget-object p2, v0, Landroidx/media2/exoplayer/external/z;->c:[Landroidx/media2/exoplayer/external/source/al;

    aget-object v5, p2, p1

    iget-wide v6, p0, Landroidx/media2/exoplayer/external/u;->E:J

    .line 50241
    iget-wide v9, v0, Landroidx/media2/exoplayer/external/z;->j:J

    move-object v2, v1

    .line 1823
    invoke-interface/range {v2 .. v10}, Landroidx/media2/exoplayer/external/ag;->a(Landroidx/media2/exoplayer/external/RendererConfiguration;[Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/al;JZJ)V

    .line 1826
    iget-object p1, p0, Landroidx/media2/exoplayer/external/u;->n:Landroidx/media2/exoplayer/external/e;

    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/e;->a(Landroidx/media2/exoplayer/external/ag;)V

    if-eqz p3, :cond_2

    .line 1829
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/ag;->e()V

    :cond_2
    return-void
.end method

.method private a(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 801
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 50209
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    if-nez v0, :cond_0

    goto :goto_0

    .line 50211
    :cond_0
    iget-wide v0, v0, Landroidx/media2/exoplayer/external/z;->j:J

    add-long/2addr p1, v0

    .line 805
    :goto_0
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/u;->E:J

    .line 806
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->n:Landroidx/media2/exoplayer/external/e;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/e;->a(J)V

    .line 807
    iget-object p1, p0, Landroidx/media2/exoplayer/external/u;->v:[Landroidx/media2/exoplayer/external/ag;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    .line 808
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/u;->E:J

    invoke-interface {v1, v2, v3}, Landroidx/media2/exoplayer/external/ag;->a(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 810
    :cond_1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/u;->h()V

    return-void
.end method

.method private a(JJ)V
    .locals 1

    .line 657
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->a:Landroidx/media2/exoplayer/external/util/i;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/util/i;->b()V

    .line 658
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->a:Landroidx/media2/exoplayer/external/util/i;

    add-long/2addr p1, p3

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/util/i;->a(J)Z

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/ad;Z)V
    .locals 3

    .line 1878
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->a:Landroidx/media2/exoplayer/external/util/i;

    const/4 v1, 0x0

    const/16 v2, 0x11

    .line 1879
    invoke-interface {v0, v2, p2, v1, p1}, Landroidx/media2/exoplayer/external/util/i;->a(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1884
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static a(Landroidx/media2/exoplayer/external/ag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1115
    invoke-interface {p0}, Landroidx/media2/exoplayer/external/ag;->i_()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1116
    invoke-interface {p0}, Landroidx/media2/exoplayer/external/ag;->l()V

    :cond_0
    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/trackselection/h;)V
    .locals 2

    .line 1873
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->g:Landroidx/media2/exoplayer/external/y;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/u;->c:[Landroidx/media2/exoplayer/external/ag;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/trackselection/h;->c:Landroidx/media2/exoplayer/external/trackselection/f;

    invoke-interface {v0, v1, p1}, Landroidx/media2/exoplayer/external/y;->a([Landroidx/media2/exoplayer/external/ag;Landroidx/media2/exoplayer/external/trackselection/f;)V

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/z;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1757
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 50231
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    if-eqz v0, :cond_6

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 1762
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/u;->c:[Landroidx/media2/exoplayer/external/ag;

    array-length v1, v1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1763
    :goto_0
    iget-object v5, p0, Landroidx/media2/exoplayer/external/u;->c:[Landroidx/media2/exoplayer/external/ag;

    array-length v6, v5

    if-ge v3, v6, :cond_5

    .line 1764
    aget-object v5, v5, v3

    .line 1765
    invoke-interface {v5}, Landroidx/media2/exoplayer/external/ag;->i_()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    aput-boolean v6, v1, v3

    .line 50232
    iget-object v6, v0, Landroidx/media2/exoplayer/external/z;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    .line 1766
    invoke-virtual {v6, v3}, Landroidx/media2/exoplayer/external/trackselection/h;->a(I)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    .line 1769
    :cond_2
    aget-boolean v6, v1, v3

    if-eqz v6, :cond_4

    .line 50233
    iget-object v6, v0, Landroidx/media2/exoplayer/external/z;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    .line 1770
    invoke-virtual {v6, v3}, Landroidx/media2/exoplayer/external/trackselection/h;->a(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1771
    invoke-interface {v5}, Landroidx/media2/exoplayer/external/ag;->j()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1772
    invoke-interface {v5}, Landroidx/media2/exoplayer/external/ag;->f()Landroidx/media2/exoplayer/external/source/al;

    move-result-object v6

    iget-object v7, p1, Landroidx/media2/exoplayer/external/z;->c:[Landroidx/media2/exoplayer/external/source/al;

    aget-object v7, v7, v3

    if-ne v6, v7, :cond_4

    .line 1776
    :cond_3
    invoke-direct {p0, v5}, Landroidx/media2/exoplayer/external/u;->b(Landroidx/media2/exoplayer/external/ag;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1779
    :cond_5
    iget-object p1, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    .line 50234
    iget-object v2, v0, Landroidx/media2/exoplayer/external/z;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 50235
    iget-object v0, v0, Landroidx/media2/exoplayer/external/z;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    .line 1780
    invoke-virtual {p1, v2, v0}, Landroidx/media2/exoplayer/external/ac;->a(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/h;)Landroidx/media2/exoplayer/external/ac;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    .line 1783
    invoke-direct {p0, v1, v4}, Landroidx/media2/exoplayer/external/u;->a([ZI)V

    :cond_6
    :goto_2
    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 423
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/ac;->g:Z

    if-eq v0, p1, :cond_0

    .line 424
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/ac;->a(Z)Landroidx/media2/exoplayer/external/ac;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    :cond_0
    return-void
.end method

.method private a(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4

    .line 825
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/u;->B:Z

    if-eq v0, p1, :cond_1

    .line 826
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/u;->B:Z

    if-nez p1, :cond_1

    .line 828
    iget-object p1, p0, Landroidx/media2/exoplayer/external/u;->c:[Landroidx/media2/exoplayer/external/ag;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 829
    invoke-interface {v2}, Landroidx/media2/exoplayer/external/ag;->i_()I

    move-result v3

    if-nez v3, :cond_0

    .line 830
    invoke-interface {v2}, Landroidx/media2/exoplayer/external/ag;->n()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 836
    monitor-enter p0

    const/4 p1, 0x1

    .line 837
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 838
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 839
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

.method private a(ZZZ)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 845
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/u;->B:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    const/4 v4, 0x1

    move-object v2, p0

    move v5, p2

    move v6, p2

    move v7, p2

    invoke-direct/range {v2 .. v7}, Landroidx/media2/exoplayer/external/u;->a(ZZZZZ)V

    .line 851
    iget-object p1, p0, Landroidx/media2/exoplayer/external/u;->o:Landroidx/media2/exoplayer/external/u$c;

    iget p2, p0, Landroidx/media2/exoplayer/external/u;->C:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/u$c;->a(I)V

    .line 853
    iput v0, p0, Landroidx/media2/exoplayer/external/u;->C:I

    .line 854
    iget-object p1, p0, Landroidx/media2/exoplayer/external/u;->g:Landroidx/media2/exoplayer/external/y;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/y;->b()V

    .line 855
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/u;->a(I)V

    return-void
.end method

.method private a(ZZZZZ)V
    .locals 23

    move-object/from16 v1, p0

    .line 880
    iget-object v0, v1, Landroidx/media2/exoplayer/external/u;->a:Landroidx/media2/exoplayer/external/util/i;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/util/i;->b()V

    const/4 v2, 0x0

    .line 881
    iput-boolean v2, v1, Landroidx/media2/exoplayer/external/u;->y:Z

    .line 882
    iget-object v0, v1, Landroidx/media2/exoplayer/external/u;->n:Landroidx/media2/exoplayer/external/e;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/e;->b()V

    const-wide/16 v3, 0x0

    .line 883
    iput-wide v3, v1, Landroidx/media2/exoplayer/external/u;->E:J

    .line 884
    iget-object v3, v1, Landroidx/media2/exoplayer/external/u;->v:[Landroidx/media2/exoplayer/external/ag;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    const-string v6, "ExoPlayerImplInternal"

    if-ge v5, v4, :cond_0

    aget-object v0, v3, v5

    .line 886
    :try_start_0
    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/u;->b(Landroidx/media2/exoplayer/external/ag;)V
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v7, "Disable failed."

    .line 889
    invoke-static {v6, v7, v0}, Landroidx/media2/exoplayer/external/util/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 893
    iget-object v3, v1, Landroidx/media2/exoplayer/external/u;->c:[Landroidx/media2/exoplayer/external/ag;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_1

    aget-object v0, v3, v5

    .line 895
    :try_start_1
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/ag;->n()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v7, v0

    const-string v0, "Reset failed."

    .line 898
    invoke-static {v6, v0, v7}, Landroidx/media2/exoplayer/external/util/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_1
    new-array v0, v2, [Landroidx/media2/exoplayer/external/ag;

    .line 902
    iput-object v0, v1, Landroidx/media2/exoplayer/external/u;->v:[Landroidx/media2/exoplayer/external/ag;

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 905
    iput-object v0, v1, Landroidx/media2/exoplayer/external/u;->D:Landroidx/media2/exoplayer/external/u$d;

    goto :goto_5

    :cond_2
    if-eqz p4, :cond_4

    .line 910
    iget-object v3, v1, Landroidx/media2/exoplayer/external/u;->D:Landroidx/media2/exoplayer/external/u$d;

    if-nez v3, :cond_3

    iget-object v3, v1, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/al;->a()Z

    move-result v3

    if-nez v3, :cond_3

    .line 911
    iget-object v3, v1, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v4, v1, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    iget-object v5, v1, Landroidx/media2/exoplayer/external/u;->k:Landroidx/media2/exoplayer/external/al$a;

    invoke-virtual {v3, v4, v5}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/al$a;)Landroidx/media2/exoplayer/external/al$a;

    .line 912
    iget-object v3, v1, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-wide v3, v3, Landroidx/media2/exoplayer/external/ac;->m:J

    iget-object v5, v1, Landroidx/media2/exoplayer/external/u;->k:Landroidx/media2/exoplayer/external/al$a;

    .line 50212
    iget-wide v5, v5, Landroidx/media2/exoplayer/external/al$a;->e:J

    add-long/2addr v3, v5

    .line 913
    new-instance v5, Landroidx/media2/exoplayer/external/u$d;

    sget-object v6, Landroidx/media2/exoplayer/external/al;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v7, v1, Landroidx/media2/exoplayer/external/u;->k:Landroidx/media2/exoplayer/external/al$a;

    iget v7, v7, Landroidx/media2/exoplayer/external/al$a;->c:I

    invoke-direct {v5, v6, v7, v3, v4}, Landroidx/media2/exoplayer/external/u$d;-><init>(Landroidx/media2/exoplayer/external/al;IJ)V

    iput-object v5, v1, Landroidx/media2/exoplayer/external/u;->D:Landroidx/media2/exoplayer/external/u$d;

    :cond_3
    const/4 v3, 0x1

    goto :goto_6

    :cond_4
    :goto_5
    move/from16 v3, p3

    .line 918
    :goto_6
    iget-object v4, v1, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    xor-int/lit8 v5, p4, 0x1

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/ab;->a(Z)V

    .line 919
    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/u;->a(Z)V

    if-eqz p4, :cond_6

    .line 921
    iget-object v4, v1, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    sget-object v5, Landroidx/media2/exoplayer/external/al;->a:Landroidx/media2/exoplayer/external/al;

    .line 50213
    iput-object v5, v4, Landroidx/media2/exoplayer/external/ab;->a:Landroidx/media2/exoplayer/external/al;

    .line 922
    iget-object v4, v1, Landroidx/media2/exoplayer/external/u;->p:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/u$b;

    .line 923
    iget-object v5, v5, Landroidx/media2/exoplayer/external/u$b;->a:Landroidx/media2/exoplayer/external/af;

    invoke-virtual {v5, v2}, Landroidx/media2/exoplayer/external/af;->a(Z)V

    goto :goto_7

    .line 925
    :cond_5
    iget-object v4, v1, Landroidx/media2/exoplayer/external/u;->p:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 926
    iput v2, v1, Landroidx/media2/exoplayer/external/u;->F:I

    :cond_6
    if-eqz v3, :cond_7

    .line 930
    iget-object v2, v1, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-boolean v4, v1, Landroidx/media2/exoplayer/external/u;->A:Z

    iget-object v5, v1, Landroidx/media2/exoplayer/external/u;->j:Landroidx/media2/exoplayer/external/al$b;

    iget-object v6, v1, Landroidx/media2/exoplayer/external/u;->k:Landroidx/media2/exoplayer/external/al$a;

    invoke-virtual {v2, v4, v5, v6}, Landroidx/media2/exoplayer/external/ac;->a(ZLandroidx/media2/exoplayer/external/al$b;Landroidx/media2/exoplayer/external/al$a;)Landroidx/media2/exoplayer/external/source/t$a;

    move-result-object v2

    goto :goto_8

    .line 931
    :cond_7
    iget-object v2, v1, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    :goto_8
    move-object/from16 v16, v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_8

    move-wide/from16 v21, v4

    goto :goto_9

    .line 933
    :cond_8
    iget-object v2, v1, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-wide v6, v2, Landroidx/media2/exoplayer/external/ac;->m:J

    move-wide/from16 v21, v6

    :goto_9
    if-eqz v3, :cond_9

    move-wide v9, v4

    goto :goto_a

    .line 934
    :cond_9
    iget-object v2, v1, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/ac;->d:J

    move-wide v9, v2

    .line 935
    :goto_a
    new-instance v2, Landroidx/media2/exoplayer/external/ac;

    if-eqz p4, :cond_a

    .line 937
    sget-object v3, Landroidx/media2/exoplayer/external/al;->a:Landroidx/media2/exoplayer/external/al;

    goto :goto_b

    :cond_a
    iget-object v3, v1, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    :goto_b
    move-object v5, v3

    iget-object v3, v1, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget v11, v3, Landroidx/media2/exoplayer/external/ac;->e:I

    if-eqz p5, :cond_b

    move-object v12, v0

    goto :goto_c

    .line 942
    :cond_b
    iget-object v3, v1, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/ac;->f:Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-object v12, v3

    :goto_c
    const/4 v13, 0x0

    if-eqz p4, :cond_c

    .line 944
    sget-object v3, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->EMPTY:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    goto :goto_d

    :cond_c
    iget-object v3, v1, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/ac;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    :goto_d
    move-object v14, v3

    if-eqz p4, :cond_d

    .line 945
    iget-object v3, v1, Landroidx/media2/exoplayer/external/u;->f:Landroidx/media2/exoplayer/external/trackselection/h;

    goto :goto_e

    :cond_d
    iget-object v3, v1, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/ac;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    :goto_e
    move-object v15, v3

    const-wide/16 v19, 0x0

    move-object v4, v2

    move-object/from16 v6, v16

    move-wide/from16 v7, v21

    move-wide/from16 v17, v21

    invoke-direct/range {v4 .. v22}, Landroidx/media2/exoplayer/external/ac;-><init>(Landroidx/media2/exoplayer/external/al;Landroidx/media2/exoplayer/external/source/t$a;JJILandroidx/media2/exoplayer/external/ExoPlaybackException;ZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/h;Landroidx/media2/exoplayer/external/source/t$a;JJJ)V

    iput-object v2, v1, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    if-eqz p2, :cond_e

    .line 951
    iget-object v2, v1, Landroidx/media2/exoplayer/external/u;->u:Landroidx/media2/exoplayer/external/source/t;

    if-eqz v2, :cond_e

    .line 952
    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/source/t;->c(Landroidx/media2/exoplayer/external/source/t$b;)V

    .line 953
    iput-object v0, v1, Landroidx/media2/exoplayer/external/u;->u:Landroidx/media2/exoplayer/external/source/t;

    :cond_e
    return-void
.end method

.method private a([ZI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1788
    new-array p2, p2, [Landroidx/media2/exoplayer/external/ag;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/u;->v:[Landroidx/media2/exoplayer/external/ag;

    .line 1790
    iget-object p2, p0, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 50236
    iget-object p2, p2, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    .line 50237
    iget-object p2, p2, Landroidx/media2/exoplayer/external/z;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1793
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/u;->c:[Landroidx/media2/exoplayer/external/ag;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1794
    invoke-virtual {p2, v1}, Landroidx/media2/exoplayer/external/trackselection/h;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1795
    iget-object v2, p0, Landroidx/media2/exoplayer/external/u;->c:[Landroidx/media2/exoplayer/external/ag;

    aget-object v2, v2, v1

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/ag;->n()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1799
    :goto_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/u;->c:[Landroidx/media2/exoplayer/external/ag;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1800
    invoke-virtual {p2, v0}, Landroidx/media2/exoplayer/external/trackselection/h;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1801
    aget-boolean v2, p1, v0

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Landroidx/media2/exoplayer/external/u;->a(IZI)V

    move v1, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/u$b;)Z
    .locals 6

    .line 1027
    iget-object v0, p1, Landroidx/media2/exoplayer/external/u$b;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1029
    new-instance v0, Landroidx/media2/exoplayer/external/u$d;

    iget-object v2, p1, Landroidx/media2/exoplayer/external/u$b;->a:Landroidx/media2/exoplayer/external/af;

    .line 50219
    iget-object v2, v2, Landroidx/media2/exoplayer/external/af;->b:Landroidx/media2/exoplayer/external/al;

    .line 1032
    iget-object v3, p1, Landroidx/media2/exoplayer/external/u$b;->a:Landroidx/media2/exoplayer/external/af;

    .line 50220
    iget v3, v3, Landroidx/media2/exoplayer/external/af;->f:I

    .line 1033
    iget-object v4, p1, Landroidx/media2/exoplayer/external/u$b;->a:Landroidx/media2/exoplayer/external/af;

    .line 50221
    iget-wide v4, v4, Landroidx/media2/exoplayer/external/af;->g:J

    .line 1034
    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/c;->b(J)J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Landroidx/media2/exoplayer/external/u$d;-><init>(Landroidx/media2/exoplayer/external/al;IJ)V

    .line 1030
    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/u;->a(Landroidx/media2/exoplayer/external/u$d;Z)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 1039
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1040
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 1041
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1039
    invoke-virtual {p1, v1, v2, v3, v0}, Landroidx/media2/exoplayer/external/u$b;->a(IJLjava/lang/Object;)V

    goto :goto_0

    .line 1045
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v2, p1, Landroidx/media2/exoplayer/external/u$b;->d:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    return v1

    .line 1049
    :cond_2
    iput v0, p1, Landroidx/media2/exoplayer/external/u$b;->b:I

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private static a(Landroidx/media2/exoplayer/external/trackselection/e;)[Landroidx/media2/exoplayer/external/Format;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1889
    invoke-interface {p0}, Landroidx/media2/exoplayer/external/trackselection/e;->f()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1890
    :goto_0
    new-array v2, v1, [Landroidx/media2/exoplayer/external/Format;

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1892
    invoke-interface {p0, v0}, Landroidx/media2/exoplayer/external/trackselection/e;->a(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private b(J)J
    .locals 7

    .line 1862
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 50245
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ab;->f:Landroidx/media2/exoplayer/external/z;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 1866
    :cond_0
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/u;->E:J

    .line 50247
    iget-wide v5, v0, Landroidx/media2/exoplayer/external/z;->j:J

    sub-long/2addr v3, v5

    sub-long/2addr p1, v3

    .line 1868
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private b(JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1056
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/t$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 1061
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/ac;->c:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    .line 1065
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    .line 1066
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1068
    iget v1, p0, Landroidx/media2/exoplayer/external/u;->F:I

    const/4 v2, 0x0

    if-lez v1, :cond_2

    iget-object v3, p0, Landroidx/media2/exoplayer/external/u;->p:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/u$b;

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_4

    .line 1069
    iget v3, v1, Landroidx/media2/exoplayer/external/u$b;->b:I

    if-gt v3, v0, :cond_3

    iget v3, v1, Landroidx/media2/exoplayer/external/u$b;->b:I

    if-ne v3, v0, :cond_4

    iget-wide v3, v1, Landroidx/media2/exoplayer/external/u$b;->c:J

    cmp-long v1, v3, p1

    if-lez v1, :cond_4

    .line 1073
    :cond_3
    iget v1, p0, Landroidx/media2/exoplayer/external/u;->F:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/u;->F:I

    if-lez v1, :cond_2

    .line 1075
    iget-object v3, p0, Landroidx/media2/exoplayer/external/u;->p:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/u$b;

    goto :goto_0

    .line 1078
    :cond_4
    iget v1, p0, Landroidx/media2/exoplayer/external/u;->F:I

    iget-object v3, p0, Landroidx/media2/exoplayer/external/u;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 1079
    iget-object v1, p0, Landroidx/media2/exoplayer/external/u;->p:Ljava/util/ArrayList;

    iget v3, p0, Landroidx/media2/exoplayer/external/u;->F:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/u$b;

    goto :goto_1

    :cond_5
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_7

    .line 1081
    iget-object v3, v1, Landroidx/media2/exoplayer/external/u$b;->d:Ljava/lang/Object;

    if-eqz v3, :cond_7

    iget v3, v1, Landroidx/media2/exoplayer/external/u$b;->b:I

    if-lt v3, v0, :cond_6

    iget v3, v1, Landroidx/media2/exoplayer/external/u$b;->b:I

    if-ne v3, v0, :cond_7

    iget-wide v3, v1, Landroidx/media2/exoplayer/external/u$b;->c:J

    cmp-long v5, v3, p1

    if-gtz v5, :cond_7

    .line 1086
    :cond_6
    iget v1, p0, Landroidx/media2/exoplayer/external/u;->F:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/u;->F:I

    .line 1088
    iget-object v3, p0, Landroidx/media2/exoplayer/external/u;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 1089
    iget-object v1, p0, Landroidx/media2/exoplayer/external/u;->p:Ljava/util/ArrayList;

    iget v3, p0, Landroidx/media2/exoplayer/external/u;->F:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/u$b;

    goto :goto_1

    :cond_7
    :goto_2
    if-eqz v1, :cond_d

    .line 1093
    iget-object v3, v1, Landroidx/media2/exoplayer/external/u$b;->d:Ljava/lang/Object;

    if-eqz v3, :cond_d

    iget v3, v1, Landroidx/media2/exoplayer/external/u$b;->b:I

    if-ne v3, v0, :cond_d

    iget-wide v3, v1, Landroidx/media2/exoplayer/external/u$b;->c:J

    cmp-long v5, v3, p1

    if-lez v5, :cond_d

    iget-wide v3, v1, Landroidx/media2/exoplayer/external/u$b;->c:J

    cmp-long v5, v3, p3

    if-gtz v5, :cond_d

    .line 1099
    :try_start_0
    iget-object v3, v1, Landroidx/media2/exoplayer/external/u$b;->a:Landroidx/media2/exoplayer/external/af;

    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/u;->c(Landroidx/media2/exoplayer/external/af;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1101
    iget-object v3, v1, Landroidx/media2/exoplayer/external/u$b;->a:Landroidx/media2/exoplayer/external/af;

    .line 50222
    iget-boolean v3, v3, Landroidx/media2/exoplayer/external/af;->h:Z

    if-nez v3, :cond_9

    .line 1101
    iget-object v1, v1, Landroidx/media2/exoplayer/external/u$b;->a:Landroidx/media2/exoplayer/external/af;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/af;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    .line 1104
    :cond_8
    iget v1, p0, Landroidx/media2/exoplayer/external/u;->F:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/u;->F:I

    goto :goto_4

    .line 1102
    :cond_9
    :goto_3
    iget-object v1, p0, Landroidx/media2/exoplayer/external/u;->p:Ljava/util/ArrayList;

    iget v3, p0, Landroidx/media2/exoplayer/external/u;->F:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1108
    :goto_4
    iget v1, p0, Landroidx/media2/exoplayer/external/u;->F:I

    iget-object v3, p0, Landroidx/media2/exoplayer/external/u;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    .line 1109
    iget-object v1, p0, Landroidx/media2/exoplayer/external/u;->p:Ljava/util/ArrayList;

    iget v3, p0, Landroidx/media2/exoplayer/external/u;->F:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/u$b;

    goto :goto_2

    :cond_a
    move-object v1, v2

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 1101
    iget-object p2, v1, Landroidx/media2/exoplayer/external/u$b;->a:Landroidx/media2/exoplayer/external/af;

    .line 50223
    iget-boolean p2, p2, Landroidx/media2/exoplayer/external/af;->h:Z

    if-nez p2, :cond_c

    .line 1101
    iget-object p2, v1, Landroidx/media2/exoplayer/external/u$b;->a:Landroidx/media2/exoplayer/external/af;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/af;->b()Z

    move-result p2

    if-eqz p2, :cond_b

    goto :goto_5

    .line 1104
    :cond_b
    iget p2, p0, Landroidx/media2/exoplayer/external/u;->F:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Landroidx/media2/exoplayer/external/u;->F:I

    goto :goto_6

    .line 1102
    :cond_c
    :goto_5
    iget-object p2, p0, Landroidx/media2/exoplayer/external/u;->p:Ljava/util/ArrayList;

    iget p3, p0, Landroidx/media2/exoplayer/external/u;->F:I

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1104
    :goto_6
    throw p1

    :cond_d
    :goto_7
    return-void
.end method

.method static b(Landroidx/media2/exoplayer/external/af;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1004
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/af;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 50216
    :try_start_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/af;->a:Landroidx/media2/exoplayer/external/af$b;

    .line 50217
    iget v2, p0, Landroidx/media2/exoplayer/external/af;->c:I

    .line 50218
    iget-object v3, p0, Landroidx/media2/exoplayer/external/af;->d:Ljava/lang/Object;

    .line 1008
    invoke-interface {v1, v2, v3}, Landroidx/media2/exoplayer/external/af$b;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1010
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/af;->a(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/af;->a(Z)V

    throw v1
.end method

.method private b(Landroidx/media2/exoplayer/external/ag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 1121
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->n:Landroidx/media2/exoplayer/external/e;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/e;->b(Landroidx/media2/exoplayer/external/ag;)V

    .line 1122
    invoke-static {p1}, Landroidx/media2/exoplayer/external/u;->a(Landroidx/media2/exoplayer/external/ag;)V

    .line 1123
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/ag;->m()V

    return-void
.end method

.method private b(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 495
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 49197
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    .line 495
    iget-object v0, v0, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/aa;->a:Landroidx/media2/exoplayer/external/source/t$a;

    .line 496
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/ac;->m:J

    const/4 v3, 0x1

    .line 497
    invoke-direct {p0, v2, v0, v1, v3}, Landroidx/media2/exoplayer/external/u;->a(Landroidx/media2/exoplayer/external/source/t$a;JZ)J

    move-result-wide v3

    .line 498
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/ac;->m:J

    cmp-long v5, v3, v0

    if-eqz v5, :cond_0

    .line 499
    iget-object v1, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-wide v5, v1, Landroidx/media2/exoplayer/external/ac;->d:J

    .line 504
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/u;->n()J

    move-result-wide v7

    .line 500
    invoke-virtual/range {v1 .. v8}, Landroidx/media2/exoplayer/external/ac;->a(Landroidx/media2/exoplayer/external/source/t$a;JJJ)Landroidx/media2/exoplayer/external/ac;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    if-eqz p1, :cond_0

    .line 506
    iget-object p1, p0, Landroidx/media2/exoplayer/external/u;->o:Landroidx/media2/exoplayer/external/u$c;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/u$c;->b(I)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 5

    .line 429
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->o:Landroidx/media2/exoplayer/external/u$c;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/u$c;->a(Landroidx/media2/exoplayer/external/ac;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media2/exoplayer/external/u;->o:Landroidx/media2/exoplayer/external/u$c;

    .line 46958
    iget v2, v2, Landroidx/media2/exoplayer/external/u$c;->a:I

    .line 434
    iget-object v3, p0, Landroidx/media2/exoplayer/external/u;->o:Landroidx/media2/exoplayer/external/u$c;

    .line 47958
    iget-boolean v3, v3, Landroidx/media2/exoplayer/external/u$c;->b:Z

    if-eqz v3, :cond_0

    .line 435
    iget-object v3, p0, Landroidx/media2/exoplayer/external/u;->o:Landroidx/media2/exoplayer/external/u$c;

    .line 48958
    iget v3, v3, Landroidx/media2/exoplayer/external/u$c;->c:I

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    .line 436
    :goto_0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    .line 431
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 439
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->o:Landroidx/media2/exoplayer/external/u$c;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/u$c;->b(Landroidx/media2/exoplayer/external/ac;)V

    :cond_1
    return-void
.end method

.method private c(Landroidx/media2/exoplayer/external/af;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 50215
    iget-object v0, p1, Landroidx/media2/exoplayer/external/af;->e:Landroid/os/Handler;

    .line 978
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/u;->a:Landroidx/media2/exoplayer/external/util/i;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/util/i;->a()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 979
    invoke-static {p1}, Landroidx/media2/exoplayer/external/u;->b(Landroidx/media2/exoplayer/external/af;)V

    .line 980
    iget-object p1, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget p1, p1, Landroidx/media2/exoplayer/external/ac;->e:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget p1, p1, Landroidx/media2/exoplayer/external/ac;->e:I

    if-ne p1, v1, :cond_2

    .line 983
    :cond_0
    iget-object p1, p0, Landroidx/media2/exoplayer/external/u;->a:Landroidx/media2/exoplayer/external/util/i;

    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/util/i;->b(I)Z

    return-void

    .line 986
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->a:Landroidx/media2/exoplayer/external/util/i;

    const/16 v1, 0x10

    invoke-interface {v0, v1, p1}, Landroidx/media2/exoplayer/external/util/i;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method private c(Z)V
    .locals 5

    .line 1835
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 50242
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ab;->f:Landroidx/media2/exoplayer/external/z;

    if-nez v0, :cond_0

    .line 1837
    iget-object v1, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/aa;->a:Landroidx/media2/exoplayer/external/source/t$a;

    .line 1838
    :goto_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/ac;->j:Landroidx/media2/exoplayer/external/source/t$a;

    .line 1839
    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/source/t$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 1841
    iget-object v3, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    invoke-virtual {v3, v1}, Landroidx/media2/exoplayer/external/ac;->a(Landroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/ac;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    .line 1843
    :cond_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    if-nez v0, :cond_2

    .line 1845
    iget-wide v3, v1, Landroidx/media2/exoplayer/external/ac;->m:J

    goto :goto_1

    .line 1846
    :cond_2
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/z;->c()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v1, Landroidx/media2/exoplayer/external/ac;->k:J

    .line 1847
    iget-object v1, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/u;->n()J

    move-result-wide v3

    iput-wide v3, v1, Landroidx/media2/exoplayer/external/ac;->l:J

    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    .line 1848
    iget-boolean p1, v0, Landroidx/media2/exoplayer/external/z;->d:Z

    if-eqz p1, :cond_4

    .line 50244
    iget-object p1, v0, Landroidx/media2/exoplayer/external/z;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    .line 1851
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/u;->a(Landroidx/media2/exoplayer/external/trackselection/h;)V

    :cond_4
    return-void
.end method

.method private d()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 512
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/u;->y:Z

    .line 513
    iget-object v1, p0, Landroidx/media2/exoplayer/external/u;->n:Landroidx/media2/exoplayer/external/e;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/e;->a()V

    .line 514
    iget-object v1, p0, Landroidx/media2/exoplayer/external/u;->v:[Landroidx/media2/exoplayer/external/ag;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 515
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/ag;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 520
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->n:Landroidx/media2/exoplayer/external/e;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/e;->b()V

    .line 521
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->v:[Landroidx/media2/exoplayer/external/ag;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 522
    invoke-static {v3}, Landroidx/media2/exoplayer/external/u;->a(Landroidx/media2/exoplayer/external/ag;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 527
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 50197
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    if-nez v0, :cond_0

    return-void

    .line 534
    :cond_0
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/z;->d:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_1

    .line 535
    iget-object v1, v0, Landroidx/media2/exoplayer/external/z;->a:Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/source/s;->c()J

    move-result-wide v4

    move-wide v8, v4

    goto :goto_0

    :cond_1
    move-wide v8, v2

    :goto_0
    cmp-long v1, v8, v2

    if-eqz v1, :cond_2

    .line 538
    invoke-direct {p0, v8, v9}, Landroidx/media2/exoplayer/external/u;->a(J)V

    .line 541
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/ac;->m:J

    cmp-long v2, v8, v0

    if-eqz v2, :cond_4

    .line 542
    iget-object v6, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-object v7, v6, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-wide v10, v0, Landroidx/media2/exoplayer/external/ac;->d:J

    .line 547
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/u;->n()J

    move-result-wide v12

    .line 543
    invoke-virtual/range {v6 .. v13}, Landroidx/media2/exoplayer/external/ac;->a(Landroidx/media2/exoplayer/external/source/t$a;JJJ)Landroidx/media2/exoplayer/external/ac;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    .line 548
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->o:Landroidx/media2/exoplayer/external/u$c;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/u$c;->b(I)V

    goto :goto_2

    .line 551
    :cond_2
    iget-object v1, p0, Landroidx/media2/exoplayer/external/u;->n:Landroidx/media2/exoplayer/external/e;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 50198
    iget-object v2, v2, Landroidx/media2/exoplayer/external/ab;->e:Landroidx/media2/exoplayer/external/z;

    if-eq v0, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 552
    :goto_1
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/e;->a(Z)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/u;->E:J

    .line 50200
    iget-wide v3, v0, Landroidx/media2/exoplayer/external/z;->j:J

    sub-long/2addr v1, v3

    .line 555
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-wide v3, v0, Landroidx/media2/exoplayer/external/ac;->m:J

    invoke-direct {p0, v3, v4, v1, v2}, Landroidx/media2/exoplayer/external/u;->b(JJ)V

    .line 556
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iput-wide v1, v0, Landroidx/media2/exoplayer/external/ac;->m:J

    .line 560
    :cond_4
    :goto_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 50201
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ab;->f:Landroidx/media2/exoplayer/external/z;

    .line 561
    iget-object v1, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/z;->c()J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/media2/exoplayer/external/ac;->k:J

    .line 562
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/u;->n()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media2/exoplayer/external/ac;->l:J

    return-void
.end method

.method private g()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    .line 859
    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/u;->a(ZZZZZ)V

    .line 865
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->g:Landroidx/media2/exoplayer/external/y;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/y;->c()V

    const/4 v0, 0x1

    .line 866
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/u;->a(I)V

    .line 867
    iget-object v1, p0, Landroidx/media2/exoplayer/external/u;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 868
    monitor-enter p0

    .line 869
    :try_start_0
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/u;->w:Z

    .line 870
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 871
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private h()V
    .locals 2

    .line 1226
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 50224
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    :goto_0
    if-eqz v0, :cond_0

    .line 50225
    iget-object v1, v0, Landroidx/media2/exoplayer/external/z;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    .line 1228
    iget-object v1, v1, Landroidx/media2/exoplayer/external/trackselection/h;->c:Landroidx/media2/exoplayer/external/trackselection/f;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/trackselection/f;->a()[Landroidx/media2/exoplayer/external/trackselection/e;

    .line 50226
    iget-object v0, v0, Landroidx/media2/exoplayer/external/z;->g:Landroidx/media2/exoplayer/external/z;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private i()Z
    .locals 5

    .line 1260
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 50227
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    .line 1261
    iget-object v1, v0, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/aa;->e:J

    .line 1262
    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/z;->d:Z

    if-eqz v0, :cond_1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-wide v3, v0, Landroidx/media2/exoplayer/external/ac;->m:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private j()V
    .locals 7

    const/4 v0, 0x4

    .line 1395
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/u;->a(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    .line 1397
    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/u;->a(ZZZZZ)V

    return-void
.end method

.method private k()Z
    .locals 6

    .line 1670
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 50229
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ab;->e:Landroidx/media2/exoplayer/external/z;

    .line 1671
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/z;->d:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 1674
    :goto_0
    iget-object v3, p0, Landroidx/media2/exoplayer/external/u;->c:[Landroidx/media2/exoplayer/external/ag;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 1675
    aget-object v3, v3, v1

    .line 1676
    iget-object v4, v0, Landroidx/media2/exoplayer/external/z;->c:[Landroidx/media2/exoplayer/external/source/al;

    aget-object v4, v4, v1

    .line 1677
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/ag;->f()Landroidx/media2/exoplayer/external/source/al;

    move-result-object v5

    if-ne v5, v4, :cond_2

    if-eqz v4, :cond_1

    .line 1678
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/ag;->g()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private l()V
    .locals 5

    .line 1687
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->c:[Landroidx/media2/exoplayer/external/ag;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1688
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/ag;->f()Landroidx/media2/exoplayer/external/source/al;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1689
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/ag;->i()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private m()V
    .locals 6

    .line 1737
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 50230
    iget-object v0, v0, Landroidx/media2/exoplayer/external/ab;->f:Landroidx/media2/exoplayer/external/z;

    .line 1738
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/z;->d()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 v0, 0x0

    .line 1740
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/u;->a(Z)V

    return-void

    .line 1744
    :cond_0
    invoke-direct {p0, v1, v2}, Landroidx/media2/exoplayer/external/u;->b(J)J

    move-result-wide v1

    .line 1745
    iget-object v3, p0, Landroidx/media2/exoplayer/external/u;->g:Landroidx/media2/exoplayer/external/y;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/u;->n:Landroidx/media2/exoplayer/external/e;

    .line 1747
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/e;->d()Landroidx/media2/exoplayer/external/ad;

    move-result-object v4

    iget v4, v4, Landroidx/media2/exoplayer/external/ad;->b:F

    .line 1746
    invoke-interface {v3, v1, v2, v4}, Landroidx/media2/exoplayer/external/y;->a(JF)Z

    move-result v1

    .line 1748
    invoke-direct {p0, v1}, Landroidx/media2/exoplayer/external/u;->a(Z)V

    if-eqz v1, :cond_1

    .line 1750
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/u;->E:J

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/z;->b(J)V

    :cond_1
    return-void
.end method

.method private n()J
    .locals 2

    .line 1858
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-wide v0, v0, Landroidx/media2/exoplayer/external/ac;->k:J

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/u;->b(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 252
    :try_start_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/u;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 253
    monitor-exit p0

    return-void

    .line 255
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->a:Landroidx/media2/exoplayer/external/util/i;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/util/i;->b(I)Z

    const/4 v0, 0x0

    .line 257
    :goto_0
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/u;->w:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    .line 259
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 266
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroidx/media2/exoplayer/external/ad;)V
    .locals 1

    const/4 v0, 0x0

    .line 306
    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/u;->a(Landroidx/media2/exoplayer/external/ad;Z)V

    return-void
.end method

.method public final declared-synchronized a(Landroidx/media2/exoplayer/external/af;)V
    .locals 2

    monitor-enter p0

    .line 220
    :try_start_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/u;->w:Z

    if-eqz v0, :cond_0

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    .line 221
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 222
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/af;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 225
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->a:Landroidx/media2/exoplayer/external/util/i;

    const/16 v1, 0xf

    invoke-interface {v0, v1, p1}, Landroidx/media2/exoplayer/external/util/i;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic a(Landroidx/media2/exoplayer/external/source/am;)V
    .locals 2

    .line 58
    check-cast p1, Landroidx/media2/exoplayer/external/source/s;

    .line 50248
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->a:Landroidx/media2/exoplayer/external/util/i;

    const/16 v1, 0xa

    invoke-interface {v0, v1, p1}, Landroidx/media2/exoplayer/external/util/i;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/s;)V
    .locals 2

    .line 287
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->a:Landroidx/media2/exoplayer/external/util/i;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Landroidx/media2/exoplayer/external/util/i;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/t;Landroidx/media2/exoplayer/external/al;)V
    .locals 2

    .line 278
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->a:Landroidx/media2/exoplayer/external/util/i;

    new-instance v1, Landroidx/media2/exoplayer/external/u$a;

    invoke-direct {v1, p1, p2}, Landroidx/media2/exoplayer/external/u$a;-><init>(Landroidx/media2/exoplayer/external/source/t;Landroidx/media2/exoplayer/external/al;)V

    const/16 p1, 0x8

    .line 279
    invoke-interface {v0, p1, v1}, Landroidx/media2/exoplayer/external/util/i;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 280
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 299
    iget-object v0, p0, Landroidx/media2/exoplayer/external/u;->a:Landroidx/media2/exoplayer/external/util/i;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/util/i;->b(I)Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 45

    move-object/from16 v7, p0

    move-object/from16 v1, p1

    const-string v8, "ExoPlayerImplInternal"

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 314
    :try_start_0
    iget v2, v1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_10

    const/4 v6, 0x3

    const/4 v11, 0x4

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    return v1

    .line 365
    :pswitch_0
    :try_start_1
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroidx/media2/exoplayer/external/ad;

    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 41724
    :goto_0
    iget-object v3, v7, Landroidx/media2/exoplayer/external/u;->i:Landroid/os/Handler;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 41725
    :goto_1
    invoke-virtual {v3, v9, v1, v10, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 41727
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 41728
    iget v1, v2, Landroidx/media2/exoplayer/external/ad;->b:F

    .line 42213
    iget-object v3, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 43197
    iget-object v3, v3, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    :goto_2
    if-eqz v3, :cond_4

    .line 43350
    iget-object v4, v3, Landroidx/media2/exoplayer/external/z;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    .line 42215
    iget-object v4, v4, Landroidx/media2/exoplayer/external/trackselection/h;->c:Landroidx/media2/exoplayer/external/trackselection/f;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/trackselection/f;->a()[Landroidx/media2/exoplayer/external/trackselection/e;

    move-result-object v4

    .line 42216
    array-length v5, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_3

    aget-object v11, v4, v6

    if-eqz v11, :cond_2

    .line 42218
    invoke-interface {v11, v1}, Landroidx/media2/exoplayer/external/trackselection/e;->a(F)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 44340
    :cond_3
    iget-object v3, v3, Landroidx/media2/exoplayer/external/z;->g:Landroidx/media2/exoplayer/external/z;

    goto :goto_2

    .line 41729
    :cond_4
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->c:[Landroidx/media2/exoplayer/external/ag;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_1f

    aget-object v5, v1, v4

    if-eqz v5, :cond_5

    .line 41731
    iget v6, v2, Landroidx/media2/exoplayer/external/ad;->b:F

    invoke-interface {v5, v6}, Landroidx/media2/exoplayer/external/ag;->a(F)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 372
    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroidx/media2/exoplayer/external/af;

    .line 46163
    iget-object v2, v1, Landroidx/media2/exoplayer/external/af;->e:Landroid/os/Handler;

    .line 45992
    new-instance v3, Landroidx/media2/exoplayer/external/v;

    invoke-direct {v3, v7, v1}, Landroidx/media2/exoplayer/external/v;-><init>(Landroidx/media2/exoplayer/external/u;Landroidx/media2/exoplayer/external/af;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_11

    .line 369
    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroidx/media2/exoplayer/external/af;

    .line 45171
    iget-wide v2, v1, Landroidx/media2/exoplayer/external/af;->g:J

    cmp-long v4, v2, v12

    if-nez v4, :cond_6

    .line 44961
    invoke-direct {v7, v1}, Landroidx/media2/exoplayer/external/u;->c(Landroidx/media2/exoplayer/external/af;)V

    goto/16 :goto_11

    .line 44962
    :cond_6
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->u:Landroidx/media2/exoplayer/external/source/t;

    if-eqz v2, :cond_9

    iget v2, v7, Landroidx/media2/exoplayer/external/u;->C:I

    if-lez v2, :cond_7

    goto :goto_5

    .line 44966
    :cond_7
    new-instance v2, Landroidx/media2/exoplayer/external/u$b;

    invoke-direct {v2, v1}, Landroidx/media2/exoplayer/external/u$b;-><init>(Landroidx/media2/exoplayer/external/af;)V

    .line 44967
    invoke-direct {v7, v2}, Landroidx/media2/exoplayer/external/u;->a(Landroidx/media2/exoplayer/external/u$b;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 44968
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44970
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->p:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto/16 :goto_11

    .line 44972
    :cond_8
    invoke-virtual {v1, v10}, Landroidx/media2/exoplayer/external/af;->a(Z)V

    goto/16 :goto_11

    .line 44964
    :cond_9
    :goto_5
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->p:Ljava/util/ArrayList;

    new-instance v3, Landroidx/media2/exoplayer/external/u$b;

    invoke-direct {v3, v1}, Landroidx/media2/exoplayer/external/u$b;-><init>(Landroidx/media2/exoplayer/external/af;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 343
    :pswitch_3
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    :goto_6
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7, v2, v1}, Landroidx/media2/exoplayer/external/u;->a(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_11

    .line 328
    :pswitch_4
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    .line 3485
    :goto_7
    iput-boolean v1, v7, Landroidx/media2/exoplayer/external/u;->A:Z

    .line 3486
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 4092
    iput-boolean v1, v2, Landroidx/media2/exoplayer/external/ab;->c:Z

    .line 4093
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/ab;->b()Z

    move-result v1

    if-nez v1, :cond_c

    .line 3487
    invoke-direct {v7, v9}, Landroidx/media2/exoplayer/external/u;->b(Z)V

    .line 3489
    :cond_c
    invoke-direct {v7, v10}, Landroidx/media2/exoplayer/external/u;->c(Z)V

    goto/16 :goto_11

    .line 325
    :pswitch_5
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 2476
    iput v1, v7, Landroidx/media2/exoplayer/external/u;->z:I

    .line 2477
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 3083
    iput v1, v2, Landroidx/media2/exoplayer/external/ab;->b:I

    .line 3084
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/ab;->b()Z

    move-result v1

    if-nez v1, :cond_d

    .line 2478
    invoke-direct {v7, v9}, Landroidx/media2/exoplayer/external/u;->b(Z)V

    .line 2480
    :cond_d
    invoke-direct {v7, v10}, Landroidx/media2/exoplayer/external/u;->c(Z)V

    goto/16 :goto_11

    .line 37127
    :pswitch_6
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->n:Landroidx/media2/exoplayer/external/e;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/e;->d()Landroidx/media2/exoplayer/external/ad;

    move-result-object v1

    iget v1, v1, Landroidx/media2/exoplayer/external/ad;->b:F

    .line 37129
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 38197
    iget-object v2, v2, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    .line 37130
    iget-object v3, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 38203
    iget-object v3, v3, Landroidx/media2/exoplayer/external/ab;->e:Landroidx/media2/exoplayer/external/z;

    const/4 v4, 0x1

    :goto_8
    if-eqz v2, :cond_1f

    .line 37134
    iget-boolean v5, v2, Landroidx/media2/exoplayer/external/z;->d:Z

    if-nez v5, :cond_e

    goto/16 :goto_11

    .line 37138
    :cond_e
    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/z;->a(F)Landroidx/media2/exoplayer/external/trackselection/h;

    move-result-object v5

    .line 38350
    iget-object v6, v2, Landroidx/media2/exoplayer/external/z;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    if-eqz v6, :cond_12

    .line 39081
    iget-object v12, v6, Landroidx/media2/exoplayer/external/trackselection/h;->c:Landroidx/media2/exoplayer/external/trackselection/f;

    iget v12, v12, Landroidx/media2/exoplayer/external/trackselection/f;->a:I

    iget-object v13, v5, Landroidx/media2/exoplayer/external/trackselection/h;->c:Landroidx/media2/exoplayer/external/trackselection/f;

    iget v13, v13, Landroidx/media2/exoplayer/external/trackselection/f;->a:I

    if-eq v12, v13, :cond_f

    goto :goto_a

    :cond_f
    const/4 v12, 0x0

    .line 39084
    :goto_9
    iget-object v13, v5, Landroidx/media2/exoplayer/external/trackselection/h;->c:Landroidx/media2/exoplayer/external/trackselection/f;

    iget v13, v13, Landroidx/media2/exoplayer/external/trackselection/f;->a:I

    if-ge v12, v13, :cond_11

    .line 39085
    invoke-virtual {v5, v6, v12}, Landroidx/media2/exoplayer/external/trackselection/h;->a(Landroidx/media2/exoplayer/external/trackselection/h;I)Z

    move-result v13

    if-nez v13, :cond_10

    goto :goto_a

    :cond_10
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_11
    const/4 v6, 0x1

    goto :goto_b

    :cond_12
    :goto_a
    const/4 v6, 0x0

    :goto_b
    if-eqz v6, :cond_14

    if-ne v2, v3, :cond_13

    const/4 v4, 0x0

    .line 39340
    :cond_13
    iget-object v2, v2, Landroidx/media2/exoplayer/external/z;->g:Landroidx/media2/exoplayer/external/z;

    goto :goto_8

    :cond_14
    if-eqz v4, :cond_1b

    .line 37152
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 40197
    iget-object v1, v1, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    .line 37153
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/ab;->a(Landroidx/media2/exoplayer/external/z;)Z

    move-result v19

    .line 37155
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->c:[Landroidx/media2/exoplayer/external/ag;

    array-length v2, v2

    new-array v2, v2, [Z

    .line 37156
    iget-object v3, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-wide v3, v3, Landroidx/media2/exoplayer/external/ac;->m:J

    move-object v15, v1

    move-object/from16 v16, v5

    move-wide/from16 v17, v3

    move-object/from16 v20, v2

    .line 37157
    invoke-virtual/range {v15 .. v20}, Landroidx/media2/exoplayer/external/z;->a(Landroidx/media2/exoplayer/external/trackselection/h;JZ[Z)J

    move-result-wide v3

    .line 37159
    iget-object v5, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget v5, v5, Landroidx/media2/exoplayer/external/ac;->e:I

    if-eq v5, v11, :cond_15

    iget-object v5, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-wide v5, v5, Landroidx/media2/exoplayer/external/ac;->m:J

    cmp-long v12, v3, v5

    if-eqz v12, :cond_15

    .line 37161
    iget-object v5, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-object v6, v5, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    iget-object v12, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-wide v12, v12, Landroidx/media2/exoplayer/external/ac;->d:J

    .line 37166
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->n()J

    move-result-wide v26

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-wide/from16 v22, v3

    move-wide/from16 v24, v12

    .line 37162
    invoke-virtual/range {v20 .. v27}, Landroidx/media2/exoplayer/external/ac;->a(Landroidx/media2/exoplayer/external/source/t$a;JJJ)Landroidx/media2/exoplayer/external/ac;

    move-result-object v5

    iput-object v5, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    .line 37167
    iget-object v5, v7, Landroidx/media2/exoplayer/external/u;->o:Landroidx/media2/exoplayer/external/u$c;

    invoke-virtual {v5, v11}, Landroidx/media2/exoplayer/external/u$c;->b(I)V

    .line 37168
    invoke-direct {v7, v3, v4}, Landroidx/media2/exoplayer/external/u;->a(J)V

    .line 37172
    :cond_15
    iget-object v3, v7, Landroidx/media2/exoplayer/external/u;->c:[Landroidx/media2/exoplayer/external/ag;

    array-length v3, v3

    new-array v3, v3, [Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 37173
    :goto_c
    iget-object v6, v7, Landroidx/media2/exoplayer/external/u;->c:[Landroidx/media2/exoplayer/external/ag;

    array-length v12, v6

    if-ge v4, v12, :cond_1a

    .line 37174
    aget-object v6, v6, v4

    .line 37175
    invoke-interface {v6}, Landroidx/media2/exoplayer/external/ag;->i_()I

    move-result v12

    if-eqz v12, :cond_16

    const/4 v12, 0x1

    goto :goto_d

    :cond_16
    const/4 v12, 0x0

    :goto_d
    aput-boolean v12, v3, v4

    .line 37176
    iget-object v12, v1, Landroidx/media2/exoplayer/external/z;->c:[Landroidx/media2/exoplayer/external/source/al;

    aget-object v12, v12, v4

    if-eqz v12, :cond_17

    add-int/lit8 v5, v5, 0x1

    .line 37180
    :cond_17
    aget-boolean v13, v3, v4

    if-eqz v13, :cond_19

    .line 37181
    invoke-interface {v6}, Landroidx/media2/exoplayer/external/ag;->f()Landroidx/media2/exoplayer/external/source/al;

    move-result-object v13

    if-eq v12, v13, :cond_18

    .line 37183
    invoke-direct {v7, v6}, Landroidx/media2/exoplayer/external/u;->b(Landroidx/media2/exoplayer/external/ag;)V

    goto :goto_e

    .line 37184
    :cond_18
    aget-boolean v12, v2, v4

    if-eqz v12, :cond_19

    .line 37186
    iget-wide v12, v7, Landroidx/media2/exoplayer/external/u;->E:J

    invoke-interface {v6, v12, v13}, Landroidx/media2/exoplayer/external/ag;->a(J)V

    :cond_19
    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 37190
    :cond_1a
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    .line 40345
    iget-object v4, v1, Landroidx/media2/exoplayer/external/z;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 40350
    iget-object v1, v1, Landroidx/media2/exoplayer/external/z;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    .line 37191
    invoke-virtual {v2, v4, v1}, Landroidx/media2/exoplayer/external/ac;->a(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/h;)Landroidx/media2/exoplayer/external/ac;

    move-result-object v1

    iput-object v1, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    .line 37193
    invoke-direct {v7, v3, v5}, Landroidx/media2/exoplayer/external/u;->a([ZI)V

    goto :goto_f

    .line 37196
    :cond_1b
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/ab;->a(Landroidx/media2/exoplayer/external/z;)Z

    .line 37197
    iget-boolean v1, v2, Landroidx/media2/exoplayer/external/z;->d:Z

    if-eqz v1, :cond_1c

    .line 37198
    iget-object v1, v2, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-wide v3, v1, Landroidx/media2/exoplayer/external/aa;->b:J

    iget-wide v12, v7, Landroidx/media2/exoplayer/external/u;->E:J

    .line 41127
    iget-wide v14, v2, Landroidx/media2/exoplayer/external/z;->j:J

    sub-long/2addr v12, v14

    .line 37199
    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 37201
    invoke-virtual {v2, v5, v3, v4}, Landroidx/media2/exoplayer/external/z;->a(Landroidx/media2/exoplayer/external/trackselection/h;J)J

    .line 37204
    :cond_1c
    :goto_f
    invoke-direct {v7, v9}, Landroidx/media2/exoplayer/external/u;->c(Z)V

    .line 37205
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget v1, v1, Landroidx/media2/exoplayer/external/ac;->e:I

    if-eq v1, v11, :cond_1f

    .line 37206
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->m()V

    .line 37207
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->f()V

    .line 37208
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->a:Landroidx/media2/exoplayer/external/util/i;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/util/i;->b(I)Z

    goto/16 :goto_11

    .line 359
    :pswitch_7
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroidx/media2/exoplayer/external/source/s;

    .line 36713
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/ab;->a(Landroidx/media2/exoplayer/external/source/s;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 36717
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    iget-wide v2, v7, Landroidx/media2/exoplayer/external/u;->E:J

    invoke-virtual {v1, v2, v3}, Landroidx/media2/exoplayer/external/ab;->a(J)V

    .line 36718
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->m()V

    goto/16 :goto_11

    .line 353
    :pswitch_8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroidx/media2/exoplayer/external/source/s;

    .line 24695
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/ab;->a(Landroidx/media2/exoplayer/external/source/s;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 24699
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 25188
    iget-object v1, v1, Landroidx/media2/exoplayer/external/ab;->f:Landroidx/media2/exoplayer/external/z;

    .line 24700
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->n:Landroidx/media2/exoplayer/external/e;

    .line 24701
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/e;->d()Landroidx/media2/exoplayer/external/ad;

    move-result-object v2

    iget v2, v2, Landroidx/media2/exoplayer/external/ad;->b:F

    .line 26181
    iput-boolean v9, v1, Landroidx/media2/exoplayer/external/z;->d:Z

    .line 26182
    iget-object v4, v1, Landroidx/media2/exoplayer/external/z;->a:Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v4}, Landroidx/media2/exoplayer/external/source/s;->b()Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    move-result-object v4

    iput-object v4, v1, Landroidx/media2/exoplayer/external/z;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 26183
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/z;->a(F)Landroidx/media2/exoplayer/external/trackselection/h;

    move-result-object v2

    .line 26184
    iget-object v4, v1, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-wide v4, v4, Landroidx/media2/exoplayer/external/aa;->b:J

    .line 26185
    invoke-virtual {v1, v2, v4, v5}, Landroidx/media2/exoplayer/external/z;->a(Landroidx/media2/exoplayer/external/trackselection/h;J)J

    move-result-wide v13

    .line 26187
    iget-wide v4, v1, Landroidx/media2/exoplayer/external/z;->j:J

    iget-object v2, v1, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-wide v11, v2, Landroidx/media2/exoplayer/external/aa;->b:J

    sub-long/2addr v11, v13

    add-long/2addr v4, v11

    iput-wide v4, v1, Landroidx/media2/exoplayer/external/z;->j:J

    .line 26188
    iget-object v2, v1, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    .line 27090
    iget-wide v4, v2, Landroidx/media2/exoplayer/external/aa;->b:J

    cmp-long v6, v13, v4

    if-nez v6, :cond_1d

    goto :goto_10

    .line 27092
    :cond_1d
    new-instance v4, Landroidx/media2/exoplayer/external/aa;

    iget-object v12, v2, Landroidx/media2/exoplayer/external/aa;->a:Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide v5, v2, Landroidx/media2/exoplayer/external/aa;->c:J

    iget-wide v9, v2, Landroidx/media2/exoplayer/external/aa;->d:J

    move-object/from16 p1, v4

    iget-wide v3, v2, Landroidx/media2/exoplayer/external/aa;->e:J

    iget-boolean v15, v2, Landroidx/media2/exoplayer/external/aa;->f:Z

    iget-boolean v2, v2, Landroidx/media2/exoplayer/external/aa;->g:Z

    move-object/from16 v11, p1

    move/from16 v21, v15

    move-wide v15, v5

    move-wide/from16 v17, v9

    move-wide/from16 v19, v3

    move/from16 v22, v2

    invoke-direct/range {v11 .. v22}, Landroidx/media2/exoplayer/external/aa;-><init>(Landroidx/media2/exoplayer/external/source/t$a;JJJJZZ)V

    move-object/from16 v2, p1

    .line 26188
    :goto_10
    iput-object v2, v1, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    .line 27350
    iget-object v2, v1, Landroidx/media2/exoplayer/external/z;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    .line 24702
    invoke-direct {v7, v2}, Landroidx/media2/exoplayer/external/u;->a(Landroidx/media2/exoplayer/external/trackselection/h;)V

    .line 24704
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 28197
    iget-object v2, v2, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    if-ne v1, v2, :cond_1e

    .line 24706
    iget-object v1, v1, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/aa;->b:J

    invoke-direct {v7, v1, v2}, Landroidx/media2/exoplayer/external/u;->a(J)V

    const/4 v1, 0x0

    .line 24707
    invoke-direct {v7, v1}, Landroidx/media2/exoplayer/external/u;->a(Landroidx/media2/exoplayer/external/z;)V

    .line 24709
    :cond_1e
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->m()V
    :try_end_1
    .catch Landroidx/media2/exoplayer/external/ExoPlaybackException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1f
    :goto_11
    move-object/from16 v21, v8

    goto/16 :goto_58

    :catch_0
    move-exception v0

    goto :goto_12

    :catch_1
    move-exception v0

    :goto_12
    move-object v1, v0

    move-object/from16 v21, v8

    goto/16 :goto_5f

    .line 356
    :pswitch_9
    :try_start_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroidx/media2/exoplayer/external/u$a;

    .line 28282
    iget-object v2, v1, Landroidx/media2/exoplayer/external/u$a;->a:Landroidx/media2/exoplayer/external/source/t;

    iget-object v3, v7, Landroidx/media2/exoplayer/external/u;->u:Landroidx/media2/exoplayer/external/source/t;

    if-ne v2, v3, :cond_1f

    .line 28286
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->o:Landroidx/media2/exoplayer/external/u$c;

    iget v3, v7, Landroidx/media2/exoplayer/external/u;->C:I

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/u$c;->a(I)V

    const/4 v2, 0x0

    .line 28287
    iput v2, v7, Landroidx/media2/exoplayer/external/u;->C:I

    .line 28289
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/ac;->a:Landroidx/media2/exoplayer/external/al;

    .line 28290
    iget-object v1, v1, Landroidx/media2/exoplayer/external/u$a;->b:Landroidx/media2/exoplayer/external/al;

    .line 28291
    iget-object v3, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 29075
    iput-object v1, v3, Landroidx/media2/exoplayer/external/ab;->a:Landroidx/media2/exoplayer/external/al;

    .line 28292
    iget-object v3, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    .line 29227
    new-instance v6, Landroidx/media2/exoplayer/external/ac;

    iget-object v9, v3, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide v10, v3, Landroidx/media2/exoplayer/external/ac;->c:J

    iget-wide v14, v3, Landroidx/media2/exoplayer/external/ac;->d:J

    iget v4, v3, Landroidx/media2/exoplayer/external/ac;->e:I

    iget-object v5, v3, Landroidx/media2/exoplayer/external/ac;->f:Landroidx/media2/exoplayer/external/ExoPlaybackException;

    iget-boolean v12, v3, Landroidx/media2/exoplayer/external/ac;->g:Z

    iget-object v13, v3, Landroidx/media2/exoplayer/external/ac;->h:Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    :try_end_2
    .catch Landroidx/media2/exoplayer/external/ExoPlaybackException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_10

    move-object/from16 v21, v8

    :try_start_3
    iget-object v8, v3, Landroidx/media2/exoplayer/external/ac;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    move-object/from16 v16, v2

    iget-object v2, v3, Landroidx/media2/exoplayer/external/ac;->j:Landroidx/media2/exoplayer/external/source/t$a;
    :try_end_3
    .catch Landroidx/media2/exoplayer/external/ExoPlaybackException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_c

    move-object/from16 v22, v8

    :try_start_4
    iget-wide v7, v3, Landroidx/media2/exoplayer/external/ac;->k:J

    move-wide/from16 v39, v7

    iget-wide v7, v3, Landroidx/media2/exoplayer/external/ac;->l:J

    move-wide/from16 v41, v7

    iget-wide v7, v3, Landroidx/media2/exoplayer/external/ac;->m:J

    move-object/from16 v26, v6

    move-object/from16 v27, v1

    move-object/from16 v28, v9

    move-wide/from16 v29, v10

    move-wide/from16 v31, v14

    move/from16 v33, v4

    move-object/from16 v34, v5

    move/from16 v35, v12

    move-object/from16 v36, v13

    move-object/from16 v37, v22

    move-object/from16 v38, v2

    move-wide/from16 v43, v7

    invoke-direct/range {v26 .. v44}, Landroidx/media2/exoplayer/external/ac;-><init>(Landroidx/media2/exoplayer/external/al;Landroidx/media2/exoplayer/external/source/t$a;JJILandroidx/media2/exoplayer/external/ExoPlaybackException;ZLandroidx/media2/exoplayer/external/source/TrackGroupArray;Landroidx/media2/exoplayer/external/trackselection/h;Landroidx/media2/exoplayer/external/source/t$a;JJJ)V
    :try_end_4
    .catch Landroidx/media2/exoplayer/external/ExoPlaybackException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_6

    move-object/from16 v7, p0

    .line 28292
    :try_start_5
    iput-object v6, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    .line 30015
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_13
    if-ltz v2, :cond_21

    .line 30016
    iget-object v3, v7, Landroidx/media2/exoplayer/external/u;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/u$b;

    invoke-direct {v7, v3}, Landroidx/media2/exoplayer/external/u;->a(Landroidx/media2/exoplayer/external/u$b;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 30018
    iget-object v3, v7, Landroidx/media2/exoplayer/external/u;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/u$b;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/u$b;->a:Landroidx/media2/exoplayer/external/af;
    :try_end_5
    .catch Landroidx/media2/exoplayer/external/ExoPlaybackException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_c

    const/4 v4, 0x0

    :try_start_6
    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/af;->a(Z)V
    :try_end_6
    .catch Landroidx/media2/exoplayer/external/ExoPlaybackException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_c

    .line 30019
    :try_start_7
    iget-object v3, v7, Landroidx/media2/exoplayer/external/u;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_16

    :catch_2
    move-exception v0

    :goto_14
    move-object v1, v0

    move-object/from16 v3, v21

    goto/16 :goto_61

    :catch_3
    move-exception v0

    :goto_15
    move-object v1, v0

    move-object/from16 v3, v21

    goto/16 :goto_63

    :cond_20
    :goto_16
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 30023
    :cond_21
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->p:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 28295
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    .line 28297
    iget-object v3, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/t$a;->a()Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-wide v3, v3, Landroidx/media2/exoplayer/external/ac;->d:J

    goto :goto_17

    :cond_22
    iget-object v3, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-wide v3, v3, Landroidx/media2/exoplayer/external/ac;->m:J

    .line 28299
    :goto_17
    iget-object v5, v7, Landroidx/media2/exoplayer/external/u;->D:Landroidx/media2/exoplayer/external/u$d;

    if-eqz v5, :cond_24

    const/4 v1, 0x1

    .line 28302
    invoke-direct {v7, v5, v1}, Landroidx/media2/exoplayer/external/u;->a(Landroidx/media2/exoplayer/external/u$d;Z)Landroid/util/Pair;

    move-result-object v2

    const/4 v1, 0x0

    .line 28303
    iput-object v1, v7, Landroidx/media2/exoplayer/external/u;->D:Landroidx/media2/exoplayer/external/u$d;

    if-nez v2, :cond_23

    .line 28307
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->j()V

    goto/16 :goto_58

    .line 28310
    :cond_23
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 28311
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v2, v5, v6}, Landroidx/media2/exoplayer/external/ab;->a(Ljava/lang/Object;J)Landroidx/media2/exoplayer/external/source/t$a;

    move-result-object v2

    :goto_18
    move-object v9, v2

    move-wide v12, v5

    goto/16 :goto_19

    :cond_24
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v3, v5

    if-nez v8, :cond_26

    .line 28312
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/al;->a()Z

    move-result v5

    if-nez v5, :cond_26

    .line 28314
    iget-boolean v2, v7, Landroidx/media2/exoplayer/external/u;->A:Z

    .line 28316
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/al;->b(Z)I

    move-result v2

    .line 28315
    invoke-direct {v7, v1, v2}, Landroidx/media2/exoplayer/external/u;->a(Landroidx/media2/exoplayer/external/al;I)Landroid/util/Pair;

    move-result-object v1

    .line 28317
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v2, v5, v8, v9}, Landroidx/media2/exoplayer/external/ab;->a(Ljava/lang/Object;J)Landroidx/media2/exoplayer/external/source/t$a;

    move-result-object v2

    .line 28318
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/source/t$a;->a()Z

    move-result v5

    if-nez v5, :cond_25

    .line 28320
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_18

    :cond_25
    move-wide v5, v3

    goto :goto_18

    .line 28322
    :cond_26
    iget-object v5, v2, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_28

    .line 28325
    iget-object v2, v2, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    move-object/from16 v5, v16

    invoke-direct {v7, v2, v5, v1}, Landroidx/media2/exoplayer/external/u;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/al;Landroidx/media2/exoplayer/external/al;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_27

    .line 28328
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->j()V

    goto/16 :goto_58

    .line 28332
    :cond_27
    iget-object v5, v7, Landroidx/media2/exoplayer/external/u;->k:Landroidx/media2/exoplayer/external/al$a;

    .line 28334
    invoke-virtual {v1, v2, v5}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/al$a;)Landroidx/media2/exoplayer/external/al$a;

    move-result-object v2

    iget v2, v2, Landroidx/media2/exoplayer/external/al$a;->c:I

    .line 28333
    invoke-direct {v7, v1, v2}, Landroidx/media2/exoplayer/external/u;->a(Landroidx/media2/exoplayer/external/al;I)Landroid/util/Pair;

    move-result-object v1

    .line 28335
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 28336
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v1, v5, v6}, Landroidx/media2/exoplayer/external/ab;->a(Ljava/lang/Object;J)Landroidx/media2/exoplayer/external/source/t$a;

    move-result-object v2

    goto :goto_18

    .line 28337
    :cond_28
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/source/t$a;->a()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 28339
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/ab;->a(Ljava/lang/Object;J)Landroidx/media2/exoplayer/external/source/t$a;

    move-result-object v2

    :cond_29
    move-object v9, v2

    move-wide v12, v3

    .line 28342
    :goto_19
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    invoke-virtual {v1, v9}, Landroidx/media2/exoplayer/external/source/t$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    cmp-long v1, v3, v12

    if-nez v1, :cond_3c

    .line 28344
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    iget-wide v2, v7, Landroidx/media2/exoplayer/external/u;->E:J

    .line 31203
    iget-object v4, v1, Landroidx/media2/exoplayer/external/ab;->e:Landroidx/media2/exoplayer/external/z;

    const-wide/high16 v5, -0x8000000000000000L

    if-nez v4, :cond_2a

    const-wide/16 v17, 0x0

    goto :goto_1b

    .line 32127
    :cond_2a
    iget-wide v8, v4, Landroidx/media2/exoplayer/external/z;->j:J

    .line 30375
    iget-boolean v10, v4, Landroidx/media2/exoplayer/external/z;->d:Z

    if-eqz v10, :cond_2d

    const/4 v10, 0x0

    .line 30378
    :goto_1a
    iget-object v11, v7, Landroidx/media2/exoplayer/external/u;->c:[Landroidx/media2/exoplayer/external/ag;

    array-length v12, v11

    if-ge v10, v12, :cond_2d

    .line 30379
    aget-object v11, v11, v10

    invoke-interface {v11}, Landroidx/media2/exoplayer/external/ag;->i_()I

    move-result v11

    if-eqz v11, :cond_2c

    iget-object v11, v7, Landroidx/media2/exoplayer/external/u;->c:[Landroidx/media2/exoplayer/external/ag;

    aget-object v11, v11, v10

    .line 30380
    invoke-interface {v11}, Landroidx/media2/exoplayer/external/ag;->f()Landroidx/media2/exoplayer/external/source/al;

    move-result-object v11

    iget-object v12, v4, Landroidx/media2/exoplayer/external/z;->c:[Landroidx/media2/exoplayer/external/source/al;

    aget-object v12, v12, v10

    if-ne v11, v12, :cond_2c

    .line 30384
    iget-object v11, v7, Landroidx/media2/exoplayer/external/u;->c:[Landroidx/media2/exoplayer/external/ag;

    aget-object v11, v11, v10

    invoke-interface {v11}, Landroidx/media2/exoplayer/external/ag;->h()J

    move-result-wide v11

    cmp-long v13, v11, v5

    if-nez v13, :cond_2b

    move-wide/from16 v17, v5

    goto :goto_1b

    .line 30388
    :cond_2b
    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    :cond_2c
    add-int/lit8 v10, v10, 0x1

    goto :goto_1a

    :cond_2d
    move-wide/from16 v17, v8

    .line 32306
    :goto_1b
    iget-object v4, v1, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;
    :try_end_7
    .catch Landroidx/media2/exoplayer/external/ExoPlaybackException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_c

    const/4 v8, 0x0

    :goto_1c
    if-eqz v4, :cond_3a

    .line 32308
    :try_start_8
    iget-object v9, v4, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;
    :try_end_8
    .catch Landroidx/media2/exoplayer/external/ExoPlaybackException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_6

    if-nez v8, :cond_2e

    .line 32316
    :try_start_9
    invoke-virtual {v1, v9}, Landroidx/media2/exoplayer/external/ab;->a(Landroidx/media2/exoplayer/external/aa;)Landroidx/media2/exoplayer/external/aa;

    move-result-object v8
    :try_end_9
    .catch Landroidx/media2/exoplayer/external/ExoPlaybackException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_c

    goto :goto_1f

    .line 32318
    :cond_2e
    :try_start_a
    invoke-virtual {v1, v8, v2, v3}, Landroidx/media2/exoplayer/external/ab;->a(Landroidx/media2/exoplayer/external/z;J)Landroidx/media2/exoplayer/external/aa;

    move-result-object v10
    :try_end_a
    .catch Landroidx/media2/exoplayer/external/ExoPlaybackException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_6

    if-nez v10, :cond_30

    .line 32321
    :try_start_b
    invoke-virtual {v1, v8}, Landroidx/media2/exoplayer/external/ab;->a(Landroidx/media2/exoplayer/external/z;)Z

    move-result v1
    :try_end_b
    .catch Landroidx/media2/exoplayer/external/ExoPlaybackException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_c

    if-eqz v1, :cond_3a

    :cond_2f
    :goto_1d
    const/4 v1, 0x0

    goto/16 :goto_26

    .line 32471
    :cond_30
    :try_start_c
    iget-wide v11, v9, Landroidx/media2/exoplayer/external/aa;->b:J

    iget-wide v13, v10, Landroidx/media2/exoplayer/external/aa;->b:J
    :try_end_c
    .catch Landroidx/media2/exoplayer/external/ExoPlaybackException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_6

    cmp-long v15, v11, v13

    if-nez v15, :cond_31

    :try_start_d
    iget-object v11, v9, Landroidx/media2/exoplayer/external/aa;->a:Landroidx/media2/exoplayer/external/source/t$a;

    iget-object v12, v10, Landroidx/media2/exoplayer/external/aa;->a:Landroidx/media2/exoplayer/external/source/t$a;

    invoke-virtual {v11, v12}, Landroidx/media2/exoplayer/external/source/t$a;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_31

    const/4 v11, 0x1

    goto :goto_1e

    :cond_31
    const/4 v11, 0x0

    :goto_1e
    if-nez v11, :cond_32

    .line 32325
    invoke-virtual {v1, v8}, Landroidx/media2/exoplayer/external/ab;->a(Landroidx/media2/exoplayer/external/z;)Z

    move-result v1
    :try_end_d
    .catch Landroidx/media2/exoplayer/external/ExoPlaybackException; {:try_start_d .. :try_end_d} :catch_f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_c

    if-eqz v1, :cond_3a

    goto :goto_1d

    :cond_32
    move-object v8, v10

    .line 32330
    :goto_1f
    :try_start_e
    iget-wide v10, v9, Landroidx/media2/exoplayer/external/aa;->c:J

    .line 33107
    iget-wide v12, v8, Landroidx/media2/exoplayer/external/aa;->c:J

    cmp-long v14, v10, v12

    if-nez v14, :cond_33

    move-object/from16 v16, v1

    move-wide/from16 v39, v2

    move-object v12, v8

    goto :goto_20

    .line 33109
    :cond_33
    new-instance v12, Landroidx/media2/exoplayer/external/aa;

    iget-object v13, v8, Landroidx/media2/exoplayer/external/aa;->a:Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide v14, v8, Landroidx/media2/exoplayer/external/aa;->b:J

    iget-wide v5, v8, Landroidx/media2/exoplayer/external/aa;->d:J

    move-wide/from16 v39, v2

    iget-wide v2, v8, Landroidx/media2/exoplayer/external/aa;->e:J

    iget-boolean v7, v8, Landroidx/media2/exoplayer/external/aa;->f:Z

    move-object/from16 v16, v1

    iget-boolean v1, v8, Landroidx/media2/exoplayer/external/aa;->g:Z

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move-wide/from16 v27, v14

    move-wide/from16 v29, v10

    move-wide/from16 v31, v5

    move-wide/from16 v33, v2

    move/from16 v35, v7

    move/from16 v36, v1

    invoke-direct/range {v25 .. v36}, Landroidx/media2/exoplayer/external/aa;-><init>(Landroidx/media2/exoplayer/external/source/t$a;JJJJZZ)V

    .line 32330
    :goto_20
    iput-object v12, v4, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    .line 32332
    iget-wide v1, v9, Landroidx/media2/exoplayer/external/aa;->e:J

    iget-wide v5, v8, Landroidx/media2/exoplayer/external/aa;->e:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v9

    if-eqz v3, :cond_35

    cmp-long v3, v1, v5

    if-nez v3, :cond_34

    goto :goto_21

    :cond_34
    const/4 v1, 0x0

    goto :goto_22

    :cond_35
    :goto_21
    const/4 v1, 0x1

    :goto_22
    if-nez v1, :cond_39

    .line 32336
    iget-wide v1, v8, Landroidx/media2/exoplayer/external/aa;->e:J

    cmp-long v3, v1, v9

    if-nez v3, :cond_36

    const-wide v1, 0x7fffffffffffffffL

    :goto_23
    move-object/from16 v3, v16

    goto :goto_24

    .line 32338
    :cond_36
    iget-wide v1, v8, Landroidx/media2/exoplayer/external/aa;->e:J

    .line 34127
    iget-wide v5, v4, Landroidx/media2/exoplayer/external/z;->j:J

    add-long/2addr v1, v5

    goto :goto_23

    .line 32339
    :goto_24
    iget-object v5, v3, Landroidx/media2/exoplayer/external/ab;->e:Landroidx/media2/exoplayer/external/z;

    if-ne v4, v5, :cond_38

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v17, v5

    if-eqz v7, :cond_37

    cmp-long v5, v17, v1

    if-ltz v5, :cond_38

    :cond_37
    const/4 v1, 0x1

    goto :goto_25

    :cond_38
    const/4 v1, 0x0

    .line 32343
    :goto_25
    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/ab;->a(Landroidx/media2/exoplayer/external/z;)Z

    move-result v2

    if-nez v2, :cond_2f

    if-eqz v1, :cond_3a

    goto/16 :goto_1d

    :cond_39
    move-object/from16 v3, v16

    const-wide/high16 v5, -0x8000000000000000L

    .line 34340
    iget-object v1, v4, Landroidx/media2/exoplayer/external/z;->g:Landroidx/media2/exoplayer/external/z;
    :try_end_e
    .catch Landroidx/media2/exoplayer/external/ExoPlaybackException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_6

    move-object/from16 v7, p0

    move-object v8, v4

    move-object v4, v1

    move-object v1, v3

    move-wide/from16 v2, v39

    goto/16 :goto_1c

    :catch_4
    move-exception v0

    const/4 v4, 0x0

    move-object/from16 v7, p0

    goto/16 :goto_14

    :catch_5
    move-exception v0

    const/4 v4, 0x0

    move-object/from16 v7, p0

    goto/16 :goto_15

    :cond_3a
    const/4 v1, 0x1

    :goto_26
    if-nez v1, :cond_3b

    const/4 v1, 0x0

    move-object/from16 v7, p0

    .line 28345
    :try_start_f
    invoke-direct {v7, v1}, Landroidx/media2/exoplayer/external/u;->b(Z)V

    goto :goto_29

    :cond_3b
    move-object/from16 v7, p0

    goto :goto_29

    .line 28349
    :cond_3c
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 35197
    iget-object v1, v1, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    if-eqz v1, :cond_3e

    .line 35340
    :cond_3d
    :goto_27
    iget-object v2, v1, Landroidx/media2/exoplayer/external/z;->g:Landroidx/media2/exoplayer/external/z;

    if-eqz v2, :cond_3e

    .line 36340
    iget-object v1, v1, Landroidx/media2/exoplayer/external/z;->g:Landroidx/media2/exoplayer/external/z;

    .line 28354
    iget-object v2, v1, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/aa;->a:Landroidx/media2/exoplayer/external/source/t$a;

    invoke-virtual {v2, v9}, Landroidx/media2/exoplayer/external/source/t$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 28355
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    iget-object v3, v1, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/ab;->a(Landroidx/media2/exoplayer/external/aa;)Landroidx/media2/exoplayer/external/aa;

    move-result-object v2

    iput-object v2, v1, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    goto :goto_27

    .line 28360
    :cond_3e
    invoke-virtual {v9}, Landroidx/media2/exoplayer/external/source/t$a;->a()Z

    move-result v1

    if-eqz v1, :cond_3f

    const-wide/16 v4, 0x0

    goto :goto_28

    :cond_3f
    move-wide v4, v12

    .line 28361
    :goto_28
    invoke-direct {v7, v9, v4, v5}, Landroidx/media2/exoplayer/external/u;->a(Landroidx/media2/exoplayer/external/source/t$a;J)J

    move-result-wide v10

    .line 28362
    iget-object v8, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    .line 28364
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->n()J

    move-result-wide v14

    .line 28363
    invoke-virtual/range {v8 .. v15}, Landroidx/media2/exoplayer/external/ac;->a(Landroidx/media2/exoplayer/external/source/t$a;JJJ)Landroidx/media2/exoplayer/external/ac;

    move-result-object v1

    iput-object v1, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    :goto_29
    const/4 v1, 0x0

    .line 28366
    invoke-direct {v7, v1}, Landroidx/media2/exoplayer/external/u;->c(Z)V

    goto/16 :goto_58

    :catch_6
    move-exception v0

    goto :goto_2a

    :catch_7
    move-exception v0

    :goto_2a
    move-object/from16 v7, p0

    goto/16 :goto_5e

    :catch_8
    move-exception v0

    move-object/from16 v7, p0

    goto/16 :goto_59

    :catch_9
    move-exception v0

    move-object/from16 v7, p0

    goto/16 :goto_5b

    :catch_a
    move-exception v0

    move-object v1, v0

    move-object v3, v8

    goto/16 :goto_5a

    :catch_b
    move-exception v0

    move-object v1, v0

    move-object v3, v8

    goto/16 :goto_5c

    :pswitch_a
    move-object/from16 v21, v8

    .line 375
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->g()V

    const/4 v1, 0x1

    return v1

    :pswitch_b
    move-object/from16 v21, v8

    .line 347
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_40

    const/4 v1, 0x1

    goto :goto_2b

    :cond_40
    const/4 v1, 0x0

    :goto_2b
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v7, v3, v1, v2}, Landroidx/media2/exoplayer/external/u;->a(ZZZ)V

    goto/16 :goto_58

    :pswitch_c
    move-object/from16 v21, v8

    .line 340
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroidx/media2/exoplayer/external/aj;

    .line 23820
    iput-object v1, v7, Landroidx/media2/exoplayer/external/u;->s:Landroidx/media2/exoplayer/external/aj;

    goto/16 :goto_58

    :pswitch_d
    move-object/from16 v21, v8

    .line 337
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroidx/media2/exoplayer/external/ad;

    .line 23814
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->n:Landroidx/media2/exoplayer/external/e;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/e;->a(Landroidx/media2/exoplayer/external/ad;)V

    .line 23815
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->n:Landroidx/media2/exoplayer/external/e;

    .line 23816
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/e;->d()Landroidx/media2/exoplayer/external/ad;

    move-result-object v1

    const/4 v2, 0x1

    .line 23815
    invoke-direct {v7, v1, v2}, Landroidx/media2/exoplayer/external/u;->a(Landroidx/media2/exoplayer/external/ad;Z)V

    goto/16 :goto_58

    :pswitch_e
    move-object/from16 v21, v8

    .line 334
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroidx/media2/exoplayer/external/u$d;

    .line 22662
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->o:Landroidx/media2/exoplayer/external/u$c;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/u$c;->a(I)V

    .line 22669
    invoke-direct {v7, v1, v3}, Landroidx/media2/exoplayer/external/u;->a(Landroidx/media2/exoplayer/external/u$d;Z)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_41

    .line 22673
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-boolean v3, v7, Landroidx/media2/exoplayer/external/u;->A:Z

    iget-object v4, v7, Landroidx/media2/exoplayer/external/u;->j:Landroidx/media2/exoplayer/external/al$b;

    iget-object v5, v7, Landroidx/media2/exoplayer/external/u;->k:Landroidx/media2/exoplayer/external/al$a;

    invoke-virtual {v2, v3, v4, v5}, Landroidx/media2/exoplayer/external/ac;->a(ZLandroidx/media2/exoplayer/external/al$b;Landroidx/media2/exoplayer/external/al$a;)Landroidx/media2/exoplayer/external/source/t$a;

    move-result-object v2

    move-object v8, v2

    const/4 v9, 0x1

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v29, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2d

    .line 22679
    :cond_41
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 22680
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 22681
    iget-object v6, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    invoke-virtual {v6, v3, v4, v5}, Landroidx/media2/exoplayer/external/ab;->a(Ljava/lang/Object;J)Landroidx/media2/exoplayer/external/source/t$a;

    move-result-object v3

    .line 22682
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/source/t$a;->a()Z

    move-result v6

    if-eqz v6, :cond_42

    move-object v8, v3

    move-wide/from16 v29, v4

    const/4 v9, 0x1

    const-wide/16 v12, 0x0

    goto :goto_2d

    .line 22686
    :cond_42
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 22687
    iget-wide v12, v1, Landroidx/media2/exoplayer/external/u$d;->c:J
    :try_end_f
    .catch Landroidx/media2/exoplayer/external/ExoPlaybackException; {:try_start_f .. :try_end_f} :catch_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_c

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v12, v14

    if-nez v2, :cond_43

    const/4 v2, 0x1

    goto :goto_2c

    :cond_43
    const/4 v2, 0x0

    :goto_2c
    move-wide/from16 v29, v4

    move-wide v12, v8

    move v9, v2

    move-object v8, v3

    .line 22692
    :goto_2d
    :try_start_10
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->u:Landroidx/media2/exoplayer/external/source/t;

    if-eqz v2, :cond_4a

    iget v2, v7, Landroidx/media2/exoplayer/external/u;->C:I

    if-lez v2, :cond_44

    goto/16 :goto_31

    :cond_44
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v12, v2

    if-nez v1, :cond_45

    .line 22697
    invoke-direct {v7, v11}, Landroidx/media2/exoplayer/external/u;->a(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v1, p0

    .line 22698
    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/u;->a(ZZZZZ)V

    goto :goto_32

    .line 22707
    :cond_45
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    invoke-virtual {v8, v1}, Landroidx/media2/exoplayer/external/source/t$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 22708
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 23197
    iget-object v1, v1, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    if-eqz v1, :cond_46

    .line 22709
    iget-boolean v2, v1, Landroidx/media2/exoplayer/external/z;->d:Z

    if-eqz v2, :cond_46

    const-wide/16 v2, 0x0

    cmp-long v4, v12, v2

    if-eqz v4, :cond_46

    .line 22712
    iget-object v1, v1, Landroidx/media2/exoplayer/external/z;->a:Landroidx/media2/exoplayer/external/source/s;

    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->s:Landroidx/media2/exoplayer/external/aj;

    .line 22713
    invoke-interface {v1, v12, v13, v2}, Landroidx/media2/exoplayer/external/source/s;->a(JLandroidx/media2/exoplayer/external/aj;)J

    move-result-wide v1

    goto :goto_2e

    :cond_46
    move-wide v1, v12

    .line 22716
    :goto_2e
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/c;->a(J)J

    move-result-wide v3

    iget-object v5, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-wide v5, v5, Landroidx/media2/exoplayer/external/ac;->m:J

    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/c;->a(J)J

    move-result-wide v5

    cmp-long v10, v3, v5

    if-nez v10, :cond_48

    .line 22718
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/ac;->m:J
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 22727
    :try_start_11
    iget-object v3, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    .line 22729
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->n()J

    move-result-wide v31

    move-object/from16 v25, v3

    move-object/from16 v26, v8

    move-wide/from16 v27, v1

    .line 22728
    invoke-virtual/range {v25 .. v32}, Landroidx/media2/exoplayer/external/ac;->a(Landroidx/media2/exoplayer/external/source/t$a;JJJ)Landroidx/media2/exoplayer/external/ac;

    move-result-object v1

    iput-object v1, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    if-eqz v9, :cond_88

    .line 22731
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->o:Landroidx/media2/exoplayer/external/u$c;

    const/4 v2, 0x2

    :goto_2f
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/u$c;->b(I)V
    :try_end_11
    .catch Landroidx/media2/exoplayer/external/ExoPlaybackException; {:try_start_11 .. :try_end_11} :catch_f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_c

    goto/16 :goto_58

    :cond_47
    move-wide v1, v12

    .line 22722
    :cond_48
    :try_start_12
    invoke-direct {v7, v8, v1, v2}, Landroidx/media2/exoplayer/external/u;->a(Landroidx/media2/exoplayer/external/source/t$a;J)J

    move-result-wide v1

    cmp-long v3, v12, v1

    if-eqz v3, :cond_49

    const/4 v3, 0x1

    goto :goto_30

    :cond_49
    const/4 v3, 0x0

    :goto_30
    or-int/2addr v9, v3

    move-wide/from16 v27, v1

    goto :goto_33

    .line 22694
    :cond_4a
    :goto_31
    iput-object v1, v7, Landroidx/media2/exoplayer/external/u;->D:Landroidx/media2/exoplayer/external/u$d;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :goto_32
    move-wide/from16 v27, v12

    .line 22727
    :goto_33
    :try_start_13
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    .line 22729
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->n()J

    move-result-wide v31

    move-object/from16 v25, v1

    move-object/from16 v26, v8

    .line 22728
    invoke-virtual/range {v25 .. v32}, Landroidx/media2/exoplayer/external/ac;->a(Landroidx/media2/exoplayer/external/source/t$a;JJJ)Landroidx/media2/exoplayer/external/ac;

    move-result-object v1

    iput-object v1, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    if-eqz v9, :cond_88

    .line 22731
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->o:Landroidx/media2/exoplayer/external/u$c;

    const/4 v2, 0x2

    goto :goto_2f

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 22727
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    .line 22729
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->n()J

    move-result-wide v31

    move-object/from16 v25, v2

    move-object/from16 v26, v8

    move-wide/from16 v27, v12

    .line 22728
    invoke-virtual/range {v25 .. v32}, Landroidx/media2/exoplayer/external/ac;->a(Landroidx/media2/exoplayer/external/source/t$a;JJJ)Landroidx/media2/exoplayer/external/ac;

    move-result-object v2

    iput-object v2, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    if-eqz v9, :cond_4b

    .line 22731
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->o:Landroidx/media2/exoplayer/external/u$c;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroidx/media2/exoplayer/external/u$c;->b(I)V

    :cond_4b
    throw v1

    :pswitch_f
    move-object/from16 v21, v8

    const-wide/16 v2, 0x0

    .line 4566
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->q:Landroidx/media2/exoplayer/external/util/b;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/util/b;->b()J

    move-result-wide v4

    .line 5498
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->u:Landroidx/media2/exoplayer/external/source/t;

    if-eqz v1, :cond_67

    .line 5502
    iget v8, v7, Landroidx/media2/exoplayer/external/u;->C:I

    if-lez v8, :cond_4c

    .line 5504
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/source/t;->f()V

    goto/16 :goto_47

    .line 5513
    :cond_4c
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    iget-wide v8, v7, Landroidx/media2/exoplayer/external/u;->E:J

    invoke-virtual {v1, v8, v9}, Landroidx/media2/exoplayer/external/ab;->a(J)V

    .line 5514
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 6114
    iget-object v8, v1, Landroidx/media2/exoplayer/external/ab;->f:Landroidx/media2/exoplayer/external/z;

    if-eqz v8, :cond_4e

    iget-object v8, v1, Landroidx/media2/exoplayer/external/ab;->f:Landroidx/media2/exoplayer/external/z;

    iget-object v8, v8, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-boolean v8, v8, Landroidx/media2/exoplayer/external/aa;->g:Z

    if-nez v8, :cond_4d

    iget-object v8, v1, Landroidx/media2/exoplayer/external/ab;->f:Landroidx/media2/exoplayer/external/z;

    .line 6116
    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/z;->b()Z

    move-result v8

    if-eqz v8, :cond_4d

    iget-object v8, v1, Landroidx/media2/exoplayer/external/ab;->f:Landroidx/media2/exoplayer/external/z;

    iget-object v8, v8, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-wide v8, v8, Landroidx/media2/exoplayer/external/aa;->e:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v8, v12

    if-eqz v10, :cond_4d

    iget v1, v1, Landroidx/media2/exoplayer/external/ab;->g:I

    const/16 v8, 0x64

    if-ge v1, v8, :cond_4d

    goto :goto_34

    :cond_4d
    const/4 v1, 0x0

    goto :goto_35

    :cond_4e
    :goto_34
    const/4 v1, 0x1

    :goto_35
    if-eqz v1, :cond_56

    .line 5515
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    iget-wide v8, v7, Landroidx/media2/exoplayer/external/u;->E:J

    iget-object v10, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    .line 6131
    iget-object v12, v1, Landroidx/media2/exoplayer/external/ab;->f:Landroidx/media2/exoplayer/external/z;

    if-nez v12, :cond_4f

    .line 6527
    iget-object v8, v10, Landroidx/media2/exoplayer/external/ac;->b:Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide v12, v10, Landroidx/media2/exoplayer/external/ac;->d:J

    iget-wide v9, v10, Landroidx/media2/exoplayer/external/ac;->c:J

    move-object/from16 v26, v1

    move-object/from16 v27, v8

    move-wide/from16 v28, v12

    move-wide/from16 v30, v9

    invoke-virtual/range {v26 .. v31}, Landroidx/media2/exoplayer/external/ab;->a(Landroidx/media2/exoplayer/external/source/t$a;JJ)Landroidx/media2/exoplayer/external/aa;

    move-result-object v1

    goto :goto_36

    .line 6133
    :cond_4f
    iget-object v10, v1, Landroidx/media2/exoplayer/external/ab;->f:Landroidx/media2/exoplayer/external/z;

    invoke-virtual {v1, v10, v8, v9}, Landroidx/media2/exoplayer/external/ab;->a(Landroidx/media2/exoplayer/external/z;J)Landroidx/media2/exoplayer/external/aa;

    move-result-object v1

    :goto_36
    if-nez v1, :cond_51

    .line 7268
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 8188
    iget-object v1, v1, Landroidx/media2/exoplayer/external/ab;->f:Landroidx/media2/exoplayer/external/z;

    if-eqz v1, :cond_50

    .line 7271
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->v:[Landroidx/media2/exoplayer/external/ag;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_37
    if-ge v3, v2, :cond_50

    aget-object v8, v1, v3

    .line 7272
    invoke-interface {v8}, Landroidx/media2/exoplayer/external/ag;->g()Z

    move-result v8

    if-eqz v8, :cond_56

    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 7277
    :cond_50
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->u:Landroidx/media2/exoplayer/external/source/t;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/source/t;->f()V

    goto/16 :goto_3b

    .line 5519
    :cond_51
    iget-object v8, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    iget-object v9, v7, Landroidx/media2/exoplayer/external/u;->d:[Landroidx/media2/exoplayer/external/ah;

    iget-object v10, v7, Landroidx/media2/exoplayer/external/u;->e:Landroidx/media2/exoplayer/external/trackselection/g;

    iget-object v12, v7, Landroidx/media2/exoplayer/external/u;->g:Landroidx/media2/exoplayer/external/y;

    .line 5523
    invoke-interface {v12}, Landroidx/media2/exoplayer/external/y;->d()Landroidx/media2/exoplayer/external/upstream/b;

    move-result-object v31

    iget-object v12, v7, Landroidx/media2/exoplayer/external/u;->u:Landroidx/media2/exoplayer/external/source/t;

    iget-object v13, v7, Landroidx/media2/exoplayer/external/u;->f:Landroidx/media2/exoplayer/external/trackselection/h;

    .line 9156
    iget-object v14, v8, Landroidx/media2/exoplayer/external/ab;->f:Landroidx/media2/exoplayer/external/z;

    if-nez v14, :cond_53

    .line 9157
    iget-object v14, v1, Landroidx/media2/exoplayer/external/aa;->a:Landroidx/media2/exoplayer/external/source/t$a;

    invoke-virtual {v14}, Landroidx/media2/exoplayer/external/source/t$a;->a()Z

    move-result v14

    if-eqz v14, :cond_52

    iget-wide v14, v1, Landroidx/media2/exoplayer/external/aa;->c:J

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v22, v14, v17

    if-eqz v22, :cond_52

    .line 9158
    iget-wide v2, v1, Landroidx/media2/exoplayer/external/aa;->c:J

    :cond_52
    :goto_38
    move-wide/from16 v28, v2

    goto :goto_39

    .line 9160
    :cond_53
    iget-object v2, v8, Landroidx/media2/exoplayer/external/ab;->f:Landroidx/media2/exoplayer/external/z;

    .line 10127
    iget-wide v2, v2, Landroidx/media2/exoplayer/external/z;->j:J

    .line 9160
    iget-object v14, v8, Landroidx/media2/exoplayer/external/ab;->f:Landroidx/media2/exoplayer/external/z;

    iget-object v14, v14, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-wide v14, v14, Landroidx/media2/exoplayer/external/aa;->e:J

    add-long/2addr v2, v14

    iget-wide v14, v1, Landroidx/media2/exoplayer/external/aa;->b:J

    sub-long/2addr v2, v14

    goto :goto_38

    .line 9161
    :goto_39
    new-instance v2, Landroidx/media2/exoplayer/external/z;

    move-object/from16 v26, v2

    move-object/from16 v27, v9

    move-object/from16 v30, v10

    move-object/from16 v32, v12

    move-object/from16 v33, v1

    move-object/from16 v34, v13

    invoke-direct/range {v26 .. v34}, Landroidx/media2/exoplayer/external/z;-><init>([Landroidx/media2/exoplayer/external/ah;JLandroidx/media2/exoplayer/external/trackselection/g;Landroidx/media2/exoplayer/external/upstream/b;Landroidx/media2/exoplayer/external/source/t;Landroidx/media2/exoplayer/external/aa;Landroidx/media2/exoplayer/external/trackselection/h;)V

    .line 9170
    iget-object v3, v8, Landroidx/media2/exoplayer/external/ab;->f:Landroidx/media2/exoplayer/external/z;

    if-eqz v3, :cond_54

    .line 9171
    iget-object v3, v8, Landroidx/media2/exoplayer/external/ab;->f:Landroidx/media2/exoplayer/external/z;

    invoke-virtual {v3, v2}, Landroidx/media2/exoplayer/external/z;->a(Landroidx/media2/exoplayer/external/z;)V

    goto :goto_3a

    .line 9173
    :cond_54
    iput-object v2, v8, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    .line 9174
    iput-object v2, v8, Landroidx/media2/exoplayer/external/ab;->e:Landroidx/media2/exoplayer/external/z;

    :goto_3a
    const/4 v3, 0x0

    .line 9176
    iput-object v3, v8, Landroidx/media2/exoplayer/external/ab;->h:Ljava/lang/Object;

    .line 9177
    iput-object v2, v8, Landroidx/media2/exoplayer/external/ab;->f:Landroidx/media2/exoplayer/external/z;

    .line 9178
    iget v3, v8, Landroidx/media2/exoplayer/external/ab;->g:I

    const/4 v9, 0x1

    add-int/2addr v3, v9

    iput v3, v8, Landroidx/media2/exoplayer/external/ab;->g:I

    .line 5527
    iget-object v3, v2, Landroidx/media2/exoplayer/external/z;->a:Landroidx/media2/exoplayer/external/source/s;

    iget-wide v12, v1, Landroidx/media2/exoplayer/external/aa;->b:J

    invoke-interface {v3, v7, v12, v13}, Landroidx/media2/exoplayer/external/source/s;->a(Landroidx/media2/exoplayer/external/source/s$a;J)V

    .line 5528
    invoke-direct {v7, v9}, Landroidx/media2/exoplayer/external/u;->a(Z)V

    .line 5529
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 10197
    iget-object v1, v1, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    if-ne v1, v2, :cond_55

    .line 5530
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/z;->a()J

    move-result-wide v1

    invoke-direct {v7, v1, v2}, Landroidx/media2/exoplayer/external/u;->a(J)V

    :cond_55
    const/4 v1, 0x0

    .line 5532
    invoke-direct {v7, v1}, Landroidx/media2/exoplayer/external/u;->c(Z)V

    .line 5535
    :cond_56
    :goto_3b
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 11188
    iget-object v1, v1, Landroidx/media2/exoplayer/external/ab;->f:Landroidx/media2/exoplayer/external/z;

    if-eqz v1, :cond_58

    .line 5536
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/z;->b()Z

    move-result v1

    if-eqz v1, :cond_57

    goto :goto_3c

    .line 5538
    :cond_57
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/ac;->g:Z

    if-nez v1, :cond_59

    .line 5539
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->m()V

    goto :goto_3d

    :cond_58
    :goto_3c
    const/4 v1, 0x0

    .line 5537
    invoke-direct {v7, v1}, Landroidx/media2/exoplayer/external/u;->a(Z)V

    .line 11544
    :cond_59
    :goto_3d
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 12203
    iget-object v1, v1, Landroidx/media2/exoplayer/external/ab;->e:Landroidx/media2/exoplayer/external/z;

    if-eqz v1, :cond_61

    .line 12340
    iget-object v2, v1, Landroidx/media2/exoplayer/external/z;->g:Landroidx/media2/exoplayer/external/z;

    if-nez v2, :cond_5b

    .line 11551
    iget-object v2, v1, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-boolean v2, v2, Landroidx/media2/exoplayer/external/aa;->g:Z

    if-eqz v2, :cond_61

    const/4 v2, 0x0

    .line 11552
    :goto_3e
    iget-object v3, v7, Landroidx/media2/exoplayer/external/u;->c:[Landroidx/media2/exoplayer/external/ag;

    array-length v8, v3

    if-ge v2, v8, :cond_61

    .line 11553
    aget-object v3, v3, v2

    .line 11554
    iget-object v8, v1, Landroidx/media2/exoplayer/external/z;->c:[Landroidx/media2/exoplayer/external/source/al;

    aget-object v8, v8, v2

    if-eqz v8, :cond_5a

    .line 11558
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/ag;->f()Landroidx/media2/exoplayer/external/source/al;

    move-result-object v9

    if-ne v9, v8, :cond_5a

    .line 11559
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/ag;->g()Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 11560
    invoke-interface {v3}, Landroidx/media2/exoplayer/external/ag;->i()V

    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 11567
    :cond_5b
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->k()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 13340
    iget-object v2, v1, Landroidx/media2/exoplayer/external/z;->g:Landroidx/media2/exoplayer/external/z;

    .line 11571
    iget-boolean v2, v2, Landroidx/media2/exoplayer/external/z;->d:Z

    if-eqz v2, :cond_61

    .line 13350
    iget-object v1, v1, Landroidx/media2/exoplayer/external/z;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    .line 11577
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 14212
    iget-object v3, v2, Landroidx/media2/exoplayer/external/ab;->e:Landroidx/media2/exoplayer/external/z;

    if-eqz v3, :cond_5c

    iget-object v3, v2, Landroidx/media2/exoplayer/external/ab;->e:Landroidx/media2/exoplayer/external/z;

    .line 14340
    iget-object v3, v3, Landroidx/media2/exoplayer/external/z;->g:Landroidx/media2/exoplayer/external/z;

    if-eqz v3, :cond_5c

    const/4 v3, 0x1

    goto :goto_3f

    :cond_5c
    const/4 v3, 0x0

    .line 14212
    :goto_3f
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 14213
    iget-object v3, v2, Landroidx/media2/exoplayer/external/ab;->e:Landroidx/media2/exoplayer/external/z;

    .line 15340
    iget-object v3, v3, Landroidx/media2/exoplayer/external/z;->g:Landroidx/media2/exoplayer/external/z;

    .line 14213
    iput-object v3, v2, Landroidx/media2/exoplayer/external/ab;->e:Landroidx/media2/exoplayer/external/z;

    .line 14214
    iget-object v2, v2, Landroidx/media2/exoplayer/external/ab;->e:Landroidx/media2/exoplayer/external/z;

    .line 15350
    iget-object v3, v2, Landroidx/media2/exoplayer/external/z;->i:Landroidx/media2/exoplayer/external/trackselection/h;

    .line 11580
    iget-object v8, v2, Landroidx/media2/exoplayer/external/z;->a:Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v8}, Landroidx/media2/exoplayer/external/source/s;->c()J

    move-result-wide v8

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v8, v12

    if-eqz v10, :cond_5d

    .line 11583
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->l()V

    goto :goto_43

    :cond_5d
    const/4 v8, 0x0

    .line 11586
    :goto_40
    iget-object v9, v7, Landroidx/media2/exoplayer/external/u;->c:[Landroidx/media2/exoplayer/external/ag;

    array-length v10, v9

    if-ge v8, v10, :cond_61

    .line 11587
    aget-object v9, v9, v8

    .line 11588
    invoke-virtual {v1, v8}, Landroidx/media2/exoplayer/external/trackselection/h;->a(I)Z

    move-result v10

    if-eqz v10, :cond_60

    .line 11589
    invoke-interface {v9}, Landroidx/media2/exoplayer/external/ag;->j()Z

    move-result v10

    if-nez v10, :cond_60

    .line 11592
    iget-object v10, v3, Landroidx/media2/exoplayer/external/trackselection/h;->c:Landroidx/media2/exoplayer/external/trackselection/f;

    .line 16055
    iget-object v10, v10, Landroidx/media2/exoplayer/external/trackselection/f;->b:[Landroidx/media2/exoplayer/external/trackselection/e;

    aget-object v10, v10, v8

    .line 11593
    invoke-virtual {v3, v8}, Landroidx/media2/exoplayer/external/trackselection/h;->a(I)Z

    move-result v12

    .line 11594
    iget-object v13, v7, Landroidx/media2/exoplayer/external/u;->d:[Landroidx/media2/exoplayer/external/ah;

    aget-object v13, v13, v8

    invoke-interface {v13}, Landroidx/media2/exoplayer/external/ah;->a()I

    move-result v13

    const/4 v14, 0x6

    if-ne v13, v14, :cond_5e

    const/4 v13, 0x1

    goto :goto_41

    :cond_5e
    const/4 v13, 0x0

    .line 11595
    :goto_41
    iget-object v14, v1, Landroidx/media2/exoplayer/external/trackselection/h;->b:[Landroidx/media2/exoplayer/external/RendererConfiguration;

    aget-object v14, v14, v8

    .line 11596
    iget-object v15, v3, Landroidx/media2/exoplayer/external/trackselection/h;->b:[Landroidx/media2/exoplayer/external/RendererConfiguration;

    aget-object v15, v15, v8

    if-eqz v12, :cond_5f

    .line 11597
    invoke-virtual {v15, v14}, Landroidx/media2/exoplayer/external/RendererConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5f

    if-nez v13, :cond_5f

    .line 11604
    invoke-static {v10}, Landroidx/media2/exoplayer/external/u;->a(Landroidx/media2/exoplayer/external/trackselection/e;)[Landroidx/media2/exoplayer/external/Format;

    move-result-object v10

    .line 11605
    iget-object v12, v2, Landroidx/media2/exoplayer/external/z;->c:[Landroidx/media2/exoplayer/external/source/al;

    aget-object v12, v12, v8

    .line 16127
    iget-wide v13, v2, Landroidx/media2/exoplayer/external/z;->j:J

    .line 11605
    invoke-interface {v9, v10, v12, v13, v14}, Landroidx/media2/exoplayer/external/ag;->a([Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/source/al;J)V

    goto :goto_42

    .line 11613
    :cond_5f
    invoke-interface {v9}, Landroidx/media2/exoplayer/external/ag;->i()V

    :cond_60
    :goto_42
    add-int/lit8 v8, v8, 0x1

    goto :goto_40

    :cond_61
    :goto_43
    const/4 v1, 0x0

    .line 16651
    :goto_44
    iget-boolean v2, v7, Landroidx/media2/exoplayer/external/u;->x:Z

    if-eqz v2, :cond_63

    .line 16654
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 17197
    iget-object v2, v2, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    if-eqz v2, :cond_63

    .line 17340
    iget-object v3, v2, Landroidx/media2/exoplayer/external/z;->g:Landroidx/media2/exoplayer/external/z;

    if-eqz v3, :cond_63

    .line 16662
    iget-object v8, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 18203
    iget-object v8, v8, Landroidx/media2/exoplayer/external/ab;->e:Landroidx/media2/exoplayer/external/z;

    if-ne v2, v8, :cond_62

    .line 16663
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->k()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 16666
    :cond_62
    iget-wide v8, v7, Landroidx/media2/exoplayer/external/u;->E:J

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/z;->a()J

    move-result-wide v2

    cmp-long v10, v8, v2

    if-ltz v10, :cond_63

    const/4 v2, 0x1

    goto :goto_45

    :cond_63
    const/4 v2, 0x0

    :goto_45
    if-eqz v2, :cond_67

    if-eqz v1, :cond_64

    .line 16624
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->c()V

    .line 16626
    :cond_64
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 19197
    iget-object v1, v1, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    .line 16627
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 19203
    iget-object v2, v2, Landroidx/media2/exoplayer/external/ab;->e:Landroidx/media2/exoplayer/external/z;

    if-ne v1, v2, :cond_65

    .line 16630
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->l()V

    .line 16632
    :cond_65
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/ab;->a()Landroidx/media2/exoplayer/external/z;

    move-result-object v2

    .line 16633
    invoke-direct {v7, v1}, Landroidx/media2/exoplayer/external/u;->a(Landroidx/media2/exoplayer/external/z;)V

    .line 16634
    iget-object v3, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-object v8, v2, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-object v8, v8, Landroidx/media2/exoplayer/external/aa;->a:Landroidx/media2/exoplayer/external/source/t$a;

    iget-object v9, v2, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-wide v9, v9, Landroidx/media2/exoplayer/external/aa;->b:J

    iget-object v2, v2, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-wide v12, v2, Landroidx/media2/exoplayer/external/aa;->c:J

    .line 16639
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->n()J

    move-result-wide v31

    move-object/from16 v25, v3

    move-object/from16 v26, v8

    move-wide/from16 v27, v9

    move-wide/from16 v29, v12

    .line 16635
    invoke-virtual/range {v25 .. v32}, Landroidx/media2/exoplayer/external/ac;->a(Landroidx/media2/exoplayer/external/source/t$a;JJJ)Landroidx/media2/exoplayer/external/ac;

    move-result-object v2

    iput-object v2, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    .line 16641
    iget-object v1, v1, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/aa;->f:Z

    if-eqz v1, :cond_66

    const/4 v1, 0x0

    goto :goto_46

    :cond_66
    const/4 v1, 0x3

    .line 16644
    :goto_46
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->o:Landroidx/media2/exoplayer/external/u$c;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/u$c;->b(I)V

    .line 16645
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->f()V

    const/4 v1, 0x1

    goto :goto_44

    .line 4569
    :cond_67
    :goto_47
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 20197
    iget-object v1, v1, Landroidx/media2/exoplayer/external/ab;->d:Landroidx/media2/exoplayer/external/z;

    const-wide/16 v2, 0xa

    if-nez v1, :cond_68

    .line 4572
    invoke-direct {v7, v4, v5, v2, v3}, Landroidx/media2/exoplayer/external/u;->a(JJ)V

    goto/16 :goto_58

    :cond_68
    const-string v8, "doSomeWork"

    .line 4576
    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/aa;->a(Ljava/lang/String;)V

    .line 4578
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->f()V

    .line 4582
    iget-boolean v8, v1, Landroidx/media2/exoplayer/external/z;->d:Z

    const-wide/16 v9, 0x3e8

    if-eqz v8, :cond_71

    .line 4583
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    mul-long v12, v12, v9

    .line 4584
    iget-object v8, v1, Landroidx/media2/exoplayer/external/z;->a:Landroidx/media2/exoplayer/external/source/s;

    iget-object v14, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-wide v14, v14, Landroidx/media2/exoplayer/external/ac;->m:J

    iget-wide v9, v7, Landroidx/media2/exoplayer/external/u;->l:J

    sub-long/2addr v14, v9

    iget-boolean v9, v7, Landroidx/media2/exoplayer/external/u;->m:Z

    invoke-interface {v8, v14, v15, v9}, Landroidx/media2/exoplayer/external/source/s;->a(JZ)V

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 4586
    :goto_48
    iget-object v14, v7, Landroidx/media2/exoplayer/external/u;->c:[Landroidx/media2/exoplayer/external/ag;

    array-length v15, v14

    if-ge v10, v15, :cond_72

    .line 4587
    aget-object v14, v14, v10

    .line 4588
    invoke-interface {v14}, Landroidx/media2/exoplayer/external/ag;->i_()I

    move-result v15

    if-eqz v15, :cond_70

    .line 4594
    iget-wide v2, v7, Landroidx/media2/exoplayer/external/u;->E:J

    invoke-interface {v14, v2, v3, v12, v13}, Landroidx/media2/exoplayer/external/ag;->a(JJ)V

    if-eqz v8, :cond_69

    .line 4595
    invoke-interface {v14}, Landroidx/media2/exoplayer/external/ag;->y()Z

    move-result v2

    if-eqz v2, :cond_69

    const/4 v2, 0x1

    goto :goto_49

    :cond_69
    const/4 v2, 0x0

    .line 4601
    :goto_49
    iget-object v3, v1, Landroidx/media2/exoplayer/external/z;->c:[Landroidx/media2/exoplayer/external/source/al;

    aget-object v3, v3, v10

    invoke-interface {v14}, Landroidx/media2/exoplayer/external/ag;->f()Landroidx/media2/exoplayer/external/source/al;

    move-result-object v8

    if-eq v3, v8, :cond_6a

    const/4 v3, 0x1

    goto :goto_4a

    :cond_6a
    const/4 v3, 0x0

    :goto_4a
    if-nez v3, :cond_6b

    .line 20340
    iget-object v8, v1, Landroidx/media2/exoplayer/external/z;->g:Landroidx/media2/exoplayer/external/z;

    if-eqz v8, :cond_6b

    .line 4605
    invoke-interface {v14}, Landroidx/media2/exoplayer/external/ag;->g()Z

    move-result v8

    if-eqz v8, :cond_6b

    const/4 v8, 0x1

    goto :goto_4b

    :cond_6b
    const/4 v8, 0x0

    :goto_4b
    if-nez v3, :cond_6d

    if-nez v8, :cond_6d

    .line 4607
    invoke-interface {v14}, Landroidx/media2/exoplayer/external/ag;->x()Z

    move-result v3

    if-nez v3, :cond_6d

    invoke-interface {v14}, Landroidx/media2/exoplayer/external/ag;->y()Z

    move-result v3

    if-eqz v3, :cond_6c

    goto :goto_4c

    :cond_6c
    const/4 v3, 0x0

    goto :goto_4d

    :cond_6d
    :goto_4c
    const/4 v3, 0x1

    :goto_4d
    if-eqz v9, :cond_6e

    if-eqz v3, :cond_6e

    const/4 v8, 0x1

    goto :goto_4e

    :cond_6e
    const/4 v8, 0x0

    :goto_4e
    if-nez v3, :cond_6f

    .line 4610
    invoke-interface {v14}, Landroidx/media2/exoplayer/external/ag;->k()V

    :cond_6f
    move v9, v8

    move v8, v2

    :cond_70
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v2, 0xa

    goto :goto_48

    .line 4614
    :cond_71
    iget-object v2, v1, Landroidx/media2/exoplayer/external/z;->a:Landroidx/media2/exoplayer/external/source/s;

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/source/s;->k_()V

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 4617
    :cond_72
    iget-object v2, v1, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-wide v2, v2, Landroidx/media2/exoplayer/external/aa;->e:J

    if-eqz v8, :cond_74

    .line 4618
    iget-boolean v8, v1, Landroidx/media2/exoplayer/external/z;->d:Z

    if-eqz v8, :cond_74

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v2, v12

    if-eqz v8, :cond_73

    iget-object v8, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-wide v12, v8, Landroidx/media2/exoplayer/external/ac;->m:J

    cmp-long v8, v2, v12

    if-gtz v8, :cond_74

    :cond_73
    iget-object v1, v1, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/aa;->g:Z

    if-eqz v1, :cond_74

    .line 4623
    invoke-direct {v7, v11}, Landroidx/media2/exoplayer/external/u;->a(I)V

    .line 4624
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->e()V

    goto/16 :goto_52

    .line 4625
    :cond_74
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget v1, v1, Landroidx/media2/exoplayer/external/ac;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7a

    .line 21239
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->v:[Landroidx/media2/exoplayer/external/ag;

    array-length v1, v1

    if-nez v1, :cond_75

    .line 21241
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->i()Z

    move-result v1

    goto :goto_51

    :cond_75
    if-eqz v9, :cond_79

    .line 21246
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/ac;->g:Z

    if-nez v1, :cond_77

    :cond_76
    :goto_4f
    const/4 v1, 0x1

    goto :goto_51

    .line 21252
    :cond_77
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->r:Landroidx/media2/exoplayer/external/ab;

    .line 22188
    iget-object v1, v1, Landroidx/media2/exoplayer/external/ab;->f:Landroidx/media2/exoplayer/external/z;

    .line 21253
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/z;->b()Z

    move-result v2

    if-eqz v2, :cond_78

    iget-object v1, v1, Landroidx/media2/exoplayer/external/z;->f:Landroidx/media2/exoplayer/external/aa;

    iget-boolean v1, v1, Landroidx/media2/exoplayer/external/aa;->g:Z

    if-eqz v1, :cond_78

    const/4 v1, 0x1

    goto :goto_50

    :cond_78
    const/4 v1, 0x0

    :goto_50
    if-nez v1, :cond_76

    .line 21254
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->g:Landroidx/media2/exoplayer/external/y;

    .line 21256
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->n()J

    move-result-wide v2

    iget-object v8, v7, Landroidx/media2/exoplayer/external/u;->n:Landroidx/media2/exoplayer/external/e;

    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/e;->d()Landroidx/media2/exoplayer/external/ad;

    move-result-object v8

    iget v8, v8, Landroidx/media2/exoplayer/external/ad;->b:F

    iget-boolean v10, v7, Landroidx/media2/exoplayer/external/u;->y:Z

    .line 21255
    invoke-interface {v1, v2, v3, v8, v10}, Landroidx/media2/exoplayer/external/y;->a(JFZ)Z

    move-result v1

    if-eqz v1, :cond_79

    goto :goto_4f

    :cond_79
    const/4 v1, 0x0

    :goto_51
    if-eqz v1, :cond_7a

    .line 4627
    invoke-direct {v7, v6}, Landroidx/media2/exoplayer/external/u;->a(I)V

    .line 4628
    iget-boolean v1, v7, Landroidx/media2/exoplayer/external/u;->x:Z

    if-eqz v1, :cond_7d

    .line 4629
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->d()V

    goto :goto_52

    .line 4631
    :cond_7a
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget v1, v1, Landroidx/media2/exoplayer/external/ac;->e:I

    if-ne v1, v6, :cond_7d

    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->v:[Landroidx/media2/exoplayer/external/ag;

    array-length v1, v1

    if-nez v1, :cond_7b

    .line 4632
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->i()Z

    move-result v1

    if-eqz v1, :cond_7c

    goto :goto_52

    :cond_7b
    if-nez v9, :cond_7d

    .line 4633
    :cond_7c
    iget-boolean v1, v7, Landroidx/media2/exoplayer/external/u;->x:Z

    iput-boolean v1, v7, Landroidx/media2/exoplayer/external/u;->y:Z

    const/4 v1, 0x2

    .line 4634
    invoke-direct {v7, v1}, Landroidx/media2/exoplayer/external/u;->a(I)V

    .line 4635
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->e()V

    .line 4638
    :cond_7d
    :goto_52
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget v1, v1, Landroidx/media2/exoplayer/external/ac;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7e

    .line 4639
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->v:[Landroidx/media2/exoplayer/external/ag;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_53
    if-ge v3, v2, :cond_7e

    aget-object v8, v1, v3

    .line 4640
    invoke-interface {v8}, Landroidx/media2/exoplayer/external/ag;->k()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 4644
    :cond_7e
    iget-boolean v1, v7, Landroidx/media2/exoplayer/external/u;->x:Z

    if-eqz v1, :cond_7f

    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget v1, v1, Landroidx/media2/exoplayer/external/ac;->e:I

    if-eq v1, v6, :cond_80

    :cond_7f
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget v1, v1, Landroidx/media2/exoplayer/external/ac;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_81

    :cond_80
    const-wide/16 v1, 0xa

    .line 4646
    invoke-direct {v7, v4, v5, v1, v2}, Landroidx/media2/exoplayer/external/u;->a(JJ)V

    goto :goto_54

    .line 4647
    :cond_81
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->v:[Landroidx/media2/exoplayer/external/ag;

    array-length v1, v1

    if-eqz v1, :cond_82

    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget v1, v1, Landroidx/media2/exoplayer/external/ac;->e:I

    if-eq v1, v11, :cond_82

    const-wide/16 v1, 0x3e8

    .line 4648
    invoke-direct {v7, v4, v5, v1, v2}, Landroidx/media2/exoplayer/external/u;->a(JJ)V

    goto :goto_54

    .line 4650
    :cond_82
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->a:Landroidx/media2/exoplayer/external/util/i;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/util/i;->b()V

    .line 4653
    :goto_54
    invoke-static {}, Landroidx/media2/exoplayer/external/util/aa;->a()V

    goto/16 :goto_58

    :pswitch_10
    move-object/from16 v21, v8

    .line 322
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_83

    const/4 v1, 0x1

    goto :goto_55

    :cond_83
    const/4 v1, 0x0

    :goto_55
    const/4 v2, 0x0

    .line 2459
    iput-boolean v2, v7, Landroidx/media2/exoplayer/external/u;->y:Z

    .line 2460
    iput-boolean v1, v7, Landroidx/media2/exoplayer/external/u;->x:Z

    if-nez v1, :cond_84

    .line 2462
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->e()V

    .line 2463
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->f()V

    goto :goto_58

    .line 2465
    :cond_84
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget v1, v1, Landroidx/media2/exoplayer/external/ac;->e:I

    if-ne v1, v6, :cond_85

    .line 2466
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->d()V

    .line 2467
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->a:Landroidx/media2/exoplayer/external/util/i;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/util/i;->b(I)Z

    goto :goto_58

    .line 2468
    :cond_85
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    iget v1, v1, Landroidx/media2/exoplayer/external/ac;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_88

    .line 2469
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->a:Landroidx/media2/exoplayer/external/util/i;

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/util/i;->b(I)Z

    goto :goto_58

    :pswitch_11
    move-object/from16 v21, v8

    .line 316
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Landroidx/media2/exoplayer/external/source/t;

    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_86

    const/4 v4, 0x1

    goto :goto_56

    :cond_86
    const/4 v4, 0x0

    :goto_56
    iget v1, v1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_87

    const/4 v5, 0x1

    goto :goto_57

    :cond_87
    const/4 v5, 0x0

    .line 2444
    :goto_57
    iget v1, v7, Landroidx/media2/exoplayer/external/u;->C:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v7, Landroidx/media2/exoplayer/external/u;->C:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x1

    move-object/from16 v1, p0

    .line 2445
    invoke-direct/range {v1 .. v6}, Landroidx/media2/exoplayer/external/u;->a(ZZZZZ)V

    .line 2451
    iget-object v1, v7, Landroidx/media2/exoplayer/external/u;->g:Landroidx/media2/exoplayer/external/y;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/y;->a()V

    .line 2452
    iput-object v8, v7, Landroidx/media2/exoplayer/external/u;->u:Landroidx/media2/exoplayer/external/source/t;

    const/4 v1, 0x2

    .line 2453
    invoke-direct {v7, v1}, Landroidx/media2/exoplayer/external/u;->a(I)V

    .line 2454
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->h:Landroidx/media2/exoplayer/external/upstream/c;

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/upstream/c;->b()Landroidx/media2/exoplayer/external/upstream/w;

    move-result-object v2

    invoke-interface {v8, v7, v2}, Landroidx/media2/exoplayer/external/source/t;->a(Landroidx/media2/exoplayer/external/source/t$b;Landroidx/media2/exoplayer/external/upstream/w;)V

    .line 2455
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->a:Landroidx/media2/exoplayer/external/util/i;

    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/util/i;->b(I)Z

    .line 381
    :cond_88
    :goto_58
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->c()V
    :try_end_13
    .catch Landroidx/media2/exoplayer/external/ExoPlaybackException; {:try_start_13 .. :try_end_13} :catch_f
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_13} :catch_c

    goto :goto_62

    :catch_c
    move-exception v0

    goto :goto_5e

    :catch_d
    move-exception v0

    goto :goto_5e

    :catch_e
    move-exception v0

    :goto_59
    move-object v1, v0

    move-object/from16 v3, v21

    :goto_5a
    const/4 v4, 0x0

    goto :goto_61

    :catch_f
    move-exception v0

    :goto_5b
    move-object v1, v0

    move-object/from16 v3, v21

    :goto_5c
    const/4 v4, 0x0

    goto :goto_63

    :catch_10
    move-exception v0

    goto :goto_5d

    :catch_11
    move-exception v0

    :goto_5d
    move-object/from16 v21, v8

    :goto_5e
    move-object v1, v0

    :goto_5f
    const-string v2, "Internal runtime error."

    move-object/from16 v3, v21

    .line 399
    invoke-static {v3, v2, v1}, Landroidx/media2/exoplayer/external/util/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 401
    instance-of v2, v1, Ljava/lang/OutOfMemoryError;

    if-eqz v2, :cond_89

    .line 402
    check-cast v1, Ljava/lang/OutOfMemoryError;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->a(Ljava/lang/OutOfMemoryError;)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v1

    goto :goto_60

    .line 403
    :cond_89
    check-cast v1, Ljava/lang/RuntimeException;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->a(Ljava/lang/RuntimeException;)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v1

    :goto_60
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 404
    invoke-direct {v7, v2, v4, v4}, Landroidx/media2/exoplayer/external/u;->a(ZZZ)V

    .line 408
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/ac;->a(Landroidx/media2/exoplayer/external/ExoPlaybackException;)Landroidx/media2/exoplayer/external/ac;

    move-result-object v1

    iput-object v1, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    .line 409
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->c()V

    goto :goto_62

    :catch_12
    move-exception v0

    move-object v3, v8

    const/4 v4, 0x0

    move-object v1, v0

    :goto_61
    const-string v2, "Source error."

    .line 391
    invoke-static {v3, v2, v1}, Landroidx/media2/exoplayer/external/util/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 392
    invoke-direct {v7, v4, v4, v4}, Landroidx/media2/exoplayer/external/u;->a(ZZZ)V

    .line 396
    iget-object v2, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->a(Ljava/io/IOException;)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/ac;->a(Landroidx/media2/exoplayer/external/ExoPlaybackException;)Landroidx/media2/exoplayer/external/ac;

    move-result-object v1

    iput-object v1, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    .line 397
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->c()V

    :goto_62
    const/4 v2, 0x1

    goto :goto_64

    :catch_13
    move-exception v0

    move-object v3, v8

    const/4 v4, 0x0

    move-object v1, v0

    :goto_63
    const-string v2, "Playback error."

    .line 383
    invoke-static {v3, v2, v1}, Landroidx/media2/exoplayer/external/util/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x1

    .line 384
    invoke-direct {v7, v2, v4, v4}, Landroidx/media2/exoplayer/external/u;->a(ZZZ)V

    .line 388
    iget-object v3, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    invoke-virtual {v3, v1}, Landroidx/media2/exoplayer/external/ac;->a(Landroidx/media2/exoplayer/external/ExoPlaybackException;)Landroidx/media2/exoplayer/external/ac;

    move-result-object v1

    iput-object v1, v7, Landroidx/media2/exoplayer/external/u;->t:Landroidx/media2/exoplayer/external/ac;

    .line 389
    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/u;->c()V

    :goto_64
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.class public final Lcom/google/android/exoplayer2/source/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/s$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/exoplayer2/source/r$a;

.field final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/source/s$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 155
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/s$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/r$a;J)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/r$a;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/source/s$a$a;",
            ">;I",
            "Lcom/google/android/exoplayer2/source/r$a;",
            "J)V"
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 168
    iput p2, p0, Lcom/google/android/exoplayer2/source/s$a;->a:I

    .line 169
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/s$a;->b:Lcom/google/android/exoplayer2/source/r$a;

    .line 170
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/s$a;->d:J

    return-void
.end method

.method private a(J)J
    .locals 3

    .line 471
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/f;->a(J)J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 472
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/s$a;->d:J

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private synthetic a(Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V
    .locals 2

    .line 347
    iget v0, p0, Lcom/google/android/exoplayer2/source/s$a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/s$a;->b:Lcom/google/android/exoplayer2/source/r$a;

    invoke-interface {p1, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/source/s;->c(ILcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V

    return-void
.end method

.method private synthetic a(Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Ljava/io/IOException;Z)V
    .locals 7

    .line 413
    iget v1, p0, Lcom/google/android/exoplayer2/source/s$a;->a:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/s$a;->b:Lcom/google/android/exoplayer2/source/r$a;

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/s;->a(ILcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Ljava/io/IOException;Z)V

    return-void
.end method

.method private synthetic a(Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/source/o;)V
    .locals 2

    .line 466
    iget v0, p0, Lcom/google/android/exoplayer2/source/s$a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/s$a;->b:Lcom/google/android/exoplayer2/source/r$a;

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/source/s;->a(ILcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/source/o;)V

    return-void
.end method

.method private synthetic b(Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V
    .locals 2

    .line 301
    iget v0, p0, Lcom/google/android/exoplayer2/source/s$a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/s$a;->b:Lcom/google/android/exoplayer2/source/r$a;

    invoke-interface {p1, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/source/s;->b(ILcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V

    return-void
.end method

.method private synthetic c(Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V
    .locals 2

    .line 255
    iget v0, p0, Lcom/google/android/exoplayer2/source/s$a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/s$a;->b:Lcom/google/android/exoplayer2/source/r$a;

    invoke-interface {p1, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/source/s;->a(ILcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V

    return-void
.end method

.method public static synthetic lambda$J-qzQKhgeI-EcH7RcbEns7bqTnk(Lcom/google/android/exoplayer2/source/s$a;Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/source/o;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/s$a;->a(Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/source/o;)V

    return-void
.end method

.method public static synthetic lambda$hDV7dy8QbvlYWQOA93nLirNi15Q(Lcom/google/android/exoplayer2/source/s$a;Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/s$a;->a(Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Ljava/io/IOException;Z)V

    return-void
.end method

.method public static synthetic lambda$i-xK8A3LLD2SSZ4iJ3FFAiK86cM(Lcom/google/android/exoplayer2/source/s$a;Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/s$a;->a(Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V

    return-void
.end method

.method public static synthetic lambda$j-ADRdNvHZXK6b8OkuMSbSsj_xg(Lcom/google/android/exoplayer2/source/s$a;Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/s$a;->b(Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V

    return-void
.end method

.method public static synthetic lambda$vPnzxHYIW8nwzxfJYnwdK5uihqo(Lcom/google/android/exoplayer2/source/s$a;Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/s$a;->c(Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/exoplayer2/source/r$a;J)Lcom/google/android/exoplayer2/source/s$a;
    .locals 6

    .line 185
    new-instance p3, Lcom/google/android/exoplayer2/source/s$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/16 v4, 0x0

    move-object v0, p3

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/s$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/r$a;J)V

    return-object p3
.end method

.method public final a(ILcom/google/android/exoplayer2/Format;J)V
    .locals 11

    .line 449
    new-instance v10, Lcom/google/android/exoplayer2/source/o;

    .line 456
    invoke-direct {p0, p3, p4}, Lcom/google/android/exoplayer2/source/s$a;->a(J)J

    move-result-wide v6

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/o;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 449
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/source/s$a;->a(Lcom/google/android/exoplayer2/source/o;)V

    return-void
.end method

.method public final a(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/s;)V
    .locals 2

    .line 196
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/source/s$a$a;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/source/s$a$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/s;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/l;ILcom/google/android/exoplayer2/Format;JJLjava/io/IOException;Z)V
    .locals 12

    move-object v0, p0

    .line 385
    new-instance v11, Lcom/google/android/exoplayer2/source/o;

    move-wide/from16 v1, p4

    .line 393
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/s$a;->a(J)J

    move-result-wide v7

    move-wide/from16 v1, p6

    .line 394
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/s$a;->a(J)J

    move-result-wide v9

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v11

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/o;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    move-object v1, p1

    move-object/from16 v2, p8

    move/from16 v3, p9

    .line 385
    invoke-virtual {p0, p1, v11, v2, v3}, Lcom/google/android/exoplayer2/source/s$a;->a(Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Ljava/io/IOException;Z)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/l;JJ)V
    .locals 12

    move-object v0, p0

    .line 328
    new-instance v11, Lcom/google/android/exoplayer2/source/o;

    move-wide v1, p2

    .line 336
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/source/s$a;->a(J)J

    move-result-wide v7

    move-wide/from16 v1, p4

    .line 337
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/s$a;->a(J)J

    move-result-wide v9

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/o;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    move-object v1, p1

    .line 328
    invoke-virtual {p0, p1, v11}, Lcom/google/android/exoplayer2/source/s$a;->c(Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/Format;JJ)V
    .locals 12

    move-object v0, p0

    .line 237
    new-instance v11, Lcom/google/android/exoplayer2/source/o;

    move-wide v1, p3

    .line 245
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/s$a;->a(J)J

    move-result-wide v7

    move-wide/from16 v1, p5

    .line 246
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/s$a;->a(J)J

    move-result-wide v9

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v11

    move-object v4, p2

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/o;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    move-object v1, p1

    .line 237
    invoke-virtual {p0, p1, v11}, Lcom/google/android/exoplayer2/source/s$a;->a(Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V
    .locals 4

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/s$a$a;

    .line 252
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/s$a$a;->b:Lcom/google/android/exoplayer2/source/s;

    .line 253
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/s$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/source/-$$Lambda$s$a$vPnzxHYIW8nwzxfJYnwdK5uihqo;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/google/android/exoplayer2/source/-$$Lambda$s$a$vPnzxHYIW8nwzxfJYnwdK5uihqo;-><init>(Lcom/google/android/exoplayer2/source/s$a;Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/af;->a(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Ljava/io/IOException;Z)V
    .locals 10

    .line 408
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/s$a$a;

    .line 409
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/s$a$a;->b:Lcom/google/android/exoplayer2/source/s;

    .line 410
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/s$a$a;->a:Landroid/os/Handler;

    new-instance v9, Lcom/google/android/exoplayer2/source/-$$Lambda$s$a$hDV7dy8QbvlYWQOA93nLirNi15Q;

    move-object v2, v9

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/-$$Lambda$s$a$hDV7dy8QbvlYWQOA93nLirNi15Q;-><init>(Lcom/google/android/exoplayer2/source/s$a;Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;Ljava/io/IOException;Z)V

    invoke-static {v1, v9}, Lcom/google/android/exoplayer2/util/af;->a(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/source/o;)V
    .locals 4

    .line 462
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/s$a$a;

    .line 463
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/s$a$a;->b:Lcom/google/android/exoplayer2/source/s;

    .line 464
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/s$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/source/-$$Lambda$s$a$J-qzQKhgeI-EcH7RcbEns7bqTnk;

    invoke-direct {v3, p0, v2, p1}, Lcom/google/android/exoplayer2/source/-$$Lambda$s$a$J-qzQKhgeI-EcH7RcbEns7bqTnk;-><init>(Lcom/google/android/exoplayer2/source/s$a;Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/source/o;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/af;->a(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/Format;JJ)V
    .locals 12

    move-object v0, p0

    .line 282
    new-instance v11, Lcom/google/android/exoplayer2/source/o;

    move-wide v1, p3

    .line 290
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/s$a;->a(J)J

    move-result-wide v7

    move-wide/from16 v1, p5

    .line 291
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/s$a;->a(J)J

    move-result-wide v9

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v11

    move-object v4, p2

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer2/source/o;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    move-object v1, p1

    .line 282
    invoke-virtual {p0, p1, v11}, Lcom/google/android/exoplayer2/source/s$a;->b(Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V

    return-void
.end method

.method public final b(Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/s$a$a;

    .line 297
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/s$a$a;->b:Lcom/google/android/exoplayer2/source/s;

    .line 298
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/s$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/source/-$$Lambda$s$a$j-ADRdNvHZXK6b8OkuMSbSsj_xg;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/google/android/exoplayer2/source/-$$Lambda$s$a$j-ADRdNvHZXK6b8OkuMSbSsj_xg;-><init>(Lcom/google/android/exoplayer2/source/s$a;Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/af;->a(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V
    .locals 4

    .line 342
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/s$a$a;

    .line 343
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/s$a$a;->b:Lcom/google/android/exoplayer2/source/s;

    .line 344
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/s$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/source/-$$Lambda$s$a$i-xK8A3LLD2SSZ4iJ3FFAiK86cM;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/google/android/exoplayer2/source/-$$Lambda$s$a$i-xK8A3LLD2SSZ4iJ3FFAiK86cM;-><init>(Lcom/google/android/exoplayer2/source/s$a;Lcom/google/android/exoplayer2/source/s;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/source/o;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/af;->a(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

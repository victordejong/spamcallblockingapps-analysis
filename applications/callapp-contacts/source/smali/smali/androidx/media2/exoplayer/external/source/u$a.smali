.class public final Landroidx/media2/exoplayer/external/source/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/u$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroidx/media2/exoplayer/external/source/t$a;

.field final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media2/exoplayer/external/source/u$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 314
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/source/u$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media2/exoplayer/external/source/t$a;J)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media2/exoplayer/external/source/t$a;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media2/exoplayer/external/source/u$a$a;",
            ">;I",
            "Landroidx/media2/exoplayer/external/source/t$a;",
            "J)V"
        }
    .end annotation

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/u$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 327
    iput p2, p0, Landroidx/media2/exoplayer/external/source/u$a;->a:I

    .line 328
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/u$a;->b:Landroidx/media2/exoplayer/external/source/t$a;

    .line 329
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/source/u$a;->d:J

    return-void
.end method

.method private a(J)J
    .locals 3

    .line 725
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/c;->a(J)J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 726
    :cond_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/u$a;->d:J

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private static a(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    .line 730
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 731
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 733
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a(ILandroidx/media2/exoplayer/external/source/t$a;J)Landroidx/media2/exoplayer/external/source/u$a;
    .locals 6

    .line 344
    new-instance p3, Landroidx/media2/exoplayer/external/source/u$a;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/u$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/16 v4, 0x0

    move-object v0, p3

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/source/u$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media2/exoplayer/external/source/t$a;J)V

    return-object p3
.end method

.method public final a()V
    .locals 5

    .line 374
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/u$a;->b:Landroidx/media2/exoplayer/external/source/t$a;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/t$a;

    .line 375
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/u$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/u$a$a;

    .line 376
    iget-object v3, v2, Landroidx/media2/exoplayer/external/source/u$a$a;->b:Landroidx/media2/exoplayer/external/source/u;

    .line 377
    iget-object v2, v2, Landroidx/media2/exoplayer/external/source/u$a$a;->a:Landroid/os/Handler;

    new-instance v4, Landroidx/media2/exoplayer/external/source/v;

    invoke-direct {v4, p0, v3, v0}, Landroidx/media2/exoplayer/external/source/v;-><init>(Landroidx/media2/exoplayer/external/source/u$a;Landroidx/media2/exoplayer/external/source/u;Landroidx/media2/exoplayer/external/source/t$a;)V

    invoke-static {v2, v4}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;J)V
    .locals 12

    move-object v0, p0

    .line 703
    new-instance v11, Landroidx/media2/exoplayer/external/source/u$c;

    move-wide/from16 v1, p5

    .line 710
    invoke-direct {p0, v1, v2}, Landroidx/media2/exoplayer/external/source/u$a;->a(J)J

    move-result-wide v7

    const/4 v2, 0x1

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, v11

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Landroidx/media2/exoplayer/external/source/u$c;-><init>(IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    .line 703
    invoke-virtual {p0, v11}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroidx/media2/exoplayer/external/source/u$c;)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;)V
    .locals 4

    .line 439
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/u$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/u$a$a;

    .line 440
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/u$a$a;->b:Landroidx/media2/exoplayer/external/source/u;

    .line 441
    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/u$a$a;->a:Landroid/os/Handler;

    new-instance v3, Landroidx/media2/exoplayer/external/source/x;

    invoke-direct {v3, p0, v2, p1, p2}, Landroidx/media2/exoplayer/external/source/x;-><init>(Landroidx/media2/exoplayer/external/source/u$a;Landroidx/media2/exoplayer/external/source/u;Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;)V

    invoke-static {v1, v3}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;Ljava/io/IOException;Z)V
    .locals 10

    .line 651
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/u$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/u$a$a;

    .line 652
    iget-object v4, v1, Landroidx/media2/exoplayer/external/source/u$a$a;->b:Landroidx/media2/exoplayer/external/source/u;

    .line 653
    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/u$a$a;->a:Landroid/os/Handler;

    new-instance v9, Landroidx/media2/exoplayer/external/source/aa;

    move-object v2, v9

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Landroidx/media2/exoplayer/external/source/aa;-><init>(Landroidx/media2/exoplayer/external/source/u$a;Landroidx/media2/exoplayer/external/source/u;Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;Ljava/io/IOException;Z)V

    invoke-static {v1, v9}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/u$c;)V
    .locals 4

    .line 716
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/u$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/u$a$a;

    .line 717
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/u$a$a;->b:Landroidx/media2/exoplayer/external/source/u;

    .line 718
    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/u$a$a;->a:Landroid/os/Handler;

    new-instance v3, Landroidx/media2/exoplayer/external/source/ac;

    invoke-direct {v3, p0, v2, p1}, Landroidx/media2/exoplayer/external/source/ac;-><init>(Landroidx/media2/exoplayer/external/source/u$a;Landroidx/media2/exoplayer/external/source/u;Landroidx/media2/exoplayer/external/source/u$c;)V

    invoke-static {v1, v3}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/upstream/h;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJ)V
    .locals 22

    move-object/from16 v0, p0

    .line 419
    new-instance v11, Landroidx/media2/exoplayer/external/source/u$b;

    move-object/from16 v2, p1

    iget-object v3, v2, Landroidx/media2/exoplayer/external/upstream/h;->a:Landroid/net/Uri;

    .line 423
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v1, v11

    move-wide/from16 v5, p11

    invoke-direct/range {v1 .. v10}, Landroidx/media2/exoplayer/external/source/u$b;-><init>(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v1, Landroidx/media2/exoplayer/external/source/u$c;

    move-wide/from16 v2, p7

    .line 433
    invoke-direct {v0, v2, v3}, Landroidx/media2/exoplayer/external/source/u$a;->a(J)J

    move-result-wide v18

    move-wide/from16 v2, p9

    .line 434
    invoke-direct {v0, v2, v3}, Landroidx/media2/exoplayer/external/source/u$a;->a(J)J

    move-result-wide v20

    move-object v12, v1

    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p4

    move/from16 v16, p5

    move-object/from16 v17, p6

    invoke-direct/range {v12 .. v21}, Landroidx/media2/exoplayer/external/source/u$c;-><init>(IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    .line 419
    invoke-virtual {v0, v11, v1}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/upstream/h;IJ)V
    .locals 13

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide/from16 v11, p3

    .line 396
    invoke-virtual/range {v0 .. v12}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroidx/media2/exoplayer/external/upstream/h;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJ)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/upstream/h;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;II",
            "Landroidx/media2/exoplayer/external/Format;",
            "I",
            "Ljava/lang/Object;",
            "JJJJJ)V"
        }
    .end annotation

    move-object v0, p0

    .line 487
    new-instance v11, Landroidx/media2/exoplayer/external/source/u$b;

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    move-wide/from16 v9, p17

    invoke-direct/range {v1 .. v10}, Landroidx/media2/exoplayer/external/source/u$b;-><init>(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v1, Landroidx/media2/exoplayer/external/source/u$c;

    move-wide/from16 v2, p9

    .line 496
    invoke-direct {p0, v2, v3}, Landroidx/media2/exoplayer/external/source/u$a;->a(J)J

    move-result-wide v2

    move-wide/from16 v4, p11

    .line 497
    invoke-direct {p0, v4, v5}, Landroidx/media2/exoplayer/external/source/u$a;->a(J)J

    move-result-wide v4

    move-object/from16 p9, v1

    move/from16 p10, p4

    move/from16 p11, p5

    move-object/from16 p12, p6

    move/from16 p13, p7

    move-object/from16 p14, p8

    move-wide/from16 p15, v2

    move-wide/from16 p17, v4

    invoke-direct/range {p9 .. p18}, Landroidx/media2/exoplayer/external/source/u$c;-><init>(IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    .line 487
    invoke-virtual {p0, v11, v1}, Landroidx/media2/exoplayer/external/source/u$a;->b(Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/upstream/h;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;II",
            "Landroidx/media2/exoplayer/external/Format;",
            "I",
            "Ljava/lang/Object;",
            "JJJJJ",
            "Ljava/io/IOException;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    .line 627
    new-instance v11, Landroidx/media2/exoplayer/external/source/u$b;

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    move-wide/from16 v9, p17

    invoke-direct/range {v1 .. v10}, Landroidx/media2/exoplayer/external/source/u$b;-><init>(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v1, Landroidx/media2/exoplayer/external/source/u$c;

    move-wide/from16 v2, p9

    .line 636
    invoke-direct {p0, v2, v3}, Landroidx/media2/exoplayer/external/source/u$a;->a(J)J

    move-result-wide v2

    move-wide/from16 v4, p11

    .line 637
    invoke-direct {p0, v4, v5}, Landroidx/media2/exoplayer/external/source/u$a;->a(J)J

    move-result-wide v4

    move-object/from16 p9, v1

    move/from16 p10, p4

    move/from16 p11, p5

    move-object/from16 p12, p6

    move/from16 p13, p7

    move-object/from16 p14, p8

    move-wide/from16 p15, v2

    move-wide/from16 p17, v4

    invoke-direct/range {p9 .. p18}, Landroidx/media2/exoplayer/external/source/u$c;-><init>(IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    move-object/from16 v2, p19

    move/from16 v3, p20

    .line 627
    invoke-virtual {p0, v11, v1, v2, v3}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;Ljava/io/IOException;Z)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/upstream/h;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;IJJJ",
            "Ljava/io/IOException;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v13, p5

    move-wide/from16 v15, p7

    move-wide/from16 v17, p9

    move-object/from16 v19, p11

    move/from16 v20, p12

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 589
    invoke-virtual/range {v0 .. v20}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/upstream/h;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    move-wide/from16 v17, p8

    const/4 v4, 0x4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 456
    invoke-virtual/range {v0 .. v18}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    return-void
.end method

.method public final b()V
    .locals 5

    .line 385
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/u$a;->b:Landroidx/media2/exoplayer/external/source/t$a;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/t$a;

    .line 386
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/u$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/u$a$a;

    .line 387
    iget-object v3, v2, Landroidx/media2/exoplayer/external/source/u$a$a;->b:Landroidx/media2/exoplayer/external/source/u;

    .line 388
    iget-object v2, v2, Landroidx/media2/exoplayer/external/source/u$a$a;->a:Landroid/os/Handler;

    new-instance v4, Landroidx/media2/exoplayer/external/source/w;

    invoke-direct {v4, p0, v3, v0}, Landroidx/media2/exoplayer/external/source/w;-><init>(Landroidx/media2/exoplayer/external/source/u$a;Landroidx/media2/exoplayer/external/source/u;Landroidx/media2/exoplayer/external/source/t$a;)V

    invoke-static {v2, v4}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;)V
    .locals 4

    .line 502
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/u$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/u$a$a;

    .line 503
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/u$a$a;->b:Landroidx/media2/exoplayer/external/source/u;

    .line 504
    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/u$a$a;->a:Landroid/os/Handler;

    new-instance v3, Landroidx/media2/exoplayer/external/source/y;

    invoke-direct {v3, p0, v2, p1, p2}, Landroidx/media2/exoplayer/external/source/y;-><init>(Landroidx/media2/exoplayer/external/source/u$a;Landroidx/media2/exoplayer/external/source/u;Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;)V

    invoke-static {v1, v3}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/upstream/h;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;II",
            "Landroidx/media2/exoplayer/external/Format;",
            "I",
            "Ljava/lang/Object;",
            "JJJJJ)V"
        }
    .end annotation

    move-object v0, p0

    .line 551
    new-instance v11, Landroidx/media2/exoplayer/external/source/u$b;

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    move-wide/from16 v9, p17

    invoke-direct/range {v1 .. v10}, Landroidx/media2/exoplayer/external/source/u$b;-><init>(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v1, Landroidx/media2/exoplayer/external/source/u$c;

    move-wide/from16 v2, p9

    .line 560
    invoke-direct {p0, v2, v3}, Landroidx/media2/exoplayer/external/source/u$a;->a(J)J

    move-result-wide v2

    move-wide/from16 v4, p11

    .line 561
    invoke-direct {p0, v4, v5}, Landroidx/media2/exoplayer/external/source/u$a;->a(J)J

    move-result-wide v4

    move-object/from16 p9, v1

    move/from16 p10, p4

    move/from16 p11, p5

    move-object/from16 p12, p6

    move/from16 p13, p7

    move-object/from16 p14, p8

    move-wide/from16 p15, v2

    move-wide/from16 p17, v4

    invoke-direct/range {p9 .. p18}, Landroidx/media2/exoplayer/external/source/u$c;-><init>(IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    .line 551
    invoke-virtual {p0, v11, v1}, Landroidx/media2/exoplayer/external/source/u$a;->c(Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;)V

    return-void
.end method

.method public final b(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/upstream/h;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v13, p4

    move-wide/from16 v15, p6

    move-wide/from16 v17, p8

    const/4 v4, 0x4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 520
    invoke-virtual/range {v0 .. v18}, Landroidx/media2/exoplayer/external/source/u$a;->b(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJJJJ)V

    return-void
.end method

.method public final c()V
    .locals 5

    .line 663
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/u$a;->b:Landroidx/media2/exoplayer/external/source/t$a;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/t$a;

    .line 664
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/u$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/u$a$a;

    .line 665
    iget-object v3, v2, Landroidx/media2/exoplayer/external/source/u$a$a;->b:Landroidx/media2/exoplayer/external/source/u;

    .line 666
    iget-object v2, v2, Landroidx/media2/exoplayer/external/source/u$a$a;->a:Landroid/os/Handler;

    new-instance v4, Landroidx/media2/exoplayer/external/source/ab;

    invoke-direct {v4, p0, v3, v0}, Landroidx/media2/exoplayer/external/source/ab;-><init>(Landroidx/media2/exoplayer/external/source/u$a;Landroidx/media2/exoplayer/external/source/u;Landroidx/media2/exoplayer/external/source/t$a;)V

    invoke-static {v2, v4}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;)V
    .locals 4

    .line 566
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/u$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/u$a$a;

    .line 567
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/u$a$a;->b:Landroidx/media2/exoplayer/external/source/u;

    .line 568
    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/u$a$a;->a:Landroid/os/Handler;

    new-instance v3, Landroidx/media2/exoplayer/external/source/z;

    invoke-direct {v3, p0, v2, p1, p2}, Landroidx/media2/exoplayer/external/source/z;-><init>(Landroidx/media2/exoplayer/external/source/u$a;Landroidx/media2/exoplayer/external/source/u;Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;)V

    invoke-static {v1, v3}, Landroidx/media2/exoplayer/external/source/u$a;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.class final Lcom/google/android/gms/internal/ads/dky;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/gms/internal/ads/dqd;
.implements Lcom/google/android/gms/internal/ads/dqf;
.implements Lcom/google/android/gms/internal/ads/dri;


# instance fields
.field private A:I

.field private B:Lcom/google/android/gms/internal/ads/dld;

.field private C:J

.field private D:Lcom/google/android/gms/internal/ads/dlb;

.field private E:Lcom/google/android/gms/internal/ads/dlb;

.field private F:Lcom/google/android/gms/internal/ads/dlb;

.field private G:Lcom/google/android/gms/internal/ads/dln;

.field private final a:[Lcom/google/android/gms/internal/ads/dli;

.field private final b:[Lcom/google/android/gms/internal/ads/dll;

.field private final c:Lcom/google/android/gms/internal/ads/drj;

.field private final d:Lcom/google/android/gms/internal/ads/dlh;

.field private final e:Lcom/google/android/gms/internal/ads/dsl;

.field private final f:Lcom/google/android/gms/internal/ads/cnz;

.field private final g:Landroid/os/HandlerThread;

.field private final h:Lcom/google/android/gms/internal/ads/cnz;

.field private final i:Lcom/google/android/gms/internal/ads/dkt;

.field private final j:Lcom/google/android/gms/internal/ads/dlo;

.field private final k:Lcom/google/android/gms/internal/ads/dlp;

.field private l:Lcom/google/android/gms/internal/ads/dla;

.field private m:Lcom/google/android/gms/internal/ads/dlj;

.field private n:Lcom/google/android/gms/internal/ads/dli;

.field private o:Lcom/google/android/gms/internal/ads/dsd;

.field private p:Lcom/google/android/gms/internal/ads/dqg;

.field private q:[Lcom/google/android/gms/internal/ads/dli;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:J


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/dli;Lcom/google/android/gms/internal/ads/drj;Lcom/google/android/gms/internal/ads/dlh;ZILcom/google/android/gms/internal/ads/cnz;Lcom/google/android/gms/internal/ads/dla;Lcom/google/android/gms/internal/ads/dkt;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dky;->a:[Lcom/google/android/gms/internal/ads/dli;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dky;->c:Lcom/google/android/gms/internal/ads/drj;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dky;->d:Lcom/google/android/gms/internal/ads/dlh;

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/dky;->s:Z

    .line 6
    iput v1, p0, Lcom/google/android/gms/internal/ads/dky;->w:I

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/dky;->h:Lcom/google/android/gms/internal/ads/cnz;

    .line 8
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dky;->v:I

    .line 9
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    .line 10
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/dky;->i:Lcom/google/android/gms/internal/ads/dkt;

    .line 11
    array-length v0, p1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/dll;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->b:[Lcom/google/android/gms/internal/ads/dll;

    move v0, v1

    .line 12
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 13
    aget-object v2, p1, v0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/dli;->a(I)V

    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dky;->b:[Lcom/google/android/gms/internal/ads/dll;

    aget-object v3, p1, v0

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/dli;->b()Lcom/google/android/gms/internal/ads/dll;

    move-result-object v3

    aput-object v3, v2, v0

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dsl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dsl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->e:Lcom/google/android/gms/internal/ads/dsl;

    .line 17
    new-array v0, v1, [Lcom/google/android/gms/internal/ads/dli;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->q:[Lcom/google/android/gms/internal/ads/dli;

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/dlo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dlo;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->j:Lcom/google/android/gms/internal/ads/dlo;

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/dlp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dlp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->k:Lcom/google/android/gms/internal/ads/dlp;

    .line 20
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/drj;->a(Lcom/google/android/gms/internal/ads/dri;)V

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/dlj;->a:Lcom/google/android/gms/internal/ads/dlj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->m:Lcom/google/android/gms/internal/ads/dlj;

    .line 22
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ExoPlayerImplInternal:Handler"

    const/16 v2, -0x10

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->g:Landroid/os/HandlerThread;

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/cnz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dky;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/cnz;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->f:Lcom/google/android/gms/internal/ads/cnz;

    .line 25
    return-void
.end method

.method private final a(ILcom/google/android/gms/internal/ads/dln;Lcom/google/android/gms/internal/ads/dln;)I
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 691
    .line 692
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dln;->b()I

    move-result v3

    .line 693
    const/4 v0, 0x0

    move v1, v2

    :goto_0
    if-ge v0, v3, :cond_0

    if-ne v1, v2, :cond_0

    .line 694
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dky;->k:Lcom/google/android/gms/internal/ads/dlp;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dky;->j:Lcom/google/android/gms/internal/ads/dlo;

    iget v5, p0, Lcom/google/android/gms/internal/ads/dky;->w:I

    invoke-virtual {p2, p1, v1, v4, v5}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Lcom/google/android/gms/internal/ads/dlo;I)I

    move-result p1

    .line 695
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dky;->k:Lcom/google/android/gms/internal/ads/dlp;

    const/4 v4, 0x1

    .line 696
    invoke-virtual {p2, p1, v1, v4}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Z)Lcom/google/android/gms/internal/ads/dlp;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dlp;->a:Ljava/lang/Object;

    .line 697
    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/ads/dln;->a(Ljava/lang/Object;)I

    move-result v1

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 699
    :cond_0
    return v1
.end method

.method private final a(IJ)J
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 594
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dky;->e()V

    .line 595
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/dky;->t:Z

    .line 596
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/dky;->a(I)V

    .line 598
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    if-nez v0, :cond_2

    .line 599
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    if-eqz v0, :cond_8

    .line 600
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dlb;->d()V

    move-object v0, v2

    .line 607
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    if-eq v1, v4, :cond_5

    .line 608
    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dky;->q:[Lcom/google/android/gms/internal/ads/dli;

    array-length v5, v4

    move v1, v3

    :goto_1
    if-ge v1, v5, :cond_4

    aget-object v6, v4, v1

    .line 609
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/dli;->l()V

    .line 610
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 601
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    move-object v0, v2

    .line 602
    :goto_2
    if-eqz v1, :cond_0

    .line 603
    iget v4, v1, Lcom/google/android/gms/internal/ads/dlb;->f:I

    if-ne v4, p1, :cond_3

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/dlb;->i:Z

    if-eqz v4, :cond_3

    move-object v0, v1

    .line 606
    :goto_3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    goto :goto_2

    .line 605
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dlb;->d()V

    goto :goto_3

    .line 611
    :cond_4
    new-array v1, v3, [Lcom/google/android/gms/internal/ads/dli;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dky;->q:[Lcom/google/android/gms/internal/ads/dli;

    .line 612
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/dky;->o:Lcom/google/android/gms/internal/ads/dsd;

    .line 613
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/dky;->n:Lcom/google/android/gms/internal/ads/dli;

    .line 614
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    .line 615
    :cond_5
    if-eqz v0, :cond_7

    .line 616
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    .line 617
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    .line 618
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    .line 619
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dky;->b(Lcom/google/android/gms/internal/ads/dlb;)V

    .line 620
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/dlb;->j:Z

    if-eqz v0, :cond_6

    .line 621
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlb;->a:Lcom/google/android/gms/internal/ads/dqe;

    invoke-interface {v0, p2, p3}, Lcom/google/android/gms/internal/ads/dqe;->c(J)J

    move-result-wide p2

    .line 622
    :cond_6
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/dky;->a(J)V

    .line 623
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dky;->i()V

    .line 628
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->f:Lcom/google/android/gms/internal/ads/cnz;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/cnz;->sendEmptyMessage(I)Z

    .line 629
    return-wide p2

    .line 624
    :cond_7
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    .line 625
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    .line 626
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    .line 627
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/dky;->a(J)V

    goto :goto_4

    :cond_8
    move-object v0, v2

    goto :goto_0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dld;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dld;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 709
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dld;->a:Lcom/google/android/gms/internal/ads/dln;

    .line 710
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dln;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 711
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    move-object v2, v0

    .line 712
    :goto_0
    :try_start_0
    iget v0, p1, Lcom/google/android/gms/internal/ads/dld;->b:I

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/dld;->c:J

    invoke-direct {p0, v2, v0, v4, v5}, Lcom/google/android/gms/internal/ads/dky;->b(Lcom/google/android/gms/internal/ads/dln;IJ)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 716
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    if-ne v0, v2, :cond_0

    move-object v0, v1

    .line 728
    :goto_1
    return-object v0

    .line 715
    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    iget v2, p1, Lcom/google/android/gms/internal/ads/dld;->b:I

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/dld;->c:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhg;-><init>(Lcom/google/android/gms/internal/ads/dln;IJ)V

    throw v0

    .line 718
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 719
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dky;->k:Lcom/google/android/gms/internal/ads/dlp;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Z)Lcom/google/android/gms/internal/ads/dlp;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlp;->a:Ljava/lang/Object;

    .line 720
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/dln;->a(Ljava/lang/Object;)I

    move-result v0

    .line 721
    if-eq v0, v6, :cond_1

    .line 722
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    .line 723
    :cond_1
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/dky;->a(ILcom/google/android/gms/internal/ads/dln;Lcom/google/android/gms/internal/ads/dln;)I

    move-result v0

    .line 724
    if-eq v0, v6, :cond_2

    .line 725
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dky;->k:Lcom/google/android/gms/internal/ads/dlp;

    .line 726
    invoke-virtual {v1, v0, v2, v7}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Z)Lcom/google/android/gms/internal/ads/dlp;

    .line 727
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v7, v0, v1}, Lcom/google/android/gms/internal/ads/dky;->b(IJ)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    .line 728
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dln;IJJ)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dln;",
            "IJJ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x0

    .line 731
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dln;->a()I

    move-result v0

    invoke-static {p2, v3, v0}, Lcom/google/android/gms/internal/ads/drz;->a(III)I

    .line 732
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dky;->j:Lcom/google/android/gms/internal/ads/dlo;

    move-object v0, p1

    move v1, p2

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlo;ZJ)Lcom/google/android/gms/internal/ads/dlo;

    .line 733
    cmp-long v0, p3, v6

    if-nez v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->j:Lcom/google/android/gms/internal/ads/dlo;

    .line 735
    iget-wide p3, v0, Lcom/google/android/gms/internal/ads/dlo;->h:J

    .line 737
    cmp-long v0, p3, v6

    if-nez v0, :cond_0

    .line 738
    const/4 v0, 0x0

    .line 747
    :goto_0
    return-object v0

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->j:Lcom/google/android/gms/internal/ads/dlo;

    .line 740
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/dlo;->j:J

    .line 741
    add-long/2addr v0, p3

    .line 742
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dky;->k:Lcom/google/android/gms/internal/ads/dlp;

    .line 743
    invoke-virtual {p1, v3, v2, v3}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Z)Lcom/google/android/gms/internal/ads/dlp;

    move-result-object v2

    .line 744
    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/dlp;->c:J

    .line 746
    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    cmp-long v2, v0, v4

    if-ltz v2, :cond_1

    .line 747
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method private final a(I)V
    .locals 3

    .prologue
    .line 545
    iget v0, p0, Lcom/google/android/gms/internal/ads/dky;->v:I

    if-eq v0, p1, :cond_0

    .line 546
    iput p1, p0, Lcom/google/android/gms/internal/ads/dky;->v:I

    .line 547
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->h:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/cnz;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 548
    :cond_0
    return-void
.end method

.method private final a(J)V
    .locals 7

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    if-nez v0, :cond_0

    .line 631
    const-wide/32 v0, 0x3938700

    add-long/2addr v0, p1

    .line 634
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dky;->C:J

    .line 635
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->e:Lcom/google/android/gms/internal/ads/dsl;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dky;->C:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/dsl;->a(J)V

    .line 636
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dky;->q:[Lcom/google/android/gms/internal/ads/dli;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 637
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dky;->C:J

    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/internal/ads/dli;->a(J)V

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    .line 633
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dlb;->a()J

    move-result-wide v0

    add-long/2addr v0, p1

    goto :goto_0

    .line 639
    :cond_1
    return-void
.end method

.method private final a(JJ)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 587
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->f:Lcom/google/android/gms/internal/ads/cnz;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/cnz;->removeMessages(I)V

    .line 588
    add-long v0, p1, p3

    .line 589
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 590
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 591
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->f:Lcom/google/android/gms/internal/ads/cnz;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/cnz;->sendEmptyMessage(I)Z

    .line 593
    :goto_0
    return-void

    .line 592
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dky;->f:Lcom/google/android/gms/internal/ads/cnz;

    invoke-virtual {v2, v4, v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/dlb;)V
    .locals 0

    .prologue
    .line 761
    :goto_0
    if-eqz p0, :cond_0

    .line 762
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dlb;->d()V

    .line 763
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    goto :goto_0

    .line 764
    :cond_0
    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/dli;)V
    .locals 2

    .prologue
    .line 671
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/dli;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 672
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/dli;->k()V

    .line 673
    :cond_0
    return-void
.end method

.method private final a(Ljava/lang/Object;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 682
    new-instance v0, Lcom/google/android/gms/internal/ads/dla;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dla;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    .line 683
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dky;->b(Ljava/lang/Object;I)V

    .line 684
    new-instance v0, Lcom/google/android/gms/internal/ads/dla;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dla;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    .line 685
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dky;->a(I)V

    .line 686
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dky;->c(Z)V

    .line 687
    return-void
.end method

.method private final a([ZI)V
    .locals 12

    .prologue
    .line 789
    new-array v0, p2, [Lcom/google/android/gms/internal/ads/dli;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->q:[Lcom/google/android/gms/internal/ads/dli;

    .line 790
    const/4 v1, 0x0

    .line 791
    const/4 v0, 0x0

    move v9, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->a:[Lcom/google/android/gms/internal/ads/dli;

    array-length v0, v0

    if-ge v9, v0, :cond_7

    .line 792
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->a:[Lcom/google/android/gms/internal/ads/dli;

    aget-object v0, v0, v9

    .line 793
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dlb;->l:Lcom/google/android/gms/internal/ads/drl;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/drl;->b:Lcom/google/android/gms/internal/ads/drg;

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/drg;->a(I)Lcom/google/android/gms/internal/ads/dre;

    move-result-object v4

    .line 794
    if-eqz v4, :cond_6

    .line 795
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dky;->q:[Lcom/google/android/gms/internal/ads/dli;

    add-int/lit8 v11, v1, 0x1

    aput-object v0, v2, v1

    .line 796
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dli;->d()I

    move-result v1

    if-nez v1, :cond_5

    .line 797
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dlb;->l:Lcom/google/android/gms/internal/ads/drl;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/drl;->d:[Lcom/google/android/gms/internal/ads/dlk;

    aget-object v1, v1, v9

    .line 798
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/dky;->s:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/ads/dky;->v:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v10, v2

    .line 799
    :goto_1
    aget-boolean v2, p1, v9

    if-nez v2, :cond_1

    if-eqz v10, :cond_1

    const/4 v6, 0x1

    .line 800
    :goto_2
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dre;->b()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/dlf;

    .line 801
    const/4 v3, 0x0

    :goto_3
    array-length v5, v2

    if-ge v3, v5, :cond_2

    .line 802
    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/dre;->a(I)Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v5

    aput-object v5, v2, v3

    .line 803
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 798
    :cond_0
    const/4 v2, 0x0

    move v10, v2

    goto :goto_1

    .line 799
    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 804
    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/dlb;->d:[Lcom/google/android/gms/internal/ads/dqo;

    aget-object v3, v3, v9

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dky;->C:J

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    .line 805
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/dlb;->a()J

    move-result-wide v7

    .line 806
    invoke-interface/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/dli;->a(Lcom/google/android/gms/internal/ads/dlk;[Lcom/google/android/gms/internal/ads/dlf;Lcom/google/android/gms/internal/ads/dqo;JZJ)V

    .line 807
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dli;->c()Lcom/google/android/gms/internal/ads/dsd;

    move-result-object v1

    .line 808
    if-eqz v1, :cond_4

    .line 809
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dky;->o:Lcom/google/android/gms/internal/ads/dsd;

    if-eqz v2, :cond_3

    .line 810
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Multiple renderer media clocks enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgq;->a(Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/zzgq;

    move-result-object v0

    throw v0

    .line 811
    :cond_3
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dky;->o:Lcom/google/android/gms/internal/ads/dsd;

    .line 812
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->n:Lcom/google/android/gms/internal/ads/dli;

    .line 813
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dky;->o:Lcom/google/android/gms/internal/ads/dsd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dky;->m:Lcom/google/android/gms/internal/ads/dlj;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/dsd;->a(Lcom/google/android/gms/internal/ads/dlj;)Lcom/google/android/gms/internal/ads/dlj;

    .line 814
    :cond_4
    if-eqz v10, :cond_5

    .line 815
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dli;->e()V

    :cond_5
    move v1, v11

    .line 816
    :cond_6
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_0

    .line 817
    :cond_7
    return-void
.end method

.method private final b(IJ)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 729
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/dky;->b(Lcom/google/android/gms/internal/ads/dln;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private final b(Lcom/google/android/gms/internal/ads/dln;IJ)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dln;",
            "IJ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 730
    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/dky;->a(Lcom/google/android/gms/internal/ads/dln;IJJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private final b(Lcom/google/android/gms/internal/ads/dlb;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 765
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    if-ne v0, p1, :cond_0

    .line 788
    :goto_0
    return-void

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->a:[Lcom/google/android/gms/internal/ads/dli;

    array-length v0, v0

    new-array v4, v0, [Z

    move v0, v1

    move v2, v1

    .line 769
    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dky;->a:[Lcom/google/android/gms/internal/ads/dli;

    array-length v3, v3

    if-ge v0, v3, :cond_6

    .line 770
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dky;->a:[Lcom/google/android/gms/internal/ads/dli;

    aget-object v5, v3, v0

    .line 771
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dli;->d()I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_2
    aput-boolean v3, v4, v0

    .line 772
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/dlb;->l:Lcom/google/android/gms/internal/ads/drl;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/drl;->b:Lcom/google/android/gms/internal/ads/drg;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/drg;->a(I)Lcom/google/android/gms/internal/ads/dre;

    move-result-object v3

    .line 773
    if-eqz v3, :cond_1

    .line 774
    add-int/lit8 v2, v2, 0x1

    .line 775
    :cond_1
    aget-boolean v6, v4, v0

    if-eqz v6, :cond_4

    if-eqz v3, :cond_2

    .line 776
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dli;->i()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 777
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dli;->f()Lcom/google/android/gms/internal/ads/dqo;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/dlb;->d:[Lcom/google/android/gms/internal/ads/dqo;

    aget-object v6, v6, v0

    if-ne v3, v6, :cond_4

    .line 778
    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dky;->n:Lcom/google/android/gms/internal/ads/dli;

    if-ne v5, v3, :cond_3

    .line 779
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dky;->e:Lcom/google/android/gms/internal/ads/dsl;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dky;->o:Lcom/google/android/gms/internal/ads/dsd;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/dsl;->a(Lcom/google/android/gms/internal/ads/dsd;)V

    .line 780
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/dky;->o:Lcom/google/android/gms/internal/ads/dsd;

    .line 781
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/dky;->n:Lcom/google/android/gms/internal/ads/dli;

    .line 782
    :cond_3
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/dky;->a(Lcom/google/android/gms/internal/ads/dli;)V

    .line 783
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dli;->l()V

    .line 784
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v3, v1

    .line 771
    goto :goto_2

    .line 785
    :cond_6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    .line 786
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->h:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v1, 0x3

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/dlb;->l:Lcom/google/android/gms/internal/ads/drl;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/cnz;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 787
    invoke-direct {p0, v4, v2}, Lcom/google/android/gms/internal/ads/dky;->a([ZI)V

    goto :goto_0
.end method

.method private final b(Ljava/lang/Object;I)V
    .locals 5

    .prologue
    .line 688
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->h:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v1, 0x6

    new-instance v2, Lcom/google/android/gms/internal/ads/dlc;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    invoke-direct {v2, v3, p1, v4, p2}, Lcom/google/android/gms/internal/ads/dlc;-><init>(Lcom/google/android/gms/internal/ads/dln;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dla;I)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cnz;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 689
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 690
    return-void
.end method

.method private final b(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 549
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dky;->u:Z

    if-eq v0, p1, :cond_0

    .line 550
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/dky;->u:Z

    .line 551
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dky;->h:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v3, 0x2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 552
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 551
    goto :goto_0
.end method

.method private final b(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 700
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dky;->k:Lcom/google/android/gms/internal/ads/dlp;

    .line 701
    invoke-virtual {v1, p1, v2, v0}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Z)Lcom/google/android/gms/internal/ads/dlp;

    .line 702
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dky;->j:Lcom/google/android/gms/internal/ads/dlo;

    .line 703
    invoke-virtual {v1, v0, v2, v0}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlo;Z)Lcom/google/android/gms/internal/ads/dlo;

    move-result-object v1

    .line 704
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/dlo;->e:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dky;->k:Lcom/google/android/gms/internal/ads/dlp;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dky;->j:Lcom/google/android/gms/internal/ads/dlo;

    iget v4, p0, Lcom/google/android/gms/internal/ads/dky;->w:I

    .line 706
    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Lcom/google/android/gms/internal/ads/dlo;I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 707
    const/4 v0, 0x1

    .line 708
    :cond_0
    return v0
.end method

.method private final b(J)Z
    .locals 3

    .prologue
    .line 674
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/dla;->c:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/dlb;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final c(Z)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 644
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->f:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->removeMessages(I)V

    .line 645
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/dky;->t:Z

    .line 646
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->e:Lcom/google/android/gms/internal/ads/dsl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsl;->b()V

    .line 647
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/dky;->o:Lcom/google/android/gms/internal/ads/dsd;

    .line 648
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/dky;->n:Lcom/google/android/gms/internal/ads/dli;

    .line 649
    const-wide/32 v0, 0x3938700

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dky;->C:J

    .line 650
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dky;->q:[Lcom/google/android/gms/internal/ads/dli;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    .line 651
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dky;->a(Lcom/google/android/gms/internal/ads/dli;)V

    .line 652
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dli;->l()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgq; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 654
    :catch_0
    move-exception v0

    .line 655
    :goto_2
    const-string/jumbo v5, "ExoPlayerImplInternal"

    const-string/jumbo v6, "Stop failed."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 657
    :cond_0
    new-array v0, v2, [Lcom/google/android/gms/internal/ads/dli;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->q:[Lcom/google/android/gms/internal/ads/dli;

    .line 658
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    .line 660
    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dky;->a(Lcom/google/android/gms/internal/ads/dlb;)V

    .line 661
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    .line 662
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    .line 663
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    .line 664
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/dky;->b(Z)V

    .line 665
    if-eqz p1, :cond_2

    .line 666
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->p:Lcom/google/android/gms/internal/ads/dqg;

    if-eqz v0, :cond_1

    .line 667
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->p:Lcom/google/android/gms/internal/ads/dqg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dqg;->b()V

    .line 668
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/dky;->p:Lcom/google/android/gms/internal/ads/dqg;

    .line 669
    :cond_1
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    .line 670
    :cond_2
    return-void

    .line 659
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    goto :goto_3

    .line 654
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private final d()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 553
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dky;->t:Z

    .line 554
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dky;->e:Lcom/google/android/gms/internal/ads/dsl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dsl;->a()V

    .line 555
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dky;->q:[Lcom/google/android/gms/internal/ads/dli;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 556
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/dli;->e()V

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 558
    :cond_0
    return-void
.end method

.method private final e()V
    .locals 4

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->e:Lcom/google/android/gms/internal/ads/dsl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsl;->b()V

    .line 560
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dky;->q:[Lcom/google/android/gms/internal/ads/dli;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 561
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/dky;->a(Lcom/google/android/gms/internal/ads/dli;)V

    .line 562
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    :cond_0
    return-void
.end method

.method private final f()V
    .locals 6

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 564
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    if-nez v0, :cond_0

    .line 586
    :goto_0
    return-void

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlb;->a:Lcom/google/android/gms/internal/ads/dqe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dqe;->e()J

    move-result-wide v0

    .line 567
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v4

    if-eqz v4, :cond_2

    .line 568
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dky;->a(J)V

    .line 576
    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    iput-wide v0, v4, Lcom/google/android/gms/internal/ads/dla;->c:J

    .line 577
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dky;->z:J

    .line 578
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->q:[Lcom/google/android/gms/internal/ads/dli;

    array-length v0, v0

    if-nez v0, :cond_4

    move-wide v0, v2

    .line 580
    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 581
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    iget v1, v1, Lcom/google/android/gms/internal/ads/dlb;->f:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dky;->k:Lcom/google/android/gms/internal/ads/dlp;

    .line 582
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Z)Lcom/google/android/gms/internal/ads/dlp;

    move-result-object v0

    .line 583
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/dlp;->c:J

    .line 585
    :cond_1
    iput-wide v0, v4, Lcom/google/android/gms/internal/ads/dla;->d:J

    goto :goto_0

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->n:Lcom/google/android/gms/internal/ads/dli;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->n:Lcom/google/android/gms/internal/ads/dli;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dli;->u()Z

    move-result v0

    if-nez v0, :cond_3

    .line 570
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->o:Lcom/google/android/gms/internal/ads/dsd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dsd;->w()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dky;->C:J

    .line 571
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->e:Lcom/google/android/gms/internal/ads/dsl;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dky;->C:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/dsl;->a(J)V

    .line 573
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dky;->C:J

    .line 574
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dlb;->a()J

    move-result-wide v0

    sub-long v0, v4, v0

    .line 575
    goto :goto_1

    .line 572
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->e:Lcom/google/android/gms/internal/ads/dsl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsl;->w()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dky;->C:J

    goto :goto_3

    .line 579
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlb;->a:Lcom/google/android/gms/internal/ads/dqe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dqe;->f()J

    move-result-wide v0

    goto :goto_2
.end method

.method private final g()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 640
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dky;->c(Z)V

    .line 641
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->d:Lcom/google/android/gms/internal/ads/dlh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dlh;->b()V

    .line 642
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dky;->a(I)V

    .line 643
    return-void
.end method

.method private final h()V
    .locals 4

    .prologue
    .line 675
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/dlb;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    if-ne v0, v1, :cond_1

    .line 676
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dky;->q:[Lcom/google/android/gms/internal/ads/dli;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 677
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/dli;->g()Z

    move-result v3

    if-nez v3, :cond_2

    .line 681
    :cond_1
    :goto_1
    return-void

    .line 679
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 680
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlb;->a:Lcom/google/android/gms/internal/ads/dqe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dqe;->c()V

    goto :goto_1
.end method

.method private final i()V
    .locals 6

    .prologue
    .line 748
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/dlb;->i:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    .line 750
    :goto_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 751
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dky;->b(Z)V

    .line 760
    :cond_0
    :goto_1
    return-void

    .line 749
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlb;->a:Lcom/google/android/gms/internal/ads/dqe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dqe;->n_()J

    move-result-wide v0

    goto :goto_0

    .line 752
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dky;->C:J

    .line 753
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dlb;->a()J

    move-result-wide v2

    sub-long v2, v4, v2

    .line 755
    sub-long/2addr v0, v2

    .line 756
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dky;->d:Lcom/google/android/gms/internal/ads/dlh;

    invoke-interface {v4, v0, v1}, Lcom/google/android/gms/internal/ads/dlh;->a(J)Z

    move-result v0

    .line 757
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dky;->b(Z)V

    .line 758
    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dlb;->a:Lcom/google/android/gms/internal/ads/dqe;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/dqe;->a(J)Z

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->f:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->sendEmptyMessage(I)Z

    .line 35
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dln;IJ)V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->f:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v1, 0x3

    new-instance v2, Lcom/google/android/gms/internal/ads/dld;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/dld;-><init>(Lcom/google/android/gms/internal/ads/dln;IJ)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cnz;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 33
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dln;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->f:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v1, 0x7

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cnz;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 66
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dqe;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->f:Lcom/google/android/gms/internal/ads/cnz;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/cnz;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 68
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dqg;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->f:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, v2, p1}, Lcom/google/android/gms/internal/ads/cnz;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 28
    return-void
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/dqr;)V
    .locals 2

    .prologue
    .line 818
    check-cast p1, Lcom/google/android/gms/internal/ads/dqe;

    .line 819
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->f:Lcom/google/android/gms/internal/ads/cnz;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/cnz;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 820
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 29
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dky;->f:Lcom/google/android/gms/internal/ads/cnz;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v1, v0, v2}, Lcom/google/android/gms/internal/ads/cnz;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 30
    return-void

    :cond_0
    move v0, v2

    .line 29
    goto :goto_0
.end method

.method public final varargs a([Lcom/google/android/gms/internal/ads/dku;)V
    .locals 2

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dky;->r:Z

    if-eqz v0, :cond_0

    .line 37
    const-string/jumbo v0, "ExoPlayerImplInternal"

    const-string/jumbo v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dky;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dky;->x:I

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->f:Lcom/google/android/gms/internal/ads/cnz;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/cnz;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dky;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 64
    :goto_0
    monitor-exit p0

    return-void

    .line 56
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->f:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->sendEmptyMessage(I)Z

    .line 57
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dky;->r:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 58
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 61
    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 63
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public final varargs declared-synchronized b([Lcom/google/android/gms/internal/ads/dku;)V
    .locals 3

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dky;->r:Z

    if-eqz v0, :cond_1

    .line 43
    const-string/jumbo v0, "ExoPlayerImplInternal"

    const-string/jumbo v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    monitor-exit p0

    return-void

    .line 45
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/dky;->x:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/dky;->x:I

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dky;->f:Lcom/google/android/gms/internal/ads/cnz;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/cnz;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 47
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/dky;->y:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v1, v0, :cond_0

    .line 48
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dky;->f:Lcom/google/android/gms/internal/ads/cnz;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->sendEmptyMessage(I)Z

    .line 70
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 20

    .prologue
    .line 71
    :try_start_0
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 528
    const/4 v4, 0x0

    .line 544
    :goto_0
    return v4

    .line 72
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/dqg;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    .line 73
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dky;->h:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/cnz;->sendEmptyMessage(I)Z

    .line 74
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/dky;->c(Z)V

    .line 75
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dky;->d:Lcom/google/android/gms/internal/ads/dlh;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/dlh;->a()V

    .line 76
    if-eqz v5, :cond_0

    .line 77
    new-instance v5, Lcom/google/android/gms/internal/ads/dla;

    const/4 v6, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v5, v6, v8, v9}, Lcom/google/android/gms/internal/ads/dla;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    .line 78
    :cond_0
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->p:Lcom/google/android/gms/internal/ads/dqg;

    .line 79
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->i:Lcom/google/android/gms/internal/ads/dkt;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-interface {v4, v5, v6, v0}, Lcom/google/android/gms/internal/ads/dqg;->a(Lcom/google/android/gms/internal/ads/dkt;ZLcom/google/android/gms/internal/ads/dqf;)V

    .line 80
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/dky;->a(I)V

    .line 81
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->f:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/cnz;->sendEmptyMessage(I)Z

    .line 82
    const/4 v4, 0x1

    goto :goto_0

    .line 72
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 83
    :pswitch_1
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    .line 84
    :goto_2
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/dky;->t:Z

    .line 85
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/dky;->s:Z

    .line 86
    if-nez v4, :cond_4

    .line 87
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dky;->e()V

    .line 88
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dky;->f()V

    .line 94
    :cond_2
    :goto_3
    const/4 v4, 0x1

    goto :goto_0

    .line 83
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 89
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/dky;->v:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 90
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dky;->d()V

    .line 91
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->f:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/cnz;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgq; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_3

    .line 529
    :catch_0
    move-exception v4

    .line 530
    const-string/jumbo v5, "ExoPlayerImplInternal"

    const-string/jumbo v6, "Renderer error."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->h:Lcom/google/android/gms/internal/ads/cnz;

    const/16 v6, 0x8

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/internal/ads/cnz;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 532
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dky;->g()V

    .line 533
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 92
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/dky;->v:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 93
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->f:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/cnz;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzgq; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 534
    :catch_1
    move-exception v4

    .line 535
    const-string/jumbo v5, "ExoPlayerImplInternal"

    const-string/jumbo v6, "Source error."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->h:Lcom/google/android/gms/internal/ads/cnz;

    const/16 v6, 0x8

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgq;->a(Ljava/io/IOException;)Lcom/google/android/gms/internal/ads/zzgq;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/internal/ads/cnz;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 537
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dky;->g()V

    .line 538
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 95
    :pswitch_2
    :try_start_2
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 96
    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/android/gms/internal/ads/dky;->w:I

    .line 97
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    if-eqz v4, :cond_6

    .line 98
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    .line 99
    :goto_4
    if-eqz v7, :cond_f

    .line 100
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    if-ne v7, v4, :cond_7

    const/4 v6, 0x1

    .line 101
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    if-ne v7, v4, :cond_8

    const/4 v4, 0x1

    move v5, v4

    .line 102
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    iget v9, v7, Lcom/google/android/gms/internal/ads/dlb;->f:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/dky;->k:Lcom/google/android/gms/internal/ads/dlp;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/dky;->j:Lcom/google/android/gms/internal/ads/dlo;

    invoke-virtual {v4, v9, v10, v11, v8}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Lcom/google/android/gms/internal/ads/dlo;I)I

    move-result v4

    .line 103
    iget-object v9, v7, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    if-eqz v9, :cond_b

    const/4 v9, -0x1

    if-eq v4, v9, :cond_b

    iget-object v9, v7, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    iget v9, v9, Lcom/google/android/gms/internal/ads/dlb;->f:I

    if-ne v9, v4, :cond_b

    .line 104
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    .line 105
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    if-ne v7, v4, :cond_9

    const/4 v4, 0x1

    :goto_7
    or-int/2addr v6, v4

    .line 106
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    if-ne v7, v4, :cond_a

    const/4 v4, 0x1

    :goto_8
    or-int/2addr v4, v5

    move v5, v4

    .line 107
    goto :goto_6

    .line 98
    :cond_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    goto :goto_4

    .line 100
    :cond_7
    const/4 v6, 0x0

    goto :goto_5

    .line 101
    :cond_8
    const/4 v4, 0x0

    move v5, v4

    goto :goto_6

    .line 105
    :cond_9
    const/4 v4, 0x0

    goto :goto_7

    .line 106
    :cond_a
    const/4 v4, 0x0

    goto :goto_8

    .line 108
    :cond_b
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    if-eqz v4, :cond_c

    .line 109
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/dky;->a(Lcom/google/android/gms/internal/ads/dlb;)V

    .line 110
    const/4 v4, 0x0

    iput-object v4, v7, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    .line 111
    :cond_c
    iget v4, v7, Lcom/google/android/gms/internal/ads/dlb;->f:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/dky;->b(I)Z

    move-result v4

    iput-boolean v4, v7, Lcom/google/android/gms/internal/ads/dlb;->h:Z

    .line 112
    if-nez v5, :cond_d

    .line 113
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    .line 114
    :cond_d
    if-nez v6, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    if-eqz v4, :cond_e

    .line 115
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    iget v4, v4, Lcom/google/android/gms/internal/ads/dlb;->f:I

    .line 116
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/dla;->c:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lcom/google/android/gms/internal/ads/dky;->a(IJ)J

    move-result-wide v6

    .line 117
    new-instance v5, Lcom/google/android/gms/internal/ads/dla;

    invoke-direct {v5, v4, v6, v7}, Lcom/google/android/gms/internal/ads/dla;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    .line 118
    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/dky;->v:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_f

    if-eqz v8, :cond_f

    .line 119
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/dky;->a(I)V

    .line 120
    :cond_f
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 122
    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 124
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    if-nez v4, :cond_11

    .line 125
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->p:Lcom/google/android/gms/internal/ads/dqg;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dqg;->a()V

    .line 233
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    if-nez v4, :cond_27

    .line 234
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dky;->h()V

    .line 235
    const-wide/16 v4, 0xa

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/dky;->a(JJ)V

    .line 307
    :goto_9
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 128
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    if-nez v4, :cond_15

    .line 129
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    iget v14, v4, Lcom/google/android/gms/internal/ads/dla;->a:I

    .line 141
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dln;->b()I

    move-result v4

    if-lt v14, v4, :cond_17

    .line 142
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->p:Lcom/google/android/gms/internal/ads/dqg;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dqg;->a()V

    .line 180
    :cond_12
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dlb;->b()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 181
    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/dky;->b(Z)V

    .line 184
    :cond_14
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    if-eqz v4, :cond_10

    .line 185
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    if-eq v4, v5, :cond_1e

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/dky;->C:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/dlb;->e:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1e

    .line 186
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dlb;->d()V

    .line 187
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/dky;->b(Lcom/google/android/gms/internal/ads/dlb;)V

    .line 188
    new-instance v4, Lcom/google/android/gms/internal/ads/dla;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    iget v5, v5, Lcom/google/android/gms/internal/ads/dlb;->f:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/dlb;->g:J

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/dla;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    .line 189
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dky;->f()V

    .line 190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->h:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ads/cnz;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzgq; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_d

    .line 539
    :catch_2
    move-exception v4

    .line 540
    const-string/jumbo v5, "ExoPlayerImplInternal"

    const-string/jumbo v6, "Internal runtime error."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 541
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->h:Lcom/google/android/gms/internal/ads/cnz;

    const/16 v6, 0x8

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgq;->a(Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/zzgq;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/internal/ads/cnz;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 542
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 543
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dky;->g()V

    .line 544
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 130
    :cond_15
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    iget v4, v4, Lcom/google/android/gms/internal/ads/dlb;->f:I

    .line 131
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/dlb;->h:Z

    if-nez v5, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/dlb;->b()Z

    move-result v5

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dky;->k:Lcom/google/android/gms/internal/ads/dlp;

    .line 133
    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Z)Lcom/google/android/gms/internal/ads/dlp;

    move-result-object v5

    .line 134
    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/dlp;->c:J

    .line 135
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v6, v8

    if-eqz v5, :cond_12

    .line 137
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    if-eqz v5, :cond_16

    .line 138
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    iget v5, v5, Lcom/google/android/gms/internal/ads/dlb;->c:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    iget v6, v6, Lcom/google/android/gms/internal/ads/dlb;->c:I

    sub-int/2addr v5, v6

    .line 139
    const/16 v6, 0x64

    if-eq v5, v6, :cond_12

    .line 140
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dky;->k:Lcom/google/android/gms/internal/ads/dlp;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dky;->j:Lcom/google/android/gms/internal/ads/dlo;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/gms/internal/ads/dky;->w:I

    invoke-virtual {v5, v4, v6, v7, v8}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Lcom/google/android/gms/internal/ads/dlo;I)I

    move-result v14

    goto/16 :goto_a

    .line 144
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    if-nez v4, :cond_19

    .line 145
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    iget-wide v0, v4, Lcom/google/android/gms/internal/ads/dla;->c:J

    move-wide/from16 v16, v0

    .line 164
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    if-nez v4, :cond_1b

    .line 165
    const-wide/32 v4, 0x3938700

    add-long v7, v16, v4

    .line 171
    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    if-nez v4, :cond_1c

    const/4 v13, 0x0

    .line 172
    :goto_10
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/ads/dky;->b(I)Z

    move-result v15

    .line 173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->k:Lcom/google/android/gms/internal/ads/dlp;

    const/4 v6, 0x1

    invoke-virtual {v4, v14, v5, v6}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Z)Lcom/google/android/gms/internal/ads/dlp;

    .line 174
    new-instance v4, Lcom/google/android/gms/internal/ads/dlb;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->a:[Lcom/google/android/gms/internal/ads/dli;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dky;->b:[Lcom/google/android/gms/internal/ads/dll;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/dky;->c:Lcom/google/android/gms/internal/ads/drj;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/dky;->d:Lcom/google/android/gms/internal/ads/dlh;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/dky;->p:Lcom/google/android/gms/internal/ads/dqg;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/dky;->k:Lcom/google/android/gms/internal/ads/dlp;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/dlp;->a:Ljava/lang/Object;

    invoke-direct/range {v4 .. v17}, Lcom/google/android/gms/internal/ads/dlb;-><init>([Lcom/google/android/gms/internal/ads/dli;[Lcom/google/android/gms/internal/ads/dll;JLcom/google/android/gms/internal/ads/drj;Lcom/google/android/gms/internal/ads/dlh;Lcom/google/android/gms/internal/ads/dqg;Ljava/lang/Object;IIZJ)V

    .line 175
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    if-eqz v5, :cond_18

    .line 176
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    iput-object v4, v5, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    .line 177
    :cond_18
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    .line 178
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/dlb;->a:Lcom/google/android/gms/internal/ads/dqe;

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-interface {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/dqe;->a(Lcom/google/android/gms/internal/ads/dqd;J)V

    .line 179
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/dky;->b(Z)V

    goto/16 :goto_b

    .line 146
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->k:Lcom/google/android/gms/internal/ads/dlp;

    .line 147
    const/4 v6, 0x0

    invoke-virtual {v4, v14, v5, v6}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Z)Lcom/google/android/gms/internal/ads/dlp;

    .line 148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->j:Lcom/google/android/gms/internal/ads/dlo;

    .line 150
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v5, v7}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlo;Z)Lcom/google/android/gms/internal/ads/dlo;

    .line 151
    if-eqz v14, :cond_1a

    .line 152
    const-wide/16 v16, 0x0

    goto/16 :goto_e

    .line 153
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dlb;->a()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    iget v7, v7, Lcom/google/android/gms/internal/ads/dlb;->f:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dky;->k:Lcom/google/android/gms/internal/ads/dlp;

    .line 155
    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Z)Lcom/google/android/gms/internal/ads/dlp;

    move-result-object v6

    .line 156
    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/dlp;->c:J

    .line 157
    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/dky;->C:J

    sub-long/2addr v4, v6

    .line 158
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    const/4 v7, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v10, 0x0

    .line 159
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    move-object/from16 v5, p0

    .line 160
    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/dky;->a(Lcom/google/android/gms/internal/ads/dln;IJJ)Landroid/util/Pair;

    move-result-object v5

    .line 161
    if-eqz v5, :cond_12

    .line 162
    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 163
    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    goto/16 :goto_e

    .line 166
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dlb;->a()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    iget v7, v7, Lcom/google/android/gms/internal/ads/dlb;->f:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dky;->k:Lcom/google/android/gms/internal/ads/dlp;

    .line 168
    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Z)Lcom/google/android/gms/internal/ads/dlp;

    move-result-object v6

    .line 169
    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/dlp;->c:J

    .line 170
    add-long v7, v4, v6

    goto/16 :goto_f

    .line 171
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    iget v4, v4, Lcom/google/android/gms/internal/ads/dlb;->c:I

    add-int/lit8 v13, v4, 0x1

    goto/16 :goto_10

    .line 182
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/dky;->u:Z

    if-nez v4, :cond_14

    .line 183
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dky;->i()V

    goto/16 :goto_c

    .line 191
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/dlb;->h:Z

    if-eqz v4, :cond_20

    .line 192
    const/4 v4, 0x0

    :goto_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->a:[Lcom/google/android/gms/internal/ads/dli;

    array-length v5, v5

    if-ge v4, v5, :cond_10

    .line 193
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->a:[Lcom/google/android/gms/internal/ads/dli;

    aget-object v5, v5, v4

    .line 194
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/dlb;->d:[Lcom/google/android/gms/internal/ads/dqo;

    aget-object v6, v6, v4

    .line 195
    if-eqz v6, :cond_1f

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dli;->f()Lcom/google/android/gms/internal/ads/dqo;

    move-result-object v7

    if-ne v7, v6, :cond_1f

    .line 196
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dli;->g()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 197
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dli;->h()V

    .line 198
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 200
    :cond_20
    const/4 v4, 0x0

    :goto_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->a:[Lcom/google/android/gms/internal/ads/dli;

    array-length v5, v5

    if-ge v4, v5, :cond_22

    .line 201
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->a:[Lcom/google/android/gms/internal/ads/dli;

    aget-object v5, v5, v4

    .line 202
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/dlb;->d:[Lcom/google/android/gms/internal/ads/dqo;

    aget-object v6, v6, v4

    .line 203
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dli;->f()Lcom/google/android/gms/internal/ads/dqo;

    move-result-object v7

    if-ne v7, v6, :cond_10

    if-eqz v6, :cond_21

    .line 204
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dli;->g()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 206
    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 207
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/dlb;->i:Z

    if-eqz v4, :cond_10

    .line 208
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/dlb;->l:Lcom/google/android/gms/internal/ads/drl;

    .line 209
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    .line 210
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v8, v4, Lcom/google/android/gms/internal/ads/dlb;->l:Lcom/google/android/gms/internal/ads/drl;

    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/dlb;->a:Lcom/google/android/gms/internal/ads/dqe;

    .line 212
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dqe;->e()J

    move-result-wide v4

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v10

    if-eqz v4, :cond_23

    const/4 v4, 0x1

    .line 213
    :goto_13
    const/4 v5, 0x0

    move v6, v5

    :goto_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->a:[Lcom/google/android/gms/internal/ads/dli;

    array-length v5, v5

    if-ge v6, v5, :cond_10

    .line 214
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->a:[Lcom/google/android/gms/internal/ads/dli;

    aget-object v9, v5, v6

    .line 215
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/drl;->b:Lcom/google/android/gms/internal/ads/drg;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/drg;->a(I)Lcom/google/android/gms/internal/ads/dre;

    move-result-object v5

    .line 216
    if-eqz v5, :cond_25

    .line 217
    if-nez v4, :cond_26

    .line 218
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/dli;->i()Z

    move-result v5

    if-nez v5, :cond_25

    .line 219
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/drl;->b:Lcom/google/android/gms/internal/ads/drg;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/drg;->a(I)Lcom/google/android/gms/internal/ads/dre;

    move-result-object v10

    .line 220
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/drl;->d:[Lcom/google/android/gms/internal/ads/dlk;

    aget-object v5, v5, v6

    .line 221
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/drl;->d:[Lcom/google/android/gms/internal/ads/dlk;

    aget-object v11, v11, v6

    .line 222
    if-eqz v10, :cond_26

    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/dlk;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 223
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/dre;->b()I

    move-result v5

    new-array v11, v5, [Lcom/google/android/gms/internal/ads/dlf;

    .line 224
    const/4 v5, 0x0

    :goto_15
    array-length v12, v11

    if-ge v5, v12, :cond_24

    .line 225
    invoke-interface {v10, v5}, Lcom/google/android/gms/internal/ads/dre;->a(I)Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v12

    aput-object v12, v11, v5

    .line 226
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 212
    :cond_23
    const/4 v4, 0x0

    goto :goto_13

    .line 227
    :cond_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/dlb;->d:[Lcom/google/android/gms/internal/ads/dqo;

    aget-object v5, v5, v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    .line 228
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/dlb;->a()J

    move-result-wide v12

    .line 229
    invoke-interface {v9, v11, v5, v12, v13}, Lcom/google/android/gms/internal/ads/dli;->a([Lcom/google/android/gms/internal/ads/dlf;Lcom/google/android/gms/internal/ads/dqo;J)V

    .line 232
    :cond_25
    :goto_16
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_14

    .line 231
    :cond_26
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/dli;->h()V

    goto :goto_16

    .line 237
    :cond_27
    const-string/jumbo v4, "doSomeWork"

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/dso;->a(Ljava/lang/String;)V

    .line 238
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dky;->f()V

    .line 239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/dlb;->a:Lcom/google/android/gms/internal/ads/dqe;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/dla;->c:J

    invoke-interface {v4, v6, v7}, Lcom/google/android/gms/internal/ads/dqe;->b(J)V

    .line 240
    const/4 v6, 0x1

    .line 241
    const/4 v4, 0x1

    .line 242
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dky;->q:[Lcom/google/android/gms/internal/ads/dli;

    array-length v9, v8

    const/4 v5, 0x0

    move v7, v5

    :goto_17
    if-ge v7, v9, :cond_2d

    aget-object v10, v8, v7

    .line 243
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/dky;->C:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/dky;->z:J

    invoke-interface {v10, v12, v13, v14, v15}, Lcom/google/android/gms/internal/ads/dli;->a(JJ)V

    .line 244
    if-eqz v6, :cond_2a

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/dli;->u()Z

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v5, 0x1

    move v6, v5

    .line 245
    :goto_18
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/dli;->t()Z

    move-result v5

    if-nez v5, :cond_28

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/dli;->u()Z

    move-result v5

    if-eqz v5, :cond_2b

    :cond_28
    const/4 v5, 0x1

    .line 246
    :goto_19
    if-nez v5, :cond_29

    .line 247
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/dli;->j()V

    .line 248
    :cond_29
    if-eqz v4, :cond_2c

    if-eqz v5, :cond_2c

    const/4 v4, 0x1

    .line 249
    :goto_1a
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_17

    .line 244
    :cond_2a
    const/4 v5, 0x0

    move v6, v5

    goto :goto_18

    .line 245
    :cond_2b
    const/4 v5, 0x0

    goto :goto_19

    .line 248
    :cond_2c
    const/4 v4, 0x0

    goto :goto_1a

    .line 250
    :cond_2d
    if-nez v4, :cond_2e

    .line 251
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dky;->h()V

    .line 252
    :cond_2e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->o:Lcom/google/android/gms/internal/ads/dsd;

    if-eqz v5, :cond_2f

    .line 253
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->o:Lcom/google/android/gms/internal/ads/dsd;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dsd;->x()Lcom/google/android/gms/internal/ads/dlj;

    move-result-object v5

    .line 254
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dky;->m:Lcom/google/android/gms/internal/ads/dlj;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/dlj;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2f

    .line 255
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->m:Lcom/google/android/gms/internal/ads/dlj;

    .line 256
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dky;->e:Lcom/google/android/gms/internal/ads/dsl;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dky;->o:Lcom/google/android/gms/internal/ads/dsd;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/dsl;->a(Lcom/google/android/gms/internal/ads/dsd;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dky;->h:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v8, 0x7

    invoke-virtual {v7, v8, v5}, Lcom/google/android/gms/internal/ads/cnz;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 258
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 259
    :cond_2f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    iget v7, v7, Lcom/google/android/gms/internal/ads/dlb;->f:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dky;->k:Lcom/google/android/gms/internal/ads/dlp;

    .line 260
    const/4 v9, 0x0

    invoke-virtual {v5, v7, v8, v9}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Z)Lcom/google/android/gms/internal/ads/dlp;

    move-result-object v5

    .line 261
    iget-wide v8, v5, Lcom/google/android/gms/internal/ads/dlp;->c:J

    .line 263
    if-eqz v6, :cond_32

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v8, v6

    if-eqz v5, :cond_30

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/dla;->c:J

    cmp-long v5, v8, v6

    if-gtz v5, :cond_32

    :cond_30
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/dlb;->h:Z

    if-eqz v5, :cond_32

    .line 264
    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/dky;->a(I)V

    .line 265
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dky;->e()V

    .line 297
    :cond_31
    :goto_1b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/dky;->v:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3a

    .line 298
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->q:[Lcom/google/android/gms/internal/ads/dli;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v6, :cond_3a

    aget-object v7, v5, v4

    .line 299
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/dli;->j()V

    .line 300
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 266
    :cond_32
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/dky;->v:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_38

    .line 267
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->q:[Lcom/google/android/gms/internal/ads/dli;

    array-length v5, v5

    if-lez v5, :cond_37

    .line 268
    if-eqz v4, :cond_36

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/dky;->t:Z

    .line 269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/dlb;->i:Z

    if-nez v4, :cond_33

    .line 270
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/dlb;->g:J

    .line 272
    :goto_1d
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v7, v4, v8

    if-nez v7, :cond_35

    .line 273
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/dlb;->h:Z

    if-eqz v4, :cond_34

    .line 274
    const/4 v4, 0x1

    .line 284
    :goto_1e
    if-eqz v4, :cond_36

    const/4 v4, 0x1

    .line 286
    :goto_1f
    if-eqz v4, :cond_31

    .line 287
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/dky;->a(I)V

    .line 288
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/dky;->s:Z

    if-eqz v4, :cond_31

    .line 289
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dky;->d()V

    goto :goto_1b

    .line 271
    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/dlb;->a:Lcom/google/android/gms/internal/ads/dqe;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dqe;->f()J

    move-result-wide v4

    goto :goto_1d

    .line 275
    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    iget v5, v5, Lcom/google/android/gms/internal/ads/dlb;->f:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dky;->k:Lcom/google/android/gms/internal/ads/dlp;

    .line 276
    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Z)Lcom/google/android/gms/internal/ads/dlp;

    move-result-object v4

    .line 277
    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/dlp;->c:J

    .line 279
    :cond_35
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dky;->d:Lcom/google/android/gms/internal/ads/dlh;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/dky;->C:J

    .line 281
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/dlb;->a()J

    move-result-wide v8

    sub-long v8, v10, v8

    .line 282
    sub-long/2addr v4, v8

    .line 283
    invoke-interface {v7, v4, v5, v6}, Lcom/google/android/gms/internal/ads/dlh;->a(JZ)Z

    move-result v4

    goto :goto_1e

    .line 284
    :cond_36
    const/4 v4, 0x0

    goto :goto_1f

    .line 285
    :cond_37
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/google/android/gms/internal/ads/dky;->b(J)Z

    move-result v4

    goto :goto_1f

    .line 290
    :cond_38
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/dky;->v:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_31

    .line 291
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->q:[Lcom/google/android/gms/internal/ads/dli;

    array-length v5, v5

    if-lez v5, :cond_39

    .line 293
    :goto_20
    if-nez v4, :cond_31

    .line 294
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/dky;->s:Z

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/dky;->t:Z

    .line 295
    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/dky;->a(I)V

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dky;->e()V

    goto/16 :goto_1b

    .line 292
    :cond_39
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/google/android/gms/internal/ads/dky;->b(J)Z

    move-result v4

    goto :goto_20

    .line 301
    :cond_3a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/dky;->s:Z

    if-eqz v4, :cond_3b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/dky;->v:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3c

    :cond_3b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/dky;->v:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3d

    .line 302
    :cond_3c
    const-wide/16 v4, 0xa

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/dky;->a(JJ)V

    .line 306
    :goto_21
    invoke-static {}, Lcom/google/android/gms/internal/ads/dso;->a()V

    goto/16 :goto_9

    .line 303
    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->q:[Lcom/google/android/gms/internal/ads/dli;

    array-length v4, v4

    if-eqz v4, :cond_3e

    .line 304
    const-wide/16 v4, 0x3e8

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/dky;->a(JJ)V

    goto :goto_21

    .line 305
    :cond_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->f:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/cnz;->removeMessages(I)V

    goto :goto_21

    .line 308
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/dld;

    .line 309
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    if-nez v5, :cond_3f

    .line 310
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/dky;->A:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/gms/internal/ads/dky;->A:I

    .line 311
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->B:Lcom/google/android/gms/internal/ads/dld;

    .line 340
    :goto_22
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 313
    :cond_3f
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/dky;->a(Lcom/google/android/gms/internal/ads/dld;)Landroid/util/Pair;

    move-result-object v6

    .line 314
    if-nez v6, :cond_40

    .line 315
    new-instance v4, Lcom/google/android/gms/internal/ads/dla;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/dla;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    .line 316
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->h:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/cnz;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 317
    new-instance v4, Lcom/google/android/gms/internal/ads/dla;

    const/4 v5, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/dla;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    .line 318
    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/dky;->a(I)V

    .line 319
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/dky;->c(Z)V

    goto :goto_22

    .line 321
    :cond_40
    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/dld;->c:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v8

    if-nez v4, :cond_41

    const/4 v4, 0x1

    move v5, v4

    .line 322
    :goto_23
    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 323
    iget-object v4, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzgq; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-wide v8

    .line 324
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    iget v4, v4, Lcom/google/android/gms/internal/ads/dla;->a:I

    if-ne v7, v4, :cond_43

    const-wide/16 v10, 0x3e8

    div-long v10, v8, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    iget-wide v12, v4, Lcom/google/android/gms/internal/ads/dla;->c:J

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    cmp-long v4, v10, v12

    if-nez v4, :cond_43

    .line 325
    :try_start_5
    new-instance v4, Lcom/google/android/gms/internal/ads/dla;

    invoke-direct {v4, v7, v8, v9}, Lcom/google/android/gms/internal/ads/dla;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    .line 326
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dky;->h:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v7, 0x4

    if-eqz v5, :cond_42

    const/4 v4, 0x1

    :goto_24
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    invoke-virtual {v6, v7, v4, v5, v8}, Lcom/google/android/gms/internal/ads/cnz;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 327
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzgq; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_22

    .line 321
    :cond_41
    const/4 v4, 0x0

    move v5, v4

    goto :goto_23

    .line 326
    :cond_42
    const/4 v4, 0x0

    goto :goto_24

    .line 329
    :cond_43
    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9}, Lcom/google/android/gms/internal/ads/dky;->a(IJ)J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-wide v10

    .line 330
    cmp-long v4, v8, v10

    if-eqz v4, :cond_44

    const/4 v4, 0x1

    :goto_25
    or-int/2addr v4, v5

    .line 332
    :try_start_7
    new-instance v5, Lcom/google/android/gms/internal/ads/dla;

    invoke-direct {v5, v7, v10, v11}, Lcom/google/android/gms/internal/ads/dla;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    .line 333
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->h:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v6, 0x4

    if-eqz v4, :cond_45

    const/4 v4, 0x1

    :goto_26
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    invoke-virtual {v5, v6, v4, v7, v8}, Lcom/google/android/gms/internal/ads/cnz;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 334
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_22

    .line 330
    :cond_44
    const/4 v4, 0x0

    goto :goto_25

    .line 333
    :cond_45
    const/4 v4, 0x0

    goto :goto_26

    .line 336
    :catchall_0
    move-exception v4

    new-instance v6, Lcom/google/android/gms/internal/ads/dla;

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/dla;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    .line 337
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dky;->h:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v7, 0x4

    if-eqz v5, :cond_46

    const/4 v5, 0x1

    :goto_27
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    invoke-virtual {v6, v7, v5, v8, v9}, Lcom/google/android/gms/internal/ads/cnz;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 338
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 339
    throw v4

    .line 337
    :cond_46
    const/4 v5, 0x0

    goto :goto_27

    .line 341
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/dlj;

    .line 342
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->o:Lcom/google/android/gms/internal/ads/dsd;

    if-eqz v5, :cond_47

    .line 343
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->o:Lcom/google/android/gms/internal/ads/dsd;

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/ads/dsd;->a(Lcom/google/android/gms/internal/ads/dlj;)Lcom/google/android/gms/internal/ads/dlj;

    move-result-object v4

    .line 345
    :goto_28
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->m:Lcom/google/android/gms/internal/ads/dlj;

    .line 346
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->h:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v6, 0x7

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/internal/ads/cnz;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 347
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 344
    :cond_47
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->e:Lcom/google/android/gms/internal/ads/dsl;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/dsl;->a(Lcom/google/android/gms/internal/ads/dlj;)Lcom/google/android/gms/internal/ads/dlj;

    move-result-object v4

    goto :goto_28

    .line 348
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dky;->g()V

    .line 349
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 351
    :pswitch_7
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/dky;->c(Z)V

    .line 352
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->d:Lcom/google/android/gms/internal/ads/dlh;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dlh;->c()V

    .line 353
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/dky;->a(I)V

    .line 354
    monitor-enter p0
    :try_end_7
    .catch Lcom/google/android/gms/internal/ads/zzgq; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    .line 355
    const/4 v4, 0x1

    :try_start_8
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/dky;->r:Z

    .line 356
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 357
    monitor-exit p0

    .line 358
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 357
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v4

    .line 359
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/dqe;

    .line 360
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    if-eqz v5, :cond_48

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/dlb;->a:Lcom/google/android/gms/internal/ads/dqe;

    if-eq v5, v4, :cond_49

    .line 371
    :cond_48
    :goto_29
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 362
    :cond_49
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    .line 363
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/gms/internal/ads/dlb;->i:Z

    .line 364
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dlb;->c()Z

    .line 365
    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/dlb;->g:J

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v7, v5}, Lcom/google/android/gms/internal/ads/dlb;->a(JZ)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/google/android/gms/internal/ads/dlb;->g:J

    .line 366
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    if-nez v4, :cond_4a

    .line 367
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    .line 368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/dlb;->g:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/internal/ads/dky;->a(J)V

    .line 369
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/dky;->b(Lcom/google/android/gms/internal/ads/dlb;)V

    .line 370
    :cond_4a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dky;->i()V

    goto :goto_29

    .line 372
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    .line 373
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    .line 374
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/dln;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    .line 375
    iget-object v10, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 376
    const/4 v5, 0x0

    .line 377
    if-nez v8, :cond_4e

    .line 378
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/dky;->A:I

    if-lez v4, :cond_4c

    .line 379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->B:Lcom/google/android/gms/internal/ads/dld;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/dky;->a(Lcom/google/android/gms/internal/ads/dld;)Landroid/util/Pair;

    move-result-object v6

    .line 380
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/dky;->A:I

    .line 381
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/gms/internal/ads/dky;->A:I

    .line 382
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->B:Lcom/google/android/gms/internal/ads/dld;

    .line 383
    if-nez v6, :cond_4b

    .line 384
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5}, Lcom/google/android/gms/internal/ads/dky;->a(Ljava/lang/Object;I)V

    .line 445
    :goto_2a
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 386
    :cond_4b
    new-instance v7, Lcom/google/android/gms/internal/ads/dla;

    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v4, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct {v7, v9, v12, v13}, Lcom/google/android/gms/internal/ads/dla;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    move v9, v5

    .line 393
    :goto_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    if-eqz v4, :cond_4f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    .line 395
    :goto_2c
    if-eqz v7, :cond_53

    .line 396
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    iget-object v5, v7, Lcom/google/android/gms/internal/ads/dlb;->b:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/dln;->a(Ljava/lang/Object;)I

    move-result v6

    .line 397
    const/4 v4, -0x1

    if-ne v6, v4, :cond_54

    .line 398
    iget v4, v7, Lcom/google/android/gms/internal/ads/dlb;->f:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v5}, Lcom/google/android/gms/internal/ads/dky;->a(ILcom/google/android/gms/internal/ads/dln;Lcom/google/android/gms/internal/ads/dln;)I

    move-result v4

    .line 399
    const/4 v5, -0x1

    if-ne v4, v5, :cond_50

    .line 400
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/google/android/gms/internal/ads/dky;->a(Ljava/lang/Object;I)V

    goto :goto_2a

    .line 387
    :cond_4c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/dla;->b:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v6, v12

    if-nez v4, :cond_4e

    .line 388
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dln;->c()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 389
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lcom/google/android/gms/internal/ads/dky;->a(Ljava/lang/Object;I)V

    goto :goto_2a

    .line 391
    :cond_4d
    const/4 v4, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lcom/google/android/gms/internal/ads/dky;->b(IJ)Landroid/util/Pair;

    move-result-object v6

    .line 392
    new-instance v7, Lcom/google/android/gms/internal/ads/dla;

    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v4, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct {v7, v9, v12, v13}, Lcom/google/android/gms/internal/ads/dla;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    :cond_4e
    move v9, v5

    goto :goto_2b

    .line 394
    :cond_4f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    goto :goto_2c

    .line 402
    :cond_50
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dky;->k:Lcom/google/android/gms/internal/ads/dlp;

    .line 404
    const/4 v8, 0x0

    invoke-virtual {v5, v4, v6, v8}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Z)Lcom/google/android/gms/internal/ads/dlp;

    .line 405
    const/4 v4, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 406
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12, v13}, Lcom/google/android/gms/internal/ads/dky;->b(IJ)Landroid/util/Pair;

    move-result-object v6

    .line 407
    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 408
    iget-object v4, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 409
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dky;->k:Lcom/google/android/gms/internal/ads/dlp;

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v8}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Z)Lcom/google/android/gms/internal/ads/dlp;

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->k:Lcom/google/android/gms/internal/ads/dlp;

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/dlp;->a:Ljava/lang/Object;

    .line 411
    const/4 v4, -0x1

    iput v4, v7, Lcom/google/android/gms/internal/ads/dlb;->f:I

    .line 412
    :goto_2d
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    if-eqz v4, :cond_52

    .line 413
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    .line 414
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/dlb;->b:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    move v4, v5

    .line 415
    :goto_2e
    iput v4, v7, Lcom/google/android/gms/internal/ads/dlb;->f:I

    goto :goto_2d

    :cond_51
    const/4 v4, -0x1

    goto :goto_2e

    .line 416
    :cond_52
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v13}, Lcom/google/android/gms/internal/ads/dky;->a(IJ)J

    move-result-wide v6

    .line 417
    new-instance v4, Lcom/google/android/gms/internal/ads/dla;

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/dla;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    .line 444
    :cond_53
    :goto_2f
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/google/android/gms/internal/ads/dky;->b(Ljava/lang/Object;I)V

    goto/16 :goto_2a

    .line 419
    :cond_54
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/dky;->b(I)Z

    move-result v4

    invoke-virtual {v7, v6, v4}, Lcom/google/android/gms/internal/ads/dlb;->a(IZ)V

    .line 420
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    if-ne v7, v4, :cond_56

    const/4 v4, 0x1

    .line 421
    :goto_30
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    iget v5, v5, Lcom/google/android/gms/internal/ads/dla;->a:I

    if-eq v6, v5, :cond_55

    .line 422
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    .line 423
    new-instance v8, Lcom/google/android/gms/internal/ads/dla;

    iget-wide v12, v5, Lcom/google/android/gms/internal/ads/dla;->b:J

    invoke-direct {v8, v6, v12, v13}, Lcom/google/android/gms/internal/ads/dla;-><init>(IJ)V

    .line 424
    iget-wide v12, v5, Lcom/google/android/gms/internal/ads/dla;->c:J

    iput-wide v12, v8, Lcom/google/android/gms/internal/ads/dla;->c:J

    .line 425
    iget-wide v12, v5, Lcom/google/android/gms/internal/ads/dla;->d:J

    iput-wide v12, v8, Lcom/google/android/gms/internal/ads/dla;->d:J

    .line 427
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    :cond_55
    move v5, v4

    .line 428
    :goto_31
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    if-eqz v4, :cond_53

    .line 430
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    .line 431
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/dky;->k:Lcom/google/android/gms/internal/ads/dlp;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/dky;->j:Lcom/google/android/gms/internal/ads/dlo;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/gms/internal/ads/dky;->w:I

    invoke-virtual {v4, v6, v11, v12, v13}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Lcom/google/android/gms/internal/ads/dlo;I)I

    move-result v6

    .line 432
    const/4 v4, -0x1

    if-eq v6, v4, :cond_58

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/dlb;->b:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/dky;->G:Lcom/google/android/gms/internal/ads/dln;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/dky;->k:Lcom/google/android/gms/internal/ads/dlp;

    const/4 v13, 0x1

    .line 433
    invoke-virtual {v11, v6, v12, v13}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Z)Lcom/google/android/gms/internal/ads/dlp;

    move-result-object v11

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/dlp;->a:Ljava/lang/Object;

    invoke-virtual {v4, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 434
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/dky;->b(I)Z

    move-result v4

    invoke-virtual {v8, v6, v4}, Lcom/google/android/gms/internal/ads/dlb;->a(IZ)V

    .line 435
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    if-ne v8, v4, :cond_57

    const/4 v4, 0x1

    :goto_32
    or-int/2addr v4, v5

    move v5, v4

    move-object v7, v8

    goto :goto_31

    .line 420
    :cond_56
    const/4 v4, 0x0

    goto :goto_30

    .line 435
    :cond_57
    const/4 v4, 0x0

    goto :goto_32

    .line 436
    :cond_58
    if-nez v5, :cond_59

    .line 437
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    iget v4, v4, Lcom/google/android/gms/internal/ads/dlb;->f:I

    .line 438
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/dla;->c:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lcom/google/android/gms/internal/ads/dky;->a(IJ)J

    move-result-wide v6

    .line 439
    new-instance v5, Lcom/google/android/gms/internal/ads/dla;

    invoke-direct {v5, v4, v6, v7}, Lcom/google/android/gms/internal/ads/dla;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    goto/16 :goto_2f

    .line 441
    :cond_59
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    .line 442
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    .line 443
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/dky;->a(Lcom/google/android/gms/internal/ads/dlb;)V

    goto/16 :goto_2f

    .line 446
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/dqe;

    .line 447
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    if-eqz v5, :cond_5a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/dlb;->a:Lcom/google/android/gms/internal/ads/dqe;

    if-eq v5, v4, :cond_5b

    .line 450
    :cond_5a
    :goto_33
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 449
    :cond_5b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dky;->i()V

    goto :goto_33

    .line 452
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    if-eqz v4, :cond_5c

    .line 453
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    .line 454
    const/4 v4, 0x1

    move-object v7, v5

    .line 455
    :goto_34
    if-eqz v7, :cond_5c

    iget-boolean v5, v7, Lcom/google/android/gms/internal/ads/dlb;->i:Z

    if-nez v5, :cond_5d

    .line 511
    :cond_5c
    :goto_35
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 457
    :cond_5d
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/dlb;->c()Z

    move-result v5

    if-nez v5, :cond_5f

    .line 458
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    if-ne v7, v5, :cond_5e

    .line 459
    const/4 v4, 0x0

    .line 460
    :cond_5e
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    move-object v7, v5

    goto :goto_34

    .line 461
    :cond_5f
    if-eqz v4, :cond_6a

    .line 462
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    if-eq v4, v5, :cond_65

    const/4 v4, 0x1

    .line 463
    :goto_36
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/dky;->a(Lcom/google/android/gms/internal/ads/dlb;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    .line 465
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    .line 466
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->E:Lcom/google/android/gms/internal/ads/dlb;

    .line 467
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->a:[Lcom/google/android/gms/internal/ads/dli;

    array-length v5, v5

    new-array v8, v5, [Z

    .line 468
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    iget-wide v10, v6, Lcom/google/android/gms/internal/ads/dla;->c:J

    invoke-virtual {v5, v10, v11, v4, v8}, Lcom/google/android/gms/internal/ads/dlb;->a(JZ[Z)J

    move-result-wide v4

    .line 469
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    iget-wide v10, v6, Lcom/google/android/gms/internal/ads/dla;->c:J

    cmp-long v6, v4, v10

    if-eqz v6, :cond_60

    .line 470
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dky;->l:Lcom/google/android/gms/internal/ads/dla;

    iput-wide v4, v6, Lcom/google/android/gms/internal/ads/dla;->c:J

    .line 471
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/internal/ads/dky;->a(J)V

    .line 472
    :cond_60
    const/4 v4, 0x0

    .line 473
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->a:[Lcom/google/android/gms/internal/ads/dli;

    array-length v5, v5

    new-array v9, v5, [Z

    .line 474
    const/4 v5, 0x0

    move v6, v5

    :goto_37
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->a:[Lcom/google/android/gms/internal/ads/dli;

    array-length v5, v5

    if-ge v6, v5, :cond_68

    .line 475
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->a:[Lcom/google/android/gms/internal/ads/dli;

    aget-object v10, v5, v6

    .line 476
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/dli;->d()I

    move-result v5

    if-eqz v5, :cond_66

    const/4 v5, 0x1

    :goto_38
    aput-boolean v5, v9, v6

    .line 477
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->F:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/dlb;->d:[Lcom/google/android/gms/internal/ads/dqo;

    aget-object v5, v5, v6

    .line 478
    if-eqz v5, :cond_61

    .line 479
    add-int/lit8 v4, v4, 0x1

    .line 480
    :cond_61
    aget-boolean v11, v9, v6

    if-eqz v11, :cond_64

    .line 481
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/dli;->f()Lcom/google/android/gms/internal/ads/dqo;

    move-result-object v11

    if-eq v5, v11, :cond_67

    .line 482
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/dky;->n:Lcom/google/android/gms/internal/ads/dli;

    if-ne v10, v11, :cond_63

    .line 483
    if-nez v5, :cond_62

    .line 484
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->e:Lcom/google/android/gms/internal/ads/dsl;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/dky;->o:Lcom/google/android/gms/internal/ads/dsd;

    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/dsl;->a(Lcom/google/android/gms/internal/ads/dsd;)V

    .line 485
    :cond_62
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->o:Lcom/google/android/gms/internal/ads/dsd;

    .line 486
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->n:Lcom/google/android/gms/internal/ads/dli;

    .line 487
    :cond_63
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/dky;->a(Lcom/google/android/gms/internal/ads/dli;)V

    .line 488
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/dli;->l()V

    .line 491
    :cond_64
    :goto_39
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_37

    .line 462
    :cond_65
    const/4 v4, 0x0

    goto/16 :goto_36

    .line 476
    :cond_66
    const/4 v5, 0x0

    goto :goto_38

    .line 489
    :cond_67
    aget-boolean v5, v8, v6

    if-eqz v5, :cond_64

    .line 490
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/dky;->C:J

    invoke-interface {v10, v12, v13}, Lcom/google/android/gms/internal/ads/dli;->a(J)V

    goto :goto_39

    .line 492
    :cond_68
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dky;->h:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v6, 0x3

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/dlb;->l:Lcom/google/android/gms/internal/ads/drl;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/ads/cnz;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 493
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 494
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4}, Lcom/google/android/gms/internal/ads/dky;->a([ZI)V

    .line 508
    :cond_69
    :goto_3a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dky;->i()V

    .line 509
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dky;->f()V

    .line 510
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->f:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/cnz;->sendEmptyMessage(I)Z

    goto/16 :goto_35

    .line 496
    :cond_6a
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    .line 497
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    .line 498
    :goto_3b
    if-eqz v4, :cond_6b

    .line 499
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dlb;->d()V

    .line 500
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    goto :goto_3b

    .line 501
    :cond_6b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/android/gms/internal/ads/dlb;->k:Lcom/google/android/gms/internal/ads/dlb;

    .line 502
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/dlb;->i:Z

    if-eqz v4, :cond_69

    .line 503
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/dlb;->g:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/dky;->C:J

    .line 505
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/dlb;->a()J

    move-result-wide v6

    sub-long v6, v8, v6

    .line 506
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 507
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dky;->D:Lcom/google/android/gms/internal/ads/dlb;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v5, v7}, Lcom/google/android/gms/internal/ads/dlb;->a(JZ)J

    goto :goto_3a

    .line 512
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Lcom/google/android/gms/internal/ads/dku;
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzgq; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    .line 513
    :try_start_a
    array-length v6, v4

    const/4 v5, 0x0

    :goto_3c
    if-ge v5, v6, :cond_6c

    aget-object v7, v4, v5

    .line 514
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/dku;->a:Lcom/google/android/gms/internal/ads/dkv;

    iget v9, v7, Lcom/google/android/gms/internal/ads/dku;->b:I

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/dku;->c:Ljava/lang/Object;

    invoke-interface {v8, v9, v7}, Lcom/google/android/gms/internal/ads/dkv;->a(ILjava/lang/Object;)V

    .line 515
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 516
    :cond_6c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->p:Lcom/google/android/gms/internal/ads/dqg;

    if-eqz v4, :cond_6d

    .line 517
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dky;->f:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/cnz;->sendEmptyMessage(I)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 518
    :cond_6d
    :try_start_b
    monitor-enter p0
    :try_end_b
    .catch Lcom/google/android/gms/internal/ads/zzgq; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    .line 519
    :try_start_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/dky;->y:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/gms/internal/ads/dky;->y:I

    .line 520
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 521
    monitor-exit p0

    .line 527
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 521
    :catchall_2
    move-exception v4

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v4

    .line 522
    :catchall_3
    move-exception v4

    monitor-enter p0
    :try_end_d
    .catch Lcom/google/android/gms/internal/ads/zzgq; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2

    .line 523
    :try_start_e
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/dky;->y:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/gms/internal/ads/dky;->y:I

    .line 524
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 525
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 526
    :try_start_f
    throw v4
    :try_end_f
    .catch Lcom/google/android/gms/internal/ads/zzgq; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2

    .line 525
    :catchall_4
    move-exception v4

    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    throw v4
    :try_end_11
    .catch Lcom/google/android/gms/internal/ads/zzgq; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_2

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_2
    .end packed-switch
.end method

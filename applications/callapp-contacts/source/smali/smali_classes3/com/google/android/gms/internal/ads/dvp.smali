.class final Lcom/google/android/gms/internal/ads/dvp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/gms/internal/ads/ear;
.implements Lcom/google/android/gms/internal/ads/eat;
.implements Lcom/google/android/gms/internal/ads/eby;


# instance fields
.field private A:I

.field private B:I

.field private C:J

.field private D:I

.field private E:Lcom/google/android/gms/internal/ads/dvu;

.field private F:J

.field private G:Lcom/google/android/gms/internal/ads/dvs;

.field private H:Lcom/google/android/gms/internal/ads/dvs;

.field private I:Lcom/google/android/gms/internal/ads/dvs;

.field private J:Lcom/google/android/gms/internal/ads/dwe;

.field final a:Landroid/os/Handler;

.field b:Z

.field c:I

.field d:Z

.field volatile e:I

.field volatile f:I

.field private final g:[Lcom/google/android/gms/internal/ads/dvy;

.field private final h:[Lcom/google/android/gms/internal/ads/dwc;

.field private final i:Lcom/google/android/gms/internal/ads/ebv;

.field private final j:Lcom/google/android/gms/internal/ads/dvx;

.field private final k:Lcom/google/android/gms/internal/ads/edd;

.field private final l:Landroid/os/HandlerThread;

.field private final m:Landroid/os/Handler;

.field private final n:Lcom/google/android/gms/internal/ads/dvl;

.field private final o:Lcom/google/android/gms/internal/ads/dwf;

.field private final p:Lcom/google/android/gms/internal/ads/dwg;

.field private q:Lcom/google/android/gms/internal/ads/dvr;

.field private r:Lcom/google/android/gms/internal/ads/dvz;

.field private s:Lcom/google/android/gms/internal/ads/dvy;

.field private t:Lcom/google/android/gms/internal/ads/ecv;

.field private u:Lcom/google/android/gms/internal/ads/eau;

.field private v:[Lcom/google/android/gms/internal/ads/dvy;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/dvy;Lcom/google/android/gms/internal/ads/ebv;Lcom/google/android/gms/internal/ads/dvx;ZILandroid/os/Handler;Lcom/google/android/gms/internal/ads/dvr;Lcom/google/android/gms/internal/ads/dvl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dvp;->g:[Lcom/google/android/gms/internal/ads/dvy;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dvp;->i:Lcom/google/android/gms/internal/ads/ebv;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dvp;->j:Lcom/google/android/gms/internal/ads/dvx;

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/dvp;->w:Z

    const/4 p3, 0x0

    .line 6
    iput p3, p0, Lcom/google/android/gms/internal/ads/dvp;->A:I

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/dvp;->m:Landroid/os/Handler;

    const/4 p4, 0x1

    .line 8
    iput p4, p0, Lcom/google/android/gms/internal/ads/dvp;->z:I

    .line 9
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    .line 10
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/dvp;->n:Lcom/google/android/gms/internal/ads/dvl;

    .line 11
    array-length p4, p1

    new-array p4, p4, [Lcom/google/android/gms/internal/ads/dwc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/dvp;->h:[Lcom/google/android/gms/internal/ads/dwc;

    const/4 p4, 0x0

    .line 12
    :goto_0
    array-length p5, p1

    if-ge p4, p5, :cond_0

    .line 13
    aget-object p5, p1, p4

    invoke-interface {p5, p4}, Lcom/google/android/gms/internal/ads/dvy;->a(I)V

    .line 14
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/dvp;->h:[Lcom/google/android/gms/internal/ads/dwc;

    aget-object p6, p1, p4

    invoke-interface {p6}, Lcom/google/android/gms/internal/ads/dvy;->b()Lcom/google/android/gms/internal/ads/dwc;

    move-result-object p6

    aput-object p6, p5, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/edd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/edd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dvp;->k:Lcom/google/android/gms/internal/ads/edd;

    new-array p1, p3, [Lcom/google/android/gms/internal/ads/dvy;

    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dvp;->v:[Lcom/google/android/gms/internal/ads/dvy;

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/dwf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/dwf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dvp;->o:Lcom/google/android/gms/internal/ads/dwf;

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/dwg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/dwg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dvp;->p:Lcom/google/android/gms/internal/ads/dwg;

    .line 1002
    iput-object p0, p2, Lcom/google/android/gms/internal/ads/ebv;->a:Lcom/google/android/gms/internal/ads/eby;

    .line 21
    sget-object p1, Lcom/google/android/gms/internal/ads/dvz;->a:Lcom/google/android/gms/internal/ads/dvz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dvp;->r:Lcom/google/android/gms/internal/ads/dvz;

    .line 22
    new-instance p1, Landroid/os/HandlerThread;

    const/16 p2, -0x10

    const-string p3, "ExoPlayerImplInternal:Handler"

    invoke-direct {p1, p3, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dvp;->l:Landroid/os/HandlerThread;

    .line 23
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 24
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dvp;->a:Landroid/os/Handler;

    return-void
.end method

.method private final a(ILcom/google/android/gms/internal/ads/dwe;Lcom/google/android/gms/internal/ads/dwe;)I
    .locals 6

    .line 708
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dwe;->b()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_0
    if-ge v2, v0, :cond_0

    if-ne v3, v1, :cond_0

    .line 710
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dvp;->p:Lcom/google/android/gms/internal/ads/dwg;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dvp;->o:Lcom/google/android/gms/internal/ads/dwf;

    iget v5, p0, Lcom/google/android/gms/internal/ads/dvp;->A:I

    invoke-virtual {p2, p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Lcom/google/android/gms/internal/ads/dwf;I)I

    move-result p1

    .line 711
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dvp;->p:Lcom/google/android/gms/internal/ads/dwg;

    const/4 v4, 0x1

    .line 712
    invoke-virtual {p2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Z)Lcom/google/android/gms/internal/ads/dwg;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/dwg;->b:Ljava/lang/Object;

    .line 713
    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/ads/dwe;->a(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method private final a(IJ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhe;
        }
    .end annotation

    .line 610
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dvp;->d()V

    const/4 v0, 0x0

    .line 611
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dvp;->x:Z

    const/4 v1, 0x2

    .line 612
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dvp;->a(I)V

    .line 614
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 615
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    if-eqz p1, :cond_0

    .line 616
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dvs;->d()V

    :cond_0
    move-object v4, v3

    goto :goto_2

    :cond_1
    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_3

    .line 619
    iget v5, v2, Lcom/google/android/gms/internal/ads/dvs;->f:I

    if-ne v5, p1, :cond_2

    iget-boolean v5, v2, Lcom/google/android/gms/internal/ads/dvs;->i:Z

    if-eqz v5, :cond_2

    move-object v4, v2

    goto :goto_1

    .line 621
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dvs;->d()V

    .line 622
    :goto_1
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    goto :goto_0

    .line 623
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    if-ne p1, v4, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvp;->H:Lcom/google/android/gms/internal/ads/dvs;

    if-eq p1, v2, :cond_6

    .line 624
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dvp;->v:[Lcom/google/android/gms/internal/ads/dvy;

    array-length v2, p1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_5

    aget-object v6, p1, v5

    .line 625
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/dvy;->l()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    new-array p1, v0, [Lcom/google/android/gms/internal/ads/dvy;

    .line 627
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dvp;->v:[Lcom/google/android/gms/internal/ads/dvy;

    .line 628
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/dvp;->t:Lcom/google/android/gms/internal/ads/ecv;

    .line 629
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/dvp;->s:Lcom/google/android/gms/internal/ads/dvy;

    .line 630
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    :cond_6
    if-eqz v4, :cond_8

    .line 632
    iput-object v3, v4, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    .line 633
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    .line 634
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/dvp;->H:Lcom/google/android/gms/internal/ads/dvs;

    .line 635
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/dvp;->b(Lcom/google/android/gms/internal/ads/dvs;)V

    .line 636
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/dvs;->j:Z

    if-eqz p1, :cond_7

    .line 637
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dvs;->a:Lcom/google/android/gms/internal/ads/eas;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/eas;->b(J)J

    move-result-wide p1

    move-wide p2, p1

    .line 638
    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/dvp;->a(J)V

    .line 639
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dvp;->i()V

    goto :goto_4

    .line 640
    :cond_8
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    .line 641
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/dvp;->H:Lcom/google/android/gms/internal/ads/dvs;

    .line 642
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    .line 643
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/dvp;->a(J)V

    .line 644
    :goto_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dvp;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-wide p2
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dvu;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dvu;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 725
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dvu;->a:Lcom/google/android/gms/internal/ads/dwe;

    .line 726
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dwe;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 727
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    .line 728
    :cond_0
    :try_start_0
    iget v1, p1, Lcom/google/android/gms/internal/ads/dvu;->b:I

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/dvu;->c:J

    .line 4746
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dvp;->b(Lcom/google/android/gms/internal/ads/dwe;IJ)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    if-ne v1, v0, :cond_1

    return-object p1

    .line 734
    :cond_1
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 735
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dvp;->p:Lcom/google/android/gms/internal/ads/dwg;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Z)Lcom/google/android/gms/internal/ads/dwg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dwg;->b:Ljava/lang/Object;

    .line 736
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dwe;->a(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 738
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 739
    :cond_2
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/dvp;->a(ILcom/google/android/gms/internal/ads/dwe;Lcom/google/android/gms/internal/ads/dwe;)I

    move-result p1

    if-eq p1, v2, :cond_3

    .line 741
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvp;->p:Lcom/google/android/gms/internal/ads/dwg;

    const/4 v2, 0x0

    .line 742
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Z)Lcom/google/android/gms/internal/ads/dwg;

    .line 743
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dvp;->h()Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 731
    :catch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    iget v2, p1, Lcom/google/android/gms/internal/ads/dvu;->b:I

    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/dvu;->c:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhu;-><init>(Lcom/google/android/gms/internal/ads/dwe;IJ)V

    throw v0
.end method

.method private final a(I)V
    .locals 3

    .line 561
    iget v0, p0, Lcom/google/android/gms/internal/ads/dvp;->z:I

    if-eq v0, p1, :cond_0

    .line 562
    iput p1, p0, Lcom/google/android/gms/internal/ads/dvp;->z:I

    .line 563
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->m:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private final a(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhe;
        }
    .end annotation

    .line 646
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    if-nez v0, :cond_0

    const-wide/32 v0, 0x3938700

    goto :goto_0

    .line 649
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dvs;->a()J

    move-result-wide v0

    :goto_0
    add-long/2addr p1, v0

    .line 650
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dvp;->F:J

    .line 651
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->k:Lcom/google/android/gms/internal/ads/edd;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/edd;->a(J)V

    .line 652
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dvp;->v:[Lcom/google/android/gms/internal/ads/dvy;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    .line 653
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dvp;->F:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/dvy;->a(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private final a(JJ)V
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    add-long/2addr p1, p3

    .line 605
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    .line 607
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dvp;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 608
    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/dvp;->a:Landroid/os/Handler;

    invoke-virtual {p3, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/dvs;)V
    .locals 0

    :goto_0
    if-eqz p0, :cond_0

    .line 776
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dvs;->d()V

    .line 777
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/dvy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhe;
        }
    .end annotation

    .line 687
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/dvy;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 688
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/dvy;->k()V

    :cond_0
    return-void
.end method

.method private final a(Ljava/lang/Object;I)V
    .locals 4

    .line 698
    new-instance v0, Lcom/google/android/gms/internal/ads/dvr;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dvr;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    .line 699
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dvp;->b(Ljava/lang/Object;I)V

    .line 700
    new-instance p1, Lcom/google/android/gms/internal/ads/dvr;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dvr;-><init>(IJ)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    const/4 p1, 0x4

    .line 701
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dvp;->a(I)V

    .line 702
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dvp;->b(Z)V

    return-void
.end method

.method private final a(Z)V
    .locals 3

    .line 565
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dvp;->y:Z

    if-eq v0, p1, :cond_0

    .line 566
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/dvp;->y:Z

    .line 567
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->m:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private final a([ZI)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhe;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 803
    new-array v1, v1, [Lcom/google/android/gms/internal/ads/dvy;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/dvp;->v:[Lcom/google/android/gms/internal/ads/dvy;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 805
    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/dvp;->g:[Lcom/google/android/gms/internal/ads/dvy;

    array-length v5, v4

    if-ge v2, v5, :cond_7

    .line 806
    aget-object v4, v4, v2

    .line 807
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/dvs;->l:Lcom/google/android/gms/internal/ads/ebx;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/ebx;->b:Lcom/google/android/gms/internal/ads/ebw;

    .line 7005
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/ebw;->b:[Lcom/google/android/gms/internal/ads/ebu;

    aget-object v5, v5, v2

    if-eqz v5, :cond_6

    .line 809
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dvp;->v:[Lcom/google/android/gms/internal/ads/dvy;

    add-int/lit8 v15, v3, 0x1

    aput-object v4, v6, v3

    .line 810
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dvy;->d()I

    move-result v3

    if-nez v3, :cond_5

    .line 811
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/dvs;->l:Lcom/google/android/gms/internal/ads/ebx;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/ebx;->d:[Lcom/google/android/gms/internal/ads/dwb;

    aget-object v7, v3, v2

    .line 812
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/dvp;->w:Z

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/google/android/gms/internal/ads/dvp;->z:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 813
    :goto_1
    aget-boolean v8, p1, v2

    if-nez v8, :cond_1

    if-eqz v3, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    .line 814
    :goto_2
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/ebu;->b()I

    move-result v6

    new-array v8, v6, [Lcom/google/android/gms/internal/ads/zzht;

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v6, :cond_2

    .line 816
    invoke-interface {v5, v9}, Lcom/google/android/gms/internal/ads/ebu;->a(I)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 818
    :cond_2
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/dvs;->d:[Lcom/google/android/gms/internal/ads/ebc;

    aget-object v9, v5, v2

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/dvp;->F:J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    .line 819
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/dvs;->a()J

    move-result-wide v13

    move-object v6, v4

    .line 820
    invoke-interface/range {v6 .. v14}, Lcom/google/android/gms/internal/ads/dvy;->a(Lcom/google/android/gms/internal/ads/dwb;[Lcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/ebc;JZJ)V

    .line 821
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dvy;->c()Lcom/google/android/gms/internal/ads/ecv;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 823
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dvp;->t:Lcom/google/android/gms/internal/ads/ecv;

    if-nez v6, :cond_3

    .line 825
    iput-object v5, v0, Lcom/google/android/gms/internal/ads/dvp;->t:Lcom/google/android/gms/internal/ads/ecv;

    .line 826
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/dvp;->s:Lcom/google/android/gms/internal/ads/dvy;

    .line 827
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/dvp;->r:Lcom/google/android/gms/internal/ads/dvz;

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/ecv;->a(Lcom/google/android/gms/internal/ads/dvz;)Lcom/google/android/gms/internal/ads/dvz;

    goto :goto_4

    .line 824
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Multiple renderer media clocks enabled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhe;->a(Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/zzhe;

    move-result-object v1

    throw v1

    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    .line 829
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dvy;->e()V

    :cond_5
    move v3, v15

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/dwe;IJ)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dwe;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 747
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dwe;->a()I

    move-result v0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/ecr;->a(II)I

    .line 748
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->o:Lcom/google/android/gms/internal/ads/dwf;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwf;)Lcom/google/android/gms/internal/ads/dwf;

    const-wide/16 v0, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, p3, v2

    if-nez p2, :cond_0

    move-wide p3, v0

    :cond_0
    add-long/2addr p3, v0

    .line 756
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/dvp;->p:Lcom/google/android/gms/internal/ads/dwg;

    const/4 v0, 0x0

    .line 757
    invoke-virtual {p1, v0, p2, v0}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Z)Lcom/google/android/gms/internal/ads/dwg;

    .line 761
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final b(Lcom/google/android/gms/internal/ads/dvs;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhe;
        }
    .end annotation

    .line 779
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    if-ne v0, p1, :cond_0

    return-void

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->g:[Lcom/google/android/gms/internal/ads/dvy;

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 783
    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dvp;->g:[Lcom/google/android/gms/internal/ads/dvy;

    array-length v5, v4

    if-ge v2, v5, :cond_6

    .line 784
    aget-object v4, v4, v2

    .line 785
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dvy;->d()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v0, v2

    .line 786
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/dvs;->l:Lcom/google/android/gms/internal/ads/ebx;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/ebx;->b:Lcom/google/android/gms/internal/ads/ebw;

    .line 6005
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/ebw;->b:[Lcom/google/android/gms/internal/ads/ebu;

    aget-object v5, v5, v2

    if-eqz v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 789
    :cond_2
    aget-boolean v6, v0, v2

    if-eqz v6, :cond_5

    if-eqz v5, :cond_3

    .line 790
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dvy;->i()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 791
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dvy;->f()Lcom/google/android/gms/internal/ads/ebc;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/dvs;->d:[Lcom/google/android/gms/internal/ads/ebc;

    aget-object v6, v6, v2

    if-ne v5, v6, :cond_5

    .line 792
    :cond_3
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dvp;->s:Lcom/google/android/gms/internal/ads/dvy;

    if-ne v4, v5, :cond_4

    .line 793
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dvp;->k:Lcom/google/android/gms/internal/ads/edd;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dvp;->t:Lcom/google/android/gms/internal/ads/ecv;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/edd;->a(Lcom/google/android/gms/internal/ads/ecv;)V

    const/4 v5, 0x0

    .line 794
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/dvp;->t:Lcom/google/android/gms/internal/ads/ecv;

    .line 795
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/dvp;->s:Lcom/google/android/gms/internal/ads/dvy;

    .line 796
    :cond_4
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/dvp;->a(Lcom/google/android/gms/internal/ads/dvy;)V

    .line 797
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dvy;->l()V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 799
    :cond_6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    .line 800
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvp;->m:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dvs;->l:Lcom/google/android/gms/internal/ads/ebx;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 801
    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/internal/ads/dvp;->a([ZI)V

    return-void
.end method

.method private final b(Ljava/lang/Object;I)V
    .locals 4

    .line 704
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->m:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/dvt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    invoke-direct {v1, v2, p1, v3, p2}, Lcom/google/android/gms/internal/ads/dvt;-><init>(Lcom/google/android/gms/internal/ads/dwe;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/dvr;I)V

    const/4 p1, 0x6

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 705
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private final b(Z)V
    .locals 8

    .line 660
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 661
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dvp;->x:Z

    .line 662
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvp;->k:Lcom/google/android/gms/internal/ads/edd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/edd;->b()V

    const/4 v1, 0x0

    .line 663
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dvp;->t:Lcom/google/android/gms/internal/ads/ecv;

    .line 664
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dvp;->s:Lcom/google/android/gms/internal/ads/dvy;

    const-wide/32 v2, 0x3938700

    .line 665
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dvp;->F:J

    .line 666
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvp;->v:[Lcom/google/android/gms/internal/ads/dvy;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 667
    :try_start_0
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/dvp;->a(Lcom/google/android/gms/internal/ads/dvy;)V

    .line 668
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dvy;->l()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhe; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_1

    :catch_1
    move-exception v5

    :goto_1
    const-string v6, "ExoPlayerImplInternal"

    const-string v7, "Stop failed."

    .line 671
    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v0, [Lcom/google/android/gms/internal/ads/dvy;

    .line 673
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/dvp;->v:[Lcom/google/android/gms/internal/ads/dvy;

    .line 674
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    if-eqz v2, :cond_1

    goto :goto_3

    .line 675
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    .line 676
    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/dvp;->a(Lcom/google/android/gms/internal/ads/dvs;)V

    .line 677
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    .line 678
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dvp;->H:Lcom/google/android/gms/internal/ads/dvs;

    .line 679
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    .line 680
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dvp;->a(Z)V

    if-eqz p1, :cond_3

    .line 682
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dvp;->u:Lcom/google/android/gms/internal/ads/eau;

    if-eqz p1, :cond_2

    .line 683
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/eau;->b()V

    .line 684
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dvp;->u:Lcom/google/android/gms/internal/ads/eau;

    .line 685
    :cond_2
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    :cond_3
    return-void
.end method

.method private final b(I)Z
    .locals 5

    .line 716
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvp;->p:Lcom/google/android/gms/internal/ads/dwg;

    const/4 v2, 0x0

    .line 717
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Z)Lcom/google/android/gms/internal/ads/dwg;

    .line 718
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvp;->o:Lcom/google/android/gms/internal/ads/dwf;

    .line 4003
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwf;)Lcom/google/android/gms/internal/ads/dwf;

    .line 720
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvp;->p:Lcom/google/android/gms/internal/ads/dwg;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dvp;->o:Lcom/google/android/gms/internal/ads/dwf;

    iget v4, p0, Lcom/google/android/gms/internal/ads/dvp;->A:I

    .line 722
    invoke-virtual {v0, p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Lcom/google/android/gms/internal/ads/dwf;I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v2
.end method

.method private final b(J)Z
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 690
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/dvr;->c:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/dvs;->i:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final c()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhe;
        }
    .end annotation

    const/4 v0, 0x0

    .line 569
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dvp;->x:Z

    .line 570
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvp;->k:Lcom/google/android/gms/internal/ads/edd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/edd;->a()V

    .line 571
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvp;->v:[Lcom/google/android/gms/internal/ads/dvy;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 572
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/dvy;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final d()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhe;
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->k:Lcom/google/android/gms/internal/ads/edd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/edd;->b()V

    .line 576
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->v:[Lcom/google/android/gms/internal/ads/dvy;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 577
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/dvp;->a(Lcom/google/android/gms/internal/ads/dvy;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final e()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhe;
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    if-nez v0, :cond_0

    return-void

    .line 582
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dvs;->a:Lcom/google/android/gms/internal/ads/eas;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eas;->d()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 584
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dvp;->a(J)V

    goto :goto_1

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->s:Lcom/google/android/gms/internal/ads/dvy;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dvy;->u()Z

    move-result v0

    if-nez v0, :cond_2

    .line 586
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->t:Lcom/google/android/gms/internal/ads/ecv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ecv;->y()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dvp;->F:J

    .line 587
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvp;->k:Lcom/google/android/gms/internal/ads/edd;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/edd;->a(J)V

    goto :goto_0

    .line 588
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->k:Lcom/google/android/gms/internal/ads/edd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/edd;->y()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dvp;->F:J

    .line 589
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/dvp;->F:J

    .line 590
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dvs;->a()J

    move-result-wide v3

    sub-long v0, v1, v3

    .line 592
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    iput-wide v0, v2, Lcom/google/android/gms/internal/ads/dvr;->c:J

    .line 593
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dvp;->C:J

    .line 594
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->v:[Lcom/google/android/gms/internal/ads/dvy;

    array-length v0, v0

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_3

    move-wide v3, v1

    goto :goto_2

    .line 595
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dvs;->a:Lcom/google/android/gms/internal/ads/eas;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eas;->e()J

    move-result-wide v3

    .line 596
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    cmp-long v5, v3, v1

    if-nez v5, :cond_4

    .line 597
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    iget v2, v2, Lcom/google/android/gms/internal/ads/dvs;->f:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dvp;->p:Lcom/google/android/gms/internal/ads/dwg;

    const/4 v4, 0x0

    .line 598
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Z)Lcom/google/android/gms/internal/ads/dwg;

    move-result-object v1

    .line 599
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/dwg;->d:J

    .line 601
    :cond_4
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/dvr;->d:J

    return-void
.end method

.method private final f()V
    .locals 2

    const/4 v0, 0x1

    .line 656
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dvp;->b(Z)V

    .line 657
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvp;->j:Lcom/google/android/gms/internal/ads/dvx;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dvx;->b()V

    .line 658
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dvp;->a(I)V

    return-void
.end method

.method private final g()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 691
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/dvs;->i:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->H:Lcom/google/android/gms/internal/ads/dvs;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    if-ne v0, v1, :cond_3

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->v:[Lcom/google/android/gms/internal/ads/dvy;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 693
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/dvy;->g()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 696
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dvs;->a:Lcom/google/android/gms/internal/ads/eas;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eas;->b()V

    :cond_3
    return-void
.end method

.method private final h()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 745
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 5746
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dvp;->b(Lcom/google/android/gms/internal/ads/dwe;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private final i()V
    .locals 7

    .line 762
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/dvs;->i:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dvs;->a:Lcom/google/android/gms/internal/ads/eas;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/eas;->K_()J

    move-result-wide v0

    :goto_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v0, 0x0

    .line 765
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dvp;->a(Z)V

    return-void

    .line 766
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/dvp;->F:J

    .line 767
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dvs;->a()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sub-long/2addr v0, v3

    .line 770
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvp;->j:Lcom/google/android/gms/internal/ads/dvx;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/ads/dvx;->a(J)Z

    move-result v0

    .line 771
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dvp;->a(Z)V

    if-eqz v0, :cond_2

    .line 773
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dvs;->a:Lcom/google/android/gms/internal/ads/eas;

    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/internal/ads/eas;->a(J)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 56
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dvp;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 57
    monitor-exit p0

    return-void

    .line 58
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->a:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 59
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dvp;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 60
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 63
    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->l:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dwe;IJ)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/dvu;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/dvu;-><init>(Lcom/google/android/gms/internal/ads/dwe;IJ)V

    const/4 p1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dwe;Ljava/lang/Object;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->a:Landroid/os/Handler;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eas;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->a:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/ebf;)V
    .locals 2

    .line 832
    check-cast p1, Lcom/google/android/gms/internal/ads/eas;

    .line 833
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->a:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final varargs declared-synchronized a([Lcom/google/android/gms/internal/ads/dvm;)V
    .locals 3

    monitor-enter p0

    .line 44
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dvp;->b:Z

    if-eqz v0, :cond_0

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Ignoring messages sent after release."

    .line 45
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 47
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/dvp;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/dvp;->c:I

    .line 48
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dvp;->a:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 49
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/dvp;->B:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt p1, v0, :cond_1

    .line 50
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 53
    :catch_0
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 55
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvp;->a:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v4, 0x1

    .line 73
    :try_start_0
    iget v5, v2, Landroid/os/Message;->what:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhe; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v6, 0x7

    const-wide/16 v9, 0x0

    const/4 v11, 0x3

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x4

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v15, 0x2

    packed-switch v5, :pswitch_data_0

    const/4 v2, 0x0

    return v2

    .line 97
    :pswitch_0
    :try_start_1
    iget v2, v2, Landroid/os/Message;->arg1:I

    .line 98
    iput v2, v1, Lcom/google/android/gms/internal/ads/dvp;->A:I

    .line 99
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    if-eqz v5, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    :goto_0
    if-eqz v5, :cond_9

    .line 102
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/dvp;->H:Lcom/google/android/gms/internal/ads/dvs;

    if-ne v5, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 103
    :goto_1
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    if-ne v5, v7, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 104
    :goto_2
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    iget v9, v5, Lcom/google/android/gms/internal/ads/dvs;->f:I

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/dvp;->p:Lcom/google/android/gms/internal/ads/dwg;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/dvp;->o:Lcom/google/android/gms/internal/ads/dwf;

    invoke-virtual {v8, v9, v10, v11, v2}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Lcom/google/android/gms/internal/ads/dwf;I)I

    move-result v8

    .line 105
    iget-object v9, v5, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    if-eqz v9, :cond_5

    if-eq v8, v12, :cond_5

    iget-object v9, v5, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    iget v9, v9, Lcom/google/android/gms/internal/ads/dvs;->f:I

    if-ne v9, v8, :cond_5

    .line 106
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    .line 107
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/dvp;->H:Lcom/google/android/gms/internal/ads/dvs;

    if-ne v5, v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    or-int/2addr v6, v8

    .line 108
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    if-ne v5, v8, :cond_4

    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    or-int/2addr v7, v8

    goto :goto_2

    .line 110
    :cond_5
    iget-object v3, v5, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    if-eqz v3, :cond_6

    .line 111
    iget-object v3, v5, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/dvp;->a(Lcom/google/android/gms/internal/ads/dvs;)V

    .line 112
    iput-object v13, v5, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    .line 113
    :cond_6
    iget v3, v5, Lcom/google/android/gms/internal/ads/dvs;->f:I

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/dvp;->b(I)Z

    move-result v3

    iput-boolean v3, v5, Lcom/google/android/gms/internal/ads/dvs;->h:Z

    if-nez v7, :cond_7

    .line 115
    iput-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    :cond_7
    if-nez v6, :cond_8

    .line 116
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    if-eqz v3, :cond_8

    .line 117
    iget v3, v3, Lcom/google/android/gms/internal/ads/dvs;->f:I

    .line 118
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    iget-wide v5, v5, Lcom/google/android/gms/internal/ads/dvr;->c:J

    invoke-direct {v1, v3, v5, v6}, Lcom/google/android/gms/internal/ads/dvp;->a(IJ)J

    move-result-wide v5

    .line 119
    new-instance v7, Lcom/google/android/gms/internal/ads/dvr;

    invoke-direct {v7, v3, v5, v6}, Lcom/google/android/gms/internal/ads/dvr;-><init>(IJ)V

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    .line 120
    :cond_8
    iget v3, v1, Lcom/google/android/gms/internal/ads/dvp;->z:I

    if-ne v3, v14, :cond_9

    if-eqz v2, :cond_9

    .line 121
    invoke-direct {v1, v15}, Lcom/google/android/gms/internal/ads/dvp;->a(I)V

    :cond_9
    return v4

    .line 524
    :pswitch_1
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Lcom/google/android/gms/internal/ads/dvm;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzhe; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    .line 525
    :try_start_2
    array-length v5, v2

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v5, :cond_a

    aget-object v6, v2, v3

    .line 526
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/dvm;->a:Lcom/google/android/gms/internal/ads/dvn;

    iget v8, v6, Lcom/google/android/gms/internal/ads/dvm;->b:I

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/dvm;->c:Ljava/lang/Object;

    invoke-interface {v7, v8, v6}, Lcom/google/android/gms/internal/ads/dvn;->a(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 528
    :cond_a
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/dvp;->u:Lcom/google/android/gms/internal/ads/eau;

    if-eqz v2, :cond_b

    .line 529
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/dvp;->a:Landroid/os/Handler;

    invoke-virtual {v2, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 530
    :cond_b
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzhe; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    .line 531
    :try_start_4
    iget v2, v1, Lcom/google/android/gms/internal/ads/dvp;->B:I

    add-int/2addr v2, v4

    iput v2, v1, Lcom/google/android/gms/internal/ads/dvp;->B:I

    .line 532
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 533
    monitor-exit p0

    return v4

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 534
    monitor-enter p0
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzhe; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    .line 535
    :try_start_6
    iget v3, v1, Lcom/google/android/gms/internal/ads/dvp;->B:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/google/android/gms/internal/ads/dvp;->B:I

    .line 536
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 537
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 538
    :try_start_7
    throw v2
    :try_end_7
    .catch Lcom/google/android/gms/internal/ads/zzhe; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 537
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v2

    .line 464
    :pswitch_2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    if-eqz v2, :cond_1b

    const/4 v5, 0x1

    :goto_6
    if-eqz v2, :cond_1b

    .line 467
    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/dvs;->i:Z

    if-nez v6, :cond_c

    goto/16 :goto_d

    .line 469
    :cond_c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dvs;->c()Z

    move-result v6

    if-nez v6, :cond_e

    .line 470
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/dvp;->H:Lcom/google/android/gms/internal/ads/dvs;

    if-ne v2, v6, :cond_d

    const/4 v5, 0x0

    .line 472
    :cond_d
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    goto :goto_6

    :cond_e
    if-eqz v5, :cond_18

    .line 474
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->H:Lcom/google/android/gms/internal/ads/dvs;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    if-eq v5, v6, :cond_f

    const/4 v5, 0x1

    goto :goto_7

    :cond_f
    const/4 v5, 0x0

    .line 475
    :goto_7
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/dvp;->a(Lcom/google/android/gms/internal/ads/dvs;)V

    .line 476
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    iput-object v13, v6, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    .line 477
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    .line 478
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/dvp;->H:Lcom/google/android/gms/internal/ads/dvs;

    .line 479
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/dvp;->g:[Lcom/google/android/gms/internal/ads/dvy;

    array-length v7, v7

    new-array v7, v7, [Z

    .line 480
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    iget-wide v8, v8, Lcom/google/android/gms/internal/ads/dvr;->c:J

    invoke-virtual {v6, v8, v9, v5, v7}, Lcom/google/android/gms/internal/ads/dvs;->a(JZ[Z)J

    move-result-wide v5

    .line 481
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    iget-wide v8, v8, Lcom/google/android/gms/internal/ads/dvr;->c:J

    cmp-long v10, v5, v8

    if-eqz v10, :cond_10

    .line 482
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    iput-wide v5, v8, Lcom/google/android/gms/internal/ads/dvr;->c:J

    .line 483
    invoke-direct {v1, v5, v6}, Lcom/google/android/gms/internal/ads/dvp;->a(J)V

    .line 485
    :cond_10
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->g:[Lcom/google/android/gms/internal/ads/dvy;

    array-length v5, v5

    new-array v5, v5, [Z

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 486
    :goto_8
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/dvp;->g:[Lcom/google/android/gms/internal/ads/dvy;

    array-length v10, v9

    if-ge v6, v10, :cond_17

    .line 487
    aget-object v9, v9, v6

    .line 488
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/dvy;->d()I

    move-result v10

    if-eqz v10, :cond_11

    const/4 v10, 0x1

    goto :goto_9

    :cond_11
    const/4 v10, 0x0

    :goto_9
    aput-boolean v10, v5, v6

    .line 489
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/dvs;->d:[Lcom/google/android/gms/internal/ads/ebc;

    aget-object v10, v10, v6

    if-eqz v10, :cond_12

    add-int/lit8 v8, v8, 0x1

    .line 492
    :cond_12
    aget-boolean v12, v5, v6

    if-eqz v12, :cond_16

    .line 493
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/dvy;->f()Lcom/google/android/gms/internal/ads/ebc;

    move-result-object v12

    if-eq v10, v12, :cond_15

    .line 494
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/dvp;->s:Lcom/google/android/gms/internal/ads/dvy;

    if-ne v9, v12, :cond_14

    if-nez v10, :cond_13

    .line 496
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/dvp;->k:Lcom/google/android/gms/internal/ads/edd;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/dvp;->t:Lcom/google/android/gms/internal/ads/ecv;

    invoke-virtual {v10, v12}, Lcom/google/android/gms/internal/ads/edd;->a(Lcom/google/android/gms/internal/ads/ecv;)V

    .line 497
    :cond_13
    iput-object v13, v1, Lcom/google/android/gms/internal/ads/dvp;->t:Lcom/google/android/gms/internal/ads/ecv;

    .line 498
    iput-object v13, v1, Lcom/google/android/gms/internal/ads/dvp;->s:Lcom/google/android/gms/internal/ads/dvy;

    .line 499
    :cond_14
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/dvp;->a(Lcom/google/android/gms/internal/ads/dvy;)V

    .line 500
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/dvy;->l()V

    goto :goto_a

    .line 501
    :cond_15
    aget-boolean v10, v7, v6

    if-eqz v10, :cond_16

    .line 502
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/dvp;->F:J

    invoke-interface {v9, v3, v4}, Lcom/google/android/gms/internal/ads/dvy;->a(J)V

    :cond_16
    :goto_a
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x1

    goto :goto_8

    .line 504
    :cond_17
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dvp;->m:Landroid/os/Handler;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dvs;->l:Lcom/google/android/gms/internal/ads/ebx;

    invoke-virtual {v3, v11, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 505
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 506
    invoke-direct {v1, v5, v8}, Lcom/google/android/gms/internal/ads/dvp;->a([ZI)V

    goto :goto_c

    .line 508
    :cond_18
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    .line 509
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    :goto_b
    if-eqz v2, :cond_19

    .line 511
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dvs;->d()V

    .line 512
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    goto :goto_b

    .line 513
    :cond_19
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    iput-object v13, v2, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    .line 514
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/dvs;->i:Z

    if-eqz v2, :cond_1a

    .line 515
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/dvs;->g:J

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/dvp;->F:J

    .line 517
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dvs;->a()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 518
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 519
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/dvs;->a(J)J

    .line 520
    :cond_1a
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dvp;->i()V

    .line 521
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dvp;->e()V

    .line 522
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/dvp;->a:Landroid/os/Handler;

    invoke-virtual {v2, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1b
    :goto_d
    const/4 v2, 0x1

    return v2

    .line 458
    :pswitch_3
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/eas;

    .line 459
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    if-eqz v3, :cond_1d

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/dvs;->a:Lcom/google/android/gms/internal/ads/eas;

    if-eq v3, v2, :cond_1c

    goto :goto_e

    .line 461
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dvp;->i()V

    :cond_1d
    :goto_e
    const/4 v2, 0x1

    return v2

    .line 371
    :pswitch_4
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/eas;

    .line 372
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    if-eqz v3, :cond_20

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/dvs;->a:Lcom/google/android/gms/internal/ads/eas;

    if-eq v3, v2, :cond_1e

    goto :goto_f

    .line 374
    :cond_1e
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    const/4 v3, 0x1

    .line 375
    iput-boolean v3, v2, Lcom/google/android/gms/internal/ads/dvs;->i:Z

    .line 376
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dvs;->c()Z

    .line 377
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/dvs;->g:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/dvs;->a(J)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/dvs;->g:J

    .line 378
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    if-nez v2, :cond_1f

    .line 379
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/dvp;->H:Lcom/google/android/gms/internal/ads/dvs;

    .line 380
    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/dvs;->g:J

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/dvp;->a(J)V

    .line 381
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/dvp;->H:Lcom/google/android/gms/internal/ads/dvs;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/dvp;->b(Lcom/google/android/gms/internal/ads/dvs;)V

    .line 382
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dvp;->i()V

    :cond_20
    :goto_f
    const/4 v2, 0x1

    return v2

    .line 384
    :pswitch_5
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    .line 385
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    .line 386
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/dwe;

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    .line 387
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v3, :cond_24

    .line 390
    iget v4, v1, Lcom/google/android/gms/internal/ads/dvp;->D:I

    if-lez v4, :cond_22

    .line 391
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->E:Lcom/google/android/gms/internal/ads/dvu;

    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/dvp;->a(Lcom/google/android/gms/internal/ads/dvu;)Landroid/util/Pair;

    move-result-object v4

    .line 392
    iget v5, v1, Lcom/google/android/gms/internal/ads/dvp;->D:I

    const/4 v6, 0x0

    .line 393
    iput v6, v1, Lcom/google/android/gms/internal/ads/dvp;->D:I

    .line 394
    iput-object v13, v1, Lcom/google/android/gms/internal/ads/dvp;->E:Lcom/google/android/gms/internal/ads/dvu;

    if-nez v4, :cond_21

    .line 396
    invoke-direct {v1, v2, v5}, Lcom/google/android/gms/internal/ads/dvp;->a(Ljava/lang/Object;I)V

    goto/16 :goto_18

    .line 398
    :cond_21
    new-instance v6, Lcom/google/android/gms/internal/ads/dvr;

    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/dvr;-><init>(IJ)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    goto :goto_10

    .line 399
    :cond_22
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/dvr;->b:J

    cmp-long v6, v4, v7

    if-nez v6, :cond_24

    .line 400
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dwe;->c()Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v4, 0x0

    .line 401
    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/dvp;->a(Ljava/lang/Object;I)V

    goto/16 :goto_18

    .line 403
    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dvp;->h()Landroid/util/Pair;

    move-result-object v4

    .line 404
    new-instance v5, Lcom/google/android/gms/internal/ads/dvr;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/dvr;-><init>(IJ)V

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    :cond_24
    const/4 v5, 0x0

    .line 405
    :goto_10
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    if-eqz v4, :cond_25

    goto :goto_11

    .line 406
    :cond_25
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    :goto_11
    if-eqz v4, :cond_2f

    .line 408
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/dvs;->b:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/dwe;->a(Ljava/lang/Object;)I

    move-result v6

    if-ne v6, v12, :cond_29

    .line 410
    iget v6, v4, Lcom/google/android/gms/internal/ads/dvs;->f:I

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    invoke-direct {v1, v6, v3, v7}, Lcom/google/android/gms/internal/ads/dvp;->a(ILcom/google/android/gms/internal/ads/dwe;Lcom/google/android/gms/internal/ads/dwe;)I

    move-result v3

    if-ne v3, v12, :cond_26

    .line 412
    invoke-direct {v1, v2, v5}, Lcom/google/android/gms/internal/ads/dvp;->a(Ljava/lang/Object;I)V

    goto/16 :goto_18

    .line 414
    :cond_26
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/dvp;->p:Lcom/google/android/gms/internal/ads/dwg;

    const/4 v8, 0x0

    .line 416
    invoke-virtual {v6, v3, v7, v8}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Z)Lcom/google/android/gms/internal/ads/dwg;

    .line 418
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dvp;->h()Landroid/util/Pair;

    move-result-object v3

    .line 419
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 420
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 421
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/dvp;->p:Lcom/google/android/gms/internal/ads/dwg;

    const/4 v10, 0x1

    invoke-virtual {v3, v6, v9, v10}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Z)Lcom/google/android/gms/internal/ads/dwg;

    .line 422
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dvp;->p:Lcom/google/android/gms/internal/ads/dwg;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/dwg;->b:Ljava/lang/Object;

    .line 423
    iput v12, v4, Lcom/google/android/gms/internal/ads/dvs;->f:I

    .line 424
    :goto_12
    iget-object v9, v4, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    if-eqz v9, :cond_28

    .line 425
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    .line 426
    iget-object v9, v4, Lcom/google/android/gms/internal/ads/dvs;->b:Ljava/lang/Object;

    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    move v9, v6

    goto :goto_13

    :cond_27
    const/4 v9, -0x1

    .line 427
    :goto_13
    iput v9, v4, Lcom/google/android/gms/internal/ads/dvs;->f:I

    goto :goto_12

    .line 428
    :cond_28
    invoke-direct {v1, v6, v7, v8}, Lcom/google/android/gms/internal/ads/dvp;->a(IJ)J

    move-result-wide v3

    .line 429
    new-instance v7, Lcom/google/android/gms/internal/ads/dvr;

    invoke-direct {v7, v6, v3, v4}, Lcom/google/android/gms/internal/ads/dvr;-><init>(IJ)V

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    goto/16 :goto_17

    .line 431
    :cond_29
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/ads/dvp;->b(I)Z

    move-result v3

    invoke-virtual {v4, v6, v3}, Lcom/google/android/gms/internal/ads/dvs;->a(IZ)V

    .line 432
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dvp;->H:Lcom/google/android/gms/internal/ads/dvs;

    if-ne v4, v3, :cond_2a

    const/4 v3, 0x1

    goto :goto_14

    :cond_2a
    const/4 v3, 0x0

    .line 433
    :goto_14
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    iget v7, v7, Lcom/google/android/gms/internal/ads/dvr;->a:I

    if-eq v6, v7, :cond_2b

    .line 434
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    .line 435
    new-instance v8, Lcom/google/android/gms/internal/ads/dvr;

    iget-wide v9, v7, Lcom/google/android/gms/internal/ads/dvr;->b:J

    invoke-direct {v8, v6, v9, v10}, Lcom/google/android/gms/internal/ads/dvr;-><init>(IJ)V

    .line 436
    iget-wide v9, v7, Lcom/google/android/gms/internal/ads/dvr;->c:J

    iput-wide v9, v8, Lcom/google/android/gms/internal/ads/dvr;->c:J

    .line 437
    iget-wide v9, v7, Lcom/google/android/gms/internal/ads/dvr;->d:J

    iput-wide v9, v8, Lcom/google/android/gms/internal/ads/dvr;->d:J

    .line 439
    iput-object v8, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    .line 440
    :cond_2b
    :goto_15
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    if-eqz v7, :cond_2f

    .line 442
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    .line 443
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/dvp;->p:Lcom/google/android/gms/internal/ads/dwg;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/dvp;->o:Lcom/google/android/gms/internal/ads/dwf;

    iget v11, v1, Lcom/google/android/gms/internal/ads/dvp;->A:I

    invoke-virtual {v8, v6, v9, v10, v11}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Lcom/google/android/gms/internal/ads/dwf;I)I

    move-result v6

    if-eq v6, v12, :cond_2d

    .line 444
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/dvs;->b:Ljava/lang/Object;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/dvp;->p:Lcom/google/android/gms/internal/ads/dwg;

    const/4 v11, 0x1

    .line 445
    invoke-virtual {v9, v6, v10, v11}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Z)Lcom/google/android/gms/internal/ads/dwg;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/dwg;->b:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 446
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/ads/dvp;->b(I)Z

    move-result v4

    invoke-virtual {v7, v6, v4}, Lcom/google/android/gms/internal/ads/dvs;->a(IZ)V

    .line 447
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->H:Lcom/google/android/gms/internal/ads/dvs;

    if-ne v7, v4, :cond_2c

    const/4 v4, 0x1

    goto :goto_16

    :cond_2c
    const/4 v4, 0x0

    :goto_16
    or-int/2addr v3, v4

    move-object v4, v7

    goto :goto_15

    :cond_2d
    if-nez v3, :cond_2e

    .line 449
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    iget v3, v3, Lcom/google/android/gms/internal/ads/dvs;->f:I

    .line 450
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/dvr;->c:J

    invoke-direct {v1, v3, v6, v7}, Lcom/google/android/gms/internal/ads/dvp;->a(IJ)J

    move-result-wide v6

    .line 451
    new-instance v4, Lcom/google/android/gms/internal/ads/dvr;

    invoke-direct {v4, v3, v6, v7}, Lcom/google/android/gms/internal/ads/dvr;-><init>(IJ)V

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    goto :goto_17

    .line 453
    :cond_2e
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    .line 454
    iput-object v13, v4, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    .line 455
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/dvp;->a(Lcom/google/android/gms/internal/ads/dvs;)V

    .line 456
    :cond_2f
    :goto_17
    invoke-direct {v1, v2, v5}, Lcom/google/android/gms/internal/ads/dvp;->b(Ljava/lang/Object;I)V
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzhe; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4

    :goto_18
    const/4 v2, 0x1

    return v2

    :pswitch_6
    const/4 v2, 0x1

    .line 363
    :try_start_a
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/dvp;->b(Z)V

    .line 364
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dvp;->j:Lcom/google/android/gms/internal/ads/dvx;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/dvx;->c()V

    .line 365
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/dvp;->a(I)V

    .line 366
    monitor-enter p0
    :try_end_a
    .catch Lcom/google/android/gms/internal/ads/zzhe; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4

    .line 367
    :try_start_b
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/dvp;->b:Z

    .line 368
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 369
    monitor-exit p0

    return v2

    :catchall_3
    move-exception v0

    move-object v2, v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v2

    :catch_0
    move-exception v0

    move-object v3, v0

    goto/16 :goto_45

    :catch_1
    move-exception v0

    move-object v3, v0

    goto/16 :goto_46

    .line 360
    :pswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dvp;->f()V

    const/4 v2, 0x1

    return v2

    .line 353
    :pswitch_8
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/dvz;

    .line 354
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dvp;->t:Lcom/google/android/gms/internal/ads/ecv;

    if-eqz v3, :cond_30

    .line 355
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/ecv;->a(Lcom/google/android/gms/internal/ads/dvz;)Lcom/google/android/gms/internal/ads/dvz;

    move-result-object v2

    goto :goto_19

    .line 356
    :cond_30
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dvp;->k:Lcom/google/android/gms/internal/ads/edd;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/edd;->a(Lcom/google/android/gms/internal/ads/dvz;)Lcom/google/android/gms/internal/ads/dvz;

    move-result-object v2

    .line 357
    :goto_19
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/dvp;->r:Lcom/google/android/gms/internal/ads/dvz;

    .line 358
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dvp;->m:Landroid/os/Handler;

    invoke-virtual {v3, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    const/4 v2, 0x1

    return v2

    .line 320
    :pswitch_9
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/dvu;

    .line 321
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    if-nez v3, :cond_31

    .line 322
    iget v3, v1, Lcom/google/android/gms/internal/ads/dvp;->D:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v1, Lcom/google/android/gms/internal/ads/dvp;->D:I

    .line 323
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/dvp;->E:Lcom/google/android/gms/internal/ads/dvu;

    :goto_1a
    const/4 v2, 0x1

    goto/16 :goto_1f

    .line 325
    :cond_31
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/dvp;->a(Lcom/google/android/gms/internal/ads/dvu;)Landroid/util/Pair;

    move-result-object v3

    if-nez v3, :cond_32

    .line 327
    new-instance v2, Lcom/google/android/gms/internal/ads/dvr;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v9, v10}, Lcom/google/android/gms/internal/ads/dvr;-><init>(IJ)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    .line 328
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->m:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v14, v5, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 329
    new-instance v2, Lcom/google/android/gms/internal/ads/dvr;

    invoke-direct {v2, v3, v7, v8}, Lcom/google/android/gms/internal/ads/dvr;-><init>(IJ)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    .line 330
    invoke-direct {v1, v14}, Lcom/google/android/gms/internal/ads/dvp;->a(I)V

    .line 331
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/dvp;->b(Z)V

    goto :goto_1a

    .line 333
    :cond_32
    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/dvu;->c:J

    cmp-long v2, v4, v7

    if-nez v2, :cond_33

    const/4 v2, 0x1

    goto :goto_1b

    :cond_33
    const/4 v2, 0x0

    .line 334
    :goto_1b
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 335
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_c
    .catch Lcom/google/android/gms/internal/ads/zzhe; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_4

    .line 336
    :try_start_d
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    iget v3, v3, Lcom/google/android/gms/internal/ads/dvr;->a:I

    if-ne v4, v3, :cond_35

    const-wide/16 v12, 0x3e8

    div-long v7, v5, v12

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    iget-wide v9, v3, Lcom/google/android/gms/internal/ads/dvr;->c:J

    div-long/2addr v9, v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    cmp-long v3, v7, v9

    if-nez v3, :cond_35

    .line 337
    :try_start_e
    new-instance v3, Lcom/google/android/gms/internal/ads/dvr;

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/dvr;-><init>(IJ)V

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    .line 338
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->m:Landroid/os/Handler;

    if-eqz v2, :cond_34

    const/4 v2, 0x1

    goto :goto_1c

    :cond_34
    const/4 v2, 0x0

    :goto_1c
    const/4 v5, 0x0

    invoke-virtual {v4, v14, v2, v5, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 339
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_e
    .catch Lcom/google/android/gms/internal/ads/zzhe; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_1a

    .line 341
    :cond_35
    :try_start_f
    invoke-direct {v1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/dvp;->a(IJ)J

    move-result-wide v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    cmp-long v3, v5, v7

    if-eqz v3, :cond_36

    const/4 v3, 0x1

    goto :goto_1d

    :cond_36
    const/4 v3, 0x0

    :goto_1d
    or-int/2addr v2, v3

    .line 344
    :try_start_10
    new-instance v3, Lcom/google/android/gms/internal/ads/dvr;

    invoke-direct {v3, v4, v7, v8}, Lcom/google/android/gms/internal/ads/dvr;-><init>(IJ)V

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    .line 345
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->m:Landroid/os/Handler;

    if-eqz v2, :cond_37

    const/4 v2, 0x1

    goto :goto_1e

    :cond_37
    const/4 v2, 0x0

    :goto_1e
    const/4 v5, 0x0

    invoke-virtual {v4, v14, v2, v5, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 346
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1a

    :goto_1f
    return v2

    :catchall_4
    move-exception v0

    move-object v3, v0

    .line 348
    new-instance v7, Lcom/google/android/gms/internal/ads/dvr;

    invoke-direct {v7, v4, v5, v6}, Lcom/google/android/gms/internal/ads/dvr;-><init>(IJ)V

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    .line 349
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->m:Landroid/os/Handler;

    if-eqz v2, :cond_38

    const/4 v2, 0x1

    goto :goto_20

    :cond_38
    const/4 v2, 0x0

    :goto_20
    const/4 v5, 0x0

    invoke-virtual {v4, v14, v2, v5, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 350
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 351
    throw v3

    :pswitch_a
    const-wide/16 v12, 0x3e8

    .line 124
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 126
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    if-nez v4, :cond_39

    .line 127
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->u:Lcom/google/android/gms/internal/ads/eau;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/eau;->a()V

    goto/16 :goto_30

    .line 130
    :cond_39
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    if-nez v4, :cond_3a

    .line 131
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    iget v4, v4, Lcom/google/android/gms/internal/ads/dvr;->a:I

    goto :goto_21

    .line 132
    :cond_3a
    iget v4, v4, Lcom/google/android/gms/internal/ads/dvs;->f:I

    .line 133
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/dvs;->h:Z

    if-nez v5, :cond_43

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/dvs;->b()Z

    move-result v5

    if-eqz v5, :cond_43

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/dvp;->p:Lcom/google/android/gms/internal/ads/dwg;

    const/4 v13, 0x0

    .line 135
    invoke-virtual {v5, v4, v12, v13}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Z)Lcom/google/android/gms/internal/ads/dwg;

    move-result-object v5

    .line 136
    iget-wide v12, v5, Lcom/google/android/gms/internal/ads/dwg;->d:J

    cmp-long v5, v12, v7

    if-nez v5, :cond_3b

    goto/16 :goto_26

    .line 139
    :cond_3b
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    if-eqz v5, :cond_3c

    .line 140
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    iget v5, v5, Lcom/google/android/gms/internal/ads/dvs;->c:I

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    iget v12, v12, Lcom/google/android/gms/internal/ads/dvs;->c:I

    sub-int/2addr v5, v12

    const/16 v12, 0x64

    if-eq v5, v12, :cond_43

    .line 142
    :cond_3c
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/dvp;->p:Lcom/google/android/gms/internal/ads/dwg;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/dvp;->o:Lcom/google/android/gms/internal/ads/dwf;

    iget v11, v1, Lcom/google/android/gms/internal/ads/dvp;->A:I

    invoke-virtual {v5, v4, v12, v13, v11}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Lcom/google/android/gms/internal/ads/dwf;I)I

    move-result v4

    .line 143
    :goto_21
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/dwe;->b()I

    move-result v5

    if-lt v4, v5, :cond_3d

    .line 144
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->u:Lcom/google/android/gms/internal/ads/eau;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/eau;->a()V

    goto/16 :goto_26

    .line 146
    :cond_3d
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    if-nez v5, :cond_3e

    .line 147
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    iget-wide v9, v5, Lcom/google/android/gms/internal/ads/dvr;->c:J

    goto :goto_22

    .line 148
    :cond_3e
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/dvp;->p:Lcom/google/android/gms/internal/ads/dwg;

    const/4 v12, 0x0

    .line 149
    invoke-virtual {v5, v4, v11, v12}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Z)Lcom/google/android/gms/internal/ads/dwg;

    .line 150
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/dvp;->o:Lcom/google/android/gms/internal/ads/dwf;

    .line 2003
    invoke-virtual {v5, v12, v11}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwf;)Lcom/google/android/gms/internal/ads/dwf;

    if-eqz v4, :cond_3f

    goto :goto_22

    .line 155
    :cond_3f
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dvs;->a()J

    move-result-wide v4

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    iget v12, v12, Lcom/google/android/gms/internal/ads/dvs;->f:I

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/dvp;->p:Lcom/google/android/gms/internal/ads/dwg;

    const/4 v15, 0x0

    .line 157
    invoke-virtual {v11, v12, v13, v15}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Z)Lcom/google/android/gms/internal/ads/dwg;

    move-result-object v11

    .line 158
    iget-wide v11, v11, Lcom/google/android/gms/internal/ads/dwg;->d:J

    add-long/2addr v4, v11

    .line 159
    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/dvp;->F:J

    sub-long/2addr v4, v11

    .line 160
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    .line 161
    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->max(JJ)J

    const/4 v4, 0x0

    .line 162
    invoke-direct {v1, v11, v4, v7, v8}, Lcom/google/android/gms/internal/ads/dvp;->b(Lcom/google/android/gms/internal/ads/dwe;IJ)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_43

    .line 164
    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 165
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 166
    :goto_22
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    if-nez v5, :cond_40

    const-wide/32 v11, 0x3938700

    add-long/2addr v11, v9

    :goto_23
    move-wide/from16 v19, v11

    goto :goto_24

    .line 168
    :cond_40
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/dvs;->a()J

    move-result-wide v11

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    iget v13, v13, Lcom/google/android/gms/internal/ads/dvs;->f:I

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/dvp;->p:Lcom/google/android/gms/internal/ads/dwg;

    const/4 v14, 0x0

    .line 170
    invoke-virtual {v5, v13, v15, v14}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Z)Lcom/google/android/gms/internal/ads/dwg;

    move-result-object v5

    .line 171
    iget-wide v13, v5, Lcom/google/android/gms/internal/ads/dwg;->d:J

    add-long/2addr v11, v13

    goto :goto_23

    .line 173
    :goto_24
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    if-nez v5, :cond_41

    const/4 v11, 0x1

    const/16 v25, 0x0

    goto :goto_25

    :cond_41
    iget v5, v5, Lcom/google/android/gms/internal/ads/dvs;->c:I

    const/4 v11, 0x1

    add-int/2addr v5, v11

    move/from16 v25, v5

    .line 174
    :goto_25
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/dvp;->b(I)Z

    move-result v27

    .line 175
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/dvp;->p:Lcom/google/android/gms/internal/ads/dwg;

    invoke-virtual {v5, v4, v12, v11}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Z)Lcom/google/android/gms/internal/ads/dwg;

    .line 176
    new-instance v5, Lcom/google/android/gms/internal/ads/dvs;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/dvp;->g:[Lcom/google/android/gms/internal/ads/dvy;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/dvp;->h:[Lcom/google/android/gms/internal/ads/dwc;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/dvp;->i:Lcom/google/android/gms/internal/ads/ebv;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/dvp;->j:Lcom/google/android/gms/internal/ads/dvx;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/dvp;->u:Lcom/google/android/gms/internal/ads/eau;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/dvp;->p:Lcom/google/android/gms/internal/ads/dwg;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/dwg;->b:Ljava/lang/Object;

    move-object/from16 v16, v5

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object/from16 v24, v6

    move/from16 v26, v4

    move-wide/from16 v28, v9

    invoke-direct/range {v16 .. v29}, Lcom/google/android/gms/internal/ads/dvs;-><init>([Lcom/google/android/gms/internal/ads/dvy;[Lcom/google/android/gms/internal/ads/dwc;JLcom/google/android/gms/internal/ads/ebv;Lcom/google/android/gms/internal/ads/dvx;Lcom/google/android/gms/internal/ads/eau;Ljava/lang/Object;IIZJ)V

    .line 177
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    if-eqz v4, :cond_42

    .line 178
    iput-object v5, v4, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    .line 179
    :cond_42
    iput-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    .line 180
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/dvs;->a:Lcom/google/android/gms/internal/ads/eas;

    invoke-interface {v4, v1, v9, v10}, Lcom/google/android/gms/internal/ads/eas;->a(Lcom/google/android/gms/internal/ads/ear;J)V

    const/4 v4, 0x1

    .line 181
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/dvp;->a(Z)V

    .line 182
    :cond_43
    :goto_26
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    if-eqz v4, :cond_45

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dvs;->b()Z

    move-result v4

    if-eqz v4, :cond_44

    goto :goto_27

    .line 184
    :cond_44
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    if-eqz v4, :cond_46

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/dvp;->y:Z

    if-nez v4, :cond_46

    .line 185
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dvp;->i()V

    goto :goto_28

    :cond_45
    :goto_27
    const/4 v4, 0x0

    .line 183
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/dvp;->a(Z)V

    .line 186
    :cond_46
    :goto_28
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    if-eqz v4, :cond_50

    .line 187
    :goto_29
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->H:Lcom/google/android/gms/internal/ads/dvs;

    if-eq v4, v5, :cond_47

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/dvp;->F:J

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    iget-wide v9, v4, Lcom/google/android/gms/internal/ads/dvs;->e:J

    cmp-long v4, v5, v9

    if-ltz v4, :cond_47

    .line 188
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dvs;->d()V

    .line 189
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/dvp;->b(Lcom/google/android/gms/internal/ads/dvs;)V

    .line 190
    new-instance v4, Lcom/google/android/gms/internal/ads/dvr;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    iget v5, v5, Lcom/google/android/gms/internal/ads/dvs;->f:I

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    iget-wide v9, v6, Lcom/google/android/gms/internal/ads/dvs;->g:J

    invoke-direct {v4, v5, v9, v10}, Lcom/google/android/gms/internal/ads/dvr;-><init>(IJ)V

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    .line 191
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dvp;->e()V

    .line 192
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->m:Landroid/os/Handler;

    const/4 v5, 0x5

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_29

    .line 193
    :cond_47
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->H:Lcom/google/android/gms/internal/ads/dvs;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/dvs;->h:Z

    if-eqz v4, :cond_49

    const/4 v4, 0x0

    .line 194
    :goto_2a
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->g:[Lcom/google/android/gms/internal/ads/dvy;

    array-length v6, v5

    if-ge v4, v6, :cond_50

    .line 195
    aget-object v5, v5, v4

    .line 196
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/dvp;->H:Lcom/google/android/gms/internal/ads/dvs;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/dvs;->d:[Lcom/google/android/gms/internal/ads/ebc;

    aget-object v6, v6, v4

    if-eqz v6, :cond_48

    .line 197
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dvy;->f()Lcom/google/android/gms/internal/ads/ebc;

    move-result-object v9

    if-ne v9, v6, :cond_48

    .line 198
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dvy;->g()Z

    move-result v6

    if-eqz v6, :cond_48

    .line 199
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dvy;->h()V

    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_49
    const/4 v4, 0x0

    .line 202
    :goto_2b
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->g:[Lcom/google/android/gms/internal/ads/dvy;

    array-length v6, v5

    if-ge v4, v6, :cond_4b

    .line 203
    aget-object v5, v5, v4

    .line 204
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/dvp;->H:Lcom/google/android/gms/internal/ads/dvs;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/dvs;->d:[Lcom/google/android/gms/internal/ads/ebc;

    aget-object v6, v6, v4

    .line 205
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dvy;->f()Lcom/google/android/gms/internal/ads/ebc;

    move-result-object v9

    if-ne v9, v6, :cond_50

    if-eqz v6, :cond_4a

    .line 206
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dvy;->g()Z

    move-result v5

    if-nez v5, :cond_4a

    goto/16 :goto_30

    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 209
    :cond_4b
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->H:Lcom/google/android/gms/internal/ads/dvs;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    if-eqz v4, :cond_50

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->H:Lcom/google/android/gms/internal/ads/dvs;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/dvs;->i:Z

    if-eqz v4, :cond_50

    .line 210
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->H:Lcom/google/android/gms/internal/ads/dvs;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/dvs;->l:Lcom/google/android/gms/internal/ads/ebx;

    .line 211
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->H:Lcom/google/android/gms/internal/ads/dvs;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/dvs;->k:Lcom/google/android/gms/internal/ads/dvs;

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->H:Lcom/google/android/gms/internal/ads/dvs;

    .line 212
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/dvs;->l:Lcom/google/android/gms/internal/ads/ebx;

    .line 213
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/dvp;->H:Lcom/google/android/gms/internal/ads/dvs;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/dvs;->a:Lcom/google/android/gms/internal/ads/eas;

    .line 214
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/eas;->d()J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-eqz v6, :cond_4c

    const/4 v6, 0x1

    goto :goto_2c

    :cond_4c
    const/4 v6, 0x0

    :goto_2c
    const/4 v9, 0x0

    .line 215
    :goto_2d
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/dvp;->g:[Lcom/google/android/gms/internal/ads/dvy;

    array-length v11, v10

    if-ge v9, v11, :cond_50

    .line 216
    aget-object v10, v10, v9

    .line 217
    iget-object v11, v4, Lcom/google/android/gms/internal/ads/ebx;->b:Lcom/google/android/gms/internal/ads/ebw;

    .line 2005
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/ebw;->b:[Lcom/google/android/gms/internal/ads/ebu;

    aget-object v11, v11, v9

    if-eqz v11, :cond_4f

    if-nez v6, :cond_4e

    .line 220
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/dvy;->i()Z

    move-result v11

    if-nez v11, :cond_4f

    .line 221
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/ebx;->b:Lcom/google/android/gms/internal/ads/ebw;

    .line 3005
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/ebw;->b:[Lcom/google/android/gms/internal/ads/ebu;

    aget-object v11, v11, v9

    .line 222
    iget-object v12, v4, Lcom/google/android/gms/internal/ads/ebx;->d:[Lcom/google/android/gms/internal/ads/dwb;

    aget-object v12, v12, v9

    .line 223
    iget-object v13, v5, Lcom/google/android/gms/internal/ads/ebx;->d:[Lcom/google/android/gms/internal/ads/dwb;

    aget-object v13, v13, v9

    if-eqz v11, :cond_4e

    .line 224
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/dwb;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4e

    .line 225
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/ebu;->b()I

    move-result v12

    new-array v13, v12, [Lcom/google/android/gms/internal/ads/zzht;

    const/4 v14, 0x0

    :goto_2e
    if-ge v14, v12, :cond_4d

    .line 227
    invoke-interface {v11, v14}, Lcom/google/android/gms/internal/ads/ebu;->a(I)Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v15

    aput-object v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_2e

    .line 229
    :cond_4d
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/dvp;->H:Lcom/google/android/gms/internal/ads/dvs;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/dvs;->d:[Lcom/google/android/gms/internal/ads/ebc;

    aget-object v11, v11, v9

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/dvp;->H:Lcom/google/android/gms/internal/ads/dvs;

    .line 230
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/dvs;->a()J

    move-result-wide v14

    .line 231
    invoke-interface {v10, v13, v11, v14, v15}, Lcom/google/android/gms/internal/ads/dvy;->a([Lcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/ebc;J)V

    goto :goto_2f

    .line 233
    :cond_4e
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/dvy;->h()V

    :cond_4f
    :goto_2f
    add-int/lit8 v9, v9, 0x1

    goto :goto_2d

    .line 235
    :cond_50
    :goto_30
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    const-wide/16 v5, 0xa

    if-nez v4, :cond_51

    .line 236
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dvp;->g()V

    .line 237
    invoke-direct {v1, v2, v3, v5, v6}, Lcom/google/android/gms/internal/ads/dvp;->a(JJ)V

    :goto_31
    const/4 v2, 0x1

    goto/16 :goto_40

    :cond_51
    const-string v4, "doSomeWork"

    .line 239
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/edf;->a(Ljava/lang/String;)V

    .line 240
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dvp;->e()V

    .line 241
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    iget-wide v9, v4, Lcom/google/android/gms/internal/ads/dvr;->c:J

    .line 244
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->v:[Lcom/google/android/gms/internal/ads/dvy;

    array-length v9, v4

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_32
    if-ge v12, v9, :cond_57

    aget-object v13, v4, v12

    .line 245
    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/dvp;->F:J

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/dvp;->C:J

    invoke-interface {v13, v14, v15, v5, v6}, Lcom/google/android/gms/internal/ads/dvy;->a(JJ)V

    if-eqz v11, :cond_52

    .line 246
    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/dvy;->u()Z

    move-result v5

    if-eqz v5, :cond_52

    const/4 v11, 0x1

    goto :goto_33

    :cond_52
    const/4 v11, 0x0

    .line 247
    :goto_33
    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/dvy;->t()Z

    move-result v5

    if-nez v5, :cond_54

    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/dvy;->u()Z

    move-result v5

    if-eqz v5, :cond_53

    goto :goto_34

    :cond_53
    const/4 v5, 0x0

    goto :goto_35

    :cond_54
    :goto_34
    const/4 v5, 0x1

    :goto_35
    if-nez v5, :cond_55

    .line 249
    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/dvy;->j()V

    :cond_55
    if-eqz v10, :cond_56

    if-eqz v5, :cond_56

    const/4 v10, 0x1

    goto :goto_36

    :cond_56
    const/4 v10, 0x0

    :goto_36
    add-int/lit8 v12, v12, 0x1

    const-wide/16 v5, 0xa

    goto :goto_32

    :cond_57
    if-nez v10, :cond_58

    .line 253
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dvp;->g()V

    .line 254
    :cond_58
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->t:Lcom/google/android/gms/internal/ads/ecv;

    if-eqz v4, :cond_59

    .line 255
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/ecv;->z()Lcom/google/android/gms/internal/ads/dvz;

    move-result-object v4

    .line 256
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->r:Lcom/google/android/gms/internal/ads/dvz;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/dvz;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_59

    .line 257
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->r:Lcom/google/android/gms/internal/ads/dvz;

    .line 258
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->k:Lcom/google/android/gms/internal/ads/edd;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/dvp;->t:Lcom/google/android/gms/internal/ads/ecv;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/edd;->a(Lcom/google/android/gms/internal/ads/ecv;)V

    .line 259
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->m:Landroid/os/Handler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 260
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 261
    :cond_59
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    iget v5, v5, Lcom/google/android/gms/internal/ads/dvs;->f:I

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/dvp;->p:Lcom/google/android/gms/internal/ads/dwg;

    const/4 v9, 0x0

    .line 262
    invoke-virtual {v4, v5, v6, v9}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Z)Lcom/google/android/gms/internal/ads/dwg;

    move-result-object v4

    .line 263
    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/dwg;->d:J

    if-eqz v11, :cond_5b

    cmp-long v6, v4, v7

    if-eqz v6, :cond_5a

    .line 265
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/dvr;->c:J

    cmp-long v8, v4, v6

    if-gtz v8, :cond_5b

    :cond_5a
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/dvp;->I:Lcom/google/android/gms/internal/ads/dvs;

    iget-boolean v6, v6, Lcom/google/android/gms/internal/ads/dvs;->h:Z

    if-eqz v6, :cond_5b

    const/4 v6, 0x4

    .line 266
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/ads/dvp;->a(I)V

    .line 267
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dvp;->d()V

    goto/16 :goto_3b

    .line 268
    :cond_5b
    iget v6, v1, Lcom/google/android/gms/internal/ads/dvp;->z:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_62

    .line 269
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/dvp;->v:[Lcom/google/android/gms/internal/ads/dvy;

    array-length v6, v6

    if-lez v6, :cond_61

    if-eqz v10, :cond_60

    .line 270
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/dvp;->x:Z

    .line 271
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/dvs;->i:Z

    if-nez v5, :cond_5c

    .line 272
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    iget-wide v5, v5, Lcom/google/android/gms/internal/ads/dvs;->g:J

    goto :goto_37

    .line 273
    :cond_5c
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/dvs;->a:Lcom/google/android/gms/internal/ads/eas;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/eas;->e()J

    move-result-wide v5

    :goto_37
    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v9, v5, v7

    if-nez v9, :cond_5e

    .line 275
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/dvs;->h:Z

    if-eqz v5, :cond_5d

    const/4 v4, 0x1

    goto :goto_38

    .line 277
    :cond_5d
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->J:Lcom/google/android/gms/internal/ads/dwe;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    iget v6, v6, Lcom/google/android/gms/internal/ads/dvs;->f:I

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/dvp;->p:Lcom/google/android/gms/internal/ads/dwg;

    const/4 v8, 0x0

    .line 278
    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/dwe;->a(ILcom/google/android/gms/internal/ads/dwg;Z)Lcom/google/android/gms/internal/ads/dwg;

    move-result-object v5

    .line 279
    iget-wide v5, v5, Lcom/google/android/gms/internal/ads/dwg;->d:J

    .line 281
    :cond_5e
    iget-boolean v7, v1, Lcom/google/android/gms/internal/ads/dvp;->d:Z

    if-eqz v7, :cond_5f

    .line 282
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->j:Lcom/google/android/gms/internal/ads/dvx;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/dvr;->d:J

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/dvp;->F:J

    .line 284
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/dvs;->a()J

    move-result-wide v11

    sub-long/2addr v9, v11

    sub-long/2addr v6, v9

    .line 286
    invoke-interface {v5, v6, v7, v4}, Lcom/google/android/gms/internal/ads/dvx;->a(JZ)Z

    move-result v4

    goto :goto_38

    .line 287
    :cond_5f
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/dvp;->j:Lcom/google/android/gms/internal/ads/dvx;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/dvp;->G:Lcom/google/android/gms/internal/ads/dvs;

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/dvp;->F:J

    .line 289
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/dvs;->a()J

    move-result-wide v11

    sub-long/2addr v9, v11

    sub-long/2addr v5, v9

    .line 291
    invoke-interface {v7, v5, v6, v4}, Lcom/google/android/gms/internal/ads/dvx;->a(JZ)Z

    move-result v4

    :goto_38
    if-eqz v4, :cond_60

    const/4 v4, 0x1

    goto :goto_39

    :cond_60
    const/4 v4, 0x0

    goto :goto_39

    .line 293
    :cond_61
    invoke-direct {v1, v4, v5}, Lcom/google/android/gms/internal/ads/dvp;->b(J)Z

    move-result v4

    :goto_39
    if-eqz v4, :cond_64

    const/4 v4, 0x3

    .line 295
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/dvp;->a(I)V

    .line 296
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/dvp;->w:Z

    if-eqz v4, :cond_64

    .line 297
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dvp;->c()V

    goto :goto_3b

    :cond_62
    const/4 v7, 0x3

    if-ne v6, v7, :cond_64

    .line 299
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/dvp;->v:[Lcom/google/android/gms/internal/ads/dvy;

    array-length v6, v6

    if-lez v6, :cond_63

    goto :goto_3a

    .line 300
    :cond_63
    invoke-direct {v1, v4, v5}, Lcom/google/android/gms/internal/ads/dvp;->b(J)Z

    move-result v10

    :goto_3a
    if-nez v10, :cond_64

    .line 302
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/dvp;->w:Z

    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/dvp;->x:Z

    const/4 v4, 0x2

    .line 303
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/dvp;->a(I)V

    .line 304
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dvp;->d()V

    .line 305
    :cond_64
    :goto_3b
    iget v4, v1, Lcom/google/android/gms/internal/ads/dvp;->z:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_65

    .line 306
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->v:[Lcom/google/android/gms/internal/ads/dvy;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_3c
    if-ge v6, v5, :cond_65

    aget-object v7, v4, v6

    .line 307
    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/dvy;->j()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 309
    :cond_65
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/dvp;->w:Z

    if-eqz v4, :cond_66

    iget v4, v1, Lcom/google/android/gms/internal/ads/dvp;->z:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_67

    :cond_66
    iget v4, v1, Lcom/google/android/gms/internal/ads/dvp;->z:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_69

    .line 311
    :cond_67
    iget v4, v1, Lcom/google/android/gms/internal/ads/dvp;->e:I

    if-lez v4, :cond_68

    iget v4, v1, Lcom/google/android/gms/internal/ads/dvp;->e:I

    int-to-long v5, v4

    goto :goto_3d

    :cond_68
    const-wide/16 v5, 0xa

    .line 312
    :goto_3d
    invoke-direct {v1, v2, v3, v5, v6}, Lcom/google/android/gms/internal/ads/dvp;->a(JJ)V

    goto :goto_3f

    .line 313
    :cond_69
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->v:[Lcom/google/android/gms/internal/ads/dvy;

    array-length v4, v4

    if-eqz v4, :cond_6b

    .line 315
    iget v4, v1, Lcom/google/android/gms/internal/ads/dvp;->f:I

    if-lez v4, :cond_6a

    iget v4, v1, Lcom/google/android/gms/internal/ads/dvp;->f:I

    int-to-long v7, v4

    goto :goto_3e

    :cond_6a
    const-wide/16 v7, 0x3e8

    .line 316
    :goto_3e
    invoke-direct {v1, v2, v3, v7, v8}, Lcom/google/android/gms/internal/ads/dvp;->a(JJ)V

    goto :goto_3f

    .line 317
    :cond_6b
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/dvp;->a:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 318
    :goto_3f
    invoke-static {}, Lcom/google/android/gms/internal/ads/edf;->a()V

    goto/16 :goto_31

    :goto_40
    return v2

    .line 85
    :pswitch_b
    iget v2, v2, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_6c

    const/4 v2, 0x1

    goto :goto_41

    :cond_6c
    const/4 v2, 0x0

    :goto_41
    const/4 v3, 0x0

    .line 86
    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/dvp;->x:Z

    .line 87
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/dvp;->w:Z

    if-nez v2, :cond_6e

    .line 89
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dvp;->d()V

    .line 90
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dvp;->e()V

    :cond_6d
    :goto_42
    const/4 v2, 0x1

    goto :goto_43

    .line 91
    :cond_6e
    iget v2, v1, Lcom/google/android/gms/internal/ads/dvp;->z:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6f

    .line 92
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dvp;->c()V

    .line 93
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/dvp;->a:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_42

    :cond_6f
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6d

    .line 95
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/dvp;->a:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_42

    :goto_43
    return v2

    .line 74
    :pswitch_c
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/eau;

    iget v2, v2, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_70

    const/4 v2, 0x1

    goto :goto_44

    :cond_70
    const/4 v2, 0x0

    .line 75
    :goto_44
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->m:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v4, 0x1

    .line 76
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/dvp;->b(Z)V

    .line 77
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dvp;->j:Lcom/google/android/gms/internal/ads/dvx;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dvx;->a()V

    if-eqz v2, :cond_71

    .line 79
    new-instance v2, Lcom/google/android/gms/internal/ads/dvr;

    invoke-direct {v2, v5, v7, v8}, Lcom/google/android/gms/internal/ads/dvr;-><init>(IJ)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/dvp;->q:Lcom/google/android/gms/internal/ads/dvr;

    .line 80
    :cond_71
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/dvp;->u:Lcom/google/android/gms/internal/ads/eau;

    .line 81
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/dvp;->n:Lcom/google/android/gms/internal/ads/dvl;

    invoke-interface {v3, v2, v1}, Lcom/google/android/gms/internal/ads/eau;->a(Lcom/google/android/gms/internal/ads/dvl;Lcom/google/android/gms/internal/ads/eat;)V

    const/4 v2, 0x2

    .line 82
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/dvp;->a(I)V

    .line 83
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dvp;->a:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_10
    .catch Lcom/google/android/gms/internal/ads/zzhe; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_4

    const/4 v2, 0x1

    return v2

    :catch_2
    move-exception v0

    move-object v3, v0

    const/4 v2, 0x1

    :goto_45
    const/16 v4, 0x8

    goto :goto_47

    :catch_3
    move-exception v0

    move-object v3, v0

    const/4 v2, 0x1

    :goto_46
    const/16 v4, 0x8

    goto :goto_48

    :catch_4
    move-exception v0

    move-object v2, v0

    const-string v3, "ExoPlayerImplInternal"

    const-string v4, "Internal runtime error."

    .line 552
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dvp;->m:Landroid/os/Handler;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhe;->a(Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/zzhe;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 554
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 555
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dvp;->f()V

    const/4 v2, 0x1

    return v2

    :catch_5
    move-exception v0

    const/4 v2, 0x1

    const/16 v4, 0x8

    move-object v3, v0

    :goto_47
    const-string v5, "ExoPlayerImplInternal"

    const-string v6, "Source error."

    .line 547
    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 548
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->m:Landroid/os/Handler;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhe;->a(Ljava/io/IOException;)Lcom/google/android/gms/internal/ads/zzhe;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 549
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dvp;->f()V

    return v2

    :catch_6
    move-exception v0

    const/4 v2, 0x1

    const/16 v4, 0x8

    move-object v3, v0

    :goto_48
    const-string v5, "ExoPlayerImplInternal"

    const-string v6, "Renderer error."

    .line 542
    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 543
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/dvp;->m:Landroid/os/Handler;

    invoke-virtual {v5, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 544
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/dvp;->f()V

    return v2

    :pswitch_data_0
    .packed-switch 0x0
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

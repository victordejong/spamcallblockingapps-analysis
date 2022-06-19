.class public final Lcom/google/android/gms/measurement/internal/gk;
.super Lcom/google/android/gms/measurement/internal/de;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# instance fields
.field protected a:Lcom/google/android/gms/measurement/internal/hd;

.field final b:Lcom/google/android/gms/measurement/internal/kc;

.field protected c:Z

.field private d:Lcom/google/android/gms/measurement/internal/ge;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/measurement/internal/gi;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/fd;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/de;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/gk;->e:Ljava/util/Set;

    .line 3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/gk;->c:Z

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/gk;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v0, Lcom/google/android/gms/measurement/internal/kc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/kc;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/gk;->b:Lcom/google/android/gms/measurement/internal/kc;

    .line 6
    return-void
.end method

.method private final M()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->n:Lcom/google/android/gms/measurement/internal/er;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/er;->a()Ljava/lang/String;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    const-string/jumbo v1, "unset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 55
    const-string/jumbo v1, "app"

    const-string/jumbo v2, "_npa"

    const/4 v3, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    move-object v0, p0

    .line 57
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 62
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->B()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/gk;->c:Z

    if-eqz v0, :cond_7

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Recording app launch after enabling measurement for the first time (FE)"

    .line 65
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/gk;->I()V

    .line 67
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jm;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->aw:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ef;->g()Lcom/google/android/gms/measurement/internal/iz;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/iz;->a:Lcom/google/android/gms/measurement/internal/ji;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ji;->a()V

    .line 70
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jf;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->aB:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->f()Lcom/google/android/gms/measurement/internal/eu;

    move-result-object v0

    .line 73
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/eu;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->i:Lcom/google/android/gms/measurement/internal/ep;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ep;->a()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_6

    const/4 v0, 0x1

    .line 74
    :goto_1
    if-nez v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->f()Lcom/google/android/gms/measurement/internal/eu;

    move-result-object v0

    .line 76
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/eu;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->D()V

    .line 77
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/eu;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->r()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/eu;->a(Ljava/lang/String;)V

    .line 78
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->aP:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/hb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/hb;-><init>(Lcom/google/android/gms/measurement/internal/gk;)V

    .line 80
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 84
    :cond_3
    :goto_2
    return-void

    .line 58
    :cond_4
    const-string/jumbo v1, "app"

    const-string/jumbo v2, "_npa"

    .line 59
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/16 v4, 0x1

    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    move-object v0, p0

    .line 61
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    goto/16 :goto_0

    :cond_5
    move-wide v4, v6

    .line 59
    goto :goto_3

    .line 73
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 82
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Updating Scion state (FE)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ef;->d()Lcom/google/android/gms/measurement/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/hu;->C()V

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/gk;)V
    .locals 0

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/gk;->M()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/gk;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 795
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/gk;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/gk;Z)V
    .locals 0

    .prologue
    .line 793
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/gk;->c(Z)V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 9

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/gp;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/gp;-><init>(Lcom/google/android/gms/measurement/internal/gk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 402
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 403
    return-void
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 708
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fa;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 710
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Cannot get conditional user properties from analytics worker thread"

    .line 711
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 712
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 726
    :goto_0
    return-object v0

    .line 713
    :cond_0
    invoke-static {}, Lcom/google/android/gms/measurement/internal/kk;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Cannot get conditional user properties from main thread"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 715
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 716
    :cond_1
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 717
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    .line 718
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v6

    const-wide/16 v8, 0x1388

    const-string/jumbo v7, "get conditional user properties"

    new-instance v0, Lcom/google/android/gms/measurement/internal/gw;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/gw;-><init>(Lcom/google/android/gms/measurement/internal/gk;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v6

    move-wide v3, v8

    move-object v5, v7

    move-object v6, v0

    .line 719
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 720
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 721
    if-nez v0, :cond_2

    .line 722
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 723
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Timed out waiting for get conditional user properties"

    .line 724
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 725
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 726
    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jw;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fa;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Cannot get user properties from analytics worker thread"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 734
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 753
    :goto_0
    return-object v0

    .line 735
    :cond_0
    invoke-static {}, Lcom/google/android/gms/measurement/internal/kk;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Cannot get user properties from main thread"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 737
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 738
    :cond_1
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 739
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    .line 740
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v7

    const-wide/16 v8, 0x1388

    const-string/jumbo v10, "get user properties"

    new-instance v0, Lcom/google/android/gms/measurement/internal/gv;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/gv;-><init>(Lcom/google/android/gms/measurement/internal/gk;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v7

    move-wide v3, v8

    move-object v5, v10

    move-object v6, v0

    .line 741
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 742
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 743
    if-nez v0, :cond_2

    .line 744
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 745
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Timed out waiting for handle get user properties, includeInternal"

    .line 746
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 747
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 748
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 749
    :cond_2
    new-instance v1, Landroidx/b/a;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroidx/b/a;-><init>(I)V

    .line 750
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/jv;

    .line 751
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jv;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jv;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 753
    goto :goto_0
.end method

.method private final b(Landroid/os/Bundle;J)V
    .locals 10

    .prologue
    const-wide v8, 0x39ef8b000L

    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 536
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string/jumbo v0, "app_id"

    const-class v1, Ljava/lang/String;

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/measurement/internal/ga;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const-string/jumbo v0, "origin"

    const-class v1, Ljava/lang/String;

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/measurement/internal/ga;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const-string/jumbo v0, "name"

    const-class v1, Ljava/lang/String;

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/measurement/internal/ga;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string/jumbo v0, "value"

    const-class v1, Ljava/lang/Object;

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/measurement/internal/ga;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string/jumbo v0, "trigger_event_name"

    const-class v1, Ljava/lang/String;

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/measurement/internal/ga;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    const-string/jumbo v0, "trigger_timeout"

    const-class v1, Ljava/lang/Long;

    .line 544
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 545
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ga;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string/jumbo v0, "timed_out_event_name"

    const-class v1, Ljava/lang/String;

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/measurement/internal/ga;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string/jumbo v0, "timed_out_event_params"

    const-class v1, Landroid/os/Bundle;

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/measurement/internal/ga;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-string/jumbo v0, "triggered_event_name"

    const-class v1, Ljava/lang/String;

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/measurement/internal/ga;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const-string/jumbo v0, "triggered_event_params"

    const-class v1, Landroid/os/Bundle;

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/measurement/internal/ga;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const-string/jumbo v0, "time_to_live"

    const-class v1, Ljava/lang/Long;

    .line 551
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 552
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ga;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const-string/jumbo v0, "expired_event_name"

    const-class v1, Ljava/lang/String;

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/measurement/internal/ga;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const-string/jumbo v0, "expired_event_params"

    const-class v1, Landroid/os/Bundle;

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/measurement/internal/ga;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 556
    const-string/jumbo v0, "origin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 557
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const-string/jumbo v0, "creation_timestamp"

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 559
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    const-string/jumbo v1, "value"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 561
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/jw;->c(Ljava/lang/String;)I

    move-result v2

    .line 562
    if-eqz v2, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 564
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Invalid conditional user property name"

    .line 565
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 566
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 603
    :goto_0
    return-void

    .line 568
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/measurement/internal/jw;->b(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v2

    .line 569
    if-eqz v2, :cond_1

    .line 570
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 571
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Invalid conditional user property value"

    .line 572
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 573
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 575
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/measurement/internal/jw;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 576
    if-nez v2, :cond_2

    .line 577
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 578
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Unable to normalize conditional user property value"

    .line 579
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 580
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 582
    :cond_2
    invoke-static {p1, v2}, Lcom/google/android/gms/measurement/internal/ga;->a(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 583
    const-string/jumbo v1, "trigger_timeout"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 584
    const-string/jumbo v1, "trigger_event_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 585
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 586
    cmp-long v1, v2, v8

    if-gtz v1, :cond_3

    cmp-long v1, v2, v6

    if-gez v1, :cond_4

    .line 587
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 588
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v4, "Invalid conditional user property timeout"

    .line 589
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 590
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 591
    invoke-virtual {v1, v4, v0, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 593
    :cond_4
    const-string/jumbo v1, "time_to_live"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 594
    cmp-long v1, v2, v8

    if-gtz v1, :cond_5

    cmp-long v1, v2, v6

    if-gez v1, :cond_6

    .line 595
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 596
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v4, "Invalid conditional user property time to live"

    .line 597
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/dw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 598
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 599
    invoke-virtual {v1, v4, v0, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 601
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/gr;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/gr;-><init>(Lcom/google/android/gms/measurement/internal/gk;Landroid/os/Bundle;)V

    .line 602
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/measurement/internal/gk;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 796
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/gk;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 13

    .prologue
    .line 357
    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/measurement/internal/jw;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 358
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v11

    new-instance v0, Lcom/google/android/gms/measurement/internal/gn;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/measurement/internal/gn;-><init>(Lcom/google/android/gms/measurement/internal/gk;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    .line 359
    invoke-virtual {v11, v0}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 360
    return-void
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    .line 612
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 613
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 614
    if-eqz p1, :cond_0

    .line 615
    const-string/jumbo v3, "app_id"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :cond_0
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string/jumbo v3, "creation_timestamp"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 618
    if-eqz p3, :cond_1

    .line 619
    const-string/jumbo v0, "expired_event_name"

    invoke-virtual {v2, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string/jumbo v0, "expired_event_params"

    invoke-virtual {v2, v0, p4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 621
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/gu;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/measurement/internal/gu;-><init>(Lcom/google/android/gms/measurement/internal/gk;Landroid/os/Bundle;)V

    .line 622
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 623
    return-void
.end method

.method private final c(Landroid/os/Bundle;)V
    .locals 19

    .prologue
    .line 624
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 626
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const-string/jumbo v2, "name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 628
    const-string/jumbo v2, "origin"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 629
    const-string/jumbo v2, "value"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->B()Z

    move-result v2

    if-nez v2, :cond_0

    .line 631
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Conditional property not set since app measurement is disabled"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 670
    :goto_0
    return-void

    .line 633
    :cond_0
    new-instance v2, Lcom/google/android/gms/measurement/internal/jv;

    const-string/jumbo v3, "name"

    .line 634
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "triggered_timestamp"

    .line 635
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v6, "value"

    .line 636
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v7, "origin"

    .line 637
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/jv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 639
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v3

    const-string/jumbo v4, "app_id"

    .line 640
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "triggered_event_name"

    .line 641
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "triggered_event_params"

    .line 642
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "origin"

    .line 643
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 644
    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/r;

    move-result-object v15

    .line 646
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v3

    const-string/jumbo v4, "app_id"

    .line 647
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "timed_out_event_name"

    .line 648
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "timed_out_event_params"

    .line 649
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "origin"

    .line 650
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 651
    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/r;

    move-result-object v12

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v3

    const-string/jumbo v4, "app_id"

    .line 654
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "expired_event_name"

    .line 655
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "expired_event_params"

    .line 656
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "origin"

    .line 657
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 658
    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/r;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 662
    new-instance v4, Lcom/google/android/gms/measurement/internal/kn;

    const-string/jumbo v3, "app_id"

    .line 663
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v3, "origin"

    .line 664
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v3, "creation_timestamp"

    .line 665
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v10, 0x0

    const-string/jumbo v3, "trigger_event_name"

    .line 666
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v3, "trigger_timeout"

    .line 667
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    const-string/jumbo v3, "time_to_live"

    .line 668
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    move-object v7, v2

    invoke-direct/range {v4 .. v18}, Lcom/google/android/gms/measurement/internal/kn;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/jv;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/r;JLcom/google/android/gms/measurement/internal/r;JLcom/google/android/gms/measurement/internal/r;)V

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ef;->d()Lcom/google/android/gms/measurement/internal/hu;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/hu;->a(Lcom/google/android/gms/measurement/internal/kn;)V

    goto/16 :goto_0

    .line 661
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method private final c(Z)V
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Setting app measurement enabled (FE)"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/el;->b(Z)V

    .line 48
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/gk;->M()V

    .line 49
    return-void
.end method

.method private final d(Landroid/os/Bundle;)V
    .locals 19

    .prologue
    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 672
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 673
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    const-string/jumbo v2, "name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->B()Z

    move-result v2

    if-nez v2, :cond_0

    .line 676
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 677
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Conditional property not cleared since app measurement is disabled"

    .line 678
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 702
    :goto_0
    return-void

    .line 680
    :cond_0
    new-instance v2, Lcom/google/android/gms/measurement/internal/jv;

    const-string/jumbo v3, "name"

    .line 681
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/jv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 683
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v3

    const-string/jumbo v4, "app_id"

    .line 684
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "expired_event_name"

    .line 685
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "expired_event_params"

    .line 686
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "origin"

    .line 687
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "creation_timestamp"

    .line 688
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 689
    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/r;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 693
    new-instance v4, Lcom/google/android/gms/measurement/internal/kn;

    const-string/jumbo v3, "app_id"

    .line 694
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v3, "origin"

    .line 695
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v3, "creation_timestamp"

    .line 696
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string/jumbo v3, "active"

    .line 697
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    const-string/jumbo v3, "trigger_event_name"

    .line 698
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const-string/jumbo v3, "trigger_timeout"

    .line 699
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    const/4 v15, 0x0

    const-string/jumbo v3, "time_to_live"

    .line 700
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    move-object v7, v2

    invoke-direct/range {v4 .. v18}, Lcom/google/android/gms/measurement/internal/kn;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/jv;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/r;JLcom/google/android/gms/measurement/internal/r;JLcom/google/android/gms/measurement/internal/r;)V

    .line 701
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ef;->d()Lcom/google/android/gms/measurement/internal/hu;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/hu;->a(Lcom/google/android/gms/measurement/internal/kn;)V

    goto/16 :goto_0

    .line 692
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method


# virtual methods
.method public final B()V
    .locals 2

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/gk;->a:Lcom/google/android/gms/measurement/internal/hd;

    .line 11
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 12
    :cond_0
    return-void
.end method

.method public final C()Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 13
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    const-wide/16 v2, 0x3a98

    const-string/jumbo v4, "boolean test flag value"

    new-instance v5, Lcom/google/android/gms/measurement/internal/gl;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/gl;-><init>(Lcom/google/android/gms/measurement/internal/gk;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 16
    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 6

    .prologue
    .line 17
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    const-wide/16 v2, 0x3a98

    const-string/jumbo v4, "String test flag value"

    new-instance v5, Lcom/google/android/gms/measurement/internal/gt;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/gt;-><init>(Lcom/google/android/gms/measurement/internal/gk;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 20
    return-object v0
.end method

.method public final E()Ljava/lang/Long;
    .locals 6

    .prologue
    .line 21
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    const-wide/16 v2, 0x3a98

    const-string/jumbo v4, "long test flag value"

    new-instance v5, Lcom/google/android/gms/measurement/internal/gy;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/gy;-><init>(Lcom/google/android/gms/measurement/internal/gk;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 24
    return-object v0
.end method

.method public final F()Ljava/lang/Integer;
    .locals 6

    .prologue
    .line 25
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    const-wide/16 v2, 0x3a98

    const-string/jumbo v4, "int test flag value"

    new-instance v5, Lcom/google/android/gms/measurement/internal/gx;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/gx;-><init>(Lcom/google/android/gms/measurement/internal/gk;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 27
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 28
    return-object v0
.end method

.method public final G()Ljava/lang/Double;
    .locals 6

    .prologue
    .line 29
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    const-wide/16 v2, 0x3a98

    const-string/jumbo v4, "double test flag value"

    new-instance v5, Lcom/google/android/gms/measurement/internal/ha;

    invoke-direct {v5, p0, v1}, Lcom/google/android/gms/measurement/internal/ha;-><init>(Lcom/google/android/gms/measurement/internal/gk;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 31
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/util/concurrent/atomic/AtomicReference;JLjava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 32
    return-object v0
.end method

.method public final H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 446
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gk;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final I()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 476
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 477
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 478
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 479
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->G()Z

    move-result v0

    if-nez v0, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->ah:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 483
    const-string/jumbo v2, "google_analytics_deferred_deep_link_enabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/b;->d(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 484
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 485
    :goto_1
    if-eqz v0, :cond_2

    .line 486
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v2, "Deferred Deep Link feature enabled."

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/measurement/internal/gm;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/gm;-><init>(Lcom/google/android/gms/measurement/internal/gk;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 488
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ef;->d()Lcom/google/android/gms/measurement/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/hu;->E()V

    .line 489
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/gk;->c:Z

    .line 490
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/el;->i()Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 492
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->p()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v1

    .line 493
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fy;->A()V

    .line 494
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 495
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 496
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 497
    const-string/jumbo v2, "_po"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string/jumbo v0, "auto"

    const-string/jumbo v2, "_ou"

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 484
    goto :goto_1
.end method

.method public final J()Ljava/lang/String;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->s()Lcom/google/android/gms/measurement/internal/ho;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ho;->B()Lcom/google/android/gms/measurement/internal/hp;

    move-result-object v0

    .line 755
    if-eqz v0, :cond_0

    .line 756
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/hp;->a:Ljava/lang/String;

    .line 757
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final K()Ljava/lang/String;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->s()Lcom/google/android/gms/measurement/internal/ho;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ho;->B()Lcom/google/android/gms/measurement/internal/hp;

    move-result-object v0

    .line 759
    if-eqz v0, :cond_0

    .line 760
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/hp;->b:Ljava/lang/String;

    .line 761
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final L()Ljava/lang/String;
    .locals 3

    .prologue
    .line 762
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->m()Ljava/lang/String;

    move-result-object v0

    .line 771
    :goto_0
    return-object v0

    .line 764
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v0

    .line 765
    const-string/jumbo v1, "google_app_id"

    .line 766
    new-instance v2, Lcom/google/android/gms/common/internal/w;

    invoke-direct {v2, v0}, Lcom/google/android/gms/common/internal/w;-><init>(Landroid/content/Context;)V

    .line 767
    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 769
    :catch_0
    move-exception v0

    .line 770
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "getGoogleAppId failed with exception"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 771
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic a()Lcom/google/android/gms/measurement/internal/ab;
    .locals 1

    .prologue
    .line 776
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->a()Lcom/google/android/gms/measurement/internal/ab;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 704
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/gk;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 705
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 706
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->l()V

    .line 707
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/gk;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 729
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 730
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->l()V

    .line 731
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/gk;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 727
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 728
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/gk;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/he;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/he;-><init>(Lcom/google/android/gms/measurement/internal/gk;J)V

    .line 87
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/gk;->a(Landroid/os/Bundle;J)V

    .line 520
    return-void
.end method

.method public final a(Landroid/os/Bundle;J)V
    .locals 4

    .prologue
    .line 521
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 523
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 524
    const-string/jumbo v1, "app_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 526
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Package name should be null when calling setConditionalUserProperty"

    .line 527
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 528
    :cond_0
    const-string/jumbo v1, "app_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 529
    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/gms/measurement/internal/gk;->b(Landroid/os/Bundle;J)V

    .line 530
    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/ge;)V
    .locals 2

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 501
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 502
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 503
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gk;->d:Lcom/google/android/gms/measurement/internal/ge;

    if-eq p1, v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gk;->d:Lcom/google/android/gms/measurement/internal/ge;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "EventInterceptor already set."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/s;->a(ZLjava/lang/Object;)V

    .line 505
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/gk;->d:Lcom/google/android/gms/measurement/internal/ge;

    .line 506
    return-void

    .line 504
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/gi;)V
    .locals 2

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 508
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 509
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gk;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "OnEventListener already registered"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 512
    :cond_0
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gk;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 460
    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 11

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 102
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gk;->d:Lcom/google/android/gms/measurement/internal/ge;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/jw;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v8, 0x1

    .line 104
    :goto_0
    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    .line 105
    return-void

    .line 103
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 25

    .prologue
    .line 106
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 110
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->B()Z

    move-result v4

    if-nez v4, :cond_1

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Event not sent since app measurement is disabled"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/t;->ac:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ef;->c()Lcom/google/android/gms/measurement/internal/dv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dv;->H()Ljava/util/List;

    move-result-object v4

    .line 115
    if-eqz v4, :cond_2

    .line 116
    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 118
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Dropping non-safelisted event. event name, origin"

    .line 119
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v4, v5, v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 121
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gms/measurement/internal/gk;->f:Z

    if-nez v4, :cond_3

    .line 122
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/gms/measurement/internal/gk;->f:Z

    .line 124
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->p()Z

    move-result v4

    if-nez v4, :cond_6

    .line 125
    const-string/jumbo v4, "com.google.android.gms.tagmanager.TagManagerService"

    .line 126
    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 130
    :goto_1
    :try_start_1
    const-string/jumbo v5, "initialize"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    .line 131
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 132
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/t;->ai:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 140
    const-string/jumbo v4, "_cmp"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 141
    const-string/jumbo v4, "gclid"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 142
    const-string/jumbo v5, "auto"

    const-string/jumbo v6, "_lgclid"

    const-string/jumbo v4, "gclid"

    .line 143
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v8

    move-object/from16 v4, p0

    .line 145
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 146
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/kd;->b()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/t;->aN:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 149
    if-eqz p6, :cond_7

    .line 150
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/jw;->g(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/el;->y:Lcom/google/android/gms/measurement/internal/eq;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/eq;->a()Landroid/os/Bundle;

    move-result-object v6

    .line 152
    if-eqz v6, :cond_7

    .line 153
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 154
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 155
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v8

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-virtual {v8, v0, v4, v9}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 127
    :cond_6
    :try_start_2
    const-string/jumbo v4, "com.google.android.gms.tagmanager.TagManagerService"

    .line 128
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    goto/16 :goto_1

    .line 134
    :catch_0
    move-exception v4

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v5

    const-string/jumbo v6, "Failed to invoke Tag Manager\'s initialize() method"

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 138
    :catch_1
    move-exception v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->h()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Tag Manager is not found and thus will not be used"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 157
    :cond_7
    if-eqz p8, :cond_c

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 159
    const-string/jumbo v4, "_iap"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v4

    .line 161
    const-string/jumbo v5, "event"

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 162
    const/4 v4, 0x2

    move v5, v4

    .line 169
    :goto_4
    if-eqz v5, :cond_c

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 171
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->d()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v6, "Invalid public event name. Event will not be logged (FE)"

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 173
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    .line 175
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    .line 176
    const/16 v4, 0x28

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v4, v6}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    .line 177
    if-eqz p2, :cond_b

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 178
    :goto_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    .line 179
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v7

    const-string/jumbo v8, "_ev"

    .line 180
    invoke-virtual {v7, v5, v8, v6, v4}, Lcom/google/android/gms/measurement/internal/jw;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 163
    :cond_8
    const-string/jumbo v5, "event"

    sget-object v6, Lcom/google/android/gms/measurement/internal/gd;->a:[Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 164
    const/16 v4, 0xd

    move v5, v4

    goto :goto_4

    .line 165
    :cond_9
    const-string/jumbo v5, "event"

    const/16 v6, 0x28

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 166
    const/4 v4, 0x2

    move v5, v4

    goto :goto_4

    .line 167
    :cond_a
    const/4 v4, 0x0

    move v5, v4

    goto :goto_4

    .line 177
    :cond_b
    const/4 v4, 0x0

    goto :goto_5

    .line 182
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ef;->e()Lcom/google/android/gms/measurement/internal/ho;

    move-result-object v4

    .line 185
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/ho;->a(Z)Lcom/google/android/gms/measurement/internal/hp;

    move-result-object v11

    .line 187
    if-eqz v11, :cond_d

    const-string/jumbo v4, "_sc"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 188
    const/4 v4, 0x1

    iput-boolean v4, v11, Lcom/google/android/gms/measurement/internal/hp;->d:Z

    .line 190
    :cond_d
    if-eqz p6, :cond_e

    if-eqz p8, :cond_e

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p5

    invoke-static {v11, v0, v4}, Lcom/google/android/gms/measurement/internal/ho;->a(Lcom/google/android/gms/measurement/internal/hp;Landroid/os/Bundle;Z)V

    .line 191
    const-string/jumbo v4, "am"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 192
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/jw;->e(Ljava/lang/String;)Z

    move-result v4

    .line 193
    if-eqz p6, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/gk;->d:Lcom/google/android/gms/measurement/internal/ge;

    if-eqz v5, :cond_f

    if-nez v4, :cond_f

    if-nez v17, :cond_f

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 195
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Passing event to registered event handler (FE)"

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Lcom/google/android/gms/measurement/internal/dw;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    .line 198
    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/gk;->d:Lcom/google/android/gms/measurement/internal/ge;

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    move-wide/from16 v8, p3

    invoke-interface/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/ge;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    goto/16 :goto_0

    .line 190
    :cond_e
    const/4 v4, 0x0

    goto :goto_6

    .line 200
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->G()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/jw;->b(Ljava/lang/String;)I

    move-result v6

    .line 203
    if-eqz v6, :cond_11

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 205
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->d()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Invalid event name. Event will not be logged (FE)"

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 207
    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    const/16 v4, 0x28

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v8

    .line 210
    if-eqz p2, :cond_10

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v9

    .line 211
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    .line 212
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v4

    const-string/jumbo v7, "_ev"

    move-object/from16 v5, p9

    .line 213
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 210
    :cond_10
    const/4 v9, 0x0

    goto :goto_7

    .line 215
    :cond_11
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "_o"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "_sn"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "_sc"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "_si"

    aput-object v6, v4, v5

    .line 216
    invoke-static {v4}, Lcom/google/android/gms/common/util/f;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v4

    const/4 v10, 0x1

    move-object/from16 v5, p9

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    move/from16 v9, p8

    .line 219
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;

    move-result-object v18

    .line 221
    if-eqz v18, :cond_12

    const-string/jumbo v4, "_sc"

    .line 222
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string/jumbo v4, "_si"

    .line 223
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 224
    :cond_12
    const/4 v4, 0x0

    .line 230
    :goto_8
    if-nez v4, :cond_26

    move-object/from16 v16, v11

    .line 232
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/t;->T:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ef;->e()Lcom/google/android/gms/measurement/internal/ho;

    move-result-object v4

    .line 236
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/ho;->a(Z)Lcom/google/android/gms/measurement/internal/hp;

    move-result-object v4

    .line 237
    if-eqz v4, :cond_13

    const-string/jumbo v4, "_ae"

    .line 238
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ef;->g()Lcom/google/android/gms/measurement/internal/iz;

    move-result-object v4

    .line 240
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/iz;->b:Lcom/google/android/gms/measurement/internal/jf;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/jf;->b()J

    move-result-wide v4

    .line 242
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_13

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v4, v5}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/os/Bundle;J)V

    .line 244
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/iu;->b()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/t;->av:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 246
    const-string/jumbo v4, "auto"

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string/jumbo v4, "_ssr"

    .line 247
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v5

    .line 249
    const-string/jumbo v4, "_ffr"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-static {v4}, Lcom/google/android/gms/common/util/q;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 251
    const/4 v4, 0x0

    .line 253
    :goto_a
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/el;->v:Lcom/google/android/gms/measurement/internal/er;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/er;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/google/android/gms/measurement/internal/jw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 254
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Not logging duplicate session_start_with_rollout event"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 255
    const/4 v4, 0x0

    .line 258
    :goto_b
    if-eqz v4, :cond_0

    .line 265
    :cond_14
    :goto_c
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 266
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/jw;->d()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v20

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/el;->q:Lcom/google/android/gms/measurement/internal/ep;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/ep;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_15

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/measurement/internal/el;->a(J)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/el;->s:Lcom/google/android/gms/measurement/internal/en;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/en;->a()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 272
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Current session is expired, remove the session number, ID, and engagement time"

    .line 273
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 274
    const-string/jumbo v11, "auto"

    const-string/jumbo v12, "_sid"

    const/4 v13, 0x0

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v14

    move-object/from16 v10, p0

    .line 276
    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 277
    const-string/jumbo v11, "auto"

    const-string/jumbo v12, "_sno"

    const/4 v13, 0x0

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v14

    move-object/from16 v10, p0

    .line 279
    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 280
    const-string/jumbo v11, "auto"

    const-string/jumbo v12, "_se"

    const/4 v13, 0x0

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v14

    move-object/from16 v10, p0

    .line 282
    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 283
    :cond_15
    const-string/jumbo v4, "extend_session"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 284
    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_16

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    .line 286
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "EXTEND_SESSION param attached: initiate a new session or extend the current active session"

    .line 287
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->e()Lcom/google/android/gms/measurement/internal/iz;

    move-result-object v4

    .line 289
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/iz;->a:Lcom/google/android/gms/measurement/internal/ji;

    const/4 v5, 0x1

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1, v5}, Lcom/google/android/gms/measurement/internal/ji;->a(JZ)V

    .line 290
    :cond_16
    invoke-virtual/range {v18 .. v18}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Landroid/os/Bundle;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, [Ljava/lang/String;

    .line 291
    invoke-static {v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 292
    invoke-static {}, Lcom/google/android/gms/internal/measurement/in;->b()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/t;->aH:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/t;->aG:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 295
    array-length v5, v11

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v5, :cond_1f

    aget-object v6, v11, v4

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/jw;->b(Ljava/lang/Object;)[Landroid/os/Bundle;

    move-result-object v7

    .line 297
    if-eqz v7, :cond_17

    .line 298
    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 299
    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 225
    :cond_18
    const-string/jumbo v4, "_sn"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 226
    const-string/jumbo v4, "_sc"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 227
    const-string/jumbo v4, "_si"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 228
    new-instance v4, Lcom/google/android/gms/measurement/internal/hp;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct {v4, v5, v6, v12, v13}, Lcom/google/android/gms/measurement/internal/hp;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_8

    .line 252
    :cond_19
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_a

    .line 256
    :cond_1a
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/el;->v:Lcom/google/android/gms/measurement/internal/er;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/er;->a(Ljava/lang/String;)V

    .line 257
    const/4 v4, 0x1

    goto/16 :goto_b

    .line 260
    :cond_1b
    const-string/jumbo v4, "_ae"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v4

    .line 262
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/el;->v:Lcom/google/android/gms/measurement/internal/er;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/er;->a()Ljava/lang/String;

    move-result-object v4

    .line 263
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 264
    const-string/jumbo v5, "_ffr"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 300
    :cond_1c
    const/4 v13, 0x0

    .line 301
    array-length v15, v11

    const/4 v4, 0x0

    move v14, v4

    :goto_e
    if-ge v14, v15, :cond_1e

    aget-object v22, v11, v14

    .line 302
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/jw;->b(Ljava/lang/Object;)[Landroid/os/Bundle;

    move-result-object v23

    .line 304
    if-eqz v23, :cond_25

    .line 305
    move-object/from16 v0, v23

    array-length v4, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    const/4 v4, 0x0

    move v12, v4

    :goto_f
    move-object/from16 v0, v23

    array-length v4, v0

    if-ge v12, v4, :cond_1d

    .line 307
    aget-object v7, v23, v12

    .line 308
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-static {v0, v7, v4}, Lcom/google/android/gms/measurement/internal/ho;->a(Lcom/google/android/gms/measurement/internal/hp;Landroid/os/Bundle;Z)V

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v4

    const-string/jumbo v6, "_ep"

    const/4 v10, 0x0

    move-object/from16 v5, p9

    move/from16 v9, p8

    .line 311
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;

    move-result-object v4

    .line 312
    const-string/jumbo v5, "_en"

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string/jumbo v5, "_eid"

    move-wide/from16 v0, v20

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 314
    const-string/jumbo v5, "_gn"

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string/jumbo v5, "_ll"

    move-object/from16 v0, v23

    array-length v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 316
    const-string/jumbo v5, "_i"

    invoke-virtual {v4, v5, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 317
    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_f

    .line 319
    :cond_1d
    move-object/from16 v0, v23

    array-length v4, v0

    add-int/2addr v4, v13

    .line 320
    :goto_10
    add-int/lit8 v5, v14, 0x1

    move v14, v5

    move v13, v4

    goto :goto_e

    .line 321
    :cond_1e
    if-eqz v13, :cond_1f

    .line 322
    const-string/jumbo v4, "_eid"

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 323
    const-string/jumbo v4, "_epc"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 324
    :cond_1f
    const/4 v4, 0x0

    move v10, v4

    :goto_11
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    if-ge v10, v4, :cond_24

    .line 325
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 326
    if-eqz v10, :cond_20

    const/4 v5, 0x1

    .line 327
    :goto_12
    if-eqz v5, :cond_21

    const-string/jumbo v5, "_ep"

    .line 328
    :goto_13
    const-string/jumbo v6, "_o"

    move-object/from16 v0, p1

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    if-eqz p7, :cond_22

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    move-object v11, v4

    .line 332
    :goto_14
    new-instance v4, Lcom/google/android/gms/measurement/internal/r;

    new-instance v6, Lcom/google/android/gms/measurement/internal/m;

    invoke-direct {v6, v11}, Lcom/google/android/gms/measurement/internal/m;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v7, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/r;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/m;Ljava/lang/String;J)V

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ef;->d()Lcom/google/android/gms/measurement/internal/hu;

    move-result-object v5

    move-object/from16 v0, p9

    invoke-virtual {v5, v4, v0}, Lcom/google/android/gms/measurement/internal/hu;->a(Lcom/google/android/gms/measurement/internal/r;Ljava/lang/String;)V

    .line 334
    if-nez v17, :cond_23

    .line 335
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/gk;->e:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_15
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/measurement/internal/gi;

    .line 336
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-wide/from16 v8, p3

    .line 337
    invoke-interface/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/gi;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    goto :goto_15

    .line 326
    :cond_20
    const/4 v5, 0x0

    goto :goto_12

    :cond_21
    move-object/from16 v5, p2

    .line 327
    goto :goto_13

    :cond_22
    move-object v11, v4

    .line 331
    goto :goto_14

    .line 339
    :cond_23
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_11

    .line 340
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ef;->e()Lcom/google/android/gms/measurement/internal/ho;

    move-result-object v4

    .line 343
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/ho;->a(Z)Lcom/google/android/gms/measurement/internal/hp;

    move-result-object v4

    .line 344
    if-eqz v4, :cond_0

    const-string/jumbo v4, "_ae"

    .line 345
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ef;->g()Lcom/google/android/gms/measurement/internal/iz;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v8

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/google/android/gms/measurement/internal/iz;->a(ZZJ)Z

    goto/16 :goto_0

    :cond_25
    move v4, v13

    goto/16 :goto_10

    :cond_26
    move-object/from16 v16, v4

    goto/16 :goto_9
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    .line 96
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 8

    .prologue
    .line 93
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    .line 94
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 12

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 349
    if-nez p1, :cond_4

    .line 350
    const-string/jumbo v2, "app"

    .line 351
    :goto_0
    if-nez p3, :cond_3

    .line 352
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 353
    :goto_1
    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gk;->d:Lcom/google/android/gms/measurement/internal/ge;

    if-eqz v0, :cond_0

    .line 354
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/jw;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v8, 0x1

    .line 355
    :goto_2
    if-nez p4, :cond_2

    const/4 v9, 0x1

    :goto_3
    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p2

    move-wide/from16 v4, p6

    move/from16 v7, p5

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/gk;->b(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    .line 356
    return-void

    .line 354
    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    .line 355
    :cond_2
    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    move-object v6, p3

    goto :goto_1

    :cond_4
    move-object v2, p1

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 8

    .prologue
    const-wide/16 v4, 0x1

    .line 404
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 406
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 407
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 408
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 409
    const-string/jumbo v0, "allow_personalized_ads"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 410
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_3

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 411
    const-string/jumbo v0, "false"

    check-cast p3, Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-wide v0, v4

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 412
    const-string/jumbo p2, "_npa"

    .line 413
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/el;->n:Lcom/google/android/gms/measurement/internal/er;

    move-object v0, v2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-nez v0, :cond_2

    const-string/jumbo v0, "true"

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/er;->a(Ljava/lang/String;)V

    move-object v4, v2

    move-object v1, p2

    .line 417
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->B()Z

    move-result v0

    if-nez v0, :cond_5

    .line 418
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "User property not set since app measurement is disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 424
    :cond_0
    :goto_3
    return-void

    .line 411
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 413
    :cond_2
    const-string/jumbo v0, "false"

    goto :goto_1

    .line 414
    :cond_3
    if-nez p3, :cond_4

    .line 415
    const-string/jumbo p2, "_npa"

    .line 416
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->n:Lcom/google/android/gms/measurement/internal/er;

    const-string/jumbo v1, "unset"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/er;->a(Ljava/lang/String;)V

    :cond_4
    move-object v4, p3

    move-object v1, p2

    goto :goto_2

    .line 420
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    new-instance v0, Lcom/google/android/gms/measurement/internal/jv;

    move-wide v2, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/jv;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ef;->d()Lcom/google/android/gms/measurement/internal/hu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/hu;->a(Lcom/google/android/gms/measurement/internal/jv;)V

    goto :goto_3
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 8

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    .line 362
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V
    .locals 9

    .prologue
    const/4 v1, 0x6

    const/4 v7, 0x1

    const/16 v6, 0x18

    const/4 v0, 0x0

    .line 363
    if-nez p1, :cond_a

    .line 364
    const-string/jumbo v2, "app"

    .line 365
    :goto_0
    if-eqz p4, :cond_3

    .line 366
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/measurement/internal/jw;->c(Ljava/lang/String;)I

    move-result v1

    .line 376
    :cond_0
    :goto_1
    if-eqz v1, :cond_5

    .line 378
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    .line 379
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 380
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v3

    const-string/jumbo v4, "_ev"

    invoke-virtual {v3, v1, v4, v2, v0}, Lcom/google/android/gms/measurement/internal/jw;->a(ILjava/lang/String;Ljava/lang/String;I)V

    .line 400
    :cond_2
    :goto_2
    return-void

    .line 367
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v3

    .line 368
    const-string/jumbo v4, "user property"

    invoke-virtual {v3, v4, p2}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 370
    const-string/jumbo v4, "user property"

    sget-object v5, Lcom/google/android/gms/measurement/internal/gf;->a:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5, p2}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 371
    const/16 v1, 0xf

    goto :goto_1

    .line 372
    :cond_4
    const-string/jumbo v4, "user property"

    invoke-virtual {v3, v4, v6, p2}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    .line 374
    goto :goto_1

    .line 382
    :cond_5
    if-eqz p3, :cond_9

    .line 383
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/measurement/internal/jw;->b(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v1

    .line 384
    if-eqz v1, :cond_8

    .line 386
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    .line 388
    instance-of v3, p3, Ljava/lang/String;

    if-nez v3, :cond_6

    instance-of v3, p3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    .line 389
    :cond_6
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 391
    :cond_7
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    .line 392
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v3

    const-string/jumbo v4, "_ev"

    .line 393
    invoke-virtual {v3, v1, v4, v2, v0}, Lcom/google/android/gms/measurement/internal/jw;->a(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 395
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/measurement/internal/jw;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 396
    if-eqz v6, :cond_2

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p5

    .line 397
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_2

    .line 399
    :cond_9
    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_2

    :cond_a
    move-object v2, p1

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 607
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 608
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->l()V

    .line 609
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/gk;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 610
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/gz;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/gz;-><init>(Lcom/google/android/gms/measurement/internal/gk;Z)V

    .line 36
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 37
    return-void
.end method

.method public final bridge synthetic b()Lcom/google/android/gms/measurement/internal/gk;
    .locals 1

    .prologue
    .line 777
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->b()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)V
    .locals 3

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/go;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/go;-><init>(Lcom/google/android/gms/measurement/internal/gk;J)V

    .line 91
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 531
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const-string/jumbo v0, "app_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 533
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->l()V

    .line 534
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/gk;->b(Landroid/os/Bundle;J)V

    .line 535
    return-void
.end method

.method public final b(Lcom/google/android/gms/measurement/internal/gi;)V
    .locals 2

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 514
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 515
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gk;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "OnEventListener had not been registered"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 518
    :cond_0
    return-void
.end method

.method final b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 100
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/hc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/hc;-><init>(Lcom/google/android/gms/measurement/internal/gk;Z)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method

.method public final bridge synthetic c()Lcom/google/android/gms/measurement/internal/dv;
    .locals 1

    .prologue
    .line 778
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->c()Lcom/google/android/gms/measurement/internal/dv;

    move-result-object v0

    return-object v0
.end method

.method public final c(J)V
    .locals 3

    .prologue
    .line 472
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/gq;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/gq;-><init>(Lcom/google/android/gms/measurement/internal/gk;J)V

    .line 474
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 475
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 605
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/gk;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 606
    return-void
.end method

.method public final bridge synthetic d()Lcom/google/android/gms/measurement/internal/hu;
    .locals 1

    .prologue
    .line 779
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->d()Lcom/google/android/gms/measurement/internal/hu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Lcom/google/android/gms/measurement/internal/ho;
    .locals 1

    .prologue
    .line 780
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->e()Lcom/google/android/gms/measurement/internal/ho;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/measurement/internal/du;
    .locals 1

    .prologue
    .line 781
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->f()Lcom/google/android/gms/measurement/internal/du;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/measurement/internal/iz;
    .locals 1

    .prologue
    .line 782
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->g()Lcom/google/android/gms/measurement/internal/iz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()V
    .locals 0

    .prologue
    .line 772
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->l()V

    return-void
.end method

.method public final bridge synthetic m()V
    .locals 0

    .prologue
    .line 773
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->m()V

    return-void
.end method

.method public final bridge synthetic n()V
    .locals 0

    .prologue
    .line 774
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->n()V

    return-void
.end method

.method public final bridge synthetic o()V
    .locals 0

    .prologue
    .line 775
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->o()V

    return-void
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/measurement/internal/l;
    .locals 1

    .prologue
    .line 783
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->p()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/common/util/e;
    .locals 1

    .prologue
    .line 784
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Landroid/content/Context;
    .locals 1

    .prologue
    .line 785
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->r()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/measurement/internal/dw;
    .locals 1

    .prologue
    .line 786
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/measurement/internal/jw;
    .locals 1

    .prologue
    .line 787
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/measurement/internal/fa;
    .locals 1

    .prologue
    .line 788
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic v()Lcom/google/android/gms/measurement/internal/dy;
    .locals 1

    .prologue
    .line 789
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic w()Lcom/google/android/gms/measurement/internal/el;
    .locals 1

    .prologue
    .line 790
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic x()Lcom/google/android/gms/measurement/internal/b;
    .locals 1

    .prologue
    .line 791
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic y()Lcom/google/android/gms/measurement/internal/kk;
    .locals 1

    .prologue
    .line 792
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->y()Lcom/google/android/gms/measurement/internal/kk;

    move-result-object v0

    return-object v0
.end method

.method protected final z()Z
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    return v0
.end method

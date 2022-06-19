.class public final Lcom/google/android/gms/measurement/internal/ik;
.super Lcom/google/android/gms/measurement/internal/ec;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/measurement/internal/ij;

.field b:Lcom/google/android/gms/measurement/internal/df;

.field volatile c:Ljava/lang/Boolean;

.field private final d:Lcom/google/android/gms/measurement/internal/l;

.field private final e:Lcom/google/android/gms/measurement/internal/ja;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/measurement/internal/l;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/es;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/ec;-><init>(Lcom/google/android/gms/measurement/internal/es;)V

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ik;->f:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/measurement/internal/ja;

    .line 1000
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/es;->j:Lcom/google/android/gms/common/util/f;

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/ja;-><init>(Lcom/google/android/gms/common/util/f;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ik;->e:Lcom/google/android/gms/measurement/internal/ja;

    .line 4
    new-instance v0, Lcom/google/android/gms/measurement/internal/ij;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/ij;-><init>(Lcom/google/android/gms/measurement/internal/ik;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ik;->a:Lcom/google/android/gms/measurement/internal/ij;

    new-instance v0, Lcom/google/android/gms/measurement/internal/ht;

    .line 5
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/ht;-><init>(Lcom/google/android/gms/measurement/internal/ik;Lcom/google/android/gms/measurement/internal/fo;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ik;->d:Lcom/google/android/gms/measurement/internal/l;

    new-instance v0, Lcom/google/android/gms/measurement/internal/hv;

    .line 6
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/hv;-><init>(Lcom/google/android/gms/measurement/internal/ik;Lcom/google/android/gms/measurement/internal/fo;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ik;->g:Lcom/google/android/gms/measurement/internal/l;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/ik;Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ik;->b:Lcom/google/android/gms/measurement/internal/df;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ik;->b:Lcom/google/android/gms/measurement/internal/df;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 36000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v1, "Disconnected from device MeasurementService"

    .line 3
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ik;->n()V

    :cond_0
    return-void
.end method

.method private final a(Ljava/lang/Runnable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ik;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ik;->f:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 30000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v0, "Discarding data. Max runnable queue size reached"

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ik;->f:Ljava/util/List;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/ik;->g:Lcom/google/android/gms/measurement/internal/l;

    const-wide/32 v0, 0xea60

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/l;->a(J)V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ik;->n()V

    return-void
.end method

.method private final b(Z)Lcom/google/android/gms/measurement/internal/zzp;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/db;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->o()Lcom/google/android/gms/measurement/internal/dg;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v2

    .line 5
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/ee;->c:Lcom/google/android/gms/measurement/internal/eb;

    if-nez v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/ee;->c:Lcom/google/android/gms/measurement/internal/eb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/eb;->a()Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v2, Lcom/google/android/gms/measurement/internal/ee;->a:Landroid/util/Pair;

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/dg;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->k()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/ik;->b(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/hs;

    .line 4
    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/measurement/internal/hs;-><init>(Lcom/google/android/gms/measurement/internal/ik;Lcom/google/android/gms/measurement/internal/zzp;Landroid/os/Bundle;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/ik;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/nc;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->k()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/ik;->b(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/hp;

    .line 4
    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/measurement/internal/hp;-><init>(Lcom/google/android/gms/measurement/internal/ik;Lcom/google/android/gms/measurement/internal/zzp;Lcom/google/android/gms/internal/measurement/nc;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/ik;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/nc;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->k()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ju;->o()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p2

    .line 34000
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string p3, "Not bundling data. Service unavailable or out of date"

    .line 6
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [B

    .line 8
    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/measurement/internal/ju;->a(Lcom/google/android/gms/internal/measurement/nc;[B)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/hu;

    .line 9
    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/gms/measurement/internal/hu;-><init>(Lcom/google/android/gms/measurement/internal/ik;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/nc;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/ik;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/measurement/nc;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->k()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/ik;->b(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/measurement/internal/ib;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p1

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/ib;-><init>(Lcom/google/android/gms/measurement/internal/ik;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;Lcom/google/android/gms/internal/measurement/nc;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/ik;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/measurement/nc;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->k()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/ik;->b(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/measurement/internal/hl;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    move-object v7, p1

    .line 4
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/hl;-><init>(Lcom/google/android/gms/measurement/internal/ik;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;ZLcom/google/android/gms/internal/measurement/nc;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/ik;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/measurement/internal/df;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ik;->b:Lcom/google/android/gms/measurement/internal/df;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ik;->i()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ik;->q()V

    return-void
.end method

.method final a(Lcom/google/android/gms/measurement/internal/df;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->k()V

    const/4 v0, 0x0

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/16 v3, 0x64

    :goto_0
    const/16 v4, 0x3e9

    if-ge v2, v4, :cond_6

    if-ne v3, v1, :cond_6

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/db;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/es;->i()Lcom/google/android/gms/measurement/internal/di;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/di;->e()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 8
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz p2, :cond_1

    if-ge v4, v1, :cond_1

    .line 10
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_5

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 11
    check-cast v7, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    .line 12
    instance-of v8, v7, Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v8, :cond_2

    .line 13
    :try_start_0
    check-cast v7, Lcom/google/android/gms/measurement/internal/zzas;

    invoke-interface {p1, v7, p3}, Lcom/google/android/gms/measurement/internal/df;->a(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v7

    .line 22
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 14
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v8

    .line 5000
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v9, "Failed to send event to the service"

    .line 15
    invoke-virtual {v8, v9, v7}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 16
    :cond_2
    instance-of v8, v7, Lcom/google/android/gms/measurement/internal/zzkl;

    if-eqz v8, :cond_3

    .line 17
    :try_start_1
    check-cast v7, Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-interface {p1, v7, p3}, Lcom/google/android/gms/measurement/internal/df;->a(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzp;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v7

    .line 15
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 18
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v8

    .line 6000
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v9, "Failed to send user property to the service"

    .line 19
    invoke-virtual {v8, v9, v7}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 20
    :cond_3
    instance-of v8, v7, Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v8, :cond_4

    .line 23
    :try_start_2
    check-cast v7, Lcom/google/android/gms/measurement/internal/zzaa;

    invoke-interface {p1, v7, p3}, Lcom/google/android/gms/measurement/internal/df;->a(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v7

    .line 19
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 24
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v8

    .line 7000
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v9, "Failed to send conditional user property to the service"

    .line 26
    invoke-virtual {v8, v9, v7}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 23
    :cond_4
    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 21
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v7

    .line 4000
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v8, "Discarding data. Unrecognized parcel type."

    .line 22
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method protected final a(Lcom/google/android/gms/measurement/internal/hc;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->k()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/hr;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/hr;-><init>(Lcom/google/android/gms/measurement/internal/ik;Lcom/google/android/gms/measurement/internal/hc;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/ik;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/measurement/internal/zzaa;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->k()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/db;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->i()Lcom/google/android/gms/measurement/internal/di;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/di;->a(Lcom/google/android/gms/measurement/internal/zzaa;)Z

    move-result v5

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzaa;

    .line 7
    invoke-direct {v6, p1}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Lcom/google/android/gms/measurement/internal/zzaa;)V

    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/ik;->b(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v4

    new-instance v0, Lcom/google/android/gms/measurement/internal/hz;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    .line 9
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/hz;-><init>(Lcom/google/android/gms/measurement/internal/ik;ZLcom/google/android/gms/measurement/internal/zzp;ZLcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzaa;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/ik;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->k()V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/db;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->i()Lcom/google/android/gms/measurement/internal/di;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/di;->a(Lcom/google/android/gms/measurement/internal/zzas;)Z

    move-result v5

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/ik;->b(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v4

    new-instance v0, Lcom/google/android/gms/measurement/internal/hy;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    .line 8
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/hy;-><init>(Lcom/google/android/gms/measurement/internal/ik;ZLcom/google/android/gms/measurement/internal/zzp;ZLcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/ik;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/measurement/internal/zzkl;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->k()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/db;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->i()Lcom/google/android/gms/measurement/internal/di;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/di;->a(Lcom/google/android/gms/measurement/internal/zzkl;)Z

    move-result v0

    const/4 v1, 0x1

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/ik;->b(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/hm;

    .line 7
    invoke-direct {v2, p0, v1, v0, p1}, Lcom/google/android/gms/measurement/internal/hm;-><init>(Lcom/google/android/gms/measurement/internal/ik;Lcom/google/android/gms/measurement/internal/zzp;ZLcom/google/android/gms/measurement/internal/zzkl;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/ik;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->k()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/ik;->b(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/ho;

    .line 4
    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/measurement/internal/ho;-><init>(Lcom/google/android/gms/measurement/internal/ik;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/ik;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzaa;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->k()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/ik;->b(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/measurement/internal/ia;

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    .line 4
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/ia;-><init>(Lcom/google/android/gms/measurement/internal/ik;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/ik;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzkl;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->k()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/ik;->b(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/measurement/internal/ic;

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move v8, p4

    .line 4
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/ic;-><init>(Lcom/google/android/gms/measurement/internal/ik;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/ik;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 1
    sget-object v1, Lcom/google/android/gms/measurement/internal/dc;->au:Lcom/google/android/gms/measurement/internal/da;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->k()V

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/db;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/es;->i()Lcom/google/android/gms/measurement/internal/di;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/di;->ae_()V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ik;->r()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/ik;->b(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/hx;

    .line 10
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/hx;-><init>(Lcom/google/android/gms/measurement/internal/ik;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/ik;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->k()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ik;->b:Lcom/google/android/gms/measurement/internal/df;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final f()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->k()V

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/ik;->b(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/hw;

    .line 4
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/hw;-><init>(Lcom/google/android/gms/measurement/internal/ik;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/ik;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final g()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->k()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/ik;->b(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/db;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->i()Lcom/google/android/gms/measurement/internal/di;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/di;->ae_()V

    new-instance v1, Lcom/google/android/gms/measurement/internal/hn;

    .line 7
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/hn;-><init>(Lcom/google/android/gms/measurement/internal/ik;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/ik;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final h()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->k()V

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/ik;->b(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/db;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->i()Lcom/google/android/gms/measurement/internal/di;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [B

    const/4 v3, 0x3

    .line 8001
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/di;->a(I[B)Z

    .line 5
    new-instance v1, Lcom/google/android/gms/measurement/internal/hq;

    .line 6
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/hq;-><init>(Lcom/google/android/gms/measurement/internal/ik;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/ik;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method final i()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ik;->e:Lcom/google/android/gms/measurement/internal/ja;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ja;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ik;->d:Lcom/google/android/gms/measurement/internal/l;

    .line 4
    sget-object v1, Lcom/google/android/gms/measurement/internal/dc;->I:Lcom/google/android/gms/measurement/internal/da;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/da;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/l;->a(J)V

    return-void
.end method

.method final n()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->k()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ik;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ik;->o()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 10000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 12000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 10
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 13000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.measurement.START"

    .line 17
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 14000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 20
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ik;->a:Lcom/google/android/gms/measurement/internal/ij;

    .line 22
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/ij;->a(Landroid/content/Intent;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 16000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ik;->a:Lcom/google/android/gms/measurement/internal/ij;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ij;->b()V

    return-void
.end method

.method final o()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->k()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ik;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->k()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ee;->ah_()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "use_service"

    .line 7
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ee;->ah_()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 8
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_6

    .line 10
    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/db;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 11
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/es;->o()Lcom/google/android/gms/measurement/internal/dg;

    move-result-object v4

    .line 12
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dg;->i()I

    move-result v4

    if-ne v4, v1, :cond_2

    :goto_1
    const/4 v3, 0x1

    goto/16 :goto_4

    .line 39
    :cond_2
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 13
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v4

    .line 20000
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v5, "Checking service availability"

    .line 14
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 15
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v4

    .line 16
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/ju;->o()I

    move-result v4

    if-eqz v4, :cond_a

    if-eq v4, v1, :cond_9

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    const/4 v0, 0x3

    if-eq v4, v0, :cond_5

    const/16 v0, 0x9

    if-eq v4, v0, :cond_4

    const/16 v0, 0x12

    if-eq v4, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 21000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    .line 18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "Unexpected service status"

    invoke-virtual {v0, v4, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 30
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 27000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "Service updating"

    .line 32
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 26000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v1, "Service invalid"

    .line 30
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 26
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 25000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v1, "Service disabled"

    .line 28
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    :goto_2
    const/4 v1, 0x0

    goto :goto_4

    .line 22
    :cond_6
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 23
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v4

    .line 24000
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string v5, "Service container out of date"

    .line 24
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 25
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v4

    .line 26
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/ju;->n()I

    move-result v4

    const/16 v5, 0x4423

    if-ge v4, v5, :cond_7

    goto :goto_4

    :cond_7
    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    move v3, v1

    goto :goto_2

    .line 20
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 23000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v4, "Service missing"

    .line 22
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 18
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 22000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "Service available"

    .line 20
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :goto_4
    if-nez v3, :cond_b

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 18000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 19000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v1, "No way to upload. Consider using the full version of Analytics"

    .line 41
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ee;->ah_()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 38
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_c
    :goto_5
    move v1, v3

    .line 42
    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ik;->c:Ljava/lang/Boolean;

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ik;->c:Ljava/lang/Boolean;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final p()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->k()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ik;->a:Lcom/google/android/gms/measurement/internal/ij;

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/ij;->a:Lcom/google/android/gms/measurement/internal/dk;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/ij;->a:Lcom/google/android/gms/measurement/internal/dk;

    .line 27001
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dk;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/ij;->a:Lcom/google/android/gms/measurement/internal/dk;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dk;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/ij;->a:Lcom/google/android/gms/measurement/internal/dk;

    .line 27002
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dk;->disconnect()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/ij;->a:Lcom/google/android/gms/measurement/internal/dk;

    .line 4
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/a;->a()Lcom/google/android/gms/common/stats/a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 28000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 5
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/ik;->a:Lcom/google/android/gms/measurement/internal/ij;

    .line 6
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/stats/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/ik;->b:Lcom/google/android/gms/measurement/internal/df;

    return-void
.end method

.method final q()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 31000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ik;->f:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Processing queued up service tasks"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ik;->f:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 6
    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 32000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "Task exception while flushing queue"

    .line 8
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ik;->f:Ljava/util/List;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ik;->g:Lcom/google/android/gms/measurement/internal/l;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/l;->c()V

    return-void
.end method

.method final r()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ec;->k()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 35000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 4
    sget-object v1, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ik;->o()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ju;->n()I

    move-result v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/dc;->ax:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/da;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v0, v2, :cond_1

    return v3

    :cond_1
    return v1

    :cond_2
    return v3
.end method

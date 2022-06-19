.class public final Lcom/google/android/gms/internal/ads/yo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/efc;


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Lcom/google/android/gms/internal/ads/yn;

.field final c:Lcom/google/android/gms/internal/ads/yk;

.field final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/ads/yc;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field private final f:Lcom/google/android/gms/ads/internal/util/zzf;

.field private final g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzf;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yo;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yo;->d:Ljava/util/HashSet;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yo;->g:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/yo;->e:Z

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/yk;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/yk;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yo;->c:Lcom/google/android/gms/internal/ads/yk;

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yo;->f:Lcom/google/android/gms/ads/internal/util/zzf;

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/yn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/yn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yo;->b:Lcom/google/android/gms/internal/ads/yn;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yj;)Landroid/os/Bundle;
    .locals 5

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yo;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yo;->d:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yo;->d:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 20
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "app"

    .line 22
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yo;->c:Lcom/google/android/gms/internal/ads/yk;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/yo;->b:Lcom/google/android/gms/internal/ads/yn;

    .line 23
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/yn;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/internal/ads/yk;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 24
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 25
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 26
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yo;->g:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v2, "slots"

    .line 28
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/yc;

    .line 31
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/yc;->a()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, "ads"

    .line 33
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 34
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/yj;->a(Ljava/util/HashSet;)V

    return-object v1

    .line 26
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/yc;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yo;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yo;->d:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Z)V
    .locals 4

    .line 36
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v0

    if-eqz p1, :cond_1

    .line 38
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yo;->f:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzh()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->aC:Lcom/google/android/gms/internal/ads/af;

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 41
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yo;->c:Lcom/google/android/gms/internal/ads/yk;

    const/4 v0, -0x1

    .line 43
    iput v0, p1, Lcom/google/android/gms/internal/ads/yk;->d:I

    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yo;->c:Lcom/google/android/gms/internal/ads/yk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yo;->f:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzi()I

    move-result v0

    .line 46
    iput v0, p1, Lcom/google/android/gms/internal/ads/yk;->d:I

    :goto_0
    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/yo;->e:Z

    return-void

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yo;->f:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/util/zzf;->zzfa(J)V

    .line 49
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yo;->f:Lcom/google/android/gms/ads/internal/util/zzf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yo;->c:Lcom/google/android/gms/internal/ads/yk;

    .line 50
    iget v0, v0, Lcom/google/android/gms/internal/ads/yk;->d:I

    .line 51
    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/internal/util/zzf;->zzdj(I)V

    return-void
.end method

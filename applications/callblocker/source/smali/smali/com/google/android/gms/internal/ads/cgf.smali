.class public final Lcom/google/android/gms/internal/ads/cgf;
.super Lcom/google/android/gms/internal/ads/rx;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cfy;

.field private final b:Lcom/google/android/gms/internal/ads/cfa;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/ads/chb;

.field private final e:Landroid/content/Context;

.field private f:Lcom/google/android/gms/internal/ads/bdr;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/cfy;Landroid/content/Context;Lcom/google/android/gms/internal/ads/cfa;Lcom/google/android/gms/internal/ads/chb;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/rx;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cgf;->c:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cgf;->a:Lcom/google/android/gms/internal/ads/cfy;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cgf;->b:Lcom/google/android/gms/internal/ads/cfa;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/cgf;->d:Lcom/google/android/gms/internal/ads/chb;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cgf;->e:Landroid/content/Context;

    .line 7
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cgf;)Lcom/google/android/gms/internal/ads/bdr;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgf;->f:Lcom/google/android/gms/internal/ads/bdr;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cgf;Lcom/google/android/gms/internal/ads/bdr;)Lcom/google/android/gms/internal/ads/bdr;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cgf;->f:Lcom/google/android/gms/internal/ads/bdr;

    return-object p1
.end method

.method private final declared-synchronized a(Lcom/google/android/gms/internal/ads/dya;Lcom/google/android/gms/internal/ads/sa;I)V
    .locals 4

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgf;->b:Lcom/google/android/gms/internal/ads/cfa;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/cfa;->a(Lcom/google/android/gms/internal/ads/sa;)V

    .line 61
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgf;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ve;->o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dya;->s:Lcom/google/android/gms/internal/ads/dxu;

    if-nez v0, :cond_1

    .line 62
    const-string/jumbo v0, "Failed to load the ad because app ID is missing."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgf;->b:Lcom/google/android/gms/internal/ads/cfa;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cfa;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 65
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgf;->f:Lcom/google/android/gms/internal/ads/bdr;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/google/android/gms/internal/ads/cfv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cfv;-><init>(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cgf;->a:Lcom/google/android/gms/internal/ads/cfy;

    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/cfy;->a(I)V

    .line 69
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cgf;->a:Lcom/google/android/gms/internal/ads/cfy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cgf;->c:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/cgh;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/cgh;-><init>(Lcom/google/android/gms/internal/ads/cgf;)V

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/cfy;->a(Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/btl;Lcom/google/android/gms/internal/ads/bto;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    .prologue
    .line 12
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/cgf;->a(Lcom/google/android/gms/dynamic/a;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/dynamic/a;Z)V
    .locals 2

    .prologue
    .line 14
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgf;->f:Lcom/google/android/gms/internal/ads/bdr;

    if-nez v0, :cond_0

    .line 16
    const-string/jumbo v0, "Rewarded can not be shown before loaded"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgf;->b:Lcom/google/android/gms/internal/ads/cfa;

    const/4 v1, 0x2

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cfa;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :goto_0
    monitor-exit p0

    return-void

    .line 20
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cgf;->f:Lcom/google/android/gms/internal/ads/bdr;

    invoke-virtual {v1, p2, v0}, Lcom/google/android/gms/internal/ads/bdr;->a(ZLandroid/app/Activity;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/dya;Lcom/google/android/gms/internal/ads/sa;)V
    .locals 1

    .prologue
    .line 8
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/google/android/gms/internal/ads/cgy;->b:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/cgf;->a(Lcom/google/android/gms/internal/ads/dya;Lcom/google/android/gms/internal/ads/sa;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    .line 8
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eap;)V
    .locals 2

    .prologue
    .line 34
    if-nez p1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgf;->b:Lcom/google/android/gms/internal/ads/cfa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cfa;->a(Lcom/google/android/gms/ads/reward/a;)V

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgf;->b:Lcom/google/android/gms/internal/ads/cfa;

    new-instance v1, Lcom/google/android/gms/internal/ads/cge;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/cge;-><init>(Lcom/google/android/gms/internal/ads/cgf;Lcom/google/android/gms/internal/ads/eap;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cfa;->a(Lcom/google/android/gms/ads/reward/a;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eau;)V
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "setOnPaidEventListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgf;->b:Lcom/google/android/gms/internal/ads/cfa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cfa;->a(Lcom/google/android/gms/internal/ads/eau;)V

    .line 58
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ry;)V
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgf;->b:Lcom/google/android/gms/internal/ads/cfa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cfa;->a(Lcom/google/android/gms/internal/ads/ry;)V

    .line 30
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/sd;)V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgf;->b:Lcom/google/android/gms/internal/ads/cfa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cfa;->a(Lcom/google/android/gms/internal/ads/sd;)V

    .line 33
    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/sh;)V
    .locals 3

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cgf;->d:Lcom/google/android/gms/internal/ads/chb;

    .line 45
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/sh;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/chb;->a:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->an:Lcom/google/android/gms/internal/ads/ect;

    .line 47
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/sh;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/chb;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgf;->f:Lcom/google/android/gms/internal/ads/bdr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgf;->f:Lcom/google/android/gms/internal/ads/bdr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bdr;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgf;->f:Lcom/google/android/gms/internal/ads/bdr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgf;->f:Lcom/google/android/gms/internal/ads/bdr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amh;->j()Lcom/google/android/gms/internal/ads/apk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgf;->f:Lcom/google/android/gms/internal/ads/bdr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amh;->j()Lcom/google/android/gms/internal/ads/apk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/apk;->a()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 25
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/internal/ads/dya;Lcom/google/android/gms/internal/ads/sa;)V
    .locals 1

    .prologue
    .line 10
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/google/android/gms/internal/ads/cgy;->c:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/cgf;->a(Lcom/google/android/gms/internal/ads/dya;Lcom/google/android/gms/internal/ads/sa;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    .line 10
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgf;->f:Lcom/google/android/gms/internal/ads/bdr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgf;->f:Lcom/google/android/gms/internal/ads/bdr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bdr;->e()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/rt;
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgf;->f:Lcom/google/android/gms/internal/ads/bdr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgf;->f:Lcom/google/android/gms/internal/ads/bdr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bdr;->b()Lcom/google/android/gms/internal/ads/rt;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/eav;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 51
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->dB:Lcom/google/android/gms/internal/ads/ect;

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 55
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgf;->f:Lcom/google/android/gms/internal/ads/bdr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgf;->f:Lcom/google/android/gms/internal/ads/bdr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amh;->j()Lcom/google/android/gms/internal/ads/apk;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

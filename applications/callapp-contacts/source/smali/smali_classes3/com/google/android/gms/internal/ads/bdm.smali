.class public final Lcom/google/android/gms/internal/ads/bdm;
.super Lcom/google/android/gms/internal/ads/dy;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Lcom/google/android/gms/internal/ads/ben;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field b:Landroid/widget/FrameLayout;

.field c:Landroid/view/View;

.field private final d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Landroid/widget/FrameLayout;

.field private g:Lcom/google/android/gms/internal/ads/dbs;

.field private final h:I

.field private i:Lcom/google/android/gms/internal/ads/bcf;

.field private j:Lcom/google/android/gms/internal/ads/eec;

.field private k:Lcom/google/android/gms/dynamic/b;

.field private l:Lcom/google/android/gms/internal/ads/dq;

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "2011"

    const-string v1, "1009"

    const-string v2, "3010"

    .line 152
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/bdm;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dy;-><init>()V

    .line 2
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bdm;->e:Ljava/util/Map;

    const/4 p3, 0x0

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bdm;->k:Lcom/google/android/gms/dynamic/b;

    const/4 p3, 0x0

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/bdm;->n:Z

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bdm;->b:Landroid/widget/FrameLayout;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bdm;->f:Landroid/widget/FrameLayout;

    const p2, 0xc365f90

    .line 7
    iput p2, p0, Lcom/google/android/gms/internal/ads/bdm;->h:I

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.google.android.gms.ads.formats.NativeContentAdView"

    .line 10
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p2, "1007"

    goto :goto_0

    :cond_0
    const-string p3, "com.google.android.gms.ads.formats.NativeAppInstallAdView"

    .line 12
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p2, "2009"

    goto :goto_0

    :cond_1
    const-string p3, "com.google.android.gms.ads.formats.UnifiedNativeAdView"

    .line 14
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const-string p2, "3012"

    .line 16
    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bdm;->d:Ljava/lang/String;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzls()Lcom/google/android/gms/internal/ads/zx;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zx;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzls()Lcom/google/android/gms/internal/ads/zx;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zx;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 19
    sget-object p2, Lcom/google/android/gms/internal/ads/zd;->e:Lcom/google/android/gms/internal/ads/dbs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bdm;->g:Lcom/google/android/gms/internal/ads/dbs;

    .line 21
    new-instance p2, Lcom/google/android/gms/internal/ads/eec;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/bdm;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->b:Landroid/widget/FrameLayout;

    invoke-direct {p2, p3, v0}, Lcom/google/android/gms/internal/ads/eec;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 22
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bdm;->j:Lcom/google/android/gms/internal/ads/eec;

    .line 23
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 24
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final declared-synchronized k()V
    .locals 2

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->g:Lcom/google/android/gms/internal/ads/dbs;

    new-instance v1, Lcom/google/android/gms/internal/ads/bdl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bdl;-><init>(Lcom/google/android/gms/internal/ads/bdm;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dbs;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/google/android/gms/dynamic/b;
    .locals 0

    monitor-enter p0

    .line 41
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/bdm;->a_(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 64
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bdm;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 65
    monitor-exit p0

    return-void

    .line 66
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->i:Lcom/google/android/gms/internal/ads/bcf;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/bcf;->b(Lcom/google/android/gms/internal/ads/ben;)V

    .line 68
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bdm;->i:Lcom/google/android/gms/internal/ads/bcf;

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 72
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bdm;->e:Ljava/util/Map;

    .line 73
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bdm;->b:Landroid/widget/FrameLayout;

    .line 74
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bdm;->f:Landroid/widget/FrameLayout;

    .line 75
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bdm;->c:Landroid/view/View;

    .line 76
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bdm;->j:Lcom/google/android/gms/internal/ads/eec;

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bdm;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/dynamic/b;)V
    .locals 5

    monitor-enter p0

    .line 46
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bdm;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 47
    monitor-exit p0

    return-void

    .line 48
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    .line 49
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/bcf;

    if-nez v0, :cond_1

    const-string p1, "Not an instance of native engine. This is most likely a transient error"

    .line 50
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    monitor-exit p0

    return-void

    .line 52
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->i:Lcom/google/android/gms/internal/ads/bcf;

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/bcf;->b(Lcom/google/android/gms/internal/ads/ben;)V

    .line 54
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bdm;->k()V

    .line 55
    check-cast p1, Lcom/google/android/gms/internal/ads/bcf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bdm;->i:Lcom/google/android/gms/internal/ads/bcf;

    .line 56
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/bcf;->a(Lcom/google/android/gms/internal/ads/ben;)V

    .line 57
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bdm;->i:Lcom/google/android/gms/internal/ads/bcf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/bcf;->c(Landroid/view/View;)V

    .line 58
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bdm;->i:Lcom/google/android/gms/internal/ads/bcf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->f:Landroid/widget/FrameLayout;

    .line 1241
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/bcf;->a:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bcr;->x()Lcom/google/android/gms/dynamic/b;

    move-result-object v1

    .line 1243
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bcf;->c:Lcom/google/android/gms/internal/ads/bcv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bcv;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 1245
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lcom/google/android/gms/internal/ads/qt;

    move-result-object p1

    .line 2119
    sget-object v2, Lcom/google/android/gms/internal/ads/qt;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2120
    :try_start_3
    sget-object v3, Lcom/google/android/gms/internal/ads/aq;->cT:Lcom/google/android/gms/internal/ads/af;

    .line 2121
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v3

    .line 2122
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/google/android/gms/internal/ads/qt;->b:Z

    if-nez v3, :cond_3

    goto :goto_1

    .line 2124
    :cond_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2125
    :try_start_4
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/qt;->c:Lcom/google/android/gms/internal/ads/cut;

    .line 2126
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    .line 2127
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/cut;->b(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/dynamic/b;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    :try_start_5
    const-string v0, "#007 Could not call remote method."

    .line 2130
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 2123
    :cond_4
    :goto_1
    :try_start_6
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 2124
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p1

    .line 59
    :cond_5
    :goto_2
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/bdm;->m:Z

    if-eqz p1, :cond_6

    .line 60
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bdm;->i:Lcom/google/android/gms/internal/ads/bcf;

    .line 2247
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bcf;->q:Lcom/google/android/gms/internal/ads/bcm;

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->l:Lcom/google/android/gms/internal/ads/dq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/bcm;->a(Lcom/google/android/gms/internal/ads/dq;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 61
    :cond_6
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/dynamic/b;I)V
    .locals 0

    monitor-enter p0

    .line 79
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/dq;)V
    .locals 1

    monitor-enter p0

    .line 136
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bdm;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 137
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 138
    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bdm;->m:Z

    .line 139
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bdm;->l:Lcom/google/android/gms/internal/ads/dq;

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->i:Lcom/google/android/gms/internal/ads/bcf;

    if-eqz v0, :cond_1

    .line 3247
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bcf;->q:Lcom/google/android/gms/internal/ads/bcm;

    .line 141
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bcm;->a(Lcom/google/android/gms/internal/ads/dq;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    monitor-enter p0

    .line 28
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bdm;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 29
    monitor-exit p0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 31
    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bdm;->e:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 32
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->e:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "1098"

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "3011"

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 36
    :cond_2
    iget p1, p0, Lcom/google/android/gms/internal/ads/bdm;->h:I

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbn;->zzdn(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 37
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    const/4 p1, 0x1

    .line 38
    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 39
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    .line 35
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/google/android/gms/dynamic/b;)V
    .locals 0

    monitor-enter p0

    .line 26
    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bdm;->a(Ljava/lang/String;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a_(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    monitor-enter p0

    .line 42
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bdm;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 43
    monitor-exit p0

    return-object v1

    .line 44
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 45
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Landroid/widget/FrameLayout;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->f:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/dynamic/b;)V
    .locals 1

    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->i:Lcom/google/android/gms/internal/ads/bcf;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bcf;->a(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic c()Landroid/view/View;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->b:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final c(Lcom/google/android/gms/dynamic/b;)V
    .locals 1

    .line 133
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    .line 134
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/bdm;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final d()Lcom/google/android/gms/internal/ads/eec;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->j:Lcom/google/android/gms/internal/ads/eec;

    return-object v0
.end method

.method public final declared-synchronized d(Lcom/google/android/gms/dynamic/b;)V
    .locals 1

    monitor-enter p0

    .line 128
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bdm;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 129
    monitor-exit p0

    return-void

    .line 130
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bdm;->k:Lcom/google/android/gms/dynamic/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->e:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->e:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 122
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized h()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final i()Lcom/google/android/gms/dynamic/b;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->k:Lcom/google/android/gms/dynamic/b;

    return-object v0
.end method

.method public final declared-synchronized j()Lorg/json/JSONObject;
    .locals 4

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->i:Lcom/google/android/gms/internal/ads/bcf;

    if-eqz v0, :cond_0

    .line 96
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bdm;->b:Landroid/widget/FrameLayout;

    .line 97
    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bdm;->e()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bdm;->f()Ljava/util/Map;

    move-result-object v3

    .line 98
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/bcf;->a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 99
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onClick(Landroid/view/View;)V
    .locals 7

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->i:Lcom/google/android/gms/internal/ads/bcf;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcf;->c()V

    .line 82
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bdm;->i:Lcom/google/android/gms/internal/ads/bcf;

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->b:Landroid/widget/FrameLayout;

    .line 84
    move-object v3, v0

    check-cast v3, Landroid/widget/FrameLayout;

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bdm;->e()Ljava/util/Map;

    move-result-object v4

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bdm;->f()Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p1

    .line 87
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/bcf;->a(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onGlobalLayout()V
    .locals 5

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->i:Lcom/google/android/gms/internal/ads/bcf;

    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bdm;->b:Landroid/widget/FrameLayout;

    .line 103
    check-cast v1, Landroid/widget/FrameLayout;

    .line 104
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bdm;->e()Ljava/util/Map;

    move-result-object v2

    .line 105
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bdm;->f()Ljava/util/Map;

    move-result-object v3

    .line 106
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bdm;->b:Landroid/widget/FrameLayout;

    .line 107
    check-cast v4, Landroid/widget/FrameLayout;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/bcf;->b(Landroid/view/View;)Z

    move-result v4

    .line 108
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/bcf;->a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onScrollChanged()V
    .locals 5

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->i:Lcom/google/android/gms/internal/ads/bcf;

    if-eqz v0, :cond_0

    .line 112
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bdm;->b:Landroid/widget/FrameLayout;

    .line 113
    check-cast v1, Landroid/widget/FrameLayout;

    .line 114
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bdm;->e()Ljava/util/Map;

    move-result-object v2

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bdm;->f()Ljava/util/Map;

    move-result-object v3

    .line 116
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bdm;->b:Landroid/widget/FrameLayout;

    .line 117
    check-cast v4, Landroid/widget/FrameLayout;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/bcf;->b(Landroid/view/View;)Z

    move-result v4

    .line 118
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/bcf;->a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bdm;->i:Lcom/google/android/gms/internal/ads/bcf;

    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdm;->b:Landroid/widget/FrameLayout;

    .line 92
    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/bcf;->a(Landroid/view/MotionEvent;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 p1, 0x0

    .line 93
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.class public final Lcom/google/android/gms/internal/ads/ccf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cah",
        "<",
        "Lcom/google/android/gms/internal/ads/ccc;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/kb;

.field private b:Ljava/util/concurrent/ScheduledExecutorService;

.field private c:Z

.field private d:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/kb;Ljava/util/concurrent/ScheduledExecutorService;ZLandroid/content/pm/ApplicationInfo;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ccf;->a:Lcom/google/android/gms/internal/ads/kb;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ccf;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/ccf;->c:Z

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ccf;->d:Landroid/content/pm/ApplicationInfo;

    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/ccc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/af;->b:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Auto Collect Location by gms is disabled."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 17
    :goto_0
    return-object v0

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ccf;->c:Z

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Auto Collect Location is false."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ccf;->a:Lcom/google/android/gms/internal/ads/kb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ccf;->d:Landroid/content/pm/ApplicationInfo;

    .line 12
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/kb;->a(Landroid/content/pm/ApplicationInfo;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bD:Lcom/google/android/gms/internal/ads/ect;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ccf;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 16
    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/ads/cce;->a:Lcom/google/android/gms/internal/ads/coe;

    sget-object v2, Lcom/google/android/gms/internal/ads/yg;->a:Lcom/google/android/gms/internal/ads/crs;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    goto :goto_0
.end method

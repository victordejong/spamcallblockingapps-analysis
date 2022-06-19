.class public final Lcom/google/android/gms/internal/ads/bwt;
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
        "Lcom/google/android/gms/internal/ads/bwp;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/crs;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/crs;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bwt;->a:Lcom/google/android/gms/internal/ads/crs;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bwt;->b:Landroid/content/Context;

    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/bwp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bwt;->a:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/internal/ads/bwr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bwr;-><init>(Lcom/google/android/gms/internal/ads/bwt;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method final synthetic b()Lcom/google/android/gms/internal/ads/bwp;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    .line 6
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bwt;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 8
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 10
    if-eqz v1, :cond_1

    .line 11
    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 12
    const-string/jumbo v2, "level"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 13
    const-string/jumbo v3, "scale"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 14
    int-to-double v2, v2

    int-to-double v6, v1

    div-double/2addr v2, v6

    .line 15
    const/4 v1, 0x2

    if-eq v4, v1, :cond_0

    const/4 v1, 0x5

    if-ne v4, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 16
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/bwp;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/bwp;-><init>(DZ)V

    return-object v1
.end method

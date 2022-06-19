.class final Lcom/google/android/gms/internal/ads/vk;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ve;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ve;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vk;->a:Lcom/google/android/gms/internal/ads/ve;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ve;Lcom/google/android/gms/internal/ads/vg;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/vk;-><init>(Lcom/google/android/gms/internal/ads/ve;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 2
    const-string/jumbo v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vk;->a:Lcom/google/android/gms/internal/ads/ve;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ve;->a(Lcom/google/android/gms/internal/ads/ve;Z)Z

    .line 6
    :cond_0
    :goto_0
    return-void

    .line 4
    :cond_1
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vk;->a:Lcom/google/android/gms/internal/ads/ve;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ve;->a(Lcom/google/android/gms/internal/ads/ve;Z)Z

    goto :goto_0
.end method

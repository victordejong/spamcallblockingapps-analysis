.class final synthetic Lcom/google/android/gms/internal/ads/acv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/acs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/acs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/acv;->a:Lcom/google/android/gms/internal/ads/acs;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acv;->a:Lcom/google/android/gms/internal/ads/acs;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->F()V

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/acs;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->r()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->m()V

    .line 6
    :cond_0
    return-void
.end method

.class final Lcom/google/android/gms/internal/ads/dvn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/duj;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/dvl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dvl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dvn;->a:Lcom/google/android/gms/internal/ads/dvl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .prologue
    .line 2
    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvn;->a:Lcom/google/android/gms/internal/ads/dvl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dvl;->b(Lcom/google/android/gms/internal/ads/dvl;)V

    .line 5
    :goto_0
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvn;->a:Lcom/google/android/gms/internal/ads/dvl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dvl;->a(Lcom/google/android/gms/internal/ads/dvl;)V

    goto :goto_0
.end method

.class final synthetic Lcom/google/android/gms/internal/ads/cay;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/coe;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cav;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cav;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cay;->a:Lcom/google/android/gms/internal/ads/cav;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cay;->a:Lcom/google/android/gms/internal/ads/cav;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cav;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/cas;

    move-result-object v0

    return-object v0
.end method

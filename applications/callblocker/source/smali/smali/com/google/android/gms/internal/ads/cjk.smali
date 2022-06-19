.class final synthetic Lcom/google/android/gms/internal/ads/cjk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cjh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cjh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cjk;->a:Lcom/google/android/gms/internal/ads/cjh;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjk;->a:Lcom/google/android/gms/internal/ads/cjh;

    check-cast p1, Lcom/google/android/gms/internal/ads/ciy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cjh;->a(Lcom/google/android/gms/internal/ads/ciy;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

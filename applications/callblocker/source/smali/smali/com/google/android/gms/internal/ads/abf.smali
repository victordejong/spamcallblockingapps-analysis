.class final synthetic Lcom/google/android/gms/internal/ads/abf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dro;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/abb;

.field private final b:Lcom/google/android/gms/internal/ads/dro;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/abb;Lcom/google/android/gms/internal/ads/dro;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abf;->a:Lcom/google/android/gms/internal/ads/abb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/abf;->b:Lcom/google/android/gms/internal/ads/dro;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/drp;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abf;->a:Lcom/google/android/gms/internal/ads/abb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abf;->b:Lcom/google/android/gms/internal/ads/dro;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/abb;->a(Lcom/google/android/gms/internal/ads/dro;)Lcom/google/android/gms/internal/ads/drp;

    move-result-object v0

    return-object v0
.end method

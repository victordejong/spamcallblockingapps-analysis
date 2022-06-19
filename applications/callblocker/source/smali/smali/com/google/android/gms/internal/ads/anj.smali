.class final synthetic Lcom/google/android/gms/internal/ads/anj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ang;

.field private final b:Lcom/google/android/gms/internal/ads/ciu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ang;Lcom/google/android/gms/internal/ads/ciu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/anj;->a:Lcom/google/android/gms/internal/ads/ang;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/anj;->b:Lcom/google/android/gms/internal/ads/ciu;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anj;->a:Lcom/google/android/gms/internal/ads/ang;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/anj;->b:Lcom/google/android/gms/internal/ads/ciu;

    check-cast p1, Lcom/google/android/gms/internal/ads/pw;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/ang;->a(Lcom/google/android/gms/internal/ads/ciu;Lcom/google/android/gms/internal/ads/pw;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

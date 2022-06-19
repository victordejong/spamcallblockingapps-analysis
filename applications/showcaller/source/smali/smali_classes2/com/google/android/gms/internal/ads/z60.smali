.class final synthetic Lcom/google/android/gms/internal/ads/z60;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nu2;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ads/n20;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z60;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/z60;->b:Lcom/google/android/gms/internal/ads/n20;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z60;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/z60;->b:Lcom/google/android/gms/internal/ads/n20;

    check-cast p1, Lcom/google/android/gms/internal/ads/e60;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/e60;->U(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    return-object p1
.end method

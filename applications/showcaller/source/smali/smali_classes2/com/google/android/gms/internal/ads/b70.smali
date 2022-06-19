.class final synthetic Lcom/google/android/gms/internal/ads/b70;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uz2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/d70;

.field private final b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/d70;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/b70;->a:Lcom/google/android/gms/internal/ads/d70;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/b70;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b70;->a:Lcom/google/android/gms/internal/ads/d70;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/b70;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/e60;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/d70;->c(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/e60;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

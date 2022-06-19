.class final synthetic Lcom/google/android/gms/internal/ads/sr1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uz2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/tr1;

.field private final b:Lcom/google/android/gms/internal/ads/zzcbj;

.field private final c:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/tr1;Lcom/google/android/gms/internal/ads/zzcbj;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sr1;->a:Lcom/google/android/gms/internal/ads/tr1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sr1;->b:Lcom/google/android/gms/internal/ads/zzcbj;

    iput p3, p0, Lcom/google/android/gms/internal/ads/sr1;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sr1;->a:Lcom/google/android/gms/internal/ads/tr1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sr1;->b:Lcom/google/android/gms/internal/ads/zzcbj;

    iget v2, p0, Lcom/google/android/gms/internal/ads/sr1;->c:I

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/tr1;->b(Lcom/google/android/gms/internal/ads/zzcbj;ILjava/lang/Throwable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

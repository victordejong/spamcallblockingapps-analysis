.class final synthetic Lcom/google/android/gms/internal/ads/tt1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bu1;

.field private final b:Lcom/google/android/gms/internal/ads/r03;

.field private final c:Lcom/google/android/gms/internal/ads/r03;

.field private final d:Lcom/google/android/gms/internal/ads/zzcbj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bu1;Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/zzcbj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tt1;->a:Lcom/google/android/gms/internal/ads/bu1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/tt1;->b:Lcom/google/android/gms/internal/ads/r03;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/tt1;->c:Lcom/google/android/gms/internal/ads/r03;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/tt1;->d:Lcom/google/android/gms/internal/ads/zzcbj;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tt1;->a:Lcom/google/android/gms/internal/ads/bu1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tt1;->b:Lcom/google/android/gms/internal/ads/r03;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tt1;->c:Lcom/google/android/gms/internal/ads/r03;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/tt1;->d:Lcom/google/android/gms/internal/ads/zzcbj;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/bu1;->I6(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/zzcbj;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

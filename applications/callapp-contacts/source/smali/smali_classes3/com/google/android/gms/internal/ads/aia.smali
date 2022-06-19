.class final synthetic Lcom/google/android/gms/internal/ads/aia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aib;

.field private final b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aib;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aia;->a:Lcom/google/android/gms/internal/ads/aib;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aia;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aia;->a:Lcom/google/android/gms/internal/ads/aib;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aia;->b:Ljava/lang/Runnable;

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zd;->e:Lcom/google/android/gms/internal/ads/dbs;

    new-instance v3, Lcom/google/android/gms/internal/ads/aid;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/ads/aid;-><init>(Lcom/google/android/gms/internal/ads/aib;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/dbs;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

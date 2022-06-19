.class final synthetic Lcom/google/android/gms/internal/ads/ciw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cit;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ciw;->a:Lcom/google/android/gms/internal/ads/cit;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ciw;->a:Lcom/google/android/gms/internal/ads/cit;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/ciu;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cit;->a:Lcom/google/android/gms/internal/ads/ac;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cit;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/ac;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/ciu;-><init>(Ljava/util/List;)V

    return-object v1
.end method

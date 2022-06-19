.class final synthetic Lcom/google/android/gms/internal/ads/cfe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cff;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cff;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cfe;->a:Lcom/google/android/gms/internal/ads/cff;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfe;->a:Lcom/google/android/gms/internal/ads/cff;

    .line 1078
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cff;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cpo;->g:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1080
    sget-object v0, Lcom/google/android/gms/internal/ads/cfh;->a:Lcom/google/android/gms/internal/ads/cfc;

    return-object v0

    .line 1081
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1082
    sget-object v0, Lcom/google/android/gms/internal/ads/cfg;->a:Lcom/google/android/gms/internal/ads/cfc;

    return-object v0

    .line 1083
    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/cfj;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/cfj;-><init>(Lcom/google/android/gms/internal/ads/cff;Ljava/util/ArrayList;)V

    return-object v2
.end method

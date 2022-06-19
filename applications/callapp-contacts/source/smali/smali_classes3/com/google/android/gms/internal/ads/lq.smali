.class final Lcom/google/android/gms/internal/ads/lq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/util/zzar;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/util/zzar<",
        "Lcom/google/android/gms/internal/ads/ju;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzg(Ljava/lang/Object;)V
    .locals 2

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/ju;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/gs;->h:Lcom/google/android/gms/internal/ads/hi;

    const-string v1, "/log"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/ju;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/gs;->p:Lcom/google/android/gms/internal/ads/hu;

    const-string v1, "/result"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/ju;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/hi;)V

    return-void
.end method

.class final Lcom/google/android/gms/internal/ads/kg2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nu2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/nu2<",
        "Lcom/google/android/gms/internal/ads/zzeap;",
        "Lcom/google/android/gms/internal/ads/ng2;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/og2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/og2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kg2;->a:Lcom/google/android/gms/internal/ads/og2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeap;

    const-string v0, ""

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "Failed to get a cache key, reverting to legacy flow."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kg2;->a:Lcom/google/android/gms/internal/ads/og2;

    new-instance v0, Lcom/google/android/gms/internal/ads/ng2;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/og2;->d(Lcom/google/android/gms/internal/ads/og2;)Lcom/google/android/gms/internal/ads/rl2;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/ng2;-><init>(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/rl2;Lcom/google/android/gms/internal/ads/mg2;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/og2;->a(Lcom/google/android/gms/internal/ads/og2;Lcom/google/android/gms/internal/ads/ng2;)Lcom/google/android/gms/internal/ads/ng2;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kg2;->a:Lcom/google/android/gms/internal/ads/og2;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/og2;->b(Lcom/google/android/gms/internal/ads/og2;)Lcom/google/android/gms/internal/ads/ng2;

    move-result-object p1

    return-object p1
.end method

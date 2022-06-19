.class final Lcom/google/android/gms/internal/ads/lg2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nu2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/nu2<",
        "Lcom/google/android/gms/internal/ads/zzcbj;",
        "Lcom/google/android/gms/internal/ads/ng2;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/og2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/og2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lg2;->a:Lcom/google/android/gms/internal/ads/og2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcbj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lg2;->a:Lcom/google/android/gms/internal/ads/og2;

    new-instance v1, Lcom/google/android/gms/internal/ads/ng2;

    new-instance v2, Lcom/google/android/gms/internal/ads/tl2;

    .line 2
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzcbj;->m:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/tl2;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ng2;-><init>(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/rl2;Lcom/google/android/gms/internal/ads/mg2;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/og2;->a(Lcom/google/android/gms/internal/ads/og2;Lcom/google/android/gms/internal/ads/ng2;)Lcom/google/android/gms/internal/ads/ng2;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lg2;->a:Lcom/google/android/gms/internal/ads/og2;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/og2;->b(Lcom/google/android/gms/internal/ads/og2;)Lcom/google/android/gms/internal/ads/ng2;

    move-result-object p1

    return-object p1
.end method

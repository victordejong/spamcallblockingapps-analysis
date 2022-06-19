.class final Lcom/google/android/gms/internal/ads/kx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zt<",
        "Lcom/google/android/gms/internal/ads/lc;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/kv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/kv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kx;->a:Lcom/google/android/gms/internal/ads/kv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 0

    const-string p1, "Releasing engine reference."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kx;->a:Lcom/google/android/gms/internal/ads/kv;

    .line 1012
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/kv;->a:Lcom/google/android/gms/internal/ads/kz;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/kz;->b()V

    return-void
.end method

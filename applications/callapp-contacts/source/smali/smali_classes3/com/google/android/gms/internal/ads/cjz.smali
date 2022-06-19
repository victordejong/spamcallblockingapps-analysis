.class final synthetic Lcom/google/android/gms/internal/ads/cjz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cka;

.field private final b:Lcom/google/android/gms/internal/ads/zzvh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cka;Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cjz;->a:Lcom/google/android/gms/internal/ads/cka;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cjz;->b:Lcom/google/android/gms/internal/ads/zzvh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjz;->a:Lcom/google/android/gms/internal/ads/cka;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cjz;->b:Lcom/google/android/gms/internal/ads/zzvh;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cka;->a:Lcom/google/android/gms/internal/ads/cju;

    .line 1060
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cju;->c:Lcom/google/android/gms/internal/ads/ckb;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ckb;->a(Lcom/google/android/gms/internal/ads/zzvh;)V

    return-void
.end method

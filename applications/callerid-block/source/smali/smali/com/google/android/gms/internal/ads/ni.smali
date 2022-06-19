.class final Lcom/google/android/gms/internal/ads/ni;
.super Lcom/google/android/gms/internal/ads/hn;
.source ""


# instance fields
.field final synthetic b:Lcom/google/android/gms/ads/y/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/pi;Lcom/google/android/gms/ads/y/c;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ni;->b:Lcom/google/android/gms/ads/y/c;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hn;-><init>()V

    return-void
.end method


# virtual methods
.method public final O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/ads/y/b;

    new-instance v1, Lcom/google/android/gms/internal/ads/c2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/c2;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/y/b;-><init>(Lcom/google/android/gms/internal/ads/c2;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/m03;->f()Ljava/util/WeakHashMap;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ni;->b:Lcom/google/android/gms/ads/y/c;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/y/c;->b(Lcom/google/android/gms/ads/y/b;)V

    return-void
.end method

.method public final p0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/y/b;

    new-instance v1, Lcom/google/android/gms/internal/ads/c2;

    invoke-direct {v1, p1, p3}, Lcom/google/android/gms/internal/ads/c2;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/y/b;-><init>(Lcom/google/android/gms/internal/ads/c2;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/m03;->f()Ljava/util/WeakHashMap;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ni;->b:Lcom/google/android/gms/ads/y/c;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/y/c;->b(Lcom/google/android/gms/ads/y/b;)V

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ni;->b:Lcom/google/android/gms/ads/y/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/y/c;->a(Ljava/lang/String;)V

    return-void
.end method

.class public final Lcom/google/android/gms/internal/ads/d70;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/sl1;

.field private final c:Landroid/os/Bundle;

.field private final d:Lcom/google/android/gms/internal/ads/nl1;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/c70;Lcom/google/android/gms/internal/ads/b70;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/c70;->f(Lcom/google/android/gms/internal/ads/c70;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/d70;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/c70;->g(Lcom/google/android/gms/internal/ads/c70;)Lcom/google/android/gms/internal/ads/sl1;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/d70;->b:Lcom/google/android/gms/internal/ads/sl1;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/c70;->h(Lcom/google/android/gms/internal/ads/c70;)Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/d70;->c:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/c70;->i(Lcom/google/android/gms/internal/ads/c70;)Lcom/google/android/gms/internal/ads/nl1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d70;->d:Lcom/google/android/gms/internal/ads/nl1;

    return-void
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/ads/c70;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/c70;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/c70;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/d70;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/c70;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/c70;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/d70;->b:Lcom/google/android/gms/internal/ads/sl1;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/c70;->b(Lcom/google/android/gms/internal/ads/sl1;)Lcom/google/android/gms/internal/ads/c70;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/d70;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/c70;->c(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/c70;

    return-object v0
.end method

.method final b()Lcom/google/android/gms/internal/ads/sl1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d70;->b:Lcom/google/android/gms/internal/ads/sl1;

    return-object v0
.end method

.method final c()Lcom/google/android/gms/internal/ads/nl1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d70;->d:Lcom/google/android/gms/internal/ads/nl1;

    return-object v0
.end method

.method final d()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d70;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method final e(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/d70;->a:Landroid/content/Context;

    return-object p1
.end method

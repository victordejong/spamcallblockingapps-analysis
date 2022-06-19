.class final Lcom/google/android/gms/internal/ads/bx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/qs0;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/google/android/gms/internal/ads/aa;

.field final synthetic c:Lcom/google/android/gms/internal/ads/sx;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/sx;Lcom/google/android/gms/internal/ads/gw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bx;->c:Lcom/google/android/gms/internal/ads/sx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic N(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/qs0;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bx;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final bridge synthetic a(Lcom/google/android/gms/internal/ads/aa;)Lcom/google/android/gms/internal/ads/qs0;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bx;->b:Lcom/google/android/gms/internal/ads/aa;

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/rs0;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bx;->a:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jh2;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bx;->b:Lcom/google/android/gms/internal/ads/aa;

    const-class v1, Lcom/google/android/gms/internal/ads/aa;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jh2;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/fx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bx;->c:Lcom/google/android/gms/internal/ads/sx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bx;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bx;->b:Lcom/google/android/gms/internal/ads/aa;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/fx;-><init>(Lcom/google/android/gms/internal/ads/sx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/aa;Lcom/google/android/gms/internal/ads/gw;)V

    return-object v0
.end method

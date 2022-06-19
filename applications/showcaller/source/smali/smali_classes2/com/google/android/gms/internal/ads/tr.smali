.class final Lcom/google/android/gms/internal/ads/tr;
.super Lcom/google/android/gms/internal/ads/vr;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/vr<",
        "Lcom/google/android/gms/internal/ads/fe0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/gms/internal/ads/s70;

.field final synthetic e:Lcom/google/android/gms/internal/ads/ur;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ur;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tr;->e:Lcom/google/android/gms/internal/ads/ur;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/tr;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/tr;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/tr;->d:Lcom/google/android/gms/internal/ads/s70;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/vr;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tr;->b:Landroid/content/Context;

    const-string v1, "rewarded"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ur;->h(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/mv;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/mv;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tr;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tr;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tr;->d:Lcom/google/android/gms/internal/ads/s70;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/se0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;)Lcom/google/android/gms/internal/ads/fe0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/dt;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tr;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tr;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tr;->d:Lcom/google/android/gms/internal/ads/s70;

    const v3, 0xcbe6bb0

    .line 2
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dt;->h3(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/s70;I)Lcom/google/android/gms/internal/ads/fe0;

    move-result-object p1

    return-object p1
.end method

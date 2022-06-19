.class final Lcom/google/android/gms/internal/ads/yw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/mh1;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/google/android/gms/internal/ads/zzyx;

.field final synthetic d:Lcom/google/android/gms/internal/ads/sx;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/sx;Lcom/google/android/gms/internal/ads/gw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yw;->d:Lcom/google/android/gms/internal/ads/sx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/mh1;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yw;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final bridge synthetic b(Lcom/google/android/gms/internal/ads/zzyx;)Lcom/google/android/gms/internal/ads/mh1;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yw;->c:Lcom/google/android/gms/internal/ads/zzyx;

    return-object p0
.end method

.method public final bridge synthetic x(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/mh1;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yw;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/nh1;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yw;->a:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jh2;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yw;->b:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jh2;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yw;->c:Lcom/google/android/gms/internal/ads/zzyx;

    const-class v1, Lcom/google/android/gms/internal/ads/zzyx;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jh2;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yw;->d:Lcom/google/android/gms/internal/ads/sx;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/yw;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/yw;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/yw;->c:Lcom/google/android/gms/internal/ads/zzyx;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zw;-><init>(Lcom/google/android/gms/internal/ads/sx;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyx;Lcom/google/android/gms/internal/ads/gw;)V

    return-object v0
.end method

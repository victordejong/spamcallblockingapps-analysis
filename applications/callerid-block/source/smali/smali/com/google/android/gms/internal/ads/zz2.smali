.class final Lcom/google/android/gms/internal/ads/zz2;
.super Lcom/google/android/gms/internal/ads/l03;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/l03<",
        "Lcom/google/android/gms/internal/ads/ln;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/google/android/gms/internal/ads/he;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/k03;Landroid/content/Context;Lcom/google/android/gms/internal/ads/he;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zz2;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zz2;->c:Lcom/google/android/gms/internal/ads/he;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/l03;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zz2;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zz2;->b:Landroid/content/Context;

    const-string v2, "com.google.android.gms.ads.DynamiteSignalGeneratorCreatorImpl"

    sget-object v3, Lcom/google/android/gms/internal/ads/yz2;->a:Lcom/google/android/gms/internal/ads/ro;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/so;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ro;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/on;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zz2;->c:Lcom/google/android/gms/internal/ads/he;

    const v3, 0xc91ed10

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/on;->w0(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/he;I)Lcom/google/android/gms/internal/ads/ln;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbbn; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/h0;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zz2;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zz2;->c:Lcom/google/android/gms/internal/ads/he;

    const v2, 0xc91ed10

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/h0;->h1(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/he;I)Lcom/google/android/gms/internal/ads/ln;

    move-result-object p1

    return-object p1
.end method

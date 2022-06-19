.class final Lcom/google/android/gms/internal/ads/ejm;
.super Lcom/google/android/gms/internal/ads/ejy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ejy<",
        "Lcom/google/android/gms/internal/ads/xo;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/mm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ejj;Landroid/content/Context;Lcom/google/android/gms/internal/ads/mm;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ejm;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ejm;->b:Lcom/google/android/gms/internal/ads/mm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ejy;-><init>()V

    return-void
.end method

.method private final c()Lcom/google/android/gms/internal/ads/xo;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ejm;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ejm;->a:Landroid/content/Context;

    const-string v2, "com.google.android.gms.ads.DynamiteSignalGeneratorCreatorImpl"

    sget-object v3, Lcom/google/android/gms/internal/ads/ejp;->a:Lcom/google/android/gms/internal/ads/zb;

    .line 4
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/yz;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zb;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/xt;

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ejm;->b:Lcom/google/android/gms/internal/ads/mm;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/xt;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/mm;)Lcom/google/android/gms/internal/ads/xo;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbap; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/elf;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ejm;->a:Landroid/content/Context;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ejm;->b:Lcom/google/android/gms/internal/ads/mm;

    const v2, 0xc365f90

    .line 13
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/elf;->zzb(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/mm;I)Lcom/google/android/gms/internal/ads/xo;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ejm;->c()Lcom/google/android/gms/internal/ads/xo;

    move-result-object v0

    return-object v0
.end method

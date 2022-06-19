.class final Lcom/google/android/gms/internal/ads/eju;
.super Lcom/google/android/gms/internal/ads/ejy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ejy<",
        "Lcom/google/android/gms/internal/ads/eln;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/ejj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ejj;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eju;->b:Lcom/google/android/gms/internal/ads/ejj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/eju;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ejy;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eju;->a:Landroid/content/Context;

    const-string v1, "mobile_ads_settings"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ejj;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/l;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/l;-><init>()V

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/elf;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eju;->a:Landroid/content/Context;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    const v1, 0xc365f90

    .line 12
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/elf;->zza(Lcom/google/android/gms/dynamic/b;I)Lcom/google/android/gms/internal/ads/eln;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eju;->b:Lcom/google/android/gms/internal/ads/ejj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ejj;->c(Lcom/google/android/gms/internal/ads/ejj;)Lcom/google/android/gms/internal/ads/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eju;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/c;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/eln;

    move-result-object v0

    return-object v0
.end method

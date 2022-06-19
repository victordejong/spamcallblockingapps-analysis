.class public final Lcom/google/android/gms/internal/ads/ejn;
.super Lcom/google/android/gms/internal/ads/ejy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ejy<",
        "Lcom/google/android/gms/internal/ads/qz;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/ejj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ejj;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ejn;->b:Lcom/google/android/gms/internal/ads/ejj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ejn;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ejy;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ejn;->a:Landroid/app/Activity;

    const-string v1, "ad_overlay"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ejj;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/elf;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ejn;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/elf;->zzb(Lcom/google/android/gms/dynamic/b;)Lcom/google/android/gms/internal/ads/qz;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ejn;->b:Lcom/google/android/gms/internal/ads/ejj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ejj;->g(Lcom/google/android/gms/internal/ads/ejj;)Lcom/google/android/gms/internal/ads/qx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ejn;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/qx;->a(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/qz;

    move-result-object v0

    return-object v0
.end method

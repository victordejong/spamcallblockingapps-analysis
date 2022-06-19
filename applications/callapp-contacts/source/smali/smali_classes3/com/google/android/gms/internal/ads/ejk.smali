.class final Lcom/google/android/gms/internal/ads/ejk;
.super Lcom/google/android/gms/internal/ads/ejy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ejy<",
        "Lcom/google/android/gms/internal/ads/uq;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/mm;

.field private final synthetic d:Lcom/google/android/gms/internal/ads/ejj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ejj;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ejk;->d:Lcom/google/android/gms/internal/ads/ejj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ejk;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ejk;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ejk;->c:Lcom/google/android/gms/internal/ads/mm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ejy;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ejk;->a:Landroid/content/Context;

    const-string v1, "rewarded"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ejj;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/p;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/p;-><init>()V

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/elf;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ejk;->a:Landroid/content/Context;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ejk;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ejk;->c:Lcom/google/android/gms/internal/ads/mm;

    const v3, 0xc365f90

    .line 12
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/elf;->zzb(Lcom/google/android/gms/dynamic/b;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mm;I)Lcom/google/android/gms/internal/ads/uq;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ejk;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ejk;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ejk;->c:Lcom/google/android/gms/internal/ads/mm;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/vg;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mm;)Lcom/google/android/gms/internal/ads/uq;

    move-result-object v0

    return-object v0
.end method

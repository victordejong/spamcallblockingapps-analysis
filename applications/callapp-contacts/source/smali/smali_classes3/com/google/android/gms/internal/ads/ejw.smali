.class final Lcom/google/android/gms/internal/ads/ejw;
.super Lcom/google/android/gms/internal/ads/ejy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ejy<",
        "Lcom/google/android/gms/internal/ads/ed;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Landroid/view/View;

.field private final synthetic b:Ljava/util/HashMap;

.field private final synthetic c:Ljava/util/HashMap;

.field private final synthetic d:Lcom/google/android/gms/internal/ads/ejj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ejj;Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ejw;->d:Lcom/google/android/gms/internal/ads/ejj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ejw;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ejw;->b:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ejw;->c:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ejy;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ejw;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "native_ad_view_holder_delegate"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ejj;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/m;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/m;-><init>()V

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/elf;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ejw;->a:Landroid/view/View;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ejw;->b:Ljava/util/HashMap;

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ejw;->c:Ljava/util/HashMap;

    .line 13
    invoke-static {v2}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v2

    .line 14
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/elf;->zza(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/dynamic/b;)Lcom/google/android/gms/internal/ads/ed;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ejw;->d:Lcom/google/android/gms/internal/ads/ejj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ejj;->e(Lcom/google/android/gms/internal/ads/ejj;)Lcom/google/android/gms/internal/ads/ga;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ejw;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ejw;->b:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ejw;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/ga;->a(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/google/android/gms/internal/ads/ed;

    move-result-object v0

    return-object v0
.end method

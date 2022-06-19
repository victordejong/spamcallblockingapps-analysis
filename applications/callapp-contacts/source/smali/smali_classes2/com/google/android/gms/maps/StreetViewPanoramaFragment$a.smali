.class final Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/a/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/StreetViewPanoramaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/app/Fragment;

.field private final b:Lcom/google/android/gms/maps/a/f;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Lcom/google/android/gms/maps/a/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/maps/a/f;

    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;->b:Lcom/google/android/gms/maps/a/f;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Fragment;

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;->a:Landroid/app/Fragment;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 24
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    invoke-static {p3, v0}, Lcom/google/android/gms/maps/a/aa;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;->b:Lcom/google/android/gms/maps/a/f;

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object p2

    .line 28
    invoke-interface {v1, p1, p2, v0}, Lcom/google/android/gms/maps/a/f;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/dynamic/b;Landroid/os/Bundle;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    .line 29
    invoke-static {v0, p3}, Lcom/google/android/gms/maps/a/aa;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    :catch_0
    move-exception p1

    .line 32
    new-instance p2, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public final a()V
    .locals 2

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;->b:Lcom/google/android/gms/maps/a/f;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/f;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 37
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    .line 5
    :try_start_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-static {p3, p2}, Lcom/google/android/gms/maps/a/aa;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;->b:Lcom/google/android/gms/maps/a/f;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/maps/a/f;->a(Lcom/google/android/gms/dynamic/b;Landroid/os/Bundle;)V

    .line 8
    invoke-static {p2, p3}, Lcom/google/android/gms/maps/a/aa;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "StreetViewPanoramaOptions"

    .line 12
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 13
    invoke-static {p1, v1}, Lcom/google/android/gms/maps/a/aa;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 14
    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;->a:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 18
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/maps/a/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;->b:Lcom/google/android/gms/maps/a/f;

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/f;->a(Landroid/os/Bundle;)V

    .line 20
    invoke-static {v1, p1}, Lcom/google/android/gms/maps/a/aa;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 23
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/maps/f;)V
    .locals 2

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;->b:Lcom/google/android/gms/maps/a/f;

    new-instance v1, Lcom/google/android/gms/maps/o;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/o;-><init>(Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;Lcom/google/android/gms/maps/f;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/f;->a(Lcom/google/android/gms/maps/a/s;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 72
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final b()V
    .locals 2

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;->b:Lcom/google/android/gms/maps/a/f;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/f;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 41
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2

    .line 62
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    invoke-static {p1, v0}, Lcom/google/android/gms/maps/a/aa;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 64
    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;->b:Lcom/google/android/gms/maps/a/f;

    invoke-interface {v1, v0}, Lcom/google/android/gms/maps/a/f;->b(Landroid/os/Bundle;)V

    .line 65
    invoke-static {v0, p1}, Lcom/google/android/gms/maps/a/aa;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 68
    new-instance v0, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final c()V
    .locals 2

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;->b:Lcom/google/android/gms/maps/a/f;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/f;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 45
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final d()V
    .locals 2

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;->b:Lcom/google/android/gms/maps/a/f;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/f;->g()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 49
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final e()V
    .locals 2

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;->b:Lcom/google/android/gms/maps/a/f;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/f;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 53
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final f()V
    .locals 2

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;->b:Lcom/google/android/gms/maps/a/f;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/f;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 57
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final g()V
    .locals 2

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;->b:Lcom/google/android/gms/maps/a/f;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/f;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

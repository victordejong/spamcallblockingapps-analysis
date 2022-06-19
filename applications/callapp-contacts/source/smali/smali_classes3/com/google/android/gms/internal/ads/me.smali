.class public final Lcom/google/android/gms/internal/ads/me;
.super Lcom/google/android/gms/internal/ads/afj;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/measurement/a/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/afj;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/me;->a:Lcom/google/android/gms/measurement/a/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->a:Lcom/google/android/gms/measurement/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/a/a;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->a:Lcom/google/android/gms/measurement/a/a;

    iget-object v0, v0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/ak;

    .line 3001
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ak;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->a:Lcom/google/android/gms/measurement/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->a:Lcom/google/android/gms/measurement/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/a/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->a:Lcom/google/android/gms/measurement/a/a;

    iget-object v0, v0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/ak;

    const/4 v1, 0x0

    .line 1001
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/ak;->a(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->a:Lcom/google/android/gms/measurement/a/a;

    if-eqz p1, :cond_0

    .line 30
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 31
    :goto_0
    iget-object v0, v0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/ak;

    .line 10001
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/ak;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->a:Lcom/google/android/gms/measurement/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/dynamic/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->a:Lcom/google/android/gms/measurement/a/a;

    if-eqz p3, :cond_0

    .line 10
    invoke-static {p3}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 11
    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->a:Lcom/google/android/gms/measurement/a/a;

    iget-object v0, v0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/ak;

    const/4 v1, 0x1

    .line 2001
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/ak;->a(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->a:Lcom/google/android/gms/measurement/a/a;

    iget-object v0, v0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/ak;

    .line 4001
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ak;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->a:Lcom/google/android/gms/measurement/a/a;

    iget-object v0, v0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/ak;

    .line 6001
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/ak;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->a:Lcom/google/android/gms/measurement/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/a/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final c()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->a:Lcom/google/android/gms/measurement/a/a;

    iget-object v0, v0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/ak;

    .line 5001
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ak;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->a:Lcom/google/android/gms/measurement/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/a/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->a:Lcom/google/android/gms/measurement/a/a;

    iget-object v0, v0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/ak;

    .line 7001
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/ak;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->a:Lcom/google/android/gms/measurement/a/a;

    iget-object v0, v0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/ak;

    .line 11001
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ak;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->a:Lcom/google/android/gms/measurement/a/a;

    iget-object v0, v0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/ak;

    .line 8001
    new-instance v1, Lcom/google/android/gms/internal/measurement/h;

    .line 9001
    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/measurement/h;-><init>(Lcom/google/android/gms/internal/measurement/ak;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ak;->a(Lcom/google/android/gms/internal/measurement/aa;)V

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->a:Lcom/google/android/gms/measurement/a/a;

    iget-object v0, v0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/ak;

    .line 12001
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ak;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->a:Lcom/google/android/gms/measurement/a/a;

    .line 13000
    iget-object v0, v0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/ak;

    .line 14000
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ak;->d:Ljava/lang/String;

    return-object v0
.end method

.class public final Lcom/google/android/gms/internal/ads/bgx;
.super Lcom/google/android/gms/internal/ads/fw;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ads/bcf;

.field private final c:Lcom/google/android/gms/internal/ads/bcr;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/bcf;Lcom/google/android/gms/internal/ads/bcr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fw;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bgx;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bgx;->b:Lcom/google/android/gms/internal/ads/bcf;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bgx;->c:Lcom/google/android/gms/internal/ads/bcr;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->c:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->b:Lcom/google/android/gms/internal/ads/bcf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bcf;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/elu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->b:Lcom/google/android/gms/internal/ads/bcf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bcf;->a(Lcom/google/android/gms/internal/ads/elu;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ely;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->b:Lcom/google/android/gms/internal/ads/bcf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bcf;->a(Lcom/google/android/gms/internal/ads/ely;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/emd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->b:Lcom/google/android/gms/internal/ads/bcf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bcf;->a(Lcom/google/android/gms/internal/ads/emd;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/fs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->b:Lcom/google/android/gms/internal/ads/bcf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bcf;->a(Lcom/google/android/gms/internal/ads/fs;)V

    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->c:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/os/Bundle;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->b:Lcom/google/android/gms/internal/ads/bcf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bcf;->b(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->c:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->b:Lcom/google/android/gms/internal/ads/bcf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bcf;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public final d()Lcom/google/android/gms/internal/ads/dr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->c:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->r()Lcom/google/android/gms/internal/ads/dr;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->c:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->l()Ljava/lang/String;

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

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->c:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->c:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->q()D

    move-result-wide v0

    return-wide v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->c:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->c:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/internal/ads/emk;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->c:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->b()Lcom/google/android/gms/internal/ads/emk;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final l()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->b:Lcom/google/android/gms/internal/ads/bcf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/anp;->a()V

    return-void
.end method

.method public final m()Lcom/google/android/gms/internal/ads/dj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->c:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->c()Lcom/google/android/gms/internal/ads/dj;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lcom/google/android/gms/dynamic/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->b:Lcom/google/android/gms/internal/ads/bcf;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    return-object v0
.end method

.method public final o()Lcom/google/android/gms/dynamic/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->c:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->n()Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    return-object v0
.end method

.method public final p()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->c:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->k()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final q()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->b:Lcom/google/android/gms/internal/ads/bcf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcf;->c()V

    return-void
.end method

.method public final r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bgx;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->c:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->h()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 11
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final s()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->c:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->c:Lcom/google/android/gms/internal/ads/bcr;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->i()Lcom/google/android/gms/internal/ads/ene;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final t()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->b:Lcom/google/android/gms/internal/ads/bcf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcf;->d()V

    return-void
.end method

.method public final u()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->b:Lcom/google/android/gms/internal/ads/bcf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcf;->e()V

    return-void
.end method

.method public final v()Lcom/google/android/gms/internal/ads/dq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->b:Lcom/google/android/gms/internal/ads/bcf;

    .line 1247
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bcf;->q:Lcom/google/android/gms/internal/ads/bcm;

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcm;->a()Lcom/google/android/gms/internal/ads/dq;

    move-result-object v0

    return-object v0
.end method

.method public final w()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->b:Lcom/google/android/gms/internal/ads/bcf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcf;->f()Z

    move-result v0

    return v0
.end method

.method public final x()Lcom/google/android/gms/internal/ads/emj;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->em:Lcom/google/android/gms/internal/ads/af;

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgx;->b:Lcom/google/android/gms/internal/ads/bcf;

    .line 2013
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/anp;->l:Lcom/google/android/gms/internal/ads/arf;

    return-object v0
.end method

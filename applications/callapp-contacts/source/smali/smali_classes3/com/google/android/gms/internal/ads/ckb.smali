.class public final Lcom/google/android/gms/internal/ads/ckb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;
.implements Lcom/google/android/gms/internal/ads/arp;
.implements Lcom/google/android/gms/internal/ads/atk;
.implements Lcom/google/android/gms/internal/ads/atu;
.implements Lcom/google/android/gms/internal/ads/cmi;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/egh;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/egi;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/atk;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/ads/internal/overlay/zzp;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/emd;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/ads/cqs;

.field private final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/egc;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/google/android/gms/internal/ads/ckb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cqs;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ckb;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ckb;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ckb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ckb;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ckb;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ckb;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ckb;->h:Lcom/google/android/gms/internal/ads/ckb;

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ckb;->f:Lcom/google/android/gms/internal/ads/cqs;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/ckb;)Lcom/google/android/gms/internal/ads/ckb;
    .locals 2

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/ckb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ckb;->f:Lcom/google/android/gms/internal/ads/cqs;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ckb;-><init>(Lcom/google/android/gms/internal/ads/cqs;)V

    .line 12
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/ckb;->a(Lcom/google/android/gms/internal/ads/cmi;)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    move-object v0, p0

    .line 45
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ckb;->h:Lcom/google/android/gms/internal/ads/ckb;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ckb;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/ckm;->a:Lcom/google/android/gms/internal/ads/cma;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/clw;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cma;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/cmi;)V
    .locals 0

    .line 65
    check-cast p1, Lcom/google/android/gms/internal/ads/ckb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ckb;->h:Lcom/google/android/gms/internal/ads/ckb;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/egb;)V
    .locals 2

    move-object v0, p0

    .line 30
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ckb;->h:Lcom/google/android/gms/internal/ads/ckb;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ckb;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/ckd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/ckd;-><init>(Lcom/google/android/gms/internal/ads/egb;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/clw;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cma;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/egc;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ckb;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 3

    move-object v0, p0

    .line 34
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ckb;->h:Lcom/google/android/gms/internal/ads/ckb;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 36
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ckb;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/gms/internal/ads/cki;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/cki;-><init>(Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/clw;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cma;)V

    .line 37
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ckb;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/ckh;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/ckh;-><init>(Lcom/google/android/gms/internal/ads/zzvh;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/clw;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cma;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzvv;)V
    .locals 2

    move-object v0, p0

    .line 26
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ckb;->h:Lcom/google/android/gms/internal/ads/ckb;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ckb;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/cke;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/cke;-><init>(Lcom/google/android/gms/internal/ads/zzvv;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/clw;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cma;)V

    return-void
.end method

.method public final b()V
    .locals 3

    move-object v0, p0

    .line 39
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ckb;->h:Lcom/google/android/gms/internal/ads/ckb;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 41
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ckb;->f:Lcom/google/android/gms/internal/ads/cqs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cqs;->a()V

    .line 42
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ckb;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/ads/ckk;->a:Lcom/google/android/gms/internal/ads/cma;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/clw;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cma;)V

    .line 43
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ckb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/ckj;->a:Lcom/google/android/gms/internal/ads/cma;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/clw;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cma;)V

    return-void
.end method

.method public final onPause()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 0

    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 2

    move-object v0, p0

    .line 59
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ckb;->h:Lcom/google/android/gms/internal/ads/ckb;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ckb;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/ckf;->a:Lcom/google/android/gms/internal/ads/cma;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/clw;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cma;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .locals 2

    move-object v0, p0

    .line 55
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ckb;->h:Lcom/google/android/gms/internal/ads/ckb;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ckb;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/ckg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/ckg;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzl;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/clw;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cma;)V

    return-void
.end method

.method public final zzvz()V
    .locals 3

    move-object v0, p0

    .line 49
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ckb;->h:Lcom/google/android/gms/internal/ads/ckb;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 51
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ckb;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/ads/ckl;->a:Lcom/google/android/gms/internal/ads/cma;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/clw;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cma;)V

    .line 52
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ckb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/ads/cko;->a:Lcom/google/android/gms/internal/ads/cma;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/clw;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cma;)V

    .line 53
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ckb;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/ckn;->a:Lcom/google/android/gms/internal/ads/cma;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/clw;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cma;)V

    return-void
.end method

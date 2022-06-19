.class public final Lcom/google/android/gms/internal/ads/wg1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/v70;
.implements Lcom/google/android/gms/internal/ads/r90;
.implements Lcom/google/android/gms/internal/ads/ni1;
.implements Lcom/google/android/gms/ads/internal/overlay/q;
.implements Lcom/google/android/gms/internal/ads/ca0;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/zm1;

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/vu2;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/wu2;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zu2;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/r90;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/ads/internal/overlay/q;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/g1;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/android/gms/internal/ads/wg1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zm1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->f:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->h:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->i:Lcom/google/android/gms/internal/ads/wg1;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wg1;->b:Lcom/google/android/gms/internal/ads/zm1;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/wg1;)Lcom/google/android/gms/internal/ads/wg1;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/wg1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wg1;->b:Lcom/google/android/gms/internal/ads/zm1;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/wg1;-><init>(Lcom/google/android/gms/internal/ads/zm1;)V

    iput-object p0, v0, Lcom/google/android/gms/internal/ads/wg1;->i:Lcom/google/android/gms/internal/ads/wg1;

    return-object v0
.end method


# virtual methods
.method public final K5()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->i:Lcom/google/android/gms/internal/ads/wg1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wg1;->K5()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->g:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/mg1;->a:Lcom/google/android/gms/internal/ads/di1;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ei1;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/di1;)V

    return-void
.end method

.method public final M1()V
    .locals 0

    return-void
.end method

.method public final S()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->i:Lcom/google/android/gms/internal/ads/wg1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wg1;->S()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/sg1;->a:Lcom/google/android/gms/internal/ads/di1;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ei1;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/di1;)V

    return-void
.end method

.method public final T4()V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/vu2;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zu2;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/r90;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/ads/internal/overlay/q;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/g1;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final f0(Lcom/google/android/gms/internal/ads/zzym;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->i:Lcom/google/android/gms/internal/ads/wg1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wg1;->f0(Lcom/google/android/gms/internal/ads/zzym;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/og1;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/og1;-><init>(Lcom/google/android/gms/internal/ads/zzym;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ei1;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/di1;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/pg1;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/pg1;-><init>(Lcom/google/android/gms/internal/ads/zzym;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ei1;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/di1;)V

    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/su2;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->i:Lcom/google/android/gms/internal/ads/wg1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wg1;->g(Lcom/google/android/gms/internal/ads/su2;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/ng1;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/ng1;-><init>(Lcom/google/android/gms/internal/ads/su2;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ei1;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/di1;)V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->i:Lcom/google/android/gms/internal/ads/wg1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wg1;->h()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->b:Lcom/google/android/gms/internal/ads/zm1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zm1;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/qg1;->a:Lcom/google/android/gms/internal/ads/di1;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ei1;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/di1;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/rg1;->a:Lcom/google/android/gms/internal/ads/di1;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ei1;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/di1;)V

    return-void
.end method

.method public final h0()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->i:Lcom/google/android/gms/internal/ads/wg1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wg1;->h0()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->g:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/tg1;->a:Lcom/google/android/gms/internal/ads/di1;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ei1;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/di1;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/ug1;->a:Lcom/google/android/gms/internal/ads/di1;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ei1;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/di1;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/vg1;->a:Lcom/google/android/gms/internal/ads/di1;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ei1;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/di1;)V

    return-void
.end method

.method public final i(Lcom/google/android/gms/internal/ads/wu2;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final k(Lcom/google/android/gms/internal/ads/zzyz;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->i:Lcom/google/android/gms/internal/ads/wg1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wg1;->k(Lcom/google/android/gms/internal/ads/zzyz;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->h:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/kg1;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/kg1;-><init>(Lcom/google/android/gms/internal/ads/zzyz;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ei1;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/di1;)V

    return-void
.end method

.method public final m(Lcom/google/android/gms/internal/ads/ni1;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/wg1;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wg1;->i:Lcom/google/android/gms/internal/ads/wg1;

    return-void
.end method

.method public final r1(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->i:Lcom/google/android/gms/internal/ads/wg1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/wg1;->r1(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wg1;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/lg1;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/lg1;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ei1;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/di1;)V

    return-void
.end method

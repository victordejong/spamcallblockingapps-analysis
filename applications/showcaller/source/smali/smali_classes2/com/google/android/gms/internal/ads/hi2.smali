.class public final Lcom/google/android/gms/internal/ads/hi2;
.super Lcom/google/android/gms/internal/ads/hr2;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/n41;
.implements Lcom/google/android/gms/internal/ads/b31;
.implements Lcom/google/android/gms/internal/ads/y21;
.implements Lcom/google/android/gms/internal/ads/o31;
.implements Lcom/google/android/gms/internal/ads/k51;
.implements Lcom/google/android/gms/internal/ads/pg2;
.implements Lcom/google/android/gms/internal/ads/qa1;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/el2;

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/hr2;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/me0;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/ie0;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/ud0;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/oe0;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/pd0;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/cu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/el2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hr2;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->f:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->h:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->i:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->j:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->k:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hi2;->d:Lcom/google/android/gms/internal/ads/el2;

    return-void
.end method


# virtual methods
.method public final H(Lcom/google/android/gms/internal/ads/cu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final I(Lcom/google/android/gms/internal/ads/ud0;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final J(Lcom/google/android/gms/internal/ads/oe0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final N(Lcom/google/android/gms/internal/ads/pd0;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final O(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzbcz;->d:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hi2;->f:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/gms/internal/ads/yh2;

    .line 2
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/yh2;-><init>(Lcom/google/android/gms/internal/ads/zzbcz;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/gg2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/fg2;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/hi2;->f:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zh2;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zh2;-><init>(I)V

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/gg2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/fg2;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/hi2;->h:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/ai2;

    .line 4
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/ai2;-><init>(I)V

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/gg2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/fg2;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->g:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/xh2;->a:Lcom/google/android/gms/internal/ads/fg2;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/gg2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/fg2;)V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/kh2;->a:Lcom/google/android/gms/internal/ads/fg2;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/gg2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/fg2;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->h:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/vh2;->a:Lcom/google/android/gms/internal/ads/fg2;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/gg2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/fg2;)V

    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->g:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/bi2;->a:Lcom/google/android/gms/internal/ads/fg2;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/gg2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/fg2;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->h:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/ci2;->a:Lcom/google/android/gms/internal/ads/fg2;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/gg2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/fg2;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->g:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/di2;->a:Lcom/google/android/gms/internal/ads/fg2;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/gg2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/fg2;)V

    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->h:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/lh2;->a:Lcom/google/android/gms/internal/ads/fg2;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/gg2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/fg2;)V

    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->h:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/mh2;->a:Lcom/google/android/gms/internal/ads/fg2;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/gg2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/fg2;)V

    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->h:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/rh2;->a:Lcom/google/android/gms/internal/ads/fg2;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/gg2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/fg2;)V

    return-void
.end method

.method public final l(Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/sh2;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/sh2;-><init>(Lcom/google/android/gms/internal/ads/zzbcz;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/gg2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/fg2;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/th2;

    .line 2
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/th2;-><init>(Lcom/google/android/gms/internal/ads/zzbcz;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/gg2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/fg2;)V

    return-void
.end method

.method public final n(Lcom/google/android/gms/internal/ads/nd0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/nh2;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/nh2;-><init>(Lcom/google/android/gms/internal/ads/nd0;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/gg2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/fg2;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->i:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/oh2;

    .line 2
    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/oh2;-><init>(Lcom/google/android/gms/internal/ads/nd0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/gg2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/fg2;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->h:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/ph2;

    .line 3
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/ph2;-><init>(Lcom/google/android/gms/internal/ads/nd0;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/gg2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/fg2;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->j:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/qh2;

    .line 4
    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/qh2;-><init>(Lcom/google/android/gms/internal/ads/nd0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/gg2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/fg2;)V

    return-void
.end method

.method public final p(Lcom/google/android/gms/internal/ads/zzbdn;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->k:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/wh2;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/wh2;-><init>(Lcom/google/android/gms/internal/ads/zzbdn;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/gg2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/fg2;)V

    return-void
.end method

.method public final q(Lcom/google/android/gms/internal/ads/pg2;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/uh2;->a:Lcom/google/android/gms/internal/ads/fg2;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/gg2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/fg2;)V

    return-void
.end method

.method public final u(Lcom/google/android/gms/internal/ads/me0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final v(Lcom/google/android/gms/internal/ads/ie0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final y(Lcom/google/android/gms/internal/ads/hr2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzi()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->d:Lcom/google/android/gms/internal/ads/el2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/el2;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->g:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/fi2;->a:Lcom/google/android/gms/internal/ads/fg2;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/gg2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/fg2;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hi2;->h:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/gi2;->a:Lcom/google/android/gms/internal/ads/fg2;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/gg2;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/fg2;)V

    return-void
.end method

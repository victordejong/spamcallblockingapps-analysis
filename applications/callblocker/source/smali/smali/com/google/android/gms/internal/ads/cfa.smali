.class public final Lcom/google/android/gms/internal/ads/cfa;
.super Lcom/google/android/gms/ads/reward/a;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/app;
.implements Lcom/google/android/gms/internal/ads/apv;
.implements Lcom/google/android/gms/internal/ads/aqe;
.implements Lcom/google/android/gms/internal/ads/arg;
.implements Lcom/google/android/gms/internal/ads/arw;
.implements Lcom/google/android/gms/internal/ads/ces;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cik;

.field private final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/ads/reward/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/internal/ads/sa;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/internal/ads/ry;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/internal/ads/rb;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/internal/ads/sd;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/internal/ads/qw;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/internal/ads/eau;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/android/gms/internal/ads/cfa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cik;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/reward/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->i:Lcom/google/android/gms/internal/ads/cfa;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cfa;->a:Lcom/google/android/gms/internal/ads/cik;

    .line 11
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/cfa;)Lcom/google/android/gms/internal/ads/cfa;
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/cfa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cfa;->a:Lcom/google/android/gms/internal/ads/cik;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cfa;-><init>(Lcom/google/android/gms/internal/ads/cik;)V

    .line 13
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/cfa;->a(Lcom/google/android/gms/internal/ads/ces;)V

    .line 14
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 29
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->i:Lcom/google/android/gms/internal/ads/cfa;

    if-eqz v0, :cond_0

    .line 30
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cfa;->i:Lcom/google/android/gms/internal/ads/cfa;

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/cfe;->a:Lcom/google/android/gms/internal/ads/cek;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cel;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cek;)V

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/cfd;->a:Lcom/google/android/gms/internal/ads/cek;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cel;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cek;)V

    .line 33
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 34
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->i:Lcom/google/android/gms/internal/ads/cfa;

    if-eqz v0, :cond_0

    .line 35
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cfa;->i:Lcom/google/android/gms/internal/ads/cfa;

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/cfo;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/cfo;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cel;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cek;)V

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/cfn;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/cfn;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cel;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cek;)V

    .line 38
    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/reward/a;)V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ces;)V
    .locals 0

    .prologue
    .line 82
    check-cast p1, Lcom/google/android/gms/internal/ads/cfa;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cfa;->i:Lcom/google/android/gms/internal/ads/cfa;

    .line 83
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dyf;)V
    .locals 2

    .prologue
    .line 78
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->i:Lcom/google/android/gms/internal/ads/cfa;

    if-eqz v0, :cond_0

    .line 79
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cfa;->i:Lcom/google/android/gms/internal/ads/cfa;

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->h:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/cfl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/cfl;-><init>(Lcom/google/android/gms/internal/ads/dyf;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cel;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cek;)V

    .line 81
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eau;)V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/qr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->i:Lcom/google/android/gms/internal/ads/cfa;

    if-eqz v0, :cond_0

    .line 59
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cfa;->i:Lcom/google/android/gms/internal/ads/cfa;

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/cfg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/cfg;-><init>(Lcom/google/android/gms/internal/ads/qr;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cel;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cek;)V

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->f:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/cff;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/cff;-><init>(Lcom/google/android/gms/internal/ads/qr;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cel;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cek;)V

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/cfi;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/cfi;-><init>(Lcom/google/android/gms/internal/ads/qr;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cel;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cek;)V

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->g:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/cfh;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/cfh;-><init>(Lcom/google/android/gms/internal/ads/qr;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cel;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cek;)V

    .line 64
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/qw;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/rb;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ry;)V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/sa;)V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 16
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/sd;)V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 20
    return-void
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 69
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->i:Lcom/google/android/gms/internal/ads/cfa;

    if-eqz v0, :cond_0

    .line 70
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cfa;->i:Lcom/google/android/gms/internal/ads/cfa;

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/cfj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/cfj;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cel;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cek;)V

    .line 72
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 39
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->i:Lcom/google/android/gms/internal/ads/cfa;

    if-eqz v0, :cond_0

    .line 40
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cfa;->i:Lcom/google/android/gms/internal/ads/cfa;

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/cfq;->a:Lcom/google/android/gms/internal/ads/cek;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cel;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cek;)V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/cfp;->a:Lcom/google/android/gms/internal/ads/cek;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cel;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cek;)V

    .line 43
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 44
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->i:Lcom/google/android/gms/internal/ads/cfa;

    if-eqz v0, :cond_0

    .line 45
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cfa;->i:Lcom/google/android/gms/internal/ads/cfa;

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->a:Lcom/google/android/gms/internal/ads/cik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cik;->a()V

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/cfs;->a:Lcom/google/android/gms/internal/ads/cek;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cel;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cek;)V

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/cfr;->a:Lcom/google/android/gms/internal/ads/cek;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cel;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cek;)V

    .line 49
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 50
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->i:Lcom/google/android/gms/internal/ads/cfa;

    if-eqz v0, :cond_0

    .line 51
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cfa;->i:Lcom/google/android/gms/internal/ads/cfa;

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/cfu;->a:Lcom/google/android/gms/internal/ads/cek;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cel;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cek;)V

    .line 53
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 54
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->i:Lcom/google/android/gms/internal/ads/cfa;

    if-eqz v0, :cond_0

    .line 55
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cfa;->i:Lcom/google/android/gms/internal/ads/cfa;

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/cft;->a:Lcom/google/android/gms/internal/ads/cek;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cel;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cek;)V

    .line 57
    return-void
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 65
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->i:Lcom/google/android/gms/internal/ads/cfa;

    if-eqz v0, :cond_0

    .line 66
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cfa;->i:Lcom/google/android/gms/internal/ads/cfa;

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/cfk;->a:Lcom/google/android/gms/internal/ads/cek;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cel;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cek;)V

    .line 68
    return-void
.end method

.method public final k_()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->i:Lcom/google/android/gms/internal/ads/cfa;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->i:Lcom/google/android/gms/internal/ads/cfa;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/reward/a;->k_()V

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/cfm;->a:Lcom/google/android/gms/internal/ads/cek;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cel;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cek;)V

    goto :goto_0
.end method

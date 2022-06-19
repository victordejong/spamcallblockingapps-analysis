.class public final Lcom/google/android/gms/internal/ads/cdn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/apv;
.implements Lcom/google/android/gms/internal/ads/arl;
.implements Lcom/google/android/gms/internal/ads/ces;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cik;

.field private final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/internal/ads/dve;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/internal/ads/dvi;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/internal/ads/arl;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/android/gms/internal/ads/cdn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cik;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cdn;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cdn;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cdn;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cdn;->e:Lcom/google/android/gms/internal/ads/cdn;

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cdn;->a:Lcom/google/android/gms/internal/ads/cik;

    .line 7
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/cdn;)Lcom/google/android/gms/internal/ads/cdn;
    .locals 2

    .prologue
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/cdn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cdn;->a:Lcom/google/android/gms/internal/ads/cik;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/cdn;-><init>(Lcom/google/android/gms/internal/ads/cik;)V

    .line 9
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/cdn;->a(Lcom/google/android/gms/internal/ads/ces;)V

    .line 10
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 25
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdn;->e:Lcom/google/android/gms/internal/ads/cdn;

    if-eqz v0, :cond_0

    .line 26
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cdn;->e:Lcom/google/android/gms/internal/ads/cdn;

    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdn;->a:Lcom/google/android/gms/internal/ads/cik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cik;->a()V

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdn;->c:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/cds;->a:Lcom/google/android/gms/internal/ads/cek;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cel;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cek;)V

    .line 29
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 21
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdn;->e:Lcom/google/android/gms/internal/ads/cdn;

    if-eqz v0, :cond_0

    .line 22
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cdn;->e:Lcom/google/android/gms/internal/ads/cdn;

    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdn;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/cdp;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/cdp;-><init>(I)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cel;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cek;)V

    .line 24
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/arl;)V
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdn;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 16
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ces;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lcom/google/android/gms/internal/ads/cdn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cdn;->e:Lcom/google/android/gms/internal/ads/cdn;

    .line 35
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dvd;)V
    .locals 2

    .prologue
    .line 17
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdn;->e:Lcom/google/android/gms/internal/ads/cdn;

    if-eqz v0, :cond_0

    .line 18
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cdn;->e:Lcom/google/android/gms/internal/ads/cdn;

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdn;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/cdq;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/cdq;-><init>(Lcom/google/android/gms/internal/ads/dvd;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cel;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cek;)V

    .line 20
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dve;)V
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdn;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 12
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dvi;)V
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdn;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 14
    return-void
.end method

.method public final s()V
    .locals 2

    .prologue
    .line 30
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdn;->e:Lcom/google/android/gms/internal/ads/cdn;

    if-eqz v0, :cond_0

    .line 31
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/cdn;->e:Lcom/google/android/gms/internal/ads/cdn;

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdn;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/cdr;->a:Lcom/google/android/gms/internal/ads/cek;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cel;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/cek;)V

    .line 33
    return-void
.end method

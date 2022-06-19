.class public final Lj4/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Lp6/c;


# instance fields
.field public final a:Lj4/b1;

.field public final b:Lj4/k0;

.field public final c:Lj4/d2;

.field public final d:Lj4/n1;

.field public final e:Lj4/q1;

.field public final f:Lj4/v1;

.field public final g:Lj4/x1;

.field public final h:Lo4/p;

.field public final i:Lj4/d1;

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp6/c;

    const-string v1, "ExtractorLooper"

    invoke-direct {v0, v1}, Lp6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lj4/o0;->k:Lp6/c;

    return-void
.end method

.method public constructor <init>(Lj4/b1;Lo4/p;Lj4/k0;Lj4/d2;Lj4/n1;Lj4/q1;Lj4/v1;Lj4/x1;Lj4/d1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj4/o0;->a:Lj4/b1;

    iput-object p2, p0, Lj4/o0;->h:Lo4/p;

    iput-object p3, p0, Lj4/o0;->b:Lj4/k0;

    iput-object p4, p0, Lj4/o0;->c:Lj4/d2;

    iput-object p5, p0, Lj4/o0;->d:Lj4/n1;

    iput-object p6, p0, Lj4/o0;->e:Lj4/q1;

    iput-object p7, p0, Lj4/o0;->f:Lj4/v1;

    iput-object p8, p0, Lj4/o0;->g:Lj4/x1;

    iput-object p9, p0, Lj4/o0;->i:Lj4/d1;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lj4/o0;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Exception;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lj4/o0;->a:Lj4/b1;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lj4/n0; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-object v1, v0, Lj4/b1;->f:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    invoke-virtual {v0, p1}, Lj4/b1;->a(I)Lj4/y0;

    move-result-object v1

    iget-object v1, v1, Lj4/y0;->c:Lj4/x0;

    const/4 v2, 0x5

    iput v2, v1, Lj4/x0;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    iget-object v0, v0, Lj4/b1;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 6
    iget-object v0, p0, Lj4/o0;->a:Lj4/b1;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lj4/s0;

    invoke-direct {v1, v0, p1}, Lj4/s0;-><init>(Lj4/b1;I)V

    invoke-virtual {v0, v1}, Lj4/b1;->b(Lj4/a1;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 9
    iget-object v0, v0, Lj4/b1;->f:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 11
    throw p1
    :try_end_2
    .catch Lj4/n0; {:try_start_2 .. :try_end_2} :catch_0

    .line 12
    :catch_0
    sget-object p1, Lj4/o0;->k:Lp6/c;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "Error during error handling: %s"

    invoke-virtual {p1, p2, v0}, Lp6/c;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

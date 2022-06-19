.class public abstract Lcom/google/android/gms/common/internal/c;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/c$i;,
        Lcom/google/android/gms/common/internal/c$f;,
        Lcom/google/android/gms/common/internal/c$l;,
        Lcom/google/android/gms/common/internal/c$k;,
        Lcom/google/android/gms/common/internal/c$d;,
        Lcom/google/android/gms/common/internal/c$g;,
        Lcom/google/android/gms/common/internal/c$h;,
        Lcom/google/android/gms/common/internal/c$e;,
        Lcom/google/android/gms/common/internal/c$c;,
        Lcom/google/android/gms/common/internal/c$b;,
        Lcom/google/android/gms/common/internal/c$a;,
        Lcom/google/android/gms/common/internal/c$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:[Ljava/lang/String;

.field private static final e:[Lcom/google/android/gms/common/d;


# instance fields
.field private A:Lcom/google/android/gms/common/b;

.field private B:Z

.field private volatile C:Lcom/google/android/gms/common/internal/ag;

.field final a:Landroid/os/Handler;

.field protected b:Lcom/google/android/gms/common/internal/c$c;

.field protected c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:I

.field private g:J

.field private h:J

.field private i:I

.field private j:J

.field private k:Lcom/google/android/gms/common/internal/am;

.field private final l:Landroid/content/Context;

.field private final m:Landroid/os/Looper;

.field private final n:Lcom/google/android/gms/common/internal/i;

.field private final o:Lcom/google/android/gms/common/f;

.field private final p:Ljava/lang/Object;

.field private final q:Ljava/lang/Object;

.field private r:Lcom/google/android/gms/common/internal/o;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mServiceBrokerLock"
    .end annotation
.end field

.field private s:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/internal/c$g",
            "<*>;>;"
        }
    .end annotation
.end field

.field private u:Lcom/google/android/gms/common/internal/c$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/c$j;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private v:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final w:Lcom/google/android/gms/common/internal/c$a;

.field private final x:Lcom/google/android/gms/common/internal/c$b;

.field private final y:I

.field private final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 371
    new-array v0, v2, [Lcom/google/android/gms/common/d;

    sput-object v0, Lcom/google/android/gms/common/internal/c;->e:[Lcom/google/android/gms/common/d;

    .line 372
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "service_esmobile"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "service_googleme"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/internal/c;->d:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 1
    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/i;->a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/i;

    move-result-object v3

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/f;->b()Lcom/google/android/gms/common/f;

    move-result-object v4

    .line 4
    invoke-static {p4}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/internal/c$a;

    .line 5
    invoke-static {p5}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/internal/c$b;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v8, p6

    .line 6
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/i;Lcom/google/android/gms/common/f;ILcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/i;Lcom/google/android/gms/common/f;ILcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->p:Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->q:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->t:Ljava/util/ArrayList;

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/c;->v:I

    .line 13
    iput-object v2, p0, Lcom/google/android/gms/common/internal/c;->A:Lcom/google/android/gms/common/b;

    .line 14
    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/c;->B:Z

    .line 15
    iput-object v2, p0, Lcom/google/android/gms/common/internal/c;->C:Lcom/google/android/gms/common/internal/ag;

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    const-string/jumbo v0, "Context must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->l:Landroid/content/Context;

    .line 18
    const-string/jumbo v0, "Looper must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->m:Landroid/os/Looper;

    .line 19
    const-string/jumbo v0, "Supervisor must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/i;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->n:Lcom/google/android/gms/common/internal/i;

    .line 20
    const-string/jumbo v0, "API availability must not be null"

    .line 21
    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/f;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->o:Lcom/google/android/gms/common/f;

    .line 22
    new-instance v0, Lcom/google/android/gms/common/internal/c$h;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/internal/c$h;-><init>(Lcom/google/android/gms/common/internal/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->a:Landroid/os/Handler;

    .line 23
    iput p5, p0, Lcom/google/android/gms/common/internal/c;->y:I

    .line 24
    iput-object p6, p0, Lcom/google/android/gms/common/internal/c;->w:Lcom/google/android/gms/common/internal/c$a;

    .line 25
    iput-object p7, p0, Lcom/google/android/gms/common/internal/c;->x:Lcom/google/android/gms/common/internal/c$b;

    .line 26
    iput-object p8, p0, Lcom/google/android/gms/common/internal/c;->z:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private final A()Z
    .locals 3

    .prologue
    .line 158
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/c;->v:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final B()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 343
    iget-boolean v1, p0, Lcom/google/android/gms/common/internal/c;->B:Z

    if-eqz v1, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v0

    .line 345
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    const/4 v0, 0x1

    goto :goto_0

    .line 352
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/c;Lcom/google/android/gms/common/b;)Lcom/google/android/gms/common/b;
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/google/android/gms/common/internal/c;->A:Lcom/google/android/gms/common/b;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/c;Lcom/google/android/gms/common/internal/o;)Lcom/google/android/gms/common/internal/o;
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/google/android/gms/common/internal/c;->r:Lcom/google/android/gms/common/internal/o;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/c;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->q:Ljava/lang/Object;

    return-object v0
.end method

.method private final a(Lcom/google/android/gms/common/internal/ag;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/gms/common/internal/c;->C:Lcom/google/android/gms/common/internal/ag;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/c;I)V
    .locals 1

    .prologue
    .line 358
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/internal/c;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/c;ILandroid/os/IInterface;)V
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/c;->b(ILandroid/os/IInterface;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/c;Lcom/google/android/gms/common/internal/ag;)V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/c;->a(Lcom/google/android/gms/common/internal/ag;)V

    return-void
.end method

.method private final a(IILandroid/os/IInterface;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)Z"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/c;->v:I

    if-eq v0, p1, :cond_0

    .line 136
    const/4 v0, 0x0

    monitor-exit v1

    .line 138
    :goto_0
    return v0

    .line 137
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/internal/c;->b(ILandroid/os/IInterface;)V

    .line 138
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/c;IILandroid/os/IInterface;)Z
    .locals 1

    .prologue
    .line 367
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/c;->a(IILandroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method private final b(ILandroid/os/IInterface;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 65
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    move v3, v0

    :goto_0
    if-eqz p2, :cond_2

    move v2, v0

    :goto_1
    if-ne v3, v2, :cond_3

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Z)V

    .line 66
    iget-object v7, p0, Lcom/google/android/gms/common/internal/c;->p:Ljava/lang/Object;

    monitor-enter v7

    .line 67
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/common/internal/c;->v:I

    .line 68
    iput-object p2, p0, Lcom/google/android/gms/common/internal/c;->s:Landroid/os/IInterface;

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/internal/c;->a(ILandroid/os/IInterface;)V

    .line 70
    packed-switch p1, :pswitch_data_0

    .line 132
    :cond_0
    :goto_3
    monitor-exit v7

    return-void

    :cond_1
    move v3, v1

    .line 65
    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->u:Lcom/google/android/gms/common/internal/c$j;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->k:Lcom/google/android/gms/common/internal/am;

    if-eqz v0, :cond_4

    .line 73
    const-string/jumbo v0, "GmsClient"

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->k:Lcom/google/android/gms/common/internal/am;

    .line 74
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/am;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/c;->k:Lcom/google/android/gms/common/internal/am;

    .line 75
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/am;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x46

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->n:Lcom/google/android/gms/common/internal/i;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->k:Lcom/google/android/gms/common/internal/am;

    .line 78
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/am;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/c;->k:Lcom/google/android/gms/common/internal/am;

    .line 79
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/am;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/c;->k:Lcom/google/android/gms/common/internal/am;

    .line 80
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/am;->c()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/common/internal/c;->u:Lcom/google/android/gms/common/internal/c$j;

    .line 81
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/c;->c()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/common/internal/c;->k:Lcom/google/android/gms/common/internal/am;

    .line 82
    invoke-virtual {v6}, Lcom/google/android/gms/common/internal/am;->d()Z

    move-result v6

    .line 83
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 85
    :cond_4
    new-instance v0, Lcom/google/android/gms/common/internal/c$j;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/internal/c$j;-><init>(Lcom/google/android/gms/common/internal/c;I)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->u:Lcom/google/android/gms/common/internal/c$j;

    .line 87
    iget v0, p0, Lcom/google/android/gms/common/internal/c;->v:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 88
    new-instance v0, Lcom/google/android/gms/common/internal/am;

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->p()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->n()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 91
    const/16 v4, 0x81

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/am;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    .line 98
    :goto_4
    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->k:Lcom/google/android/gms/common/internal/am;

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->k:Lcom/google/android/gms/common/internal/am;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/am;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 100
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->d()I

    move-result v0

    const v1, 0x1110e58

    if-ge v0, v1, :cond_7

    .line 101
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->k:Lcom/google/android/gms/common/internal/am;

    .line 102
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/am;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 93
    :cond_5
    :try_start_1
    new-instance v0, Lcom/google/android/gms/common/internal/am;

    .line 94
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->m()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 96
    const/16 v4, 0x81

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->z()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/am;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    goto :goto_4

    .line 102
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 103
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->n:Lcom/google/android/gms/common/internal/i;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->k:Lcom/google/android/gms/common/internal/am;

    .line 104
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/am;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/c;->k:Lcom/google/android/gms/common/internal/am;

    .line 105
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/am;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/c;->k:Lcom/google/android/gms/common/internal/am;

    .line 106
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/am;->c()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/common/internal/c;->u:Lcom/google/android/gms/common/internal/c$j;

    .line 107
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/c;->c()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/common/internal/c;->k:Lcom/google/android/gms/common/internal/am;

    .line 108
    invoke-virtual {v6}, Lcom/google/android/gms/common/internal/am;->d()Z

    move-result v6

    .line 110
    new-instance v8, Lcom/google/android/gms/common/internal/i$a;

    invoke-direct {v8, v1, v2, v3, v6}, Lcom/google/android/gms/common/internal/i$a;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v0, v8, v4, v5}, Lcom/google/android/gms/common/internal/i;->a(Lcom/google/android/gms/common/internal/i$a;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v0

    .line 111
    if-nez v0, :cond_0

    .line 112
    const-string/jumbo v0, "GmsClient"

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->k:Lcom/google/android/gms/common/internal/am;

    .line 113
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/am;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/c;->k:Lcom/google/android/gms/common/internal/am;

    .line 114
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/am;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "unable to connect to service: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " on "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/16 v0, 0x10

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 117
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 118
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/common/internal/c;->a(ILandroid/os/Bundle;I)V

    goto/16 :goto_3

    .line 120
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/internal/c;->a(Landroid/os/IInterface;)V

    goto/16 :goto_3

    .line 123
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->u:Lcom/google/android/gms/common/internal/c$j;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->n:Lcom/google/android/gms/common/internal/i;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->k:Lcom/google/android/gms/common/internal/am;

    .line 125
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/am;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/c;->k:Lcom/google/android/gms/common/internal/am;

    .line 126
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/am;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/c;->k:Lcom/google/android/gms/common/internal/am;

    .line 127
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/am;->c()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/common/internal/c;->u:Lcom/google/android/gms/common/internal/c$j;

    .line 128
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/c;->c()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/common/internal/c;->k:Lcom/google/android/gms/common/internal/am;

    .line 129
    invoke-virtual {v6}, Lcom/google/android/gms/common/internal/am;->d()Z

    move-result v6

    .line 130
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->u:Lcom/google/android/gms/common/internal/c$j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/google/android/gms/common/internal/c;)Z
    .locals 1

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/c;->B()Z

    move-result v0

    return v0
.end method

.method private final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->z:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->l:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->z:Ljava/lang/String;

    goto :goto_0
.end method

.method private final c(I)V
    .locals 5

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/c;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x5

    .line 181
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/c;->B:Z

    .line 183
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/c;->a:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/gms/common/internal/c;)Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/c;->B:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/internal/c;)Lcom/google/android/gms/common/b;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->A:Lcom/google/android/gms/common/b;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/common/internal/c;)Lcom/google/android/gms/common/internal/c$a;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->w:Lcom/google/android/gms/common/internal/c$a;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/common/internal/c;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->t:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/common/internal/c;)Lcom/google/android/gms/common/internal/c$b;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->x:Lcom/google/android/gms/common/internal/c$b;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method protected a(I)V
    .locals 2

    .prologue
    .line 59
    iput p1, p0, Lcom/google/android/gms/common/internal/c;->f:I

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/c;->g:J

    .line 61
    return-void
.end method

.method protected final a(ILandroid/os/Bundle;I)V
    .locals 6

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->a:Landroid/os/Handler;

    const/4 v2, 0x7

    const/4 v3, -0x1

    new-instance v4, Lcom/google/android/gms/common/internal/c$k;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v5}, Lcom/google/android/gms/common/internal/c$k;-><init>(Lcom/google/android/gms/common/internal/c;ILandroid/os/Bundle;)V

    .line 202
    invoke-virtual {v1, v2, p3, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 204
    return-void
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 5

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, -0x1

    new-instance v4, Lcom/google/android/gms/common/internal/c$l;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/c$l;-><init>(Lcom/google/android/gms/common/internal/c;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 198
    invoke-virtual {v1, v2, p4, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 200
    return-void
.end method

.method a(ILandroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 133
    return-void
.end method

.method protected a(Landroid/os/IInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/c;->h:J

    .line 58
    return-void
.end method

.method protected a(Lcom/google/android/gms/common/b;)V
    .locals 2

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/google/android/gms/common/b;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/internal/c;->i:I

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/c;->j:J

    .line 64
    return-void
.end method

.method public a(Lcom/google/android/gms/common/internal/c$c;)V
    .locals 2

    .prologue
    .line 148
    const-string/jumbo v0, "Connection progress callbacks cannot be null."

    .line 149
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/c$c;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->b:Lcom/google/android/gms/common/internal/c$c;

    .line 150
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/internal/c;->b(ILandroid/os/IInterface;)V

    .line 151
    return-void
.end method

.method protected a(Lcom/google/android/gms/common/internal/c$c;ILandroid/app/PendingIntent;)V
    .locals 4

    .prologue
    .line 185
    const-string/jumbo v0, "Connection progress callbacks cannot be null."

    .line 186
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/c$c;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->b:Lcom/google/android/gms/common/internal/c$c;

    .line 187
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->a:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/common/internal/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 188
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 189
    invoke-virtual {v1, v2, v3, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 190
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 191
    return-void
.end method

.method public a(Lcom/google/android/gms/common/internal/c$e;)V
    .locals 0

    .prologue
    .line 272
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/c$e;->a()V

    .line 273
    return-void
.end method

.method public a(Lcom/google/android/gms/common/internal/l;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/l;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 216
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->s()Landroid/os/Bundle;

    move-result-object v0

    .line 217
    new-instance v1, Lcom/google/android/gms/common/internal/g;

    iget v2, p0, Lcom/google/android/gms/common/internal/c;->y:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/internal/g;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/c;->l:Landroid/content/Context;

    .line 218
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 219
    iput-object v2, v1, Lcom/google/android/gms/common/internal/g;->a:Ljava/lang/String;

    .line 223
    iput-object v0, v1, Lcom/google/android/gms/common/internal/g;->d:Landroid/os/Bundle;

    .line 226
    if-eqz p2, :cond_0

    .line 228
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    iput-object v0, v1, Lcom/google/android/gms/common/internal/g;->c:[Lcom/google/android/gms/common/api/Scope;

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->q()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->q()Landroid/accounts/Account;

    move-result-object v0

    .line 234
    :goto_0
    iput-object v0, v1, Lcom/google/android/gms/common/internal/g;->e:Landroid/accounts/Account;

    .line 238
    if-eqz p1, :cond_1

    .line 239
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/l;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/common/internal/g;->b:Landroid/os/IBinder;

    .line 245
    :cond_1
    :goto_1
    sget-object v0, Lcom/google/android/gms/common/internal/c;->e:[Lcom/google/android/gms/common/d;

    .line 247
    iput-object v0, v1, Lcom/google/android/gms/common/internal/g;->f:[Lcom/google/android/gms/common/d;

    .line 248
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->r()[Lcom/google/android/gms/common/d;

    move-result-object v0

    .line 249
    iput-object v0, v1, Lcom/google/android/gms/common/internal/g;->g:[Lcom/google/android/gms/common/d;

    .line 250
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/common/internal/c;->q:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 251
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->r:Lcom/google/android/gms/common/internal/o;

    if-eqz v0, :cond_4

    .line 252
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->r:Lcom/google/android/gms/common/internal/o;

    new-instance v3, Lcom/google/android/gms/common/internal/c$i;

    iget-object v4, p0, Lcom/google/android/gms/common/internal/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 253
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/common/internal/c$i;-><init>(Lcom/google/android/gms/common/internal/c;I)V

    .line 255
    invoke-interface {v0, v3, v1}, Lcom/google/android/gms/common/internal/o;->a(Lcom/google/android/gms/common/internal/n;Lcom/google/android/gms/common/internal/g;)V

    .line 258
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :goto_3
    return-void

    .line 232
    :cond_2
    new-instance v0, Landroid/accounts/Account;

    const-string/jumbo v2, "<<default account>>"

    const-string/jumbo v3, "com.google"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->q()Landroid/accounts/Account;

    move-result-object v0

    .line 243
    iput-object v0, v1, Lcom/google/android/gms/common/internal/g;->e:Landroid/accounts/Account;

    goto :goto_1

    .line 257
    :cond_4
    :try_start_2
    const-string/jumbo v0, "GmsClient"

    const-string/jumbo v1, "mServiceBroker is null, client disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 259
    :catch_0
    move-exception v0

    .line 260
    const-string/jumbo v1, "GmsClient"

    const-string/jumbo v2, "IGmsServiceBroker.getService failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/c;->b(I)V

    goto :goto_3

    .line 263
    :catch_1
    move-exception v0

    throw v0

    .line 264
    :catch_2
    move-exception v0

    .line 265
    :goto_4
    const-string/jumbo v1, "GmsClient"

    const-string/jumbo v2, "IGmsServiceBroker.getService failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 267
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 268
    invoke-virtual {p0, v0, v5, v5, v1}, Lcom/google/android/gms/common/internal/c;->a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    goto :goto_3

    .line 264
    :catch_3
    move-exception v0

    goto :goto_4
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public b(I)V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->a:Landroid/os/Handler;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/gms/common/internal/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 175
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 176
    invoke-virtual {v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 356
    sget v0, Lcom/google/android/gms/common/f;->b:I

    return v0
.end method

.method public e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 161
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 162
    iget-object v2, p0, Lcom/google/android/gms/common/internal/c;->t:Ljava/util/ArrayList;

    monitor-enter v2

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 164
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 165
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/c$g;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/c$g;->e()V

    .line 166
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 168
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->q:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->r:Lcom/google/android/gms/common/internal/o;

    .line 171
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 172
    const/4 v0, 0x1

    invoke-direct {p0, v0, v4}, Lcom/google/android/gms/common/internal/c;->b(ILandroid/os/IInterface;)V

    .line 173
    return-void

    .line 168
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 171
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public f()Z
    .locals 3

    .prologue
    .line 152
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/c;->v:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()Z
    .locals 3

    .prologue
    .line 155
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/c;->v:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/google/android/gms/common/internal/c;->v:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->k:Lcom/google/android/gms/common/internal/am;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->k:Lcom/google/android/gms/common/internal/am;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/am;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 355
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Failed to connect when checking package"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k()[Lcom/google/android/gms/common/d;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->C:Lcom/google/android/gms/common/internal/ag;

    .line 54
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    .line 55
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/common/internal/ag;->b:[Lcom/google/android/gms/common/d;

    goto :goto_0
.end method

.method protected m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "com.google.android.gms"

    return-object v0
.end method

.method protected n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->o:Lcom/google/android/gms/common/f;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->l:Landroid/content/Context;

    .line 141
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/f;->b(Landroid/content/Context;I)I

    move-result v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    const/4 v1, 0x1

    invoke-direct {p0, v1, v3}, Lcom/google/android/gms/common/internal/c;->b(ILandroid/os/IInterface;)V

    .line 144
    new-instance v1, Lcom/google/android/gms/common/internal/c$d;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/c$d;-><init>(Lcom/google/android/gms/common/internal/c;)V

    invoke-virtual {p0, v1, v0, v3}, Lcom/google/android/gms/common/internal/c;->a(Lcom/google/android/gms/common/internal/c$c;ILandroid/app/PendingIntent;)V

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/c$d;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/c$d;-><init>(Lcom/google/android/gms/common/internal/c;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/c;->a(Lcom/google/android/gms/common/internal/c$c;)V

    goto :goto_0
.end method

.method public final p()Landroid/content/Context;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->l:Landroid/content/Context;

    return-object v0
.end method

.method public q()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method public r()[Lcom/google/android/gms/common/d;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/google/android/gms/common/internal/c;->e:[Lcom/google/android/gms/common/d;

    return-object v0
.end method

.method protected s()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 196
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method protected final t()V
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    return-void
.end method

.method public u()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public final v()Landroid/os/IInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/c;->v:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 211
    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 212
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->t()V

    .line 213
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->s:Landroid/os/IInterface;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v2, "Client is connected but service is null"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/s;->a(ZLjava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->s:Landroid/os/IInterface;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 213
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected w()Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method protected y()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method protected z()Z
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

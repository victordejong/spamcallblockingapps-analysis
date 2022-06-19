.class public final Lcom/google/android/exoplayer2/upstream/Loader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/Loader$f;,
        Lcom/google/android/exoplayer2/upstream/Loader$c;,
        Lcom/google/android/exoplayer2/upstream/Loader$b;,
        Lcom/google/android/exoplayer2/upstream/Loader$e;,
        Lcom/google/android/exoplayer2/upstream/Loader$a;,
        Lcom/google/android/exoplayer2/upstream/Loader$d;,
        Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/upstream/Loader$b;

.field public static final b:Lcom/google/android/exoplayer2/upstream/Loader$b;

.field public static final c:Lcom/google/android/exoplayer2/upstream/Loader$b;

.field public static final d:Lcom/google/android/exoplayer2/upstream/Loader$b;


# instance fields
.field public e:Ljava/io/IOException;

.field private final f:Ljava/util/concurrent/ExecutorService;

.field private g:Lcom/google/android/exoplayer2/upstream/Loader$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/Loader$c<",
            "+",
            "Lcom/google/android/exoplayer2/upstream/Loader$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 173
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->a(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$b;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/Loader;->a:Lcom/google/android/exoplayer2/upstream/Loader$b;

    const/4 v0, 0x1

    .line 176
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->a(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$b;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/upstream/Loader;->b:Lcom/google/android/exoplayer2/upstream/Loader$b;

    .line 178
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader$b;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/google/android/exoplayer2/upstream/Loader$b;-><init>(IJLcom/google/android/exoplayer2/upstream/Loader$1;)V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/Loader;->c:Lcom/google/android/exoplayer2/upstream/Loader$b;

    .line 184
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader$b;

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/google/android/exoplayer2/upstream/Loader$b;-><init>(IJLcom/google/android/exoplayer2/upstream/Loader$1;)V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/Loader;->d:Lcom/google/android/exoplayer2/upstream/Loader$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader;->f:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$b;
    .locals 2

    .line 227
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader$b;

    const/4 v1, 0x0

    .line 228
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/exoplayer2/upstream/Loader$b;-><init>(IJLcom/google/android/exoplayer2/upstream/Loader$1;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/upstream/Loader;)Lcom/google/android/exoplayer2/upstream/Loader$c;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->g:Lcom/google/android/exoplayer2/upstream/Loader$c;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/upstream/Loader;Lcom/google/android/exoplayer2/upstream/Loader$c;)Lcom/google/android/exoplayer2/upstream/Loader$c;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader;->g:Lcom/google/android/exoplayer2/upstream/Loader$c;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader;->e:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/upstream/Loader;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->f:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/upstream/Loader$d;Lcom/google/android/exoplayer2/upstream/Loader$a;I)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/exoplayer2/upstream/Loader$d;",
            ">(TT;",
            "Lcom/google/android/exoplayer2/upstream/Loader$a<",
            "TT;>;I)J"
        }
    .end annotation

    .line 261
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/Looper;

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->e:Ljava/io/IOException;

    .line 263
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 264
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Loader$c;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/upstream/Loader$c;-><init>(Lcom/google/android/exoplayer2/upstream/Loader;Landroid/os/Looper;Lcom/google/android/exoplayer2/upstream/Loader$d;Lcom/google/android/exoplayer2/upstream/Loader$a;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader$c;->a(J)V

    return-wide v9
.end method

.method public final a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->e:Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->g:Lcom/google/android/exoplayer2/upstream/Loader$c;

    if-eqz v0, :cond_1

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    .line 316
    iget p1, v0, Lcom/google/android/exoplayer2/upstream/Loader$c;->a:I

    .line 315
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/Loader$c;->a(I)V

    :cond_1
    return-void

    .line 313
    :cond_2
    throw v0
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/Loader$e;)V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->g:Lcom/google/android/exoplayer2/upstream/Loader$c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 295
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$c;->a(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 298
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/Loader$f;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/upstream/Loader$f;-><init>(Lcom/google/android/exoplayer2/upstream/Loader$e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 300
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->e:Ljava/io/IOException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->g:Lcom/google/android/exoplayer2/upstream/Loader$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader;->g:Lcom/google/android/exoplayer2/upstream/Loader$c;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/Loader$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$c;->a(Z)V

    return-void
.end method

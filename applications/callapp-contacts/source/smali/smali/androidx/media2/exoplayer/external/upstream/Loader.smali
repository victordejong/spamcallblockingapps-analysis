.class public final Landroidx/media2/exoplayer/external/upstream/Loader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/upstream/Loader$f;,
        Landroidx/media2/exoplayer/external/upstream/Loader$c;,
        Landroidx/media2/exoplayer/external/upstream/Loader$b;,
        Landroidx/media2/exoplayer/external/upstream/Loader$e;,
        Landroidx/media2/exoplayer/external/upstream/Loader$a;,
        Landroidx/media2/exoplayer/external/upstream/Loader$d;,
        Landroidx/media2/exoplayer/external/upstream/Loader$UnexpectedLoaderException;
    }
.end annotation


# static fields
.field public static final a:Landroidx/media2/exoplayer/external/upstream/Loader$b;

.field public static final b:Landroidx/media2/exoplayer/external/upstream/Loader$b;

.field public static final c:Landroidx/media2/exoplayer/external/upstream/Loader$b;

.field public static final d:Landroidx/media2/exoplayer/external/upstream/Loader$b;


# instance fields
.field private final e:Ljava/util/concurrent/ExecutorService;

.field private f:Landroidx/media2/exoplayer/external/upstream/Loader$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/upstream/Loader$c<",
            "+",
            "Landroidx/media2/exoplayer/external/upstream/Loader$d;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 163
    invoke-static {v0, v1, v2}, Landroidx/media2/exoplayer/external/upstream/Loader;->a(ZJ)Landroidx/media2/exoplayer/external/upstream/Loader$b;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/upstream/Loader;->a:Landroidx/media2/exoplayer/external/upstream/Loader$b;

    const/4 v0, 0x1

    .line 166
    invoke-static {v0, v1, v2}, Landroidx/media2/exoplayer/external/upstream/Loader;->a(ZJ)Landroidx/media2/exoplayer/external/upstream/Loader$b;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/upstream/Loader;->b:Landroidx/media2/exoplayer/external/upstream/Loader$b;

    .line 168
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/Loader$b;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v3, v1, v2, v4}, Landroidx/media2/exoplayer/external/upstream/Loader$b;-><init>(IJLandroidx/media2/exoplayer/external/upstream/Loader$1;)V

    sput-object v0, Landroidx/media2/exoplayer/external/upstream/Loader;->c:Landroidx/media2/exoplayer/external/upstream/Loader$b;

    .line 174
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/Loader$b;

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2, v4}, Landroidx/media2/exoplayer/external/upstream/Loader$b;-><init>(IJLandroidx/media2/exoplayer/external/upstream/Loader$1;)V

    sput-object v0, Landroidx/media2/exoplayer/external/upstream/Loader;->d:Landroidx/media2/exoplayer/external/upstream/Loader$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->e:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a(ZJ)Landroidx/media2/exoplayer/external/upstream/Loader$b;
    .locals 2

    .line 217
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/Loader$b;

    const/4 v1, 0x0

    .line 218
    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$b;-><init>(IJLandroidx/media2/exoplayer/external/upstream/Loader$1;)V

    return-object v0
.end method

.method static synthetic a(Landroidx/media2/exoplayer/external/upstream/Loader;)Landroidx/media2/exoplayer/external/upstream/Loader$c;
    .locals 0

    .line 45
    iget-object p0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->f:Landroidx/media2/exoplayer/external/upstream/Loader$c;

    return-object p0
.end method

.method static synthetic a(Landroidx/media2/exoplayer/external/upstream/Loader;Landroidx/media2/exoplayer/external/upstream/Loader$c;)Landroidx/media2/exoplayer/external/upstream/Loader$c;
    .locals 0

    .line 45
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->f:Landroidx/media2/exoplayer/external/upstream/Loader$c;

    return-object p1
.end method

.method static synthetic a(Landroidx/media2/exoplayer/external/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 45
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->g:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic b(Landroidx/media2/exoplayer/external/upstream/Loader;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 45
    iget-object p0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->e:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/upstream/Loader$d;Landroidx/media2/exoplayer/external/upstream/Loader$a;I)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/media2/exoplayer/external/upstream/Loader$d;",
            ">(TT;",
            "Landroidx/media2/exoplayer/external/upstream/Loader$a<",
            "TT;>;I)J"
        }
    .end annotation

    .line 238
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 239
    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->g:Ljava/io/IOException;

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 242
    new-instance v10, Landroidx/media2/exoplayer/external/upstream/Loader$c;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/upstream/Loader$c;-><init>(Landroidx/media2/exoplayer/external/upstream/Loader;Landroid/os/Looper;Landroidx/media2/exoplayer/external/upstream/Loader$d;Landroidx/media2/exoplayer/external/upstream/Loader$a;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v10, p1, p2}, Landroidx/media2/exoplayer/external/upstream/Loader$c;->a(J)V

    return-wide v8
.end method

.method public final a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->g:Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 296
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->f:Landroidx/media2/exoplayer/external/upstream/Loader$c;

    if-eqz v0, :cond_1

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    .line 298
    iget p1, v0, Landroidx/media2/exoplayer/external/upstream/Loader$c;->a:I

    .line 297
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/upstream/Loader$c;->a(I)V

    :cond_1
    return-void

    .line 295
    :cond_2
    throw v0
.end method

.method public final a(Landroidx/media2/exoplayer/external/upstream/Loader$e;)V
    .locals 2

    .line 276
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->f:Landroidx/media2/exoplayer/external/upstream/Loader$c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 277
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$c;->a(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 280
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Landroidx/media2/exoplayer/external/upstream/Loader$f;

    invoke-direct {v1, p1}, Landroidx/media2/exoplayer/external/upstream/Loader$f;-><init>(Landroidx/media2/exoplayer/external/upstream/Loader$e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 282
    :cond_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 250
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->f:Landroidx/media2/exoplayer/external/upstream/Loader$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 2

    .line 257
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader;->f:Landroidx/media2/exoplayer/external/upstream/Loader$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/upstream/Loader$c;->a(Z)V

    return-void
.end method

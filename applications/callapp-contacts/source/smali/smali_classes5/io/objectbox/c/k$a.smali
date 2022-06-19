.class final Lio/objectbox/c/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/c/a;
.implements Lio/objectbox/c/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/objectbox/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/objectbox/c/k$a$b;,
        Lio/objectbox/c/k$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/c/a<",
        "TT;>;",
        "Lio/objectbox/c/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/objectbox/c/k;

.field private final b:Lio/objectbox/c/e;

.field private c:Lio/objectbox/c/k$a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/c/k<",
            "TT;>.a.b;"
        }
    .end annotation
.end field

.field private d:Lio/objectbox/c/k$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/c/k<",
            "TT;>.a.a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/objectbox/c/k;Lio/objectbox/c/e;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lio/objectbox/c/k$a;->a:Lio/objectbox/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p2, p0, Lio/objectbox/c/k$a;->b:Lio/objectbox/c/e;

    .line 1044
    iget-object p2, p1, Lio/objectbox/c/k;->f:Lio/objectbox/c/j;

    if-eqz p2, :cond_0

    .line 201
    new-instance p2, Lio/objectbox/c/k$a$a;

    invoke-direct {p2, p0}, Lio/objectbox/c/k$a$a;-><init>(Lio/objectbox/c/k$a;)V

    iput-object p2, p0, Lio/objectbox/c/k$a;->d:Lio/objectbox/c/k$a$a;

    .line 2044
    iget-object p1, p1, Lio/objectbox/c/k;->g:Lio/objectbox/c/i;

    if-eqz p1, :cond_0

    .line 203
    new-instance p1, Lio/objectbox/c/k$a$b;

    invoke-direct {p1, p0}, Lio/objectbox/c/k$a$b;-><init>(Lio/objectbox/c/k$a;)V

    iput-object p1, p0, Lio/objectbox/c/k$a;->c:Lio/objectbox/c/k$a$b;

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lio/objectbox/c/k$a;->b:Lio/objectbox/c/e;

    .line 8047
    iget-boolean v0, v0, Lio/objectbox/c/e;->a:Z

    if-nez v0, :cond_1

    .line 251
    iget-object v0, p0, Lio/objectbox/c/k$a;->a:Lio/objectbox/c/k;

    .line 9044
    iget-object v0, v0, Lio/objectbox/c/k;->f:Lio/objectbox/c/j;

    if-eqz v0, :cond_0

    return-void

    .line 255
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/objectbox/c/k$a;->a:Lio/objectbox/c/k;

    .line 11044
    iget-object v0, v0, Lio/objectbox/c/k;->b:Lio/objectbox/c/a;

    .line 255
    invoke-interface {v0, p1}, Lio/objectbox/c/a;->onData(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string v0, "Observer failed without an ErrorObserver set"

    .line 257
    invoke-direct {p0, p1, v0}, Lio/objectbox/c/k$a;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lio/objectbox/c/k$a;->a:Lio/objectbox/c/k;

    .line 5044
    iget-object v0, v0, Lio/objectbox/c/k;->g:Lio/objectbox/c/i;

    if-eqz v0, :cond_1

    .line 234
    iget-object p1, p0, Lio/objectbox/c/k$a;->b:Lio/objectbox/c/e;

    .line 5047
    iget-boolean p1, p1, Lio/objectbox/c/e;->a:Z

    if-nez p1, :cond_0

    .line 235
    iget-object p1, p0, Lio/objectbox/c/k$a;->a:Lio/objectbox/c/k;

    .line 6044
    iget-object p1, p1, Lio/objectbox/c/k;->f:Lio/objectbox/c/j;

    if-eqz p1, :cond_0

    :cond_0
    return-void

    .line 242
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 245
    throw v0
.end method

.method private synthetic b(Ljava/lang/Object;)V
    .locals 1

    .line 219
    iget-object p1, p0, Lio/objectbox/c/k$a;->b:Lio/objectbox/c/e;

    .line 12047
    iget-boolean p1, p1, Lio/objectbox/c/e;->a:Z

    if-eqz p1, :cond_0

    return-void

    .line 224
    :cond_0
    :try_start_0
    iget-object p1, p0, Lio/objectbox/c/k$a;->a:Lio/objectbox/c/k;

    .line 13044
    iget-object p1, p1, Lio/objectbox/c/k;->e:Lio/objectbox/c/g;

    .line 224
    invoke-interface {p1}, Lio/objectbox/c/g;->a()Ljava/lang/Object;

    move-result-object p1

    .line 225
    invoke-direct {p0, p1}, Lio/objectbox/c/k$a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "Transformer failed without an ErrorObserver set"

    .line 227
    invoke-direct {p0, p1, v0}, Lio/objectbox/c/k$a;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$92Ih1B3ro49wOCyalKZLr1ijGbA(Lio/objectbox/c/k$a;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/objectbox/c/k$a;->b(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/objectbox/c/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/c/a<",
            "TT;>;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lio/objectbox/c/k$a;->a:Lio/objectbox/c/k;

    .line 12044
    iget-object v0, v0, Lio/objectbox/c/k;->b:Lio/objectbox/c/a;

    return-object v0
.end method

.method public final onData(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lio/objectbox/c/k$a;->a:Lio/objectbox/c/k;

    .line 3044
    iget-object v0, v0, Lio/objectbox/c/k;->e:Lio/objectbox/c/g;

    if-eqz v0, :cond_0

    .line 3218
    iget-object v0, p0, Lio/objectbox/c/k$a;->a:Lio/objectbox/c/k;

    .line 4044
    iget-object v0, v0, Lio/objectbox/c/k;->a:Ljava/util/concurrent/ExecutorService;

    .line 3218
    new-instance v1, Lio/objectbox/c/-$$Lambda$k$a$92Ih1B3ro49wOCyalKZLr1ijGbA;

    invoke-direct {v1, p0, p1}, Lio/objectbox/c/-$$Lambda$k$a$92Ih1B3ro49wOCyalKZLr1ijGbA;-><init>(Lio/objectbox/c/k$a;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 213
    :cond_0
    invoke-direct {p0, p1}, Lio/objectbox/c/k$a;->a(Ljava/lang/Object;)V

    return-void
.end method

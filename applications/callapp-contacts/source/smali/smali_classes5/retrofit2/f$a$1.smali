.class final Lretrofit2/f$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/f$a;->a(Lretrofit2/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lretrofit2/c;

.field final synthetic b:Lretrofit2/f$a;


# direct methods
.method constructor <init>(Lretrofit2/f$a;Lretrofit2/c;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lretrofit2/f$a$1;->b:Lretrofit2/f$a;

    iput-object p2, p0, Lretrofit2/f$a$1;->a:Lretrofit2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Lretrofit2/c;Ljava/lang/Throwable;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lretrofit2/f$a$1;->b:Lretrofit2/f$a;

    invoke-interface {p1, v0, p2}, Lretrofit2/c;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic a(Lretrofit2/c;Lretrofit2/Response;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lretrofit2/f$a$1;->b:Lretrofit2/f$a;

    iget-object v0, v0, Lretrofit2/f$a;->b:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object p2, p0, Lretrofit2/f$a$1;->b:Lretrofit2/f$a;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2, v0}, Lretrofit2/c;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lretrofit2/f$a$1;->b:Lretrofit2/f$a;

    invoke-interface {p1, v0, p2}, Lretrofit2/c;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    return-void
.end method

.method public static synthetic lambda$9MPuvbCESJ40q8vfxim-3usom3M(Lretrofit2/f$a$1;Lretrofit2/c;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lretrofit2/f$a$1;->a(Lretrofit2/c;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$T5NSBM5vmQRcl2ORC2KeY7XbazE(Lretrofit2/f$a$1;Lretrofit2/c;Lretrofit2/Response;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lretrofit2/f$a$1;->a(Lretrofit2/c;Lretrofit2/Response;)V

    return-void
.end method


# virtual methods
.method public final onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 88
    iget-object p1, p0, Lretrofit2/f$a$1;->b:Lretrofit2/f$a;

    iget-object p1, p1, Lretrofit2/f$a;->a:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lretrofit2/f$a$1;->a:Lretrofit2/c;

    new-instance v1, Lretrofit2/-$$Lambda$f$a$1$9MPuvbCESJ40q8vfxim-3usom3M;

    invoke-direct {v1, p0, v0, p2}, Lretrofit2/-$$Lambda$f$a$1$9MPuvbCESJ40q8vfxim-3usom3M;-><init>(Lretrofit2/f$a$1;Lretrofit2/c;Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 77
    iget-object p1, p0, Lretrofit2/f$a$1;->b:Lretrofit2/f$a;

    iget-object p1, p1, Lretrofit2/f$a;->a:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lretrofit2/f$a$1;->a:Lretrofit2/c;

    new-instance v1, Lretrofit2/-$$Lambda$f$a$1$T5NSBM5vmQRcl2ORC2KeY7XbazE;

    invoke-direct {v1, p0, v0, p2}, Lretrofit2/-$$Lambda$f$a$1$T5NSBM5vmQRcl2ORC2KeY7XbazE;-><init>(Lretrofit2/f$a$1;Lretrofit2/c;Lretrofit2/Response;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

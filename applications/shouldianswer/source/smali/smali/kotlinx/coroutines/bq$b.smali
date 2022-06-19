.class final Lkotlinx/coroutines/bq$b;
.super Lkotlinx/coroutines/bp;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/bq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/bp<",
        "Lkotlinx/coroutines/bk;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lkotlinx/coroutines/bq;

.field private final e:Lkotlinx/coroutines/bq$c;

.field private final f:Lkotlinx/coroutines/q;

.field private final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/bq;Lkotlinx/coroutines/bq$c;Lkotlinx/coroutines/q;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p3, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1028
    iget-object v0, p3, Lkotlinx/coroutines/q;->a:Lkotlinx/coroutines/r;

    check-cast v0, Lkotlinx/coroutines/bk;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/bp;-><init>(Lkotlinx/coroutines/bk;)V

    iput-object p1, p0, Lkotlinx/coroutines/bq$b;->a:Lkotlinx/coroutines/bq;

    iput-object p2, p0, Lkotlinx/coroutines/bq$b;->e:Lkotlinx/coroutines/bq$c;

    iput-object p3, p0, Lkotlinx/coroutines/bq$b;->f:Lkotlinx/coroutines/q;

    iput-object p4, p0, Lkotlinx/coroutines/bq$b;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1023
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/bq$b;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .line 1030
    iget-object p1, p0, Lkotlinx/coroutines/bq$b;->a:Lkotlinx/coroutines/bq;

    iget-object v0, p0, Lkotlinx/coroutines/bq$b;->e:Lkotlinx/coroutines/bq$c;

    iget-object v1, p0, Lkotlinx/coroutines/bq$b;->f:Lkotlinx/coroutines/q;

    iget-object v2, p0, Lkotlinx/coroutines/bq$b;->g:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lkotlinx/coroutines/bq;->a(Lkotlinx/coroutines/bq;Lkotlinx/coroutines/bq$c;Lkotlinx/coroutines/q;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildCompletion["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/bq$b;->f:Lkotlinx/coroutines/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/bq$b;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lretrofit2/g$b;
.super Lretrofit2/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Lretrofit2/g<",
        "TResponseT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lretrofit2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/b<",
            "TResponseT;",
            "Lretrofit2/Call<",
            "TResponseT;>;>;"
        }
    .end annotation
.end field

.field private final b:Z


# direct methods
.method constructor <init>(Lretrofit2/o;Lokhttp3/Call$Factory;Lretrofit2/e;Lretrofit2/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/o;",
            "Lokhttp3/Call$Factory;",
            "Lretrofit2/e<",
            "Lokhttp3/ResponseBody;",
            "TResponseT;>;",
            "Lretrofit2/b<",
            "TResponseT;",
            "Lretrofit2/Call<",
            "TResponseT;>;>;Z)V"
        }
    .end annotation

    .line 185
    invoke-direct {p0, p1, p2, p3}, Lretrofit2/g;-><init>(Lretrofit2/o;Lokhttp3/Call$Factory;Lretrofit2/e;)V

    .line 186
    iput-object p4, p0, Lretrofit2/g$b;->a:Lretrofit2/b;

    .line 187
    iput-boolean p5, p0, Lretrofit2/g$b;->b:Z

    return-void
.end method


# virtual methods
.method protected final a(Lretrofit2/Call;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TResponseT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lretrofit2/g$b;->a:Lretrofit2/b;

    invoke-interface {v0, p1}, Lretrofit2/b;->a(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lretrofit2/Call;

    .line 194
    array-length v0, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object p2, p2, v0

    check-cast p2, Lkotlin/c/d;

    .line 205
    :try_start_0
    iget-boolean v0, p0, Lretrofit2/g$b;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "frame"

    if-eqz v0, :cond_1

    .line 1130
    :try_start_1
    new-instance v0, Lkotlinx/coroutines/o;

    invoke-static {p2}, Lkotlin/c/a/b;->a(Lkotlin/c/d;)Lkotlin/c/d;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lkotlinx/coroutines/o;-><init>(Lkotlin/c/d;I)V

    .line 1134
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/n;

    .line 1067
    new-instance v3, Lretrofit2/i$b;

    invoke-direct {v3, p1}, Lretrofit2/i$b;-><init>(Lretrofit2/Call;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v3}, Lkotlinx/coroutines/n;->a(Lkotlin/jvm/functions/Function1;)V

    .line 1070
    new-instance v3, Lretrofit2/i$d;

    invoke-direct {v3, v1}, Lretrofit2/i$d;-><init>(Lkotlinx/coroutines/n;)V

    check-cast v3, Lretrofit2/c;

    invoke-interface {p1, v3}, Lretrofit2/Call;->a(Lretrofit2/c;)V

    .line 1135
    invoke-virtual {v0}, Lkotlinx/coroutines/o;->g()Ljava/lang/Object;

    move-result-object p1

    .line 2057
    sget-object v0, Lkotlin/c/a/a;->COROUTINE_SUSPENDED:Lkotlin/c/a/a;

    if-ne p1, v0, :cond_0

    .line 1129
    invoke-static {p2, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p1

    .line 3122
    :cond_1
    new-instance v0, Lkotlinx/coroutines/o;

    invoke-static {p2}, Lkotlin/c/a/b;->a(Lkotlin/c/d;)Lkotlin/c/d;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lkotlinx/coroutines/o;-><init>(Lkotlin/c/d;I)V

    .line 3126
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/n;

    .line 3033
    new-instance v3, Lretrofit2/i$a;

    invoke-direct {v3, p1}, Lretrofit2/i$a;-><init>(Lretrofit2/Call;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v3}, Lkotlinx/coroutines/n;->a(Lkotlin/jvm/functions/Function1;)V

    .line 3036
    new-instance v3, Lretrofit2/i$c;

    invoke-direct {v3, v1}, Lretrofit2/i$c;-><init>(Lkotlinx/coroutines/n;)V

    check-cast v3, Lretrofit2/c;

    invoke-interface {p1, v3}, Lretrofit2/Call;->a(Lretrofit2/c;)V

    .line 3127
    invoke-virtual {v0}, Lkotlinx/coroutines/o;->g()Ljava/lang/Object;

    move-result-object p1

    .line 4057
    sget-object v0, Lkotlin/c/a/a;->COROUTINE_SUSPENDED:Lkotlin/c/a/a;

    if-ne p1, v0, :cond_2

    .line 3121
    invoke-static {p2, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    return-object p1

    :catch_0
    move-exception p1

    .line 209
    invoke-static {p1, p2}, Lretrofit2/i;->a(Ljava/lang/Exception;Lkotlin/c/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.class final Lretrofit2/g$c;
.super Lretrofit2/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
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


# direct methods
.method constructor <init>(Lretrofit2/o;Lokhttp3/Call$Factory;Lretrofit2/e;Lretrofit2/b;)V
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
            "TResponseT;>;>;)V"
        }
    .end annotation

    .line 158
    invoke-direct {p0, p1, p2, p3}, Lretrofit2/g;-><init>(Lretrofit2/o;Lokhttp3/Call$Factory;Lretrofit2/e;)V

    .line 159
    iput-object p4, p0, Lretrofit2/g$c;->a:Lretrofit2/b;

    return-void
.end method


# virtual methods
.method protected final a(Lretrofit2/Call;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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

    .line 163
    iget-object v0, p0, Lretrofit2/g$c;->a:Lretrofit2/b;

    invoke-interface {v0, p1}, Lretrofit2/b;->a(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lretrofit2/Call;

    .line 166
    array-length v0, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object p2, p2, v0

    check-cast p2, Lkotlin/c/d;

    .line 1138
    :try_start_0
    new-instance v0, Lkotlinx/coroutines/o;

    invoke-static {p2}, Lkotlin/c/a/b;->a(Lkotlin/c/d;)Lkotlin/c/d;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lkotlinx/coroutines/o;-><init>(Lkotlin/c/d;I)V

    .line 1142
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/n;

    .line 1088
    new-instance v2, Lretrofit2/i$e;

    invoke-direct {v2, p1}, Lretrofit2/i$e;-><init>(Lretrofit2/Call;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v2}, Lkotlinx/coroutines/n;->a(Lkotlin/jvm/functions/Function1;)V

    .line 1091
    new-instance v2, Lretrofit2/i$f;

    invoke-direct {v2, v1}, Lretrofit2/i$f;-><init>(Lkotlinx/coroutines/n;)V

    check-cast v2, Lretrofit2/c;

    invoke-interface {p1, v2}, Lretrofit2/Call;->a(Lretrofit2/c;)V

    .line 1143
    invoke-virtual {v0}, Lkotlinx/coroutines/o;->g()Ljava/lang/Object;

    move-result-object p1

    .line 2057
    sget-object v0, Lkotlin/c/a/a;->COROUTINE_SUSPENDED:Lkotlin/c/a/a;

    if-ne p1, v0, :cond_0

    const-string v0, "frame"

    .line 1137
    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    .line 173
    invoke-static {p1, p2}, Lretrofit2/i;->a(Ljava/lang/Exception;Lkotlin/c/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

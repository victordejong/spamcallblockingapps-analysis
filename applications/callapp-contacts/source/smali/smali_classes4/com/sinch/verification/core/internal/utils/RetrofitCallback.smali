.class public Lcom/sinch/verification/core/internal/utils/RetrofitCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/c<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0010\u0007J\u001e\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J$\u0010\u000e\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000b2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0010H\u0016J\u000c\u0010\u0011\u001a\u00020\t*\u00020\u0012H\u0002R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/sinch/verification/core/internal/utils/RetrofitCallback;",
        "T",
        "Lretrofit2/Callback;",
        "retrofit",
        "Lretrofit2/Retrofit;",
        "apiCallback",
        "Lcom/sinch/verification/core/internal/utils/ApiCallback;",
        "(Lretrofit2/Retrofit;Lcom/sinch/verification/core/internal/utils/ApiCallback;)V",
        "onFailure",
        "",
        "call",
        "Lretrofit2/Call;",
        "t",
        "",
        "onResponse",
        "response",
        "Lretrofit2/Response;",
        "convertToError",
        "Lokhttp3/ResponseBody;",
        "verification-core_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final apiCallback:Lcom/sinch/verification/core/internal/utils/ApiCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sinch/verification/core/internal/utils/ApiCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final retrofit:Lretrofit2/Retrofit;


# direct methods
.method public constructor <init>(Lretrofit2/Retrofit;Lcom/sinch/verification/core/internal/utils/ApiCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Retrofit;",
            "Lcom/sinch/verification/core/internal/utils/ApiCallback<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "retrofit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sinch/verification/core/internal/utils/RetrofitCallback;->retrofit:Lretrofit2/Retrofit;

    iput-object p2, p0, Lcom/sinch/verification/core/internal/utils/RetrofitCallback;->apiCallback:Lcom/sinch/verification/core/internal/utils/ApiCallback;

    return-void
.end method

.method private final convertToError(Lokhttp3/ResponseBody;)V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/sinch/verification/core/internal/utils/RetrofitCallback;->retrofit:Lretrofit2/Retrofit;

    const-class v1, Lcom/sinch/verification/core/internal/error/ApiErrorData;

    check-cast v1, Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, v1, v2}, Lretrofit2/Retrofit;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/e;

    move-result-object v0

    .line 38
    invoke-interface {v0, p1}, Lretrofit2/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sinch/verification/core/internal/error/ApiErrorData;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sinch/verification/core/internal/utils/RetrofitCallback;->apiCallback:Lcom/sinch/verification/core/internal/utils/ApiCallback;

    new-instance v1, Lcom/sinch/verification/core/internal/error/ApiCallException;

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1}, Lcom/sinch/verification/core/internal/error/ApiCallException;-><init>(Lcom/sinch/verification/core/internal/error/ApiErrorData;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/sinch/verification/core/internal/utils/ApiCallback;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/sinch/verification/core/internal/utils/RetrofitCallback;->apiCallback:Lcom/sinch/verification/core/internal/utils/ApiCallback;

    invoke-interface {p1, p2}, Lcom/sinch/verification/core/internal/utils/ApiCallback;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Lretrofit2/Response;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 29
    invoke-virtual {p2}, Lretrofit2/Response;->b()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sinch/verification/core/internal/utils/RetrofitCallback;->apiCallback:Lcom/sinch/verification/core/internal/utils/ApiCallback;

    invoke-interface {v0, p1, p2}, Lcom/sinch/verification/core/internal/utils/ApiCallback;->onSuccess(Ljava/lang/Object;Lretrofit2/Response;)V

    :cond_0
    return-void

    .line 31
    :cond_1
    invoke-virtual {p2}, Lretrofit2/Response;->c()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/sinch/verification/core/internal/utils/RetrofitCallback;->convertToError(Lokhttp3/ResponseBody;)V

    :cond_2
    return-void
.end method

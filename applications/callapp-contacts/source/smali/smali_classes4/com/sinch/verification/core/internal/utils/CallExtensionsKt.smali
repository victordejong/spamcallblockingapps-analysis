.class public final Lcom/sinch/verification/core/internal/utils/CallExtensionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a,\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "enqueue",
        "",
        "T",
        "Lretrofit2/Call;",
        "retrofit",
        "Lretrofit2/Retrofit;",
        "apiCallback",
        "Lcom/sinch/verification/core/internal/utils/ApiCallback;",
        "verification-core_productionRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final enqueue(Lretrofit2/Call;Lretrofit2/Retrofit;Lcom/sinch/verification/core/internal/utils/ApiCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lretrofit2/Retrofit;",
            "Lcom/sinch/verification/core/internal/utils/ApiCallback<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "$this$enqueue"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retrofit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/sinch/verification/core/internal/utils/RetrofitCallback;

    invoke-direct {v0, p1, p2}, Lcom/sinch/verification/core/internal/utils/RetrofitCallback;-><init>(Lretrofit2/Retrofit;Lcom/sinch/verification/core/internal/utils/ApiCallback;)V

    check-cast v0, Lretrofit2/c;

    invoke-interface {p0, v0}, Lretrofit2/Call;->a(Lretrofit2/c;)V

    return-void
.end method

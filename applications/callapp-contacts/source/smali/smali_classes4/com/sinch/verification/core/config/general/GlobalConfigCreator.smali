.class public interface abstract Lcom/sinch/verification/core/config/general/GlobalConfigCreator;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0016\u0010\u0006\u001a\u00020\u00002\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/sinch/verification/core/config/general/GlobalConfigCreator;",
        "",
        "apiHost",
        "",
        "build",
        "Lcom/sinch/verification/core/config/general/GlobalConfig;",
        "interceptors",
        "",
        "Lokhttp3/Interceptor;",
        "verification-core_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract apiHost(Ljava/lang/String;)Lcom/sinch/verification/core/config/general/GlobalConfigCreator;
.end method

.method public abstract build()Lcom/sinch/verification/core/config/general/GlobalConfig;
.end method

.method public abstract interceptors(Ljava/util/List;)Lcom/sinch/verification/core/config/general/GlobalConfigCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lokhttp3/Interceptor;",
            ">;)",
            "Lcom/sinch/verification/core/config/general/GlobalConfigCreator;"
        }
    .end annotation
.end method

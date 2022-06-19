.class public final Lio/bidmachine/nativead/NativeRequest$Builder;
.super Lio/bidmachine/AdRequest$AdRequestBuilderImpl;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/models/INativeRequestBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/NativeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdRequest$AdRequestBuilderImpl<",
        "Lio/bidmachine/nativead/NativeRequest$Builder;",
        "Lio/bidmachine/nativead/NativeRequest;",
        ">;",
        "Lio/bidmachine/models/INativeRequestBuilder<",
        "Lio/bidmachine/nativead/NativeRequest$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createRequest()Lio/bidmachine/AdRequest;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeRequest$Builder;->createRequest()Lio/bidmachine/nativead/NativeRequest;

    move-result-object v0

    return-object v0
.end method

.method protected final createRequest()Lio/bidmachine/nativead/NativeRequest;
    .locals 2

    .line 47
    new-instance v0, Lio/bidmachine/nativead/NativeRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/nativead/NativeRequest;-><init>(Lio/bidmachine/nativead/NativeRequest$1;)V

    return-object v0
.end method

.method public final bridge synthetic setMediaAssetTypes([Lio/bidmachine/MediaAssetType;)Lio/bidmachine/models/INativeRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/NativeRequest$Builder;->setMediaAssetTypes([Lio/bidmachine/MediaAssetType;)Lio/bidmachine/nativead/NativeRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs setMediaAssetTypes([Lio/bidmachine/MediaAssetType;)Lio/bidmachine/nativead/NativeRequest$Builder;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeRequest$Builder;->prepareRequest()V

    .line 53
    array-length v0, p1

    if-lez v0, :cond_0

    .line 54
    iget-object v0, p0, Lio/bidmachine/nativead/NativeRequest$Builder;->params:Lio/bidmachine/AdRequest;

    check-cast v0, Lio/bidmachine/nativead/NativeRequest;

    invoke-static {v0}, Lio/bidmachine/nativead/NativeRequest;->access$100(Lio/bidmachine/nativead/NativeRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 55
    iget-object v0, p0, Lio/bidmachine/nativead/NativeRequest$Builder;->params:Lio/bidmachine/AdRequest;

    check-cast v0, Lio/bidmachine/nativead/NativeRequest;

    invoke-static {v0}, Lio/bidmachine/nativead/NativeRequest;->access$100(Lio/bidmachine/nativead/NativeRequest;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

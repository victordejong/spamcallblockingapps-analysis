.class public abstract Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;
.super Lio/bidmachine/AdRequest$AdRequestBuilderImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/FullScreenAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FullScreenRequestBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SelfType::",
        "Lio/bidmachine/models/RequestBuilder;",
        "ReturnType:",
        "Lio/bidmachine/FullScreenAdRequest;",
        ">",
        "Lio/bidmachine/AdRequest$AdRequestBuilderImpl<",
        "TSelfType;TReturnType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setAdContentType(Lio/bidmachine/AdContentType;)Lio/bidmachine/models/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdContentType;",
            ")TSelfType;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->prepareRequest()V

    .line 40
    iget-object v0, p0, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->params:Lio/bidmachine/AdRequest;

    check-cast v0, Lio/bidmachine/FullScreenAdRequest;

    iput-object p1, v0, Lio/bidmachine/FullScreenAdRequest;->adContentType:Lio/bidmachine/AdContentType;

    return-object p0
.end method

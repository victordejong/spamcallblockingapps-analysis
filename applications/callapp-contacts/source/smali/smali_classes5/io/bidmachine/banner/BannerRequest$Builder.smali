.class public final Lio/bidmachine/banner/BannerRequest$Builder;
.super Lio/bidmachine/AdRequest$AdRequestBuilderImpl;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/models/IBannerRequestBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/banner/BannerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdRequest$AdRequestBuilderImpl<",
        "Lio/bidmachine/banner/BannerRequest$Builder;",
        "Lio/bidmachine/banner/BannerRequest;",
        ">;",
        "Lio/bidmachine/models/IBannerRequestBuilder<",
        "Lio/bidmachine/banner/BannerRequest$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createRequest()Lio/bidmachine/AdRequest;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lio/bidmachine/banner/BannerRequest$Builder;->createRequest()Lio/bidmachine/banner/BannerRequest;

    move-result-object v0

    return-object v0
.end method

.method protected final createRequest()Lio/bidmachine/banner/BannerRequest;
    .locals 2

    .line 45
    new-instance v0, Lio/bidmachine/banner/BannerRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/bidmachine/banner/BannerRequest;-><init>(Lio/bidmachine/banner/BannerRequest$1;)V

    return-object v0
.end method

.method public final setSize(Lio/bidmachine/banner/BannerSize;)Lio/bidmachine/banner/BannerRequest$Builder;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lio/bidmachine/banner/BannerRequest$Builder;->prepareRequest()V

    .line 51
    iget-object v0, p0, Lio/bidmachine/banner/BannerRequest$Builder;->params:Lio/bidmachine/AdRequest;

    check-cast v0, Lio/bidmachine/banner/BannerRequest;

    invoke-static {v0, p1}, Lio/bidmachine/banner/BannerRequest;->access$102(Lio/bidmachine/banner/BannerRequest;Lio/bidmachine/banner/BannerSize;)Lio/bidmachine/banner/BannerSize;

    return-object p0
.end method

.method public final bridge synthetic setSize(Lio/bidmachine/banner/BannerSize;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lio/bidmachine/banner/BannerRequest$Builder;->setSize(Lio/bidmachine/banner/BannerSize;)Lio/bidmachine/banner/BannerRequest$Builder;

    move-result-object p1

    return-object p1
.end method

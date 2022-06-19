.class final Lio/bidmachine/FullScreenAdRequest$a;
.super Lio/bidmachine/AdRequest$BaseUnifiedAdRequestParams;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/FullScreenAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdRequest<",
        "TSelfType;",
        "Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;",
        ">.BaseUnifiedAdRequestParams;",
        "Lio/bidmachine/unified/UnifiedFullscreenAdRequestParams;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/FullScreenAdRequest;


# direct methods
.method constructor <init>(Lio/bidmachine/FullScreenAdRequest;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lio/bidmachine/FullScreenAdRequest$a;->this$0:Lio/bidmachine/FullScreenAdRequest;

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/AdRequest$BaseUnifiedAdRequestParams;-><init>(Lio/bidmachine/AdRequest;Lio/bidmachine/TargetingParams;Lio/bidmachine/models/DataRestrictions;)V

    return-void
.end method


# virtual methods
.method public final isContentTypeMatch(Lio/bidmachine/AdContentType;)Z
    .locals 2

    .line 55
    iget-object v0, p0, Lio/bidmachine/FullScreenAdRequest$a;->this$0:Lio/bidmachine/FullScreenAdRequest;

    iget-object v0, v0, Lio/bidmachine/FullScreenAdRequest;->adContentType:Lio/bidmachine/AdContentType;

    sget-object v1, Lio/bidmachine/AdContentType;->All:Lio/bidmachine/AdContentType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lio/bidmachine/FullScreenAdRequest$a;->this$0:Lio/bidmachine/FullScreenAdRequest;

    iget-object v0, v0, Lio/bidmachine/FullScreenAdRequest;->adContentType:Lio/bidmachine/AdContentType;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.class public Lnet/pubnative/lite/sdk/vpaid/models/vast/InLine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/vpaid/models/vast/VastAdSource;


# instance fields
.field private adSystem:Lnet/pubnative/lite/sdk/vpaid/models/vast/AdSystem;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
    .end annotation
.end field

.field private creatives:Lnet/pubnative/lite/sdk/vpaid/models/vast/Creatives;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
    .end annotation
.end field

.field private error:Lnet/pubnative/lite/sdk/vpaid/models/vast/Error;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
    .end annotation
.end field

.field private extensionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/Extension;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
        value = "Extensions"
    .end annotation
.end field

.field private impressionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/Impression;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
        value = "Impression"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdSystem()Lnet/pubnative/lite/sdk/vpaid/models/vast/AdSystem;
    .locals 1

    .line 26
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/InLine;->adSystem:Lnet/pubnative/lite/sdk/vpaid/models/vast/AdSystem;

    return-object v0
.end method

.method public getCreatives()Lnet/pubnative/lite/sdk/vpaid/models/vast/Creatives;
    .locals 1

    .line 36
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/InLine;->creatives:Lnet/pubnative/lite/sdk/vpaid/models/vast/Creatives;

    return-object v0
.end method

.method public getError()Lnet/pubnative/lite/sdk/vpaid/models/vast/Error;
    .locals 1

    .line 31
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/InLine;->error:Lnet/pubnative/lite/sdk/vpaid/models/vast/Error;

    return-object v0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/Extension;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/InLine;->extensionList:Ljava/util/List;

    return-object v0
.end method

.method public getImpressionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/Impression;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/InLine;->impressionList:Ljava/util/List;

    return-object v0
.end method

.class public Lnet/pubnative/lite/sdk/vpaid/models/vast/Creatives;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private creativeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/Creative;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
        value = "Creative"
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
.method public getCreativeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/Creative;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Creatives;->creativeList:Ljava/util/List;

    return-object v0
.end method

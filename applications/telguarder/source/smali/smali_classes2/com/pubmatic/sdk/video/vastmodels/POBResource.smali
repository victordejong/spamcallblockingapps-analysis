.class public Lcom/pubmatic/sdk/video/vastmodels/POBResource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/video/xmlserialiser/POBXMLNodeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/video/vastmodels/POBResource$a;
    }
.end annotation


# instance fields
.field private a:Lcom/pubmatic/sdk/video/vastmodels/POBResource$a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;)V
    .locals 3

    const-string v0, "creativeType"

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBResource;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "HTMLResource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "StaticResource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "IFrameResource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBResource$a;->b:Lcom/pubmatic/sdk/video/vastmodels/POBResource$a;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBResource$a;->a:Lcom/pubmatic/sdk/video/vastmodels/POBResource$a;

    :goto_1
    iput-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBResource;->a:Lcom/pubmatic/sdk/video/vastmodels/POBResource$a;

    goto :goto_2

    :pswitch_2
    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBResource$a;->c:Lcom/pubmatic/sdk/video/vastmodels/POBResource$a;

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Lcom/pubmatic/sdk/video/xmlserialiser/POBNodeBuilder;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pubmatic/sdk/video/vastmodels/POBResource;->c:Ljava/lang/String;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x165f3d2e -> :sswitch_2
        0x285474bc -> :sswitch_1
        0x72ef4cd9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCreativeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBResource;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBResource;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceType()Lcom/pubmatic/sdk/video/vastmodels/POBResource$a;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBResource;->a:Lcom/pubmatic/sdk/video/vastmodels/POBResource$a;

    return-object v0
.end method

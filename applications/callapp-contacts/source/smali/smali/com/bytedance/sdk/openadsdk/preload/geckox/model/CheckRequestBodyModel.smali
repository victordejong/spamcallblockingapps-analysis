.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$Channel;,
        Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$TargetChannel;,
        Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$Channels;,
        Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$ProcessorParams;,
        Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$LocalChannel;,
        Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$GroupType;,
        Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$Group;,
        Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$ChannelInfo;
    }
.end annotation


# instance fields
.field private common:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "common"
    .end annotation
.end field

.field private custom:Ljava/util/Map;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "custom"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private deployment:Ljava/util/Map;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "deployment"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$ChannelInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private deployments:Ljava/util/Map;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "deployments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private local:Ljava/util/Map;
    .annotation runtime Lcom/bytedance/sdk/openadsdk/preload/a/a/c;
        a = "local"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$LocalChannel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public putChannelInfo(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$ChannelInfo;",
            ">;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel;->deployment:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel;->deployment:Ljava/util/Map;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel;->deployment:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCommon(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel;->common:Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;

    return-void
.end method

.method public setCustom(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel;->custom:Ljava/util/Map;

    return-void
.end method

.method public setDeployments(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel;->deployments:Ljava/util/Map;

    return-void
.end method

.method public setLocal(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$LocalChannel;",
            ">;>;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel;->local:Ljava/util/Map;

    return-void
.end method

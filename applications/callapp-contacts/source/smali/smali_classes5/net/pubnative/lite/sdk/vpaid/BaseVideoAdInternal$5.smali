.class Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$OnAssetsLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->createAssetsLoadListener()Lnet/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$OnAssetsLoaded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$5;->this$0:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetsLoaded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$5;->this$0:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

    invoke-static {v0, p1, p2}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->access$500(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$5;->this$0:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->onAdLoadFailInternal(Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V

    return-void
.end method

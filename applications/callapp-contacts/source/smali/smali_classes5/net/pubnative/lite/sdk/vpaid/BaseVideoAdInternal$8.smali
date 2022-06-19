.class Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->onAdLoadFailInternal(Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

.field final synthetic val$issue:Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$8;->this$0:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$8;->val$issue:Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 299
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$8;->this$0:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$8;->val$issue:Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->access$300(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;Lnet/pubnative/lite/sdk/vpaid/PlayerInfo;)V

    return-void
.end method

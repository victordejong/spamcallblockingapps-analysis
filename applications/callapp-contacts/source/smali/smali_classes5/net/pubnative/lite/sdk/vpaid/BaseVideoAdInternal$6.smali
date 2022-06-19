.class Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->prepareAdController(Ljava/lang/String;Ljava/lang/String;)V
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

    .line 272
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$6;->this$0:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 275
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$6;->this$0:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->access$600(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;)V

    .line 276
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$6;->this$0:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->access$200(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;)Lnet/pubnative/lite/sdk/vpaid/VideoAdController;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal$6;->this$0:Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;

    invoke-static {v1}, Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;->access$700(Lnet/pubnative/lite/sdk/vpaid/BaseVideoAdInternal;)Lnet/pubnative/lite/sdk/vpaid/VideoAdController$OnPreparedListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/VideoAdController;->prepare(Lnet/pubnative/lite/sdk/vpaid/VideoAdController$OnPreparedListener;)V

    return-void
.end method

.class Lnet/pubnative/lite/sdk/models/AdRequestFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/utils/HyBidAdvertisingId$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/models/AdRequestFactory;->createAdRequest(Ljava/lang/String;Lnet/pubnative/lite/sdk/models/AdSize;ZLnet/pubnative/lite/sdk/models/AdRequestFactory$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/models/AdRequestFactory;

.field final synthetic val$adSize:Lnet/pubnative/lite/sdk/models/AdSize;

.field final synthetic val$callback:Lnet/pubnative/lite/sdk/models/AdRequestFactory$Callback;

.field final synthetic val$zoneid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/models/AdRequestFactory;Ljava/lang/String;Lnet/pubnative/lite/sdk/models/AdSize;Lnet/pubnative/lite/sdk/models/AdRequestFactory$Callback;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory$1;->this$0:Lnet/pubnative/lite/sdk/models/AdRequestFactory;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory$1;->val$zoneid:Ljava/lang/String;

    iput-object p3, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory$1;->val$adSize:Lnet/pubnative/lite/sdk/models/AdSize;

    iput-object p4, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory$1;->val$callback:Lnet/pubnative/lite/sdk/models/AdRequestFactory$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHyBidAdvertisingIdFinish(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 6

    .line 86
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory$1;->this$0:Lnet/pubnative/lite/sdk/models/AdRequestFactory;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory$1;->val$zoneid:Ljava/lang/String;

    iget-object v2, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory$1;->val$adSize:Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v5, p0, Lnet/pubnative/lite/sdk/models/AdRequestFactory$1;->val$callback:Lnet/pubnative/lite/sdk/models/AdRequestFactory$Callback;

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lnet/pubnative/lite/sdk/models/AdRequestFactory;->access$000(Lnet/pubnative/lite/sdk/models/AdRequestFactory;Ljava/lang/String;Lnet/pubnative/lite/sdk/models/AdSize;Ljava/lang/String;ZLnet/pubnative/lite/sdk/models/AdRequestFactory$Callback;)V

    return-void
.end method

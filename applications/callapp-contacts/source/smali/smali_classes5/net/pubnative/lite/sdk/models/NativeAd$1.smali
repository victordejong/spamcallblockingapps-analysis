.class Lnet/pubnative/lite/sdk/models/NativeAd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/models/NativeAd;->startTrackingClicks(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/models/NativeAd;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/models/NativeAd;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lnet/pubnative/lite/sdk/models/NativeAd$1;->this$0:Lnet/pubnative/lite/sdk/models/NativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 272
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/NativeAd$1;->this$0:Lnet/pubnative/lite/sdk/models/NativeAd;

    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/models/NativeAd;->onNativeClick(Landroid/view/View;)V

    return-void
.end method

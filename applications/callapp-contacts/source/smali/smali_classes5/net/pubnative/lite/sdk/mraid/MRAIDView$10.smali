.class Lnet/pubnative/lite/sdk/mraid/MRAIDView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/mraid/MRAIDView;->addCloseRegion(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V
    .locals 0

    .line 1155
    iput-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$10;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1158
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$10;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->close()V

    return-void
.end method

.class Lcom/verizon/ads/webview/MRAIDExpandedActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/webview/MRAIDExpandedActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/verizon/ads/webview/MRAIDExpandedActivity;


# direct methods
.method constructor <init>(Lcom/verizon/ads/webview/MRAIDExpandedActivity;Landroid/widget/ImageView;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$3;->b:Lcom/verizon/ads/webview/MRAIDExpandedActivity;

    iput-object p2, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$3;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$3;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

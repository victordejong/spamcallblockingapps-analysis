.class Lcom/verizon/ads/vastcontroller/VASTController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/vastcontroller/VASTController;->attach(Landroid/view/ViewGroup;Lcom/verizon/ads/vastcontroller/VASTController$AttachListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/vastcontroller/VASTController;


# direct methods
.method constructor <init>(Lcom/verizon/ads/vastcontroller/VASTController;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTController$2;->a:Lcom/verizon/ads/vastcontroller/VASTController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 287
    iget-object p1, p0, Lcom/verizon/ads/vastcontroller/VASTController$2;->a:Lcom/verizon/ads/vastcontroller/VASTController;

    invoke-static {p1}, Lcom/verizon/ads/vastcontroller/VASTController;->a(Lcom/verizon/ads/vastcontroller/VASTController;)Lcom/verizon/ads/vastcontroller/VASTController$VASTControllerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/verizon/ads/vastcontroller/VASTController$VASTControllerListener;->onClicked()V

    return-void
.end method

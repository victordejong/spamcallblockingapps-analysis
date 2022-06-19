.class Lcom/verizon/ads/vastcontroller/ImageButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/vastcontroller/ImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/vastcontroller/ImageButton;


# direct methods
.method constructor <init>(Lcom/verizon/ads/vastcontroller/ImageButton;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/ImageButton$1;->a:Lcom/verizon/ads/vastcontroller/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/ImageButton$1;->a:Lcom/verizon/ads/vastcontroller/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/verizon/ads/vastcontroller/ImageButton;->setVisibility(I)V

    return-void
.end method

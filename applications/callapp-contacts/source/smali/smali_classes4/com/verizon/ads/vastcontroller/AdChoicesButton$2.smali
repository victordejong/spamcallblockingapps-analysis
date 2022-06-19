.class Lcom/verizon/ads/vastcontroller/AdChoicesButton$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/vastcontroller/AdChoicesButton;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/vastcontroller/AdChoicesButton;


# direct methods
.method constructor <init>(Lcom/verizon/ads/vastcontroller/AdChoicesButton;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton$2;->a:Lcom/verizon/ads/vastcontroller/AdChoicesButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/verizon/ads/vastcontroller/AdChoicesButton$2;->a:Lcom/verizon/ads/vastcontroller/AdChoicesButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/verizon/ads/vastcontroller/AdChoicesButton;->setVisibility(I)V

    return-void
.end method

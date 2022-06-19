.class Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler$a;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler$a;->a:Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler$a$a;

    invoke-direct {v1, p0}, Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler$a$a;-><init>(Lcom/pubmatic/sdk/openwrap/eventhandler/dfp/DFPInterstitialEventHandler$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

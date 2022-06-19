.class Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$a;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$a;->a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$a$a;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$a$a;-><init>(Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$a;)V

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

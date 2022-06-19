.class Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$a;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$a;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$a$a;->a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$a$a;->a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$a;

    iget-object v0, v0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$a;->a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;

    new-instance v1, Lcom/pubmatic/sdk/common/POBError;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->a(Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Unable to render creative within %s seconds."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3f1

    invoke-direct {v1, v3, v2}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->notifyError(Lcom/pubmatic/sdk/common/POBError;)V

    return-void
.end method

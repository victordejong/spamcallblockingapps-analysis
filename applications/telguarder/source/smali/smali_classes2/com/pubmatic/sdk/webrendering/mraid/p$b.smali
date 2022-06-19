.class Lcom/pubmatic/sdk/webrendering/mraid/p$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/webrendering/mraid/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/webrendering/mraid/p;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/webrendering/mraid/p;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/webrendering/mraid/p;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$b;->a:Lcom/pubmatic/sdk/webrendering/mraid/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Double;)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$b;->a:Lcom/pubmatic/sdk/webrendering/mraid/p;

    invoke-static {v0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->d(Lcom/pubmatic/sdk/webrendering/mraid/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$b;->a:Lcom/pubmatic/sdk/webrendering/mraid/p;

    invoke-static {v0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/p;->a(Lcom/pubmatic/sdk/webrendering/mraid/p;Ljava/lang/Double;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$b;->a:Lcom/pubmatic/sdk/webrendering/mraid/p;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/pubmatic/sdk/webrendering/mraid/p;->a(Lcom/pubmatic/sdk/webrendering/mraid/p;Ljava/lang/Double;)V

    :goto_0
    return-void
.end method

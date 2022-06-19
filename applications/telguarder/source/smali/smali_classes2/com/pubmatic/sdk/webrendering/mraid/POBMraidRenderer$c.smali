.class Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$c;->a:Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$c;->a:Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;

    invoke-static {v0}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->d(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$c;->a:Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;

    invoke-static {v0}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->e(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;)Lcom/pubmatic/sdk/webrendering/mraid/n;

    move-result-object v0

    sget-object v1, Lcom/pubmatic/sdk/webrendering/mraid/b;->b:Lcom/pubmatic/sdk/webrendering/mraid/b;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/b;)V

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$c;->a:Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;

    invoke-static {v0}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->f(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;)Lcom/pubmatic/sdk/webrendering/mraid/p;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$c;->a:Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;

    invoke-static {v1}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->e(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;)Lcom/pubmatic/sdk/webrendering/mraid/n;

    move-result-object v1

    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$c;->a:Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;

    invoke-static {v2}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->d(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/pubmatic/sdk/webrendering/mraid/p;->b(Lcom/pubmatic/sdk/webrendering/mraid/n;Z)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer$c;->a:Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;->a(Lcom/pubmatic/sdk/webrendering/mraid/POBMraidRenderer;Z)Z

    return-void
.end method

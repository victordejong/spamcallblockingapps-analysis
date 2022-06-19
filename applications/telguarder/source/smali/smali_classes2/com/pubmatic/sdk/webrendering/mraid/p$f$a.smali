.class Lcom/pubmatic/sdk/webrendering/mraid/p$f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/webrendering/mraid/p$f;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/webrendering/mraid/p$f;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/webrendering/mraid/p$f;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$f$a;->a:Lcom/pubmatic/sdk/webrendering/mraid/p$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$f$a;->a:Lcom/pubmatic/sdk/webrendering/mraid/p$f;

    iget-object p2, p1, Lcom/pubmatic/sdk/webrendering/mraid/p$f;->d:Lcom/pubmatic/sdk/webrendering/mraid/p;

    iget-object p1, p1, Lcom/pubmatic/sdk/webrendering/mraid/p$f;->b:Lcom/pubmatic/sdk/webrendering/mraid/n;

    invoke-static {p2}, Lcom/pubmatic/sdk/webrendering/mraid/p;->h(Lcom/pubmatic/sdk/webrendering/mraid/p;)Z

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/pubmatic/sdk/webrendering/mraid/p;->b(Lcom/pubmatic/sdk/webrendering/mraid/n;Z)V

    return-void
.end method

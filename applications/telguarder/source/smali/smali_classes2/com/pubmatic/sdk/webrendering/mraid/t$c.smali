.class Lcom/pubmatic/sdk/webrendering/mraid/t$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/webrendering/mraid/t;->a(Landroid/webkit/WebView;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/pubmatic/sdk/webrendering/mraid/t;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/webrendering/mraid/t;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/t$c;->b:Lcom/pubmatic/sdk/webrendering/mraid/t;

    iput-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/t$c;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/t$c;->b:Lcom/pubmatic/sdk/webrendering/mraid/t;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/webrendering/mraid/t;->b()V

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/t$c;->b:Lcom/pubmatic/sdk/webrendering/mraid/t;

    invoke-static {p1}, Lcom/pubmatic/sdk/webrendering/mraid/t;->d(Lcom/pubmatic/sdk/webrendering/mraid/t;)Lcom/pubmatic/sdk/webrendering/mraid/t$d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/t$c;->b:Lcom/pubmatic/sdk/webrendering/mraid/t;

    invoke-static {p1}, Lcom/pubmatic/sdk/webrendering/mraid/t;->d(Lcom/pubmatic/sdk/webrendering/mraid/t;)Lcom/pubmatic/sdk/webrendering/mraid/t$d;

    move-result-object p1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/t$c;->a:Landroid/webkit/WebView;

    invoke-interface {p1, v0}, Lcom/pubmatic/sdk/webrendering/mraid/t$d;->a(Landroid/webkit/WebView;)V

    :cond_0
    return-void
.end method

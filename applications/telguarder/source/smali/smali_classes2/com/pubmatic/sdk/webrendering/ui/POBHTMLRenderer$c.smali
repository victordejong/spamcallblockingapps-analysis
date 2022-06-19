.class Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$c;->a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer$c;->a:Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;

    invoke-static {p1, p2}, Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;->a(Lcom/pubmatic/sdk/webrendering/ui/POBHTMLRenderer;Z)Z

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

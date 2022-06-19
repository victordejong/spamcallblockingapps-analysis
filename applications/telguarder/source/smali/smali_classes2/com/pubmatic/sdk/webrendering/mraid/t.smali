.class Lcom/pubmatic/sdk/webrendering/mraid/t;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/webrendering/mraid/t$d;
    }
.end annotation


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/content/Context;

.field private c:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

.field private d:Lcom/pubmatic/sdk/webrendering/mraid/t$d;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/RelativeLayout;

.field private g:I

.field private h:Z

.field private final i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final j:Lcom/pubmatic/sdk/webrendering/ui/POBWebView$WebViewBackPress;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->h:Z

    new-instance p1, Lcom/pubmatic/sdk/webrendering/mraid/t$a;

    invoke-direct {p1, p0}, Lcom/pubmatic/sdk/webrendering/mraid/t$a;-><init>(Lcom/pubmatic/sdk/webrendering/mraid/t;)V

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance p1, Lcom/pubmatic/sdk/webrendering/mraid/t$b;

    invoke-direct {p1, p0}, Lcom/pubmatic/sdk/webrendering/mraid/t$b;-><init>(Lcom/pubmatic/sdk/webrendering/mraid/t;)V

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->j:Lcom/pubmatic/sdk/webrendering/ui/POBWebView$WebViewBackPress;

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/webrendering/mraid/t;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->b:Landroid/content/Context;

    return-object p0
.end method

.method private a(Landroid/webkit/WebView;IIII)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pubmatic/sdk/webrendering/POBUIUtil;->createCloseButton(Landroid/content/Context;)Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->e:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->e:Landroid/widget/ImageView;

    new-instance v2, Lcom/pubmatic/sdk/webrendering/mraid/t$c;

    invoke-direct {v2, p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/t$c;-><init>(Lcom/pubmatic/sdk/webrendering/mraid/t;Landroid/webkit/WebView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->f:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 p2, -0x80000000

    invoke-virtual {v1, p4, p5, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p4, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p4, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->f:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, p2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/pubmatic/sdk/webrendering/mraid/t;->a(Z)V

    invoke-virtual {p0, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->a:Landroid/view/ViewGroup;

    const/4 p3, 0x0

    invoke-virtual {p2, p0, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic b(Lcom/pubmatic/sdk/webrendering/mraid/t;)I
    .locals 0

    iget p0, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->g:I

    return p0
.end method

.method static synthetic c(Lcom/pubmatic/sdk/webrendering/mraid/t;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->h:Z

    return p0
.end method

.method static synthetic d(Lcom/pubmatic/sdk/webrendering/mraid/t;)Lcom/pubmatic/sdk/webrendering/mraid/t$d;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->d:Lcom/pubmatic/sdk/webrendering/mraid/t$d;

    return-object p0
.end method

.method static synthetic e(Lcom/pubmatic/sdk/webrendering/mraid/t;)Lcom/pubmatic/sdk/webrendering/ui/POBWebView;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->c:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->h:Z

    return-void
.end method

.method a(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->f:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 p1, -0x80000000

    invoke-virtual {v0, p3, p4, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method a(Landroid/view/ViewGroup;Lcom/pubmatic/sdk/webrendering/ui/POBWebView;IIIILcom/pubmatic/sdk/webrendering/mraid/t$d;)V
    .locals 6

    iput-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->c:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->b:Landroid/content/Context;

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->a:Landroid/view/ViewGroup;

    iput-object p7, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->d:Lcom/pubmatic/sdk/webrendering/mraid/t$d;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/pubmatic/sdk/webrendering/mraid/t;->a(Landroid/webkit/WebView;IIII)V

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/pubmatic/sdk/common/utility/POBUtils;->getDeviceOrientation(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->g:I

    return-void
.end method

.method a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->c:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->j:Lcom/pubmatic/sdk/webrendering/ui/POBWebView$WebViewBackPress;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;->setWebViewBackPress(Lcom/pubmatic/sdk/webrendering/ui/POBWebView$WebViewBackPress;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->c:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->f:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->f:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->c:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->c:Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;->setWebViewBackPress(Lcom/pubmatic/sdk/webrendering/ui/POBWebView$WebViewBackPress;)V

    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    return-void
.end method

.method c()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method d()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/t;->i:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    instance-of p1, p1, Lcom/pubmatic/sdk/webrendering/ui/POBWebView;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

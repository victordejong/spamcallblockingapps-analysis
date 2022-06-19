.class public Lcom/pubmatic/sdk/webrendering/ui/POBMraidViewContainer;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field private a:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/pubmatic/sdk/webrendering/ui/POBMraidViewContainer;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Lcom/pubmatic/sdk/webrendering/POBUIUtil;->createCloseButton(Landroid/content/Context;)Landroid/widget/ImageButton;

    move-result-object p2

    iput-object p2, p0, Lcom/pubmatic/sdk/webrendering/ui/POBMraidViewContainer;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/pubmatic/sdk/webrendering/ui/POBMraidViewContainer;->a:Landroid/widget/ImageView;

    new-instance v0, Lcom/pubmatic/sdk/webrendering/ui/POBMraidViewContainer$a;

    invoke-direct {v0, p0, p3, p1}, Lcom/pubmatic/sdk/webrendering/ui/POBMraidViewContainer$a;-><init>(Lcom/pubmatic/sdk/webrendering/ui/POBMraidViewContainer;ILandroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getCloseBtn()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/ui/POBMraidViewContainer;->a:Landroid/widget/ImageView;

    return-object v0
.end method

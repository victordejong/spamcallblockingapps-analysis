.class public Lgo0$d;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/view/View;

.field public d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lgo0;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lgo0$d;->e()V

    return-void
.end method

.method public static synthetic a(Lgo0$d;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lgo0$d;->c:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic b(Lgo0$d;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lgo0$d;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic c(Lgo0$d;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lgo0$d;->a:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic d(Lgo0$d;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lgo0$d;->d:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public final e()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbo0;->com_facebook_tooltip_bubble:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lao0;->com_facebook_tooltip_bubble_view_top_pointer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgo0$d;->a:Landroid/widget/ImageView;

    sget v0, Lao0;->com_facebook_tooltip_bubble_view_bottom_pointer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgo0$d;->b:Landroid/widget/ImageView;

    sget v0, Lao0;->com_facebook_body_frame:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lgo0$d;->c:Landroid/view/View;

    sget v0, Lao0;->com_facebook_button_xout:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgo0$d;->d:Landroid/widget/ImageView;

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lgo0$d;->a:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lgo0$d;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lgo0$d;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lgo0$d;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

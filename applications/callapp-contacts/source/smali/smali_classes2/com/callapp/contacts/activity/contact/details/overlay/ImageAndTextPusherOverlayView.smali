.class public Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;
.super Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Landroid/graphics/PorterDuff$Mode;

.field private g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILandroid/graphics/PorterDuff$Mode;IIILandroid/view/View$OnClickListener;Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;)V
    .locals 10

    .line 23
    invoke-static {p5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p6 .. p6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p7 .. p7}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;-><init>(Landroid/content/Context;IILandroid/graphics/PorterDuff$Mode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILandroid/graphics/PorterDuff$Mode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 28
    invoke-direct {p0, p1, v0, v1, p9}, Lcom/callapp/contacts/activity/contact/details/overlay/PusherOverlayView;-><init>(Landroid/content/Context;ZZLcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$OverlayViewListener;)V

    .line 29
    iput p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;->d:I

    .line 30
    iput p3, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;->e:I

    .line 31
    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;->f:Landroid/graphics/PorterDuff$Mode;

    .line 32
    iput-object p5, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;->a:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;->b:Ljava/lang/String;

    .line 34
    iput-object p7, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;->c:Ljava/lang/String;

    .line 35
    iput-object p8, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private static a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 71
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/16 p1, 0x8

    .line 74
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    const v0, 0x7f0a0715

    .line 45
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 46
    iget v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;->d:I

    if-eqz v1, :cond_0

    .line 47
    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;ILandroid/content/Context;)V

    const v0, 0x7f060088

    .line 48
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1354
    iput-object v0, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    .line 48
    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;->e:I

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;->f:Landroid/graphics/PorterDuff$Mode;

    .line 49
    invoke-virtual {v2, v0, v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1371
    iput-boolean v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 51
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0a067e

    .line 56
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    const v0, 0x7f0a067d

    .line 57
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    const v0, 0x7f0a097e

    .line 59
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 61
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;->g:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const/4 v1, 0x4

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected getLayoutResId()I
    .locals 1

    const v0, 0x7f0d0149

    return v0
.end method

.method protected getOverlayInitHeight()I
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;->getAnimationContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method protected getStartYposition()I
    .locals 2

    .line 80
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getScreenOrientation()I

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getScreenHeight(I)I

    move-result v0

    .line 81
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ImageAndTextPusherOverlayView;->getOverlayInitHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

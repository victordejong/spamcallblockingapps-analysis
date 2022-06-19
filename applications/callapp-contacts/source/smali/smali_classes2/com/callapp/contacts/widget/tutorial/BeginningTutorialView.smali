.class public Lcom/callapp/contacts/widget/tutorial/BeginningTutorialView;
.super Lcom/callapp/contacts/widget/tutorial/TutorialView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/widget/tutorial/TutorialView<",
        "Lcom/callapp/contacts/widget/tutorial/BeginningTutorialPageModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/tutorial/TutorialView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroidx/constraintlayout/widget/ConstraintLayout;[I)V
    .locals 10

    .line 65
    array-length v0, p2

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 67
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_0

    .line 68
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 69
    aget v5, p2, v3

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    invoke-static {}, Landroidx/core/view/v;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 71
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;)V

    .line 73
    invoke-virtual {v4}, Landroid/widget/ImageView;->getId()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    :cond_0
    new-instance p2, Landroidx/constraintlayout/widget/c;

    invoke-direct {p2}, Landroidx/constraintlayout/widget/c;-><init>()V

    .line 77
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/widget/c;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :goto_1
    if-ge v2, v0, :cond_1

    .line 79
    aget v5, v1, v2

    const/4 v6, 0x3

    const v7, 0x7f0a0a2e

    const/4 v8, 0x4

    .line 80
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070175

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    move-object v4, p2

    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/c;->a(IIIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/widget/c;->a([I)V

    .line 84
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;Landroid/view/View$OnClickListener;Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;)V
    .locals 5

    .line 21
    check-cast p1, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialPageModel;

    .line 1036
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/tutorial/TutorialView;->a(Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;Landroid/view/View$OnClickListener;Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;)V

    .line 1037
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->c()V

    const/4 p3, 0x1

    .line 1039
    invoke-static {p3}, Lcom/callapp/contacts/util/Activities;->getScreenHeight(I)I

    move-result p3

    const/4 v0, -0x2

    const/4 v1, 0x0

    const/16 v2, 0x500

    if-le p3, v2, :cond_0

    .line 1040
    new-instance p3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p3, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 1041
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialView;->addView(Landroid/view/View;)V

    .line 1042
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xe

    .line 1043
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, 0x3

    .line 1044
    iget-object v4, p0, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialView;->e:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1045
    invoke-virtual {p3, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1046
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialPageModel;->getIcons()[I

    move-result-object v2

    invoke-direct {p0, p3, v2}, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialView;->a(Landroidx/constraintlayout/widget/ConstraintLayout;[I)V

    goto :goto_0

    .line 1048
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f070172

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    .line 1049
    iget-object v2, p0, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialView;->b:Landroid/widget/TextView;

    invoke-virtual {v2, p3, v1, p3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1050
    iget-object p3, p0, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialView;->e:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07016d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1053
    :goto_0
    iget-object p3, p0, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialView;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialPageModel;->getCtaText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1054
    iget-object p3, p0, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialView;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialPageModel;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1055
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialView;->f:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1056
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialView;->f:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1057
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialView;->g:Landroid/widget/FrameLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1058
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialView;->e:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1059
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialView;->e:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

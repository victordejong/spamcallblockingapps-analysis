.class public Lcom/callapp/contacts/widget/tutorial/TutorialView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;",
        ">",
        "Landroid/widget/RelativeLayout;"
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/TextView;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/TextView;

.field protected e:Landroid/widget/ImageView;

.field protected f:Landroid/view/View;

.field protected g:Landroid/widget/FrameLayout;

.field private h:Landroid/view/View;

.field private i:Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

.field private j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/tutorial/TutorialView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/tutorial/TutorialView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1051
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d01c7

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a0a32

    .line 1052
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/tutorial/TutorialView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->a:Landroid/widget/TextView;

    const p1, 0x7f0a0a31

    .line 1053
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/tutorial/TutorialView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->b:Landroid/widget/TextView;

    const p1, 0x7f0a0a2e

    .line 1054
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/tutorial/TutorialView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->e:Landroid/widget/ImageView;

    const p1, 0x7f0a0a2c

    .line 1055
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/tutorial/TutorialView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->f:Landroid/view/View;

    const p1, 0x7f0a0a2d

    .line 1056
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/tutorial/TutorialView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->c:Landroid/widget/TextView;

    const p1, 0x7f0a0a2f

    .line 1057
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/tutorial/TutorialView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->g:Landroid/widget/FrameLayout;

    const p1, 0x7f0a0a30

    .line 1058
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/tutorial/TutorialView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->d:Landroid/widget/TextView;

    const p1, 0x7f0a047b

    .line 1059
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/tutorial/TutorialView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->h:Landroid/view/View;

    return-void
.end method

.method private static synthetic a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$PEyBXINIJxJZc5ToQu6NWcH79iA()Z
    .locals 1

    invoke-static {}, Lcom/callapp/contacts/widget/tutorial/TutorialView;->b()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$dhpp11jrQ2LizCwkIb2sg-Sd5ts()Z
    .locals 1

    invoke-static {}, Lcom/callapp/contacts/widget/tutorial/TutorialView;->c()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$ioc2d-dDWsuuspwsrcqYTT0LtUU()Z
    .locals 1

    invoke-static {}, Lcom/callapp/contacts/widget/tutorial/TutorialView;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;Landroid/view/View$OnClickListener;Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View$OnClickListener;",
            "Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;",
            ")V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->i:Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    .line 64
    iput-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->j:Landroid/view/View$OnClickListener;

    .line 66
    sget-object p2, Lcom/callapp/contacts/widget/tutorial/TutorialView$2;->a:[I

    invoke-virtual {p3}, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    const/4 v0, 0x2

    if-eq p2, p3, :cond_4

    if-eq p2, v0, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getShouldBeDisplayed()Lcom/callapp/contacts/util/Predicate;

    move-result-object p2

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 71
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getCommand()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->a()Z

    move-result p2

    if-nez p2, :cond_3

    .line 72
    :cond_2
    sget-object p2, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialView$PEyBXINIJxJZc5ToQu6NWcH79iA;->INSTANCE:Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialView$PEyBXINIJxJZc5ToQu6NWcH79iA;

    goto :goto_0

    .line 74
    :cond_3
    sget-object p2, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialView$ioc2d-dDWsuuspwsrcqYTT0LtUU;->INSTANCE:Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialView$ioc2d-dDWsuuspwsrcqYTT0LtUU;

    goto :goto_0

    .line 68
    :cond_4
    sget-object p2, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialView$dhpp11jrQ2LizCwkIb2sg-Sd5ts;->INSTANCE:Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialView$dhpp11jrQ2LizCwkIb2sg-Sd5ts;

    .line 83
    :goto_0
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/tutorial/TutorialView;->setNextButtonState(Lcom/callapp/contacts/util/Predicate;)V

    .line 84
    iget-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->e:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getDrawableRes()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->isCta()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 89
    iget-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->f:Landroid/view/View;

    new-instance v0, Lcom/callapp/contacts/widget/tutorial/TutorialView$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/widget/tutorial/TutorialView$1;-><init>(Lcom/callapp/contacts/widget/tutorial/TutorialView;Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getCtaText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1123
    :cond_5
    iget-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1124
    iget-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 104
    :goto_1
    invoke-static {p3}, Lcom/callapp/contacts/util/Activities;->getScreenHeight(I)I

    move-result p2

    const/16 p3, 0x500

    if-gt p2, p3, :cond_6

    .line 105
    iget-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/tutorial/TutorialView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070177

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 106
    iget-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/tutorial/TutorialView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 110
    :cond_6
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getId()I

    move-result p1

    const/16 p2, 0x9

    if-eq p1, p2, :cond_7

    goto :goto_2

    .line 112
    :cond_7
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string p2, "Permissions"

    const-string p3, "ViewPermissionToNotification"

    const-string v0, "TutorialCallAppPlus"

    invoke-virtual {p1, p2, p3, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public getData()Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->i:Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    return-object v0
.end method

.method public setNextButtonState(Lcom/callapp/contacts/util/Predicate;)V
    .locals 5

    .line 128
    invoke-interface {p1}, Lcom/callapp/contacts/util/Predicate;->accept()Z

    move-result p1

    .line 129
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->d:Landroid/widget/TextView;

    const v1, 0x7f1204c3

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f060088

    const v1, 0x7f06010f

    if-eqz p1, :cond_0

    const v2, 0x7f060088

    goto :goto_0

    :cond_0
    const v2, 0x7f06010f

    .line 132
    :goto_0
    iget-object v3, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->g:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->j:Landroid/view/View$OnClickListener;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v3, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->i:Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getCommand()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->i:Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    invoke-virtual {v3}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getCommand()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;->getCommandType()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;->MANDATORY:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    iget-object v2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->g:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 135
    iget-object v2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 136
    iget-object v2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->g:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const v0, 0x7f06010f

    :goto_2
    move v2, v0

    goto :goto_3

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 143
    :goto_3
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView;->d:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

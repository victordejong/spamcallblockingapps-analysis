.class public Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/viewcontroller/ViewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;)V
    .locals 7

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d01c6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController;->a:Landroid/view/View;

    .line 1036
    invoke-static {p2}, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->a(Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f0a049d

    .line 1037
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a049c

    .line 1038
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0498

    .line 1039
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a0496

    .line 1040
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1041
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const v5, 0x7f060088

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1042
    invoke-static {p2}, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->b(Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1043
    invoke-static {p2}, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->c(Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;)I

    move-result v4

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1044
    invoke-static {p2}, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->d(Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    invoke-static {p2}, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->e(Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;)I

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1046
    invoke-static {p2}, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->f(Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;I)V

    .line 1047
    new-instance v0, Lcom/callapp/contacts/activity/viewcontroller/-$$Lambda$TopHintViewController$Plocjfs4VrtE4qvZ-3tVz4wjQkE;

    invoke-direct {v0, p0, p2, p1}, Lcom/callapp/contacts/activity/viewcontroller/-$$Lambda$TopHintViewController$Plocjfs4VrtE4qvZ-3tVz4wjQkE;-><init>(Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController;Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;Landroid/view/View;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 48
    new-instance p3, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x1f4

    .line 49
    invoke-virtual {p3, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 50
    new-instance v0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$1;-><init>(Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController;Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;)V

    invoke-virtual {p3, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 60
    invoke-virtual {p2, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static synthetic lambda$Plocjfs4VrtE4qvZ-3tVz4wjQkE(Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController;Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController;->a(Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Landroid/view/View;
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$a(Lcom/callapp/contacts/activity/viewcontroller/ViewController;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b()V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$b(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)V

    return-void
.end method

.method public synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$getContext(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$getResources(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController;->a:Landroid/view/View;

    return-object v0
.end method

.method public synthetic isViewShown()Z
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$isViewShown(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Z

    move-result v0

    return v0
.end method

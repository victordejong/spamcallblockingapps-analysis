.class public Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$IdentifyContactsTask;
    }
.end annotation


# instance fields
.field r:Landroidx/cardview/widget/CardView;

.field s:Lcom/callapp/contacts/widget/ProfilePictureView;

.field t:Landroid/widget/TextView;

.field u:Landroid/view/View;

.field v:Landroid/widget/TextView;

.field w:Landroid/widget/TextView;

.field x:Lcom/callapp/contacts/activity/identify/IdentifyContactsData;

.field y:I

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 7

    .line 57
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    .line 53
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070183

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->y:I

    const v0, 0x7f060026

    .line 59
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    const v1, 0x7f0600f3

    .line 60
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    const v2, 0x7f0a01d5

    .line 62
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/cardview/widget/CardView;

    iput-object v2, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->r:Landroidx/cardview/widget/CardView;

    const v2, 0x7f0a077e

    .line 63
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f0a056e

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 66
    invoke-static {}, Lcom/callapp/contacts/util/ImageUtils;->getInitialsColors()Landroid/content/res/TypedArray;

    move-result-object v2

    .line 67
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const v4, -0x777778

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 68
    new-instance v3, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    const v4, 0x7f08037b

    invoke-direct {v3, v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(I)V

    const/4 v4, 0x1

    .line 1371
    iput-boolean v4, v3, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 69
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700ca

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    int-to-float v5, v5

    .line 1466
    iput v5, v3, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->i:F

    .line 69
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v6, -0x1

    .line 70
    invoke-virtual {v3, v6, v5}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v3

    .line 71
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2354
    iput-object v2, v3, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    .line 3307
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    const v0, 0x7f0a0760

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    const/4 v2, 0x0

    .line 73
    invoke-virtual {v0, v4, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(ZZ)V

    .line 74
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    const v2, 0x7f080351

    invoke-static {v2}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Landroid/graphics/drawable/Drawable;)Lcom/callapp/contacts/widget/ProfilePictureView;

    const v0, 0x7f0a08c0

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->z:Landroid/widget/TextView;

    const v2, 0x7f060088

    .line 76
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a06ac

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->t:Landroid/widget/TextView;

    const v3, 0x7f0601cc

    .line 78
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0333

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f0a0189

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->u:Landroid/view/View;

    const v0, 0x7f0a032f

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->v:Landroid/widget/TextView;

    const v1, 0x7f1202ba

    .line 83
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->v:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0796

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->w:Landroid/widget/TextView;

    const v0, 0x7f1205e4

    .line 86
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->w:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->w:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;)Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter$OnIdentifyContactClickListener;)V
    .locals 6

    .line 4138
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 4139
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 4140
    new-instance v2, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$4;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$4;-><init>(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v4, 0x12c

    .line 4147
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4150
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    const/16 v2, 0x168

    invoke-static {v0, v3, v2, v4, v5}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Landroid/view/View;IIJ)V

    .line 4151
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 4152
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->u:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$5;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$5;-><init>(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter$OnIdentifyContactClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;)Landroid/view/View;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->u:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;)Lcom/callapp/contacts/activity/identify/IdentifyContactsData;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->x:Lcom/callapp/contacts/activity/identify/IdentifyContactsData;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->z:Landroid/widget/TextView;

    return-object p0
.end method

.class public Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Landroid/view/View;

.field private final b:Landroid/view/View;

.field private final c:Landroid/view/ViewGroup;

.field private final d:Landroid/view/ViewGroup;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/widget/ImageView;

.field private final h:Lcom/callapp/contacts/widget/ProfilePictureView;

.field private final i:Landroid/widget/ImageView;

.field private final j:Landroid/widget/ImageView;

.field private final k:Landroid/widget/ImageView;

.field private final l:Landroid/widget/ImageView;

.field private m:Lcom/callapp/contacts/manager/task/Task;

.field private n:I

.field private final o:Landroid/graphics/drawable/Drawable;

.field private final p:Landroid/graphics/drawable/Drawable;

.field private final q:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 55
    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->n:I

    .line 74
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->b:Landroid/view/View;

    const v0, 0x7f0a01cc

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->c:Landroid/view/ViewGroup;

    .line 76
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->q:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0a01d3

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->d:Landroid/view/ViewGroup;

    const v0, 0x7f0a053b

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0539

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->f:Landroid/widget/TextView;

    const v0, 0x7f0a01ce

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->g:Landroid/widget/ImageView;

    .line 81
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->o:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0a01cf

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->k:Landroid/widget/ImageView;

    const v0, 0x7f0a01d1

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->l:Landroid/widget/ImageView;

    const v1, 0x7f0a06e8

    .line 84
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->h:Lcom/callapp/contacts/widget/ProfilePictureView;

    const v1, 0x7f0a01d0

    .line 85
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->i:Landroid/widget/ImageView;

    const v1, 0x7f0a01cd

    .line 86
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->j:Landroid/widget/ImageView;

    .line 87
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->p:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0a01dd

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a:Landroid/view/View;

    return-void
.end method

.method private a(ILjava/lang/Integer;I)V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->l:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, p3, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a(Landroid/widget/ImageView;ILjava/lang/Integer;IZ)V

    return-void
.end method

.method private a(ILjava/lang/Integer;IZ)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->i:Landroid/widget/ImageView;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a(Landroid/widget/ImageView;ILjava/lang/Integer;IZ)V

    return-void
.end method

.method private a(Landroid/util/Pair;ILjava/lang/Integer;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/Integer;",
            "I",
            "Landroid/graphics/PorterDuff$Mode;",
            ")V"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->h:Lcom/callapp/contacts/widget/ProfilePictureView;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a(Lcom/callapp/contacts/widget/ProfilePictureView;Landroid/util/Pair;ILjava/lang/Integer;ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private static a(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p0, :cond_2

    .line 449
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 450
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 451
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    if-nez p1, :cond_1

    .line 452
    instance-of p1, p2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method private static a(Landroid/widget/ImageView;ILjava/lang/Integer;IZ)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    const/16 p3, 0x8

    .line 345
    :cond_0
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p3, 0x0

    .line 346
    invoke-static {p0, p1, p3}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 347
    invoke-static {p0, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a(Landroid/widget/ImageView;Ljava/lang/Integer;)V

    .line 348
    invoke-virtual {p0, p4}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private static a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;I)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    .line 333
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 335
    :cond_0
    invoke-static {p0, p2}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 338
    :goto_0
    invoke-virtual {p0, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    invoke-static {p0, p3}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a(Landroid/widget/ImageView;Ljava/lang/Integer;)V

    :cond_1
    return-void
.end method

.method private static a(Landroid/widget/ImageView;Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 366
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 367
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 370
    :cond_0
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1, p1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;",
            "TO;)V"
        }
    .end annotation

    .line 232
    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$2;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->k:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getLeftIconDefaultDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getLeftIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getLeftIconVisibility()I

    move-result p2

    invoke-static {p1, v0, v2, v3, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;I)V

    .line 240
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getLeftIconDefaultDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getLeftIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getLeftIconTintColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getLeftIconVisibility()I

    move-result p2

    invoke-static {p1, v0, v2, v3, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;I)V

    .line 235
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;)V

    return-void
.end method

.method private static a(Lcom/callapp/contacts/widget/ProfilePictureView;Landroid/util/Pair;ILjava/lang/Integer;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/widget/ProfilePictureView;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/Integer;",
            "I",
            "Landroid/graphics/PorterDuff$Mode;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 355
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/ProfilePictureView;->setVisibility(I)V

    .line 356
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 357
    new-instance p2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p2, v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1449
    iput-boolean v0, p2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->j:Z

    .line 2371
    iput-boolean v0, p2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 357
    invoke-virtual {p2, p4, p5}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object p2

    .line 3354
    iput-object p3, p2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    .line 357
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    .line 360
    :cond_0
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 389
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {p1, p2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_1
    return-void
.end method

.method private b(ILjava/lang/Integer;IZ)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->j:Landroid/widget/ImageView;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a(Landroid/widget/ImageView;ILjava/lang/Integer;IZ)V

    return-void
.end method

.method private setAllClickListeners(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 423
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getRowClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 424
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getRowLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v1

    .line 425
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->c:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 429
    :goto_1
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 431
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    .line 432
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->c:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->q:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->q:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 436
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getLeftIconClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->o:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;)V

    .line 438
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->l:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getRightIconClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->p:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;)V

    .line 440
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->i:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getMiddleIconClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->p:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;)V

    .line 442
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->j:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getEndIconClickListener()Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->p:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 301
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 302
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isClickable()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->q:Landroid/graphics/drawable/Drawable;

    instance-of p1, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_1

    .line 303
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->c:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 305
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->c:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method private setCardContentLayoutGravity(I)V
    .locals 9

    const/high16 v0, 0x41000000    # 8.0f

    .line 246
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v0

    float-to-int v0, v0

    .line 247
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 248
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x10

    const/4 v4, 0x0

    if-eq p1, v3, :cond_2

    const/high16 v3, 0x41600000    # 14.0f

    const/high16 v5, 0x41200000    # 10.0f

    const/16 v6, 0x30

    if-eq p1, v6, :cond_1

    const/16 v6, 0x50

    if-eq p1, v6, :cond_0

    goto/16 :goto_0

    .line 264
    :cond_0
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 265
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 266
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 267
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->d:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 269
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 270
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v7, v4, v8, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 272
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 273
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 274
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 252
    :cond_1
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 253
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 254
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 255
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->d:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 256
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v7

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v5

    float-to-int v5, v5

    iget-object v8, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    invoke-virtual {v0, v7, v5, v8, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 258
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 259
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 260
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 278
    :cond_2
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 279
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 280
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 281
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->d:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 283
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 284
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    invoke-virtual {v0, v5, v4, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 286
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 287
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 288
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 292
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->n:I

    return-void
.end method

.method private setRowTextContainerBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->d:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setSubtitleTextColor(I)V
    .locals 1

    .line 416
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f060113

    .line 417
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private setSubtitleTextStyle(I)V
    .locals 3

    .line 409
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getGravity()I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 411
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->f:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private setTitleAllCaps(Z)V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    return-void
.end method

.method private setTitleText(Ljava/lang/String;)V
    .locals 3

    .line 376
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 377
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/d/a;->a(Ljava/util/Locale;)Landroidx/core/d/a;

    move-result-object v1

    sget-object v2, Landroidx/core/d/e;->f:Landroidx/core/d/d;

    invoke-virtual {v1, p1, v2}, Landroidx/core/d/a;->a(Ljava/lang/String;Landroidx/core/d/d;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setTitleTextColor(I)V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 404
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private setTitleTextStyle(I)V
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getGravity()I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 398
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->e:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;ILandroid/content/Context;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;I",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->m:Lcom/callapp/contacts/manager/task/Task;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/task/Task;->markAsCancelWithoutCancelling()Z

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 147
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getViewHeight()I

    move-result v0

    if-lez v0, :cond_2

    .line 148
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getViewHeight()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->setViewHeight(I)V

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->setViewHeight(I)V

    .line 153
    :goto_0
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->setAllClickListeners(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;)V

    .line 154
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getCardContentGravity()I

    move-result p2

    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->n:I

    if-eq p2, v0, :cond_3

    .line 155
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getCardContentGravity()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->setCardContentLayoutGravity(I)V

    .line 157
    :cond_3
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 158
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getTextBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->setRowTextContainerBackground(Landroid/graphics/drawable/Drawable;)V

    .line 159
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->setTitleText(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->isTitleAllCaps()Z

    move-result p2

    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->setTitleAllCaps(Z)V

    .line 161
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getFirstItemTitleStyle()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->setTitleTextStyle(I)V

    .line 162
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getFirstItemTitleColor()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->setTitleTextColor(I)V

    .line 163
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getSubtitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getSubTextIconResId()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a(Ljava/lang/String;I)V

    .line 164
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getFirstItemSubTitleStyle()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->setSubtitleTextStyle(I)V

    .line 165
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getFirstItemSubTitleColor()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->setSubtitleTextColor(I)V

    .line 166
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getRightIconResId()I

    move-result p2

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getRightIconTintColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getRightIconVisibility()I

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a(ILjava/lang/Integer;I)V

    .line 167
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getMiddleIconResId()I

    move-result p2

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getMiddleIconTintColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getMiddleIconVisibility()I

    move-result v1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getMiddleIconEnabled()Z

    move-result v2

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a(ILjava/lang/Integer;IZ)V

    .line 168
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getEndIconResId()I

    move-result p2

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getEndIconTintColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getEndIconVisibility()I

    move-result v1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getEndIconIsEnable()Z

    move-result v2

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->b(ILjava/lang/Integer;IZ)V

    .line 169
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getProfilePicturePhotoAndName()Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getProfilePictureViewVisibility()I

    move-result v5

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getBackgroundColor()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getColorFilter()I

    move-result v7

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getColorFilterMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v8

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a(Landroid/util/Pair;ILjava/lang/Integer;ILandroid/graphics/PorterDuff$Mode;)V

    .line 171
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;->access$000(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;

    move-result-object p2

    .line 172
    invoke-direct {p0, p2, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;)V

    .line 174
    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;->LOADED_IMAGE:Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;

    if-ne p2, v0, :cond_4

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->getLoadedImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 175
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$LeftIconType;Landroid/content/Context;)V

    .line 227
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->m:Lcom/callapp/contacts/manager/task/Task;

    :cond_4
    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;Z)V
    .locals 2

    const/16 v0, 0x8

    if-eqz p2, :cond_2

    .line 110
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a:Landroid/view/View;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->showShouldExpandButton()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a:Landroid/view/View;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setRotation(F)V

    .line 112
    invoke-static {}, Lit/gmariotti/cardslib/library/a/k;->a()Lit/gmariotti/cardslib/library/a/k;

    move-result-object p2

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a:Landroid/view/View;

    invoke-virtual {p2, v0}, Lit/gmariotti/cardslib/library/a/k;->a(Landroid/view/View;)Lit/gmariotti/cardslib/library/a/k;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->setViewToClickToExpand(Lit/gmariotti/cardslib/library/a/k;)V

    return-void

    .line 114
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->alignRowsWithFirstRowExpandButton()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x4

    goto :goto_1

    :cond_3
    const/16 p2, 0x8

    .line 115
    :goto_1
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->a:Landroid/view/View;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleExpandableCard;->showShouldExpandButton()Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, p2

    :cond_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public getRoot()Landroid/view/View;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->b:Landroid/view/View;

    return-object v0
.end method

.method public setRowContainerOpacity(Z)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->g:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->l:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 123
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 124
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->g:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 125
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->l:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 126
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    return-void

    :cond_0
    const/high16 p1, 0x3f000000    # 0.5f

    .line 129
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 130
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->g:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 131
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->l:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 132
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setViewHeight(I)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleLayoutViewHolder;->b:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ViewUtils;->g(Landroid/view/View;I)V

    return-void
.end method

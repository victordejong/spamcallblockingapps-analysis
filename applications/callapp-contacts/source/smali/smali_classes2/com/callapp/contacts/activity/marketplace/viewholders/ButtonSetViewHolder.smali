.class public Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$v;
.source "SourceFile"


# instance fields
.field private final r:Landroid/widget/ImageView;

.field private final s:Landroid/widget/ImageView;

.field private final t:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$v;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0168

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->r:Landroid/widget/ImageView;

    const v0, 0x7f0a0178

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->s:Landroid/widget/ImageView;

    const v0, 0x7f0a016f

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->t:Landroid/widget/ImageView;

    return-void
.end method

.method private static synthetic a(Lcom/callapp/contacts/activity/marketplace/ButtonSetPickedListener;Lcom/callapp/contacts/activity/marketplace/ButtonSet;Landroid/view/View;)V
    .locals 0

    .line 28
    invoke-interface {p0, p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSetPickedListener;->onButtonSetPicked(Lcom/callapp/contacts/activity/marketplace/ButtonSet;)V

    return-void
.end method

.method public static synthetic lambda$cr3EmHTIA9pfHsCPsdz-zgr82c8(Lcom/callapp/contacts/activity/marketplace/ButtonSetPickedListener;Lcom/callapp/contacts/activity/marketplace/ButtonSet;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->a(Lcom/callapp/contacts/activity/marketplace/ButtonSetPickedListener;Lcom/callapp/contacts/activity/marketplace/ButtonSet;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/marketplace/ButtonSet;Lcom/callapp/contacts/activity/marketplace/ButtonSetPickedListener;)V
    .locals 18

    move-object/from16 v0, p0

    .line 28
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/callapp/contacts/activity/marketplace/viewholders/-$$Lambda$ButtonSetViewHolder$cr3EmHTIA9pfHsCPsdz-zgr82c8;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct {v2, v4, v3}, Lcom/callapp/contacts/activity/marketplace/viewholders/-$$Lambda$ButtonSetViewHolder$cr3EmHTIA9pfHsCPsdz-zgr82c8;-><init>(Lcom/callapp/contacts/activity/marketplace/ButtonSetPickedListener;Lcom/callapp/contacts/activity/marketplace/ButtonSet;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->isSingleButtonSetResource()Z

    move-result v1

    const/4 v2, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 30
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->s:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->t:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->isGif()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    new-instance v4, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->s:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->s:Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getAnswerResourceUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getAnswerCallDrawableRes()I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x1

    invoke-direct/range {v4 .. v10}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZ)V

    goto/16 :goto_0

    .line 36
    :cond_0
    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v4, v0, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->s:Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getAnswerCallDrawableRes()I

    move-result v5

    iget-object v6, v0, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v4, v5, v6}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1376
    iput-boolean v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 36
    invoke-virtual {v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    goto :goto_0

    .line 39
    :cond_1
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->t:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->s:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->isGif()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    new-instance v4, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->r:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->r:Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getAnswerResourceUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getAnswerCallDrawableRes()I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x1

    invoke-direct/range {v4 .. v10}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZ)V

    .line 44
    new-instance v11, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->t:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v12

    iget-object v13, v0, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->t:Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getDeclineResourceUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getDeclineCallDrawableRes()I

    move-result v15

    const/16 v16, -0x1

    const/16 v17, 0x1

    invoke-direct/range {v11 .. v17}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZ)V

    goto :goto_0

    .line 46
    :cond_2
    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v4, v0, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->r:Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getAnswerCallDrawableRes()I

    move-result v5

    iget-object v6, v0, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v4, v5, v6}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 2376
    iput-boolean v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 46
    invoke-virtual {v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 47
    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v4, v0, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->t:Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->getDeclineCallDrawableRes()I

    move-result v5

    iget-object v6, v0, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v4, v5, v6}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 3376
    iput-boolean v2, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 47
    invoke-virtual {v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 51
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->isPicked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 52
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    .line 54
    :cond_3
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/viewholders/ButtonSetViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x34

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

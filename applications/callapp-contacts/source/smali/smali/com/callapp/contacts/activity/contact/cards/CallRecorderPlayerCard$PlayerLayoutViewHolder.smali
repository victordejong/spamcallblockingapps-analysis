.class public Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayerLayoutViewHolder"
.end annotation


# instance fields
.field final a:Landroid/widget/TextView;

.field final b:Landroid/widget/TextView;

.field final c:Landroid/widget/ImageView;

.field final synthetic d:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

.field private final e:Landroid/widget/ImageView;

.field private final f:I

.field private final g:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;Landroid/view/View;)V
    .locals 6

    .line 386
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->d:Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f060088

    .line 387
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->f:I

    const v2, 0x7f0a02dd

    .line 389
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->a:Landroid/widget/TextView;

    const v2, 0x7f0a0357

    .line 390
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->b:Landroid/widget/TextView;

    const v2, 0x7f0a07d4

    .line 391
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->g:Landroid/widget/SeekBar;

    .line 392
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 393
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const v0, 0x7f0a05e7

    .line 394
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a06bf

    .line 395
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->e:Landroid/widget/ImageView;

    .line 396
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;)Landroid/widget/SeekBar;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->g:Landroid/widget/SeekBar;

    return-object p0
.end method


# virtual methods
.method public final a(ILjava/lang/Integer;)V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->a(Landroid/widget/ImageView;ILjava/lang/Integer;)V

    return-void
.end method

.method final a(Landroid/widget/ImageView;ILjava/lang/Integer;)V
    .locals 2

    .line 415
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;Landroid/widget/ImageView;ILjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPlayerPaused()V
    .locals 2

    .line 488
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f080461

    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->a(ILjava/lang/Integer;)V

    return-void
.end method

.method public onPlayerReset()V
    .locals 2

    .line 493
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f080461

    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->a(ILjava/lang/Integer;)V

    return-void
.end method

.method public onPlayerStarted()V
    .locals 2

    .line 482
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f080445

    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->a(ILjava/lang/Integer;)V

    return-void
.end method

.method public seekBarUpdated(II)V
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/CallRecorderPlayerCard$PlayerLayoutViewHolder;->b:Landroid/widget/TextView;

    int-to-long v1, p2

    invoke-static {p1, v1, v2}, Lcom/callapp/contacts/recorder/CallRecorderUtils;->a(IJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

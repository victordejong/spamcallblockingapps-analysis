.class public final Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RecorderTestCardViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0019\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0019\u0010\n\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0019\u0010\u000c\u001a\n \u0007*\u0004\u0018\u00010\u00030\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0019\u0010\u000f\u001a\n \u0007*\u0004\u0018\u00010\u00100\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0019\u0010\u0013\u001a\n \u0007*\u0004\u0018\u00010\u00030\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000eR\u0019\u0010\u0015\u001a\n \u0007*\u0004\u0018\u00010\u00160\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0019\u0010\u0019\u001a\n \u0007*\u0004\u0018\u00010\u00160\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0018R\u0019\u0010\u001b\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\tR\u0019\u0010\u001d\u001a\n \u0007*\u0004\u0018\u00010\u001e0\u001e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006!"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;",
        "",
        "itemView",
        "Landroid/view/View;",
        "(Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;Landroid/view/View;)V",
        "applyRecordTestConfiguration",
        "Landroid/widget/ImageView;",
        "kotlin.jvm.PlatformType",
        "getApplyRecordTestConfiguration",
        "()Landroid/widget/ImageView;",
        "deleteRecordTestConfiguration",
        "getDeleteRecordTestConfiguration",
        "doneRecorderCard",
        "getDoneRecorderCard",
        "()Landroid/view/View;",
        "playerSeekBar",
        "Landroidx/appcompat/widget/AppCompatSeekBar;",
        "getPlayerSeekBar",
        "()Landroidx/appcompat/widget/AppCompatSeekBar;",
        "progressRecorderCard",
        "getProgressRecorderCard",
        "recordTestTime",
        "Landroid/widget/TextView;",
        "getRecordTestTime",
        "()Landroid/widget/TextView;",
        "recorderTestDurationText",
        "getRecorderTestDurationText",
        "recorderTestPlayButton",
        "getRecorderTestPlayButton",
        "recorderTestProgressBar",
        "Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;",
        "getRecorderTestProgressBar",
        "()Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;

.field private final b:Landroid/view/View;

.field private final c:Landroid/view/View;

.field private final d:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/widget/ImageView;

.field private final h:Landroid/widget/ImageView;

.field private final i:Landroidx/appcompat/widget/AppCompatSeekBar;

.field private final j:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;Landroid/view/View;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->a:Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a06fe

    .line 77
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->b:Landroid/view/View;

    const v0, 0x7f0a033e

    .line 78
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->c:Landroid/view/View;

    const v0, 0x7f0a0732

    .line 79
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->d:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    const v1, 0x7f0a0730

    .line 80
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->e:Landroid/widget/TextView;

    const v2, 0x7f0a072c

    .line 81
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->f:Landroid/widget/TextView;

    const v3, 0x7f0a00e5

    .line 82
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->g:Landroid/widget/ImageView;

    const v4, 0x7f0a02f4

    .line 83
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->h:Landroid/widget/ImageView;

    const v5, 0x7f0a0734

    .line 84
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object v5, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    const v6, 0x7f0a0731

    .line 85
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->j:Landroid/widget/ImageView;

    const-string v6, "recorderTestDurationText"

    .line 88
    invoke-static {v1, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v6, 0x7f120591

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f0601ec

    .line 89
    invoke-static {v6}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    invoke-static {v6}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v1, "recorderTestProgressBar"

    .line 91
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f060088

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgressColor(I)V

    .line 92
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0600f3

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgressBackgroundColor(I)V

    const-string v0, "playerSeekBar"

    .line 93
    invoke-static {v5, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v6, "playerSeekBar.progressDrawable"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    check-cast v6, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 94
    invoke-static {v5, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroidx/appcompat/widget/AppCompatSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "playerSeekBar.thumb"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const v0, 0x7f06010f

    if-eqz p2, :cond_0

    .line 95
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    if-eqz v3, :cond_1

    .line 96
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    check-cast p2, Landroid/graphics/ColorFilter;

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    if-eqz v4, :cond_2

    .line 97
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    check-cast p2, Landroid/graphics/ColorFilter;

    invoke-virtual {v4, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 99
    :cond_2
    new-instance p2, Lcom/callapp/contacts/recorder/SeekBarManager;

    check-cast v5, Landroid/widget/SeekBar;

    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;)V

    check-cast v0, Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;

    const-string v1, "From Recorder Test"

    invoke-direct {p2, v5, v0, v1}, Lcom/callapp/contacts/recorder/SeekBarManager;-><init>(Landroid/widget/SeekBar;Lcom/callapp/contacts/recorder/SeekBarManager$OnSeekBarChanged;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->setSeekBarManager(Lcom/callapp/contacts/recorder/SeekBarManager;)V

    return-void
.end method


# virtual methods
.method public final getApplyRecordTestConfiguration()Landroid/widget/ImageView;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getDeleteRecordTestConfiguration()Landroid/widget/ImageView;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getDoneRecorderCard()Landroid/view/View;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->c:Landroid/view/View;

    return-object v0
.end method

.method public final getPlayerSeekBar()Landroidx/appcompat/widget/AppCompatSeekBar;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->i:Landroidx/appcompat/widget/AppCompatSeekBar;

    return-object v0
.end method

.method public final getProgressRecorderCard()Landroid/view/View;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->b:Landroid/view/View;

    return-object v0
.end method

.method public final getRecordTestTime()Landroid/widget/TextView;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getRecorderTestPlayButton()Landroid/widget/ImageView;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getRecorderTestProgressBar()Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->d:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    return-object v0
.end method

.class public Lcom/callapp/contacts/widget/ProgressCardView;
.super Landroidx/cardview/widget/CardView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/ProgressCardView$SimpleCardViewEvents;
    }
.end annotation


# static fields
.field public static final e:I


# instance fields
.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/widget/ProgressBar;

.field public l:Landroid/widget/TextView;

.field public m:I

.field public n:Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/view/ViewGroup;

.field private s:Landroid/view/ViewGroup;

.field private t:Landroid/view/ViewGroup;

.field private u:Landroid/view/View;

.field private v:Lcom/callapp/contacts/widget/ProgressCardView$SimpleCardViewEvents;

.field private w:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0601cc

    .line 30
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    sput v0, Lcom/callapp/contacts/widget/ProgressCardView;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/ProgressCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/ProgressCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 51
    iput v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->m:I

    .line 53
    new-instance v1, Lcom/callapp/contacts/widget/ProgressCardView$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/ProgressCardView$1;-><init>(Lcom/callapp/contacts/widget/ProgressCardView;)V

    iput-object v1, p0, Lcom/callapp/contacts/widget/ProgressCardView;->n:Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;

    const v1, 0x7f0d012f

    if-eqz p2, :cond_0

    .line 115
    sget-object v2, Lcom/callapp/contacts/R$styleable;->ProgressCardView:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 116
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 117
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0601ec

    .line 2128
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    const p3, 0x7f0a04b8

    .line 2129
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/widget/ProgressCardView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/callapp/contacts/widget/ProgressCardView;->o:Landroid/widget/ImageView;

    const p3, 0x7f0a0a88

    .line 2130
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/widget/ProgressCardView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/callapp/contacts/widget/ProgressCardView;->w:Landroid/view/View;

    const p3, 0x7f0a0922

    .line 2131
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/widget/ProgressCardView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/callapp/contacts/widget/ProgressCardView;->p:Landroid/widget/TextView;

    .line 2132
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const p3, 0x7f0a02f9

    .line 2133
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/widget/ProgressCardView;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/callapp/contacts/widget/ProgressCardView;->q:Landroid/widget/TextView;

    .line 2134
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f0a018a

    .line 2135
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/ProgressCardView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/callapp/contacts/widget/ProgressCardView;->r:Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    const p3, 0x7f0a0182

    .line 2137
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/callapp/contacts/widget/ProgressCardView;->t:Landroid/view/ViewGroup;

    .line 2138
    iget-object p3, p0, Lcom/callapp/contacts/widget/ProgressCardView;->n:Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2140
    iget-object p2, p0, Lcom/callapp/contacts/widget/ProgressCardView;->r:Landroid/view/ViewGroup;

    const p3, 0x7f0a0183

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/callapp/contacts/widget/ProgressCardView;->s:Landroid/view/ViewGroup;

    .line 2141
    iget-object p3, p0, Lcom/callapp/contacts/widget/ProgressCardView;->n:Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const p2, 0x7f0a0707

    .line 2144
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/ProgressCardView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/widget/ProgressCardView;->f:Landroid/view/View;

    const p2, 0x7f0a0579

    .line 2145
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/ProgressCardView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/widget/ProgressCardView;->u:Landroid/view/View;

    const p2, 0x7f0a08c4

    .line 2147
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/ProgressCardView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/widget/ProgressCardView;->g:Landroid/view/View;

    .line 2149
    iget-object p2, p0, Lcom/callapp/contacts/widget/ProgressCardView;->p:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2150
    iget-object p1, p0, Lcom/callapp/contacts/widget/ProgressCardView;->q:Landroid/widget/TextView;

    sget p2, Lcom/callapp/contacts/widget/ProgressCardView;->e:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/ProgressCardView;)Lcom/callapp/contacts/widget/ProgressCardView$SimpleCardViewEvents;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->v:Lcom/callapp/contacts/widget/ProgressCardView$SimpleCardViewEvents;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->s:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Landroid/view/ViewGroup;->performClick()Z

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->t:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 349
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->s:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 355
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public getDescription()Landroid/widget/TextView;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLeftButtonContainerBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->t:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLeftTextView()Landroid/view/View;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->u:Landroid/view/View;

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->u:Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRightButtonContainerBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->s:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRightButtonText()Landroid/widget/TextView;
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->s:Landroid/view/ViewGroup;

    const v1, 0x7f0a0758

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method public getUpperView()Landroid/view/View;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->w:Landroid/view/View;

    return-object v0
.end method

.method public setButtonsContainerVisibility(I)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->r:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<font color=#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f060088

    .line 177
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lcom/callapp/contacts/util/ColorUtils;->getRgbRepresentation(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "><b>$1</b></font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\*(.*?)\\*"

    .line 176
    invoke-static {p1, v1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 179
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->q:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/callapp/contacts/util/HtmlUtils;->b(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setImageBackgroundColor(I)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->o:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setImageBackgroundUrl(Ljava/lang/String;)V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->o:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 186
    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProgressCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a()Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object p1

    const/4 v0, 0x1

    .line 2376
    iput-boolean v0, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 186
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    :cond_0
    return-void
.end method

.method public setIsRightButtonClickable(Z)V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->s:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const v1, 0x7f0a0758

    .line 339
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setLeftButtonStyle(IIILjava/lang/String;)V
    .locals 6

    .line 246
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->t:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/callapp/contacts/widget/ProgressCardView;->n:Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;IIILjava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setLeftButtonVisibility(I)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->t:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setLeftText(Landroid/text/SpannableString;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->u:Landroid/view/View;

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->u:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 217
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object p1, p0, Lcom/callapp/contacts/widget/ProgressCardView;->u:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setLeftTextVisibility(I)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->u:Landroid/view/View;

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->u:Landroid/view/View;

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->u:Landroid/view/View;

    .line 225
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/callapp/contacts/widget/ProgressCardView$SimpleCardViewEvents;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/callapp/contacts/widget/ProgressCardView;->v:Lcom/callapp/contacts/widget/ProgressCardView$SimpleCardViewEvents;

    return-void
.end method

.method public setProcessTitle(Ljava/lang/String;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setProgressContainerVisibility(I)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->f:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->k:Landroid/widget/ProgressBar;

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setProgressPercentText(Ljava/lang/String;)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setProgressProgress(I)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->k:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public setRightButtonStyle(IIILandroid/text/SpannableString;)V
    .locals 8

    .line 250
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->s:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/callapp/contacts/widget/ProgressCardView;->n:Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;

    const v3, 0x7f0a0758

    const/4 v7, 0x1

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v7}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;IIIILandroid/text/SpannableString;Landroid/view/View$OnClickListener;Z)V

    return-void
.end method

.method public setRightButtonText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->s:Landroid/view/ViewGroup;

    const v1, 0x7f0a0758

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSuperSkinCardImage(Ljava/lang/String;)V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->g:Landroid/view/View;

    const v1, 0x7f0a06ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->g:Landroid/view/View;

    const v1, 0x7f0a04c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 84
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 85
    new-instance v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/ProgressCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, p1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 1376
    iput-boolean p1, v1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 85
    invoke-virtual {v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    const/high16 p1, -0x40800000    # -1.0f

    .line 86
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setUpperViewVisibility(I)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/callapp/contacts/widget/ProgressCardView;->w:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

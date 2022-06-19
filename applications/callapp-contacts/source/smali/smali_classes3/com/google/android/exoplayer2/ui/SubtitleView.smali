.class public final Lcom/google/android/exoplayer2/ui/SubtitleView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/text/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/SubtitleView$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/exoplayer2/text/a;

.field private c:I

.field private d:F

.field private e:F

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Lcom/google/android/exoplayer2/ui/SubtitleView$a;

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 139
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    .line 141
    sget-object v0, Lcom/google/android/exoplayer2/text/a;->a:Lcom/google/android/exoplayer2/text/a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->b:Lcom/google/android/exoplayer2/text/a;

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->c:I

    const v0, 0x3d5a511a    # 0.0533f

    .line 143
    iput v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->d:F

    const v0, 0x3da3d70a    # 0.08f

    .line 144
    iput v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->e:F

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->f:Z

    .line 146
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->g:Z

    .line 148
    new-instance v1, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 149
    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->i:Lcom/google/android/exoplayer2/ui/SubtitleView$a;

    .line 150
    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->j:Landroid/view/View;

    .line 151
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->addView(Landroid/view/View;)V

    .line 152
    iput v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->h:I

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/text/b;)Lcom/google/android/exoplayer2/text/b;
    .locals 6

    .line 384
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/b;->b:Ljava/lang/CharSequence;

    .line 385
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->f:Z

    const/high16 v2, -0x80000000

    const v3, -0x800001

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 387
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/b;->a()Lcom/google/android/exoplayer2/text/b$a;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/exoplayer2/text/b$a;->b(FI)Lcom/google/android/exoplayer2/text/b$a;

    move-result-object p1

    .line 1776
    iput-boolean v4, p1, Lcom/google/android/exoplayer2/text/b$a;->i:Z

    if-eqz v0, :cond_0

    .line 390
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2539
    iput-object v0, p1, Lcom/google/android/exoplayer2/text/b$a;->a:Ljava/lang/CharSequence;

    .line 392
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/b$a;->a()Lcom/google/android/exoplayer2/text/b;

    move-result-object p1

    return-object p1

    .line 393
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->g:Z

    if-nez v1, :cond_6

    if-nez v0, :cond_2

    return-object p1

    .line 397
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/b;->a()Lcom/google/android/exoplayer2/text/b$a;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/exoplayer2/text/b$a;->b(FI)Lcom/google/android/exoplayer2/text/b$a;

    move-result-object p1

    .line 398
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_5

    .line 399
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const-class v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v0, v4, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/AbsoluteSizeSpan;

    .line 402
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v5, v1, v3

    .line 403
    invoke-virtual {v0, v5}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 406
    :cond_3
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const-class v2, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v0, v4, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/RelativeSizeSpan;

    .line 407
    array-length v2, v1

    :goto_1
    if-ge v4, v2, :cond_4

    aget-object v3, v1, v4

    .line 408
    invoke-virtual {v0, v3}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3539
    :cond_4
    iput-object v0, p1, Lcom/google/android/exoplayer2/text/b$a;->a:Ljava/lang/CharSequence;

    .line 412
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/b$a;->a()Lcom/google/android/exoplayer2/text/b;

    move-result-object p1

    :cond_6
    return-object p1
.end method

.method private a()V
    .locals 6

    .line 352
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->i:Lcom/google/android/exoplayer2/ui/SubtitleView$a;

    .line 353
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->b()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->b:Lcom/google/android/exoplayer2/text/a;

    iget v3, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->d:F

    iget v4, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->c:I

    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->e:F

    .line 352
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/ui/SubtitleView$a;->a(Ljava/util/List;Lcom/google/android/exoplayer2/text/a;FIF)V

    return-void
.end method

.method private a(IF)V
    .locals 0

    .line 266
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->c:I

    .line 267
    iput p2, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->d:F

    .line 268
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->a()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lcom/google/android/exoplayer2/ui/SubtitleView$a;",
            ">(TT;)V"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->removeView(Landroid/view/View;)V

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->j:Landroid/view/View;

    instance-of v1, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;

    if-eqz v1, :cond_0

    .line 198
    check-cast v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;

    .line 1163
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 200
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->j:Landroid/view/View;

    .line 201
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/ui/SubtitleView$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->i:Lcom/google/android/exoplayer2/ui/SubtitleView$a;

    .line 202
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;"
        }
    .end annotation

    .line 373
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->g:Z

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    return-object v0

    .line 376
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 377
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 378
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/b;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/SubtitleView;->a(Lcom/google/android/exoplayer2/text/b;)Lcom/google/android/exoplayer2/text/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;)V"
        }
    .end annotation

    .line 157
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    return-void
.end method

.method public final setApplyEmbeddedFontSizes(Z)V
    .locals 0

    .line 289
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->g:Z

    .line 290
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->a()V

    return-void
.end method

.method public final setApplyEmbeddedStyles(Z)V
    .locals 0

    .line 278
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->f:Z

    .line 279
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->a()V

    return-void
.end method

.method public final setBottomPaddingFraction(F)V
    .locals 0

    .line 323
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->e:F

    .line 324
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->a()V

    return-void
.end method

.method public final setCues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->a:Ljava/util/List;

    .line 167
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->a()V

    return-void
.end method

.method public final setFixedTextSize(IF)V
    .locals 2

    .line 214
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 217
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    .line 223
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 221
    invoke-direct {p0, v1, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->a(IF)V

    return-void
.end method

.method public final setFractionalTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFractionalTextSize(FZ)V

    return-void
.end method

.method public final setFractionalTextSize(FZ)V
    .locals 0

    .line 258
    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->a(IF)V

    return-void
.end method

.method public final setStyle(Lcom/google/android/exoplayer2/text/a;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->b:Lcom/google/android/exoplayer2/text/a;

    .line 310
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->a()V

    return-void
.end method

.method public final setUserDefaultStyle()V
    .locals 2

    .line 1340
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1345
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    if-eqz v0, :cond_1

    .line 1346
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1347
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/text/a;->a(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer2/text/a;

    move-result-object v0

    goto :goto_1

    .line 1348
    :cond_1
    sget-object v0, Lcom/google/android/exoplayer2/text/a;->a:Lcom/google/android/exoplayer2/text/a;

    goto :goto_1

    .line 1341
    :cond_2
    :goto_0
    sget-object v0, Lcom/google/android/exoplayer2/text/a;->a:Lcom/google/android/exoplayer2/text/a;

    .line 300
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setStyle(Lcom/google/android/exoplayer2/text/a;)V

    return-void
.end method

.method public final setUserDefaultTextSize()V
    .locals 3

    .line 1328
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1333
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "captioning"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    if-eqz v0, :cond_1

    .line 1334
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1335
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v1

    :cond_1
    :goto_0
    const v0, 0x3d5a511a    # 0.0533f

    mul-float v0, v0, v1

    .line 233
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setFractionalTextSize(F)V

    return-void
.end method

.method public final setViewType(I)V
    .locals 2

    .line 179
    iget v0, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->h:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 187
    new-instance v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->a(Landroid/view/View;)V

    goto :goto_0

    .line 190
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 184
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/SubtitleView;->a(Landroid/view/View;)V

    .line 192
    :goto_0
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitleView;->h:I

    return-void
.end method

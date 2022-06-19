.class public Lpw$a$d;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpw$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Lpw$a$b;

.field public b:Lpw$a$c;

.field public c:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public d:I

.field public final f:Landroid/text/SpannableStringBuilder;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public j:I

.field public k:F

.field public l:F

.field public m:Ljava/lang/String;

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>(Lpw$a;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lpw$a$d;-><init>(Lpw$a;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lpw$a;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lpw$a$d;-><init>(Lpw$a;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lpw$a;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput p3, p0, Lpw$a$d;->d:I

    new-instance p3, Landroid/text/SpannableStringBuilder;

    invoke-direct {p3}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p3, p0, Lpw$a$d;->f:Landroid/text/SpannableStringBuilder;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lpw$a$d;->g:Ljava/util/List;

    const/4 p3, -0x1

    iput p3, p0, Lpw$a$d;->j:I

    new-instance p3, Lpw$a$c;

    invoke-direct {p3, p1, p2}, Lpw$a$c;-><init>(Lpw$a;Landroid/content/Context;)V

    iput-object p3, p0, Lpw$a$d;->b:Lpw$a$c;

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p1, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p3, p0, Lpw$a$d;->b:Lpw$a$c;

    invoke-virtual {p0, p3, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, "captioning"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result p2

    iput p2, p0, Lpw$a$d;->k:F

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lpw$a$d;->k(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    iget-object p1, p0, Lpw$a$d;->b:Lpw$a$c;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lgx;->f(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lpw$a$d;->v()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lpw$a$d;->t(Ljava/lang/String;Z)V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-virtual {p0}, Lpw$a$d;->c()V

    invoke-virtual {p0}, Lpw$a$d;->f()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lpw$a$d;->f:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p0, Lpw$a$d;->b:Lpw$a$c;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lgx;->f(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lpw$a$d;->h:I

    return v0
.end method

.method public final e()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public g(Lpw$a$b;Low$g;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lpw$a$d;->a:Lpw$a$b;

    if-eq v3, v1, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    iput-object v1, v0, Lpw$a$d;->a:Lpw$a$b;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lpw$a$d;->v()V

    :cond_1
    iget v1, v2, Low$g;->d:I

    int-to-float v1, v1

    iget-boolean v3, v2, Low$g;->c:Z

    const/16 v4, 0x63

    if-eqz v3, :cond_2

    const/16 v5, 0x63

    goto :goto_0

    :cond_2
    const/16 v5, 0x4a

    :goto_0
    int-to-float v5, v5

    div-float/2addr v1, v5

    iget v5, v2, Low$g;->e:I

    int-to-float v5, v5

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/16 v4, 0xd1

    :goto_1
    int-to-float v3, v4

    div-float/2addr v5, v3

    const-string v3, "CCWindowLayout"

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v7, v1, v4

    if-ltz v7, :cond_4

    cmpl-float v7, v1, v6

    if-lez v7, :cond_5

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The vertical position of the anchor point should be at the range of 0 and 1 but "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_5
    cmpg-float v7, v5, v4

    if-ltz v7, :cond_6

    cmpl-float v7, v5, v6

    if-lez v7, :cond_7

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The horizontal position of the anchor point should be at the range of 0 and 1 but "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    :cond_7
    const/16 v3, 0x11

    iget v7, v2, Low$g;->f:I

    rem-int/lit8 v8, v7, 0x3

    const/4 v9, 0x3

    div-int/2addr v7, v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v8, :cond_d

    if-eq v8, v11, :cond_9

    if-eq v8, v10, :cond_8

    const/16 v16, 0x0

    :goto_2
    const/high16 v17, 0x3f800000    # 1.0f

    goto/16 :goto_6

    :cond_8
    const/4 v3, 0x5

    move/from16 v17, v5

    const/16 v16, 0x0

    goto/16 :goto_6

    :cond_9
    sub-float v3, v6, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v8, v2, Low$g;->h:I

    add-int/2addr v8, v11

    invoke-virtual/range {p0 .. p0}, Lpw$a$d;->e()I

    move-result v12

    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v8, :cond_a

    iget-object v14, v0, Lpw$a$d;->m:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_a
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iget-object v13, v0, Lpw$a$d;->c:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v13}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v13, v0, Lpw$a$d;->l:F

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    iget-object v12, v0, Lpw$a$d;->a:Lpw$a$b;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getWidth()I

    move-result v12

    if-lez v12, :cond_b

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v8, v12

    iget-object v12, v0, Lpw$a$d;->a:Lpw$a$b;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const v13, 0x3f4ccccd    # 0.8f

    mul-float v12, v12, v13

    div-float/2addr v8, v12

    goto :goto_4

    :cond_b
    const/4 v8, 0x0

    :goto_4
    cmpl-float v12, v8, v4

    if-lez v12, :cond_c

    cmpg-float v12, v8, v5

    if-gez v12, :cond_c

    iget-object v3, v0, Lpw$a$d;->b:Lpw$a$c;

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v12}, Lgx;->b(Landroid/text/Layout$Alignment;)V

    sub-float/2addr v5, v8

    goto :goto_5

    :cond_c
    iget-object v8, v0, Lpw$a$d;->b:Lpw$a$c;

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v8, v9}, Lgx;->b(Landroid/text/Layout$Alignment;)V

    sub-float v8, v5, v3

    add-float/2addr v5, v3

    move/from16 v17, v5

    move/from16 v16, v8

    const/4 v3, 0x1

    goto :goto_6

    :cond_d
    iget-object v3, v0, Lpw$a$d;->b:Lpw$a$c;

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v8}, Lgx;->b(Landroid/text/Layout$Alignment;)V

    :goto_5
    move/from16 v16, v5

    const/4 v3, 0x3

    goto/16 :goto_2

    :goto_6
    if-eqz v7, :cond_10

    if-eq v7, v11, :cond_f

    if-eq v7, v10, :cond_e

    const/4 v14, 0x0

    :goto_7
    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_e
    or-int/lit8 v3, v3, 0x50

    move v15, v1

    const/4 v14, 0x0

    goto :goto_8

    :cond_f
    or-int/lit8 v3, v3, 0x10

    sub-float/2addr v6, v1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float v5, v1, v4

    add-float v6, v1, v4

    move v14, v5

    move v15, v6

    goto :goto_8

    :cond_10
    or-int/lit8 v3, v3, 0x30

    move v14, v1

    goto :goto_7

    :goto_8
    iget-object v1, v0, Lpw$a$d;->a:Lpw$a$b;

    new-instance v4, Lpw$a$e$b;

    iget-object v13, v0, Lpw$a$d;->a:Lpw$a$b;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v12, v4

    invoke-direct/range {v12 .. v17}, Lpw$a$e$b;-><init>(Lpw$a$e;FFFF)V

    invoke-virtual {v1, v0, v4}, Lpw$a$b;->c(Lpw$a$d;Lpw$a$e$b;)V

    iget v1, v2, Low$g;->a:I

    invoke-virtual {v0, v1}, Lpw$a$d;->l(I)V

    iget v1, v2, Low$g;->g:I

    invoke-virtual {v0, v1}, Lpw$a$d;->q(I)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    iget-boolean v1, v2, Low$g;->b:Z

    if-eqz v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lpw$a$d;->s()V

    goto :goto_9

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lpw$a$d;->f()V

    :goto_9
    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lpw$a$d;->a:Lpw$a$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lpw$a$b;->d(Lpw$a$d;)V

    iget-object v0, p0, Lpw$a$d;->a:Lpw$a$b;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lpw$a$d;->a:Lpw$a$b;

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lpw$a$d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public j(C)V
    .locals 0

    return-void
.end method

.method public k(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 1

    iput-object p1, p0, Lpw$a$d;->c:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget-object v0, p0, Lpw$a$d;->b:Lpw$a$c;

    invoke-virtual {v0, p1}, Lpw$a$c;->i(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    return-void
.end method

.method public l(I)V
    .locals 0

    iput p1, p0, Lpw$a$d;->h:I

    return-void
.end method

.method public m(F)V
    .locals 0

    iput p1, p0, Lpw$a$d;->k:F

    invoke-virtual {p0}, Lpw$a$d;->u()V

    return-void
.end method

.method public n(Low$d;)V
    .locals 4

    iget-object v0, p0, Lpw$a$d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-boolean v0, p1, Low$d;->d:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpw$a$d;->g:Ljava/util/List;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v0, p1, Low$d;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpw$a$d;->g:Ljava/util/List;

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v0, p1, Low$d;->a:I

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lpw$a$d;->g:Ljava/util/List;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lpw$a$d;->g:Ljava/util/List;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    :goto_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget p1, p1, Low$d;->b:I

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lpw$a$d;->g:Ljava/util/List;

    new-instance v0, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v0}, Landroid/text/style/SuperscriptSpan;-><init>()V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lpw$a$d;->g:Ljava/util/List;

    new-instance v0, Landroid/text/style/SubscriptSpan;

    invoke-direct {v0}, Landroid/text/style/SubscriptSpan;-><init>()V

    :goto_2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void
.end method

.method public o(Low$e;)V
    .locals 0

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget p1, p0, Lpw$a$d;->n:I

    if-ne p4, p1, :cond_0

    iget p1, p0, Lpw$a$d;->o:I

    if-eq p5, p1, :cond_1

    :cond_0
    iput p4, p0, Lpw$a$d;->n:I

    iput p5, p0, Lpw$a$d;->o:I

    invoke-virtual {p0}, Lpw$a$d;->u()V

    :cond_1
    return-void
.end method

.method public p(II)V
    .locals 1

    iget p2, p0, Lpw$a$d;->j:I

    if-ltz p2, :cond_0

    :goto_0
    if-ge p2, p1, :cond_0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Lpw$a$d;->a(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iput p1, p0, Lpw$a$d;->j:I

    return-void
.end method

.method public q(I)V
    .locals 1

    if-ltz p1, :cond_0

    iput p1, p0, Lpw$a$d;->d:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A rowLimit should have a positive number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(Low$h;)V
    .locals 0

    return-void
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public final t(Ljava/lang/String;Z)V
    .locals 4

    if-nez p2, :cond_0

    iget-object p2, p0, Lpw$a$d;->f:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->clear()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    iget-object p2, p0, Lpw$a$d;->f:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    iget-object v0, p0, Lpw$a$d;->f:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object p1, p0, Lpw$a$d;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/style/CharacterStyle;

    iget-object v1, p0, Lpw$a$d;->f:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v1, v0, p2, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lpw$a$d;->f:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    iget v1, p0, Lpw$a$d;->d:I

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    array-length v2, p1

    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lpw$a$d;->f:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p2, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    iget-object p1, p0, Lpw$a$d;->f:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    :goto_1
    const/16 v0, 0x20

    if-gt p2, p1, :cond_2

    iget-object v2, p0, Lpw$a$d;->f:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, p2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-gt v2, v0, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    move v2, p1

    :goto_2
    if-lt v2, p2, :cond_3

    iget-object v3, p0, Lpw$a$d;->f:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-gt v3, v0, :cond_3

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    if-nez p2, :cond_4

    if-ne v2, p1, :cond_4

    iget-object p1, p0, Lpw$a$d;->b:Lpw$a$c;

    iget-object p2, p0, Lpw$a$d;->f:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, p2}, Lgx;->f(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v3, p0, Lpw$a$d;->f:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-ge v2, p1, :cond_5

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_5
    if-lez p2, :cond_6

    invoke-virtual {v0, v1, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_6
    iget-object p1, p0, Lpw$a$d;->b:Lpw$a$c;

    invoke-virtual {p1, v0}, Lgx;->f(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method public final u()V
    .locals 8

    iget-object v0, p0, Lpw$a$d;->a:Lpw$a$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lpw$a$d;->e()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lpw$a$d;->m:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iget-object v2, p0, Lpw$a$d;->c:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v2, 0x0

    const/high16 v3, 0x437f0000    # 255.0f

    :goto_1
    cmpg-float v4, v2, v3

    if-gez v4, :cond_3

    add-float v4, v2, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    iget-object v6, p0, Lpw$a$d;->a:Lpw$a$b;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f4ccccd    # 0.8f

    mul-float v6, v6, v7

    const v7, 0x3c23d70a    # 0.01f

    cmpl-float v5, v6, v5

    if-lez v5, :cond_2

    add-float/2addr v4, v7

    move v2, v4

    goto :goto_1

    :cond_2
    sub-float/2addr v4, v7

    move v3, v4

    goto :goto_1

    :cond_3
    iget v0, p0, Lpw$a$d;->k:F

    mul-float v3, v3, v0

    iput v3, p0, Lpw$a$d;->l:F

    iget-object v0, p0, Lpw$a$d;->b:Lpw$a$c;

    invoke-virtual {v0, v3}, Lgx;->g(F)V

    return-void
.end method

.method public final v()V
    .locals 8

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget-object v1, p0, Lpw$a$d;->c:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const-string v1, "ISO-8859-1"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x100

    if-ge v4, v5, :cond_1

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [B

    int-to-byte v7, v4

    aput-byte v7, v6, v2

    invoke-direct {v5, v6, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    cmpg-float v7, v3, v6

    if-gez v7, :cond_0

    iput-object v5, p0, Lpw$a$d;->m:Ljava/lang/String;

    move v3, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lpw$a$d;->u()V

    return-void
.end method

.class final Landroidx/media2/widget/f$a$d;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:I

.field b:F

.field final synthetic c:Landroidx/media2/widget/f$a;

.field private d:Landroidx/media2/widget/f$a$b;

.field private e:Landroidx/media2/widget/f$a$c;

.field private f:Landroidx/media2/widget/b;

.field private g:I

.field private final h:Landroid/text/SpannableStringBuilder;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:F

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I


# direct methods
.method constructor <init>(Landroidx/media2/widget/f$a;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 773
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/widget/f$a$d;-><init>(Landroidx/media2/widget/f$a;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroidx/media2/widget/f$a;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 777
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media2/widget/f$a$d;-><init>(Landroidx/media2/widget/f$a;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroidx/media2/widget/f$a;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 780
    iput-object p1, p0, Landroidx/media2/widget/f$a$d;->c:Landroidx/media2/widget/f$a;

    .line 781
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 761
    iput p3, p0, Landroidx/media2/widget/f$a$d;->g:I

    .line 762
    new-instance p3, Landroid/text/SpannableStringBuilder;

    invoke-direct {p3}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p3, p0, Landroidx/media2/widget/f$a$d;->h:Landroid/text/SpannableStringBuilder;

    .line 763
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/media2/widget/f$a$d;->i:Ljava/util/List;

    const/4 p3, -0x1

    .line 765
    iput p3, p0, Landroidx/media2/widget/f$a$d;->j:I

    .line 784
    new-instance p3, Landroidx/media2/widget/f$a$c;

    invoke-direct {p3, p1, p2}, Landroidx/media2/widget/f$a$c;-><init>(Landroidx/media2/widget/f$a;Landroid/content/Context;)V

    iput-object p3, p0, Landroidx/media2/widget/f$a$d;->e:Landroidx/media2/widget/f$a$c;

    .line 785
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p1, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 787
    iget-object p3, p0, Landroidx/media2/widget/f$a$d;->e:Landroidx/media2/widget/f$a$c;

    invoke-virtual {p0, p3, p1}, Landroidx/media2/widget/f$a$d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 790
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x13

    if-lt p1, p3, :cond_0

    const-string p1, "captioning"

    .line 792
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    .line 794
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result p2

    iput p2, p0, Landroidx/media2/widget/f$a$d;->b:F

    .line 795
    new-instance p2, Landroidx/media2/widget/b;

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/media2/widget/b;-><init>(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    invoke-virtual {p0, p2}, Landroidx/media2/widget/f$a$d;->a(Landroidx/media2/widget/b;)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 797
    iput p1, p0, Landroidx/media2/widget/f$a$d;->b:F

    .line 798
    sget-object p1, Landroidx/media2/widget/b;->a:Landroidx/media2/widget/b;

    invoke-virtual {p0, p1}, Landroidx/media2/widget/f$a$d;->a(Landroidx/media2/widget/b;)V

    .line 800
    :goto_0
    iget-object p1, p0, Landroidx/media2/widget/f$a$d;->e:Landroidx/media2/widget/f$a$c;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroidx/media2/widget/f$a$c;->a(Ljava/lang/CharSequence;)V

    .line 801
    invoke-direct {p0}, Landroidx/media2/widget/f$a$d;->f()V

    return-void
.end method

.method private b(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 1203
    iput p1, p0, Landroidx/media2/widget/f$a$d;->g:I

    return-void

    .line 1201
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A rowLimit should have a positive number"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f()V
    .locals 8

    .line 1086
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1087
    iget-object v1, p0, Landroidx/media2/widget/f$a$d;->f:Landroidx/media2/widget/b;

    .line 3195
    iget-object v1, v1, Landroidx/media2/widget/b;->k:Landroid/graphics/Typeface;

    .line 1087
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const-string v1, "ISO-8859-1"

    .line 1088
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x100

    if-ge v4, v5, :cond_1

    .line 1091
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [B

    int-to-byte v7, v4

    aput-byte v7, v6, v2

    invoke-direct {v5, v6, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1092
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    cmpg-float v7, v3, v6

    if-gez v7, :cond_0

    .line 1095
    iput-object v5, p0, Landroidx/media2/widget/f$a$d;->l:Ljava/lang/String;

    move v3, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1098
    :cond_1
    invoke-virtual {p0}, Landroidx/media2/widget/f$a$d;->d()V

    return-void
.end method

.method private g()V
    .locals 2

    .line 1151
    iget-object v0, p0, Landroidx/media2/widget/f$a$d;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1152
    iget-object v0, p0, Landroidx/media2/widget/f$a$d;->e:Landroidx/media2/widget/f$a$c;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/media2/widget/f$a$c;->a(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 823
    invoke-direct {p0}, Landroidx/media2/widget/f$a$d;->g()V

    .line 824
    invoke-virtual {p0}, Landroidx/media2/widget/f$a$d;->c()V

    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 870
    iget v0, p0, Landroidx/media2/widget/f$a$d;->j:I

    if-ltz v0, :cond_0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, "\n"

    .line 2147
    invoke-virtual {p0, v1}, Landroidx/media2/widget/f$a$d;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 875
    :cond_0
    iput p1, p0, Landroidx/media2/widget/f$a$d;->j:I

    return-void
.end method

.method public final a(Landroidx/media2/widget/b;)V
    .locals 1

    .line 805
    iput-object p1, p0, Landroidx/media2/widget/f$a$d;->f:Landroidx/media2/widget/b;

    .line 806
    iget-object v0, p0, Landroidx/media2/widget/f$a$d;->e:Landroidx/media2/widget/f$a$c;

    invoke-virtual {v0, p1}, Landroidx/media2/widget/f$a$c;->a(Landroidx/media2/widget/b;)V

    return-void
.end method

.method public final a(Landroidx/media2/widget/e$c;)V
    .locals 4

    .line 838
    iget-object v0, p0, Landroidx/media2/widget/f$a$d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 839
    iget-boolean v0, p1, Landroidx/media2/widget/e$c;->g:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Landroidx/media2/widget/f$a$d;->i:Ljava/util/List;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    :cond_0
    iget-boolean v0, p1, Landroidx/media2/widget/e$c;->f:Z

    if-eqz v0, :cond_1

    .line 843
    iget-object v0, p0, Landroidx/media2/widget/f$a$d;->i:Ljava/util/List;

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    :cond_1
    iget v0, p1, Landroidx/media2/widget/e$c;->a:I

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 850
    :cond_2
    iget-object v0, p0, Landroidx/media2/widget/f$a$d;->i:Ljava/util/List;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 847
    :cond_3
    iget-object v0, p0, Landroidx/media2/widget/f$a$d;->i:Ljava/util/List;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    :goto_0
    iget p1, p1, Landroidx/media2/widget/e$c;->b:I

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    goto :goto_1

    .line 858
    :cond_4
    iget-object p1, p0, Landroidx/media2/widget/f$a$d;->i:Ljava/util/List;

    new-instance v0, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v0}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    .line 855
    :cond_5
    iget-object p1, p0, Landroidx/media2/widget/f$a$d;->i:Ljava/util/List;

    new-instance v0, Landroid/text/style/SubscriptSpan;

    invoke-direct {v0}, Landroid/text/style/SubscriptSpan;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Landroidx/media2/widget/f$a$b;Landroidx/media2/widget/e$f;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 947
    iget-object v3, v0, Landroidx/media2/widget/f$a$d;->d:Landroidx/media2/widget/f$a$b;

    if-eq v3, v1, :cond_1

    if-eqz v3, :cond_0

    .line 949
    invoke-virtual {v3, v0}, Landroidx/media2/widget/f$a$b;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 951
    :cond_0
    iput-object v1, v0, Landroidx/media2/widget/f$a$d;->d:Landroidx/media2/widget/f$a$b;

    .line 952
    invoke-virtual {v1, v0}, Landroidx/media2/widget/f$a$b;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 953
    invoke-direct/range {p0 .. p0}, Landroidx/media2/widget/f$a$d;->f()V

    .line 958
    :cond_1
    iget v1, v2, Landroidx/media2/widget/e$f;->g:I

    int-to-float v1, v1

    .line 959
    iget-boolean v3, v2, Landroidx/media2/widget/e$f;->f:Z

    const/16 v4, 0x63

    if-eqz v3, :cond_2

    const/16 v3, 0x63

    goto :goto_0

    :cond_2
    const/16 v3, 0x4a

    :goto_0
    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 963
    iget v3, v2, Landroidx/media2/widget/e$f;->h:I

    int-to-float v3, v3

    .line 964
    iget-boolean v5, v2, Landroidx/media2/widget/e$f;->f:Z

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const/16 v4, 0xd1

    :goto_1
    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v1, v4

    if-ltz v6, :cond_4

    cmpl-float v6, v1, v5

    if-lez v6, :cond_5

    .line 972
    :cond_4
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_5
    cmpg-float v6, v3, v4

    if-ltz v6, :cond_6

    cmpl-float v6, v3, v5

    if-lez v6, :cond_7

    .line 977
    :cond_6
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :cond_7
    const/16 v6, 0x11

    .line 980
    iget v7, v2, Landroidx/media2/widget/e$f;->i:I

    const/4 v8, 0x3

    rem-int/2addr v7, v8

    .line 981
    iget v9, v2, Landroidx/media2/widget/e$f;->i:I

    div-int/2addr v9, v8

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v7, :cond_d

    if-eq v7, v11, :cond_9

    if-eq v7, v10, :cond_8

    const/16 v16, 0x0

    :goto_2
    const/high16 v17, 0x3f800000    # 1.0f

    goto/16 :goto_6

    :cond_8
    const/4 v6, 0x5

    move/from16 v17, v3

    const/16 v16, 0x0

    goto/16 :goto_6

    :cond_9
    sub-float v6, v5, v3

    .line 993
    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 997
    iget v7, v2, Landroidx/media2/widget/e$f;->k:I

    add-int/2addr v7, v11

    const/16 v12, 0x2a

    .line 998
    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 999
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v7, :cond_a

    .line 1001
    iget-object v14, v0, Landroidx/media2/widget/f$a$d;->l:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1003
    :cond_a
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 1004
    iget-object v13, v0, Landroidx/media2/widget/f$a$d;->f:Landroidx/media2/widget/b;

    .line 2195
    iget-object v13, v13, Landroidx/media2/widget/b;->k:Landroid/graphics/Typeface;

    .line 1004
    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1005
    iget v13, v0, Landroidx/media2/widget/f$a$d;->k:F

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1006
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 1007
    iget-object v12, v0, Landroidx/media2/widget/f$a$d;->d:Landroidx/media2/widget/f$a$b;

    invoke-virtual {v12}, Landroidx/media2/widget/f$a$b;->getWidth()I

    move-result v12

    if-lez v12, :cond_b

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v7, v12

    .line 1008
    iget-object v12, v0, Landroidx/media2/widget/f$a$d;->d:Landroidx/media2/widget/f$a$b;

    invoke-virtual {v12}, Landroidx/media2/widget/f$a$b;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const v13, 0x3f4ccccd    # 0.8f

    mul-float v12, v12, v13

    div-float/2addr v7, v12

    goto :goto_4

    :cond_b
    const/4 v7, 0x0

    :goto_4
    cmpl-float v12, v7, v4

    if-lez v12, :cond_c

    cmpg-float v12, v7, v3

    if-gez v12, :cond_c

    .line 1015
    iget-object v6, v0, Landroidx/media2/widget/f$a$d;->e:Landroidx/media2/widget/f$a$c;

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v6, v12}, Landroidx/media2/widget/f$a$c;->a(Landroid/text/Layout$Alignment;)V

    sub-float/2addr v3, v7

    goto :goto_5

    .line 1028
    :cond_c
    iget-object v7, v0, Landroidx/media2/widget/f$a$d;->e:Landroidx/media2/widget/f$a$c;

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v7, v8}, Landroidx/media2/widget/f$a$c;->a(Landroid/text/Layout$Alignment;)V

    sub-float v7, v3, v6

    add-float/2addr v3, v6

    move/from16 v17, v3

    move/from16 v16, v7

    const/4 v6, 0x1

    goto :goto_6

    .line 989
    :cond_d
    iget-object v6, v0, Landroidx/media2/widget/f$a$d;->e:Landroidx/media2/widget/f$a$c;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v6, v7}, Landroidx/media2/widget/f$a$c;->a(Landroid/text/Layout$Alignment;)V

    :goto_5
    move/from16 v16, v3

    const/4 v6, 0x3

    goto/16 :goto_2

    :goto_6
    if-eqz v9, :cond_10

    if-eq v9, v11, :cond_f

    if-eq v9, v10, :cond_e

    const/4 v14, 0x0

    :goto_7
    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_e
    or-int/lit8 v6, v6, 0x50

    move v15, v1

    const/4 v14, 0x0

    goto :goto_8

    :cond_f
    or-int/lit8 v6, v6, 0x10

    sub-float/2addr v5, v1

    .line 1050
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float v4, v1, v3

    add-float v5, v1, v3

    move v14, v4

    move v15, v5

    goto :goto_8

    :cond_10
    or-int/lit8 v6, v6, 0x30

    move v14, v1

    goto :goto_7

    .line 1059
    :goto_8
    iget-object v1, v0, Landroidx/media2/widget/f$a$d;->d:Landroidx/media2/widget/f$a$b;

    new-instance v3, Landroidx/media2/widget/f$a$e$a;

    iget-object v13, v0, Landroidx/media2/widget/f$a$d;->d:Landroidx/media2/widget/f$a$b;

    .line 1060
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v3

    invoke-direct/range {v12 .. v17}, Landroidx/media2/widget/f$a$e$a;-><init>(Landroidx/media2/widget/f$a$e;FFFF)V

    .line 1059
    invoke-virtual {v1, v0, v3}, Landroidx/media2/widget/f$a$b;->a(Landroidx/media2/widget/f$a$d;Landroidx/media2/widget/f$a$e$a;)V

    .line 1062
    iget v1, v2, Landroidx/media2/widget/e$f;->a:I

    .line 2819
    iput v1, v0, Landroidx/media2/widget/f$a$d;->a:I

    .line 1063
    iget v1, v2, Landroidx/media2/widget/e$f;->j:I

    invoke-direct {v0, v1}, Landroidx/media2/widget/f$a$d;->b(I)V

    .line 1064
    invoke-virtual {v0, v6}, Landroidx/media2/widget/f$a$d;->setGravity(I)V

    .line 1065
    iget-boolean v1, v2, Landroidx/media2/widget/e$f;->b:Z

    if-eqz v1, :cond_11

    .line 1066
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/widget/f$a$d;->b()V

    return-void

    .line 1068
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/widget/f$a$d;->c()V

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1159
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1160
    iget-object v0, p0, Landroidx/media2/widget/f$a$d;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 1161
    iget-object v1, p0, Landroidx/media2/widget/f$a$d;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1162
    iget-object p1, p0, Landroidx/media2/widget/f$a$d;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/style/CharacterStyle;

    .line 1163
    iget-object v2, p0, Landroidx/media2/widget/f$a$d;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 1167
    :cond_0
    iget-object p1, p0, Landroidx/media2/widget/f$a$d;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1171
    array-length v1, p1

    iget v2, p0, Landroidx/media2/widget/f$a$d;->g:I

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    .line 1172
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    array-length v3, p1

    .line 1171
    invoke-static {p1, v1, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1173
    iget-object v0, p0, Landroidx/media2/widget/f$a$d;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 1176
    iget-object p1, p0, Landroidx/media2/widget/f$a$d;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x20

    if-gt v0, p1, :cond_1

    .line 1178
    iget-object v3, p0, Landroidx/media2/widget/f$a$d;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-gt v3, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v3, p1

    :goto_2
    if-lt v3, v0, :cond_2

    .line 1181
    iget-object v4, p0, Landroidx/media2/widget/f$a$d;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-gt v4, v1, :cond_2

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    if-ne v3, p1, :cond_3

    .line 1185
    iget-object p1, p0, Landroidx/media2/widget/f$a$d;->e:Landroidx/media2/widget/f$a$c;

    iget-object v0, p0, Landroidx/media2/widget/f$a$d;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v0}, Landroidx/media2/widget/f$a$c;->a(Ljava/lang/CharSequence;)V

    return-void

    .line 1187
    :cond_3
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1188
    iget-object v4, p0, Landroidx/media2/widget/f$a$d;->h:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-ge v3, p1, :cond_4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, p1, 0x1

    .line 1190
    invoke-virtual {v1, v3, p1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_4
    if-lez v0, :cond_5

    .line 1193
    invoke-virtual {v1, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 1195
    :cond_5
    iget-object p1, p0, Landroidx/media2/widget/f$a$d;->e:Landroidx/media2/widget/f$a$c;

    invoke-virtual {p1, v1}, Landroidx/media2/widget/f$a$c;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 828
    invoke-virtual {p0, v0}, Landroidx/media2/widget/f$a$d;->setVisibility(I)V

    .line 829
    invoke-virtual {p0}, Landroidx/media2/widget/f$a$d;->requestLayout()V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x4

    .line 833
    invoke-virtual {p0, v0}, Landroidx/media2/widget/f$a$d;->setVisibility(I)V

    .line 834
    invoke-virtual {p0}, Landroidx/media2/widget/f$a$d;->requestLayout()V

    return-void
.end method

.method final d()V
    .locals 8

    .line 1102
    iget-object v0, p0, Landroidx/media2/widget/f$a$d;->d:Landroidx/media2/widget/f$a$b;

    if-nez v0, :cond_0

    return-void

    .line 1105
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x2a

    if-ge v1, v2, :cond_1

    .line 1108
    iget-object v2, p0, Landroidx/media2/widget/f$a$d;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1110
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1111
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 1112
    iget-object v2, p0, Landroidx/media2/widget/f$a$d;->f:Landroidx/media2/widget/b;

    .line 4195
    iget-object v2, v2, Landroidx/media2/widget/b;->k:Landroid/graphics/Typeface;

    .line 1112
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v2, 0x0

    const/high16 v3, 0x437f0000    # 255.0f

    :goto_1
    cmpg-float v4, v2, v3

    if-gez v4, :cond_3

    add-float v4, v2, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 1117
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1118
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 1119
    iget-object v6, p0, Landroidx/media2/widget/f$a$d;->d:Landroidx/media2/widget/f$a$b;

    invoke-virtual {v6}, Landroidx/media2/widget/f$a$b;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f4ccccd    # 0.8f

    mul-float v6, v6, v7

    const v7, 0x3c23d70a    # 0.01f

    cmpl-float v5, v6, v5

    if-lez v5, :cond_2

    add-float v2, v4, v7

    goto :goto_1

    :cond_2
    sub-float v3, v4, v7

    goto :goto_1

    .line 1125
    :cond_3
    iget v0, p0, Landroidx/media2/widget/f$a$d;->b:F

    mul-float v3, v3, v0

    iput v3, p0, Landroidx/media2/widget/f$a$d;->k:F

    .line 1126
    iget-object v0, p0, Landroidx/media2/widget/f$a$d;->e:Landroidx/media2/widget/f$a$c;

    invoke-virtual {v0, v3}, Landroidx/media2/widget/f$a$c;->a(F)V

    return-void
.end method

.method public final e()V
    .locals 1

    .line 1135
    iget-object v0, p0, Landroidx/media2/widget/f$a$d;->d:Landroidx/media2/widget/f$a$b;

    if-eqz v0, :cond_0

    .line 1136
    invoke-virtual {v0, p0}, Landroidx/media2/widget/f$a$b;->a(Landroidx/media2/widget/f$a$d;)V

    .line 1137
    iget-object v0, p0, Landroidx/media2/widget/f$a$d;->d:Landroidx/media2/widget/f$a$b;

    invoke-virtual {v0, p0}, Landroidx/media2/widget/f$a$b;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x0

    .line 1138
    iput-object v0, p0, Landroidx/media2/widget/f$a$d;->d:Landroidx/media2/widget/f$a$b;

    :cond_0
    return-void
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 1078
    iget p1, p0, Landroidx/media2/widget/f$a$d;->m:I

    if-ne p4, p1, :cond_0

    iget p1, p0, Landroidx/media2/widget/f$a$d;->n:I

    if-eq p5, p1, :cond_1

    .line 1079
    :cond_0
    iput p4, p0, Landroidx/media2/widget/f$a$d;->m:I

    .line 1080
    iput p5, p0, Landroidx/media2/widget/f$a$d;->n:I

    .line 1081
    invoke-virtual {p0}, Landroidx/media2/widget/f$a$d;->d()V

    :cond_1
    return-void
.end method

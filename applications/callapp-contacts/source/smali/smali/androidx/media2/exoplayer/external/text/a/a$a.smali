.class final Landroidx/media2/exoplayer/external/text/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/text/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/text/a/a$a$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/text/a/a$a$a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/StringBuilder;

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 772
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->a:Ljava/util/List;

    .line 773
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->b:Ljava/util/List;

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->c:Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/text/a/a$a;->a(I)V

    .line 1800
    iput p2, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->h:I

    return-void
.end method

.method private static a(Landroid/text/SpannableStringBuilder;II)V
    .locals 2

    .line 987
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 v1, 0x21

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static a(Landroid/text/SpannableStringBuilder;III)V
    .locals 1

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return-void

    .line 1000
    :cond_0
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 p3, 0x21

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static b(Landroid/text/SpannableStringBuilder;II)V
    .locals 2

    .line 991
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v1, 0x21

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public final a(C)V
    .locals 1

    .line 825
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 780
    iput p1, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->g:I

    .line 781
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 782
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 783
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->c:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 p1, 0xf

    .line 784
    iput p1, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->d:I

    .line 785
    iput v0, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->e:I

    .line 786
    iput v0, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->f:I

    return-void
.end method

.method public final a(IZ)V
    .locals 3

    .line 804
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->a:Ljava/util/List;

    new-instance v1, Landroidx/media2/exoplayer/external/text/a/a$a$a;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-direct {v1, p1, p2, v2}, Landroidx/media2/exoplayer/external/text/a/a$a$a;-><init>(IZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 790
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->b:Ljava/util/List;

    .line 791
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->c:Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(I)Landroidx/media2/exoplayer/external/text/a;
    .locals 11

    .line 839
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 841
    :goto_0
    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 842
    iget-object v3, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v3, 0xa

    .line 843
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 846
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/text/a/a$a;->c()Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 848
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 855
    :cond_1
    iget v2, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->e:I

    iget v3, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->f:I

    add-int/2addr v2, v3

    rsub-int/lit8 v3, v2, 0x20

    .line 857
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v4, v2, v3

    const/high16 v5, -0x80000000

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq p1, v5, :cond_2

    goto :goto_1

    .line 861
    :cond_2
    iget p1, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->g:I

    if-ne p1, v7, :cond_4

    .line 862
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v5, 0x3

    if-lt p1, v5, :cond_3

    if-gez v3, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto :goto_1

    .line 867
    :cond_4
    iget p1, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->g:I

    if-ne p1, v7, :cond_5

    if-lez v4, :cond_5

    const/4 p1, 0x2

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    if-eq p1, v6, :cond_7

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v8, 0x42000000    # 32.0f

    if-eq p1, v7, :cond_6

    goto :goto_2

    :cond_6
    rsub-int/lit8 v2, v3, 0x20

    :goto_2
    int-to-float v2, v2

    div-float/2addr v2, v8

    mul-float v2, v2, v5

    add-float/2addr v2, v4

    move v8, v2

    goto :goto_3

    :cond_7
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    .line 896
    :goto_3
    iget v2, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->g:I

    if-eq v2, v6, :cond_9

    iget v2, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->d:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_8

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    .line 898
    :cond_9
    :goto_4
    iget v0, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->d:I

    add-int/lit8 v0, v0, -0xf

    add-int/lit8 v2, v0, -0x2

    const/4 v5, 0x2

    .line 909
    :goto_5
    new-instance v9, Landroidx/media2/exoplayer/external/text/a;

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    int-to-float v4, v2

    const/4 v6, 0x1

    const/4 v10, 0x1

    move-object v0, v9

    move-object v2, v3

    move v3, v4

    move v4, v6

    move v6, v8

    move v7, p1

    move v8, v10

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/text/a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-object v9
.end method

.method public final b()V
    .locals 4

    .line 808
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 810
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->c:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 812
    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 813
    iget-object v2, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/text/a/a$a$a;

    .line 814
    iget v3, v2, Landroidx/media2/exoplayer/external/text/a/a$a$a;->c:I

    if-ne v3, v0, :cond_0

    .line 815
    iget v3, v2, Landroidx/media2/exoplayer/external/text/a/a$a$a;->c:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroidx/media2/exoplayer/external/text/a/a$a$a;->c:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final c()Landroid/text/SpannableString;
    .locals 15

    .line 921
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->c:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 922
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 932
    :cond_0
    :goto_0
    iget-object v11, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->a:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_9

    .line 933
    iget-object v11, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->a:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media2/exoplayer/external/text/a/a$a$a;

    .line 934
    iget-boolean v12, v11, Landroidx/media2/exoplayer/external/text/a/a$a$a;->b:Z

    .line 935
    iget v13, v11, Landroidx/media2/exoplayer/external/text/a/a$a$a;->a:I

    const/16 v14, 0x8

    if-eq v13, v14, :cond_3

    const/4 v10, 0x7

    if-ne v13, v10, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    if-ne v13, v10, :cond_2

    goto :goto_2

    .line 940
    :cond_2
    invoke-static {}, Landroidx/media2/exoplayer/external/text/a/a;->i()[I

    move-result-object v9

    aget v9, v9, v13

    :goto_2
    move v10, v14

    .line 943
    :cond_3
    iget v11, v11, Landroidx/media2/exoplayer/external/text/a/a$a$a;->c:I

    add-int/lit8 v4, v4, 0x1

    .line 944
    iget-object v13, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->a:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_4

    iget-object v13, p0, Landroidx/media2/exoplayer/external/text/a/a$a;->a:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media2/exoplayer/external/text/a/a$a$a;

    iget v13, v13, Landroidx/media2/exoplayer/external/text/a/a$a$a;->c:I

    goto :goto_3

    :cond_4
    move v13, v1

    :goto_3
    if-eq v11, v13, :cond_0

    if-eq v5, v3, :cond_5

    if-nez v12, :cond_5

    .line 952
    invoke-static {v0, v5, v11}, Landroidx/media2/exoplayer/external/text/a/a$a;->a(Landroid/text/SpannableStringBuilder;II)V

    const/4 v5, -0x1

    goto :goto_4

    :cond_5
    if-ne v5, v3, :cond_6

    if-eqz v12, :cond_6

    move v5, v11

    :cond_6
    :goto_4
    if-eq v6, v3, :cond_7

    if-nez v10, :cond_7

    .line 959
    invoke-static {v0, v6, v11}, Landroidx/media2/exoplayer/external/text/a/a$a;->b(Landroid/text/SpannableStringBuilder;II)V

    const/4 v6, -0x1

    goto :goto_5

    :cond_7
    if-ne v6, v3, :cond_8

    if-eqz v10, :cond_8

    move v6, v11

    :cond_8
    :goto_5
    if-eq v9, v8, :cond_0

    .line 966
    invoke-static {v0, v7, v11, v8}, Landroidx/media2/exoplayer/external/text/a/a$a;->a(Landroid/text/SpannableStringBuilder;III)V

    move v8, v9

    move v7, v11

    goto :goto_0

    :cond_9
    if-eq v5, v3, :cond_a

    if-eq v5, v1, :cond_a

    .line 974
    invoke-static {v0, v5, v1}, Landroidx/media2/exoplayer/external/text/a/a$a;->a(Landroid/text/SpannableStringBuilder;II)V

    :cond_a
    if-eq v6, v3, :cond_b

    if-eq v6, v1, :cond_b

    .line 977
    invoke-static {v0, v6, v1}, Landroidx/media2/exoplayer/external/text/a/a$a;->b(Landroid/text/SpannableStringBuilder;II)V

    :cond_b
    if-eq v7, v1, :cond_c

    .line 980
    invoke-static {v0, v7, v1, v8}, Landroidx/media2/exoplayer/external/text/a/a$a;->a(Landroid/text/SpannableStringBuilder;III)V

    .line 983
    :cond_c
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
.end method

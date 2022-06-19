.class public Lmw$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[Lmw$b;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    new-array v0, v0, [Lmw$b;

    iput-object v0, p0, Lmw$c;->b:[Lmw$b;

    const/16 v0, 0x22

    new-array v0, v0, [C

    const/16 v1, 0xa0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Lmw$c;->a:Ljava/lang/String;

    return-void
.end method

.method public static b(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lmw$c;->i(I)V

    iget-object v0, p0, Lmw$c;->b:[Lmw$b;

    iget v1, p0, Lmw$c;->c:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    aget-object v0, v0, v1

    iget v1, p0, Lmw$c;->d:I

    const/16 v2, 0xa0

    invoke-virtual {v0, v1, v2}, Lmw$b;->e(IC)V

    iget v0, p0, Lmw$c;->d:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmw$c;->b:[Lmw$b;

    iget v1, p0, Lmw$c;->c:I

    aget-object v0, v0, v1

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Lmw$b;->e(IC)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget v0, p0, Lmw$c;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lmw$c;->j(II)V

    return-void
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, Lmw$c;->b:[Lmw$b;

    iget v1, p0, Lmw$c;->c:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lmw$c;->d:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lmw$c;->b:[Lmw$b;

    iget v2, p0, Lmw$c;->c:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lmw$b;->b(I)C

    move-result v1

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_1

    iget v0, p0, Lmw$c;->d:I

    :goto_1
    iget-object v1, p0, Lmw$c;->b:[Lmw$b;

    iget v3, p0, Lmw$c;->c:I

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lmw$b;->d()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lmw$c;->b:[Lmw$b;

    aget-object v1, v1, v0

    invoke-virtual {v1, v0, v2}, Lmw$b;->e(IC)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmw$c;->b:[Lmw$b;

    iget v1, p0, Lmw$c;->c:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    :cond_3
    return-void
.end method

.method public e()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmw$c;->b:[Lmw$b;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    iput v0, p0, Lmw$c;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lmw$c;->d:I

    return-void
.end method

.method public final f(I)Lmw$b;
    .locals 3

    iget-object v0, p0, Lmw$c;->b:[Lmw$b;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    new-instance v1, Lmw$b;

    iget-object v2, p0, Lmw$c;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lmw$b;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, p1

    :cond_0
    iget-object v0, p0, Lmw$c;->b:[Lmw$b;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public g(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)[Landroid/text/SpannableStringBuilder;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v1, :cond_1

    iget-object v3, p0, Lmw$c;->b:[Lmw$b;

    aget-object v4, v3, v2

    if-eqz v4, :cond_0

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lmw$b;->c(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v1, [Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/SpannableStringBuilder;

    return-object p1
.end method

.method public h(II)V
    .locals 6

    iget v0, p0, Lmw$c;->c:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ge p1, p2, :cond_1

    move v1, p1

    goto :goto_0

    :cond_1
    move v1, p2

    :goto_0
    if-ge v0, v1, :cond_2

    move v1, v0

    :cond_2
    const/4 v2, 0x0

    if-ge p1, v0, :cond_3

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_4

    iget-object v0, p0, Lmw$c;->b:[Lmw$b;

    sub-int v3, p1, v1

    iget v4, p0, Lmw$c;->c:I

    sub-int/2addr v4, v1

    aget-object v4, v0, v4

    aput-object v4, v0, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_4

    iget-object v3, p0, Lmw$c;->b:[Lmw$b;

    sub-int v4, p1, v0

    iget v5, p0, Lmw$c;->c:I

    sub-int/2addr v5, v0

    aget-object v5, v3, v5

    aput-object v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    sub-int v0, p1, p2

    const/4 v1, 0x0

    if-gt v2, v0, :cond_5

    iget-object v0, p0, Lmw$c;->b:[Lmw$b;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lmw$c;->b:[Lmw$b;

    array-length v0, p2

    if-ge p1, v0, :cond_6

    aput-object v1, p2, p1

    goto :goto_4

    :cond_6
    return-void
.end method

.method public final i(I)V
    .locals 2

    iget v0, p0, Lmw$c;->d:I

    add-int/2addr v0, p1

    const/4 p1, 0x1

    const/16 v1, 0x20

    invoke-static {v0, p1, v1}, Lmw$c;->b(III)I

    move-result p1

    iput p1, p0, Lmw$c;->d:I

    return-void
.end method

.method public final j(II)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xf

    invoke-static {p1, v0, v1}, Lmw$c;->b(III)I

    move-result p1

    iput p1, p0, Lmw$c;->c:I

    const/16 p1, 0x20

    invoke-static {p2, v0, p1}, Lmw$c;->b(III)I

    move-result p1

    iput p1, p0, Lmw$c;->d:I

    return-void
.end method

.method public k(I)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lmw$c;->c:I

    sub-int v2, v1, p1

    const/4 v3, 0x0

    if-gt v0, v2, :cond_0

    iget-object v1, p0, Lmw$c;->b:[Lmw$b;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v1, p1

    const/4 p1, 0x1

    add-int/2addr v1, p1

    if-ge v1, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_1
    iget v0, p0, Lmw$c;->c:I

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lmw$c;->b:[Lmw$b;

    add-int/lit8 v2, v1, 0x1

    aget-object v4, v0, v2

    aput-object v4, v0, v1

    move v1, v2

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v1, p0, Lmw$c;->b:[Lmw$b;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iput p1, p0, Lmw$c;->d:I

    return-void
.end method

.method public l(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lmw$c;->i(I)V

    return-void
.end method

.method public m(Lmw$g;)V
    .locals 2

    iget v0, p0, Lmw$c;->c:I

    invoke-virtual {p0, v0}, Lmw$c;->f(I)Lmw$b;

    move-result-object v0

    iget v1, p0, Lmw$c;->d:I

    invoke-virtual {v0, v1, p1}, Lmw$b;->f(ILmw$g;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmw$c;->i(I)V

    return-void
.end method

.method public n(Lmw$f;)V
    .locals 2

    invoke-virtual {p1}, Lmw$f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmw$f;->f()I

    move-result v0

    invoke-virtual {p1}, Lmw$f;->e()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lmw$f;->f()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lmw$c;->j(II)V

    iget v0, p0, Lmw$c;->c:I

    invoke-virtual {p0, v0}, Lmw$c;->f(I)Lmw$b;

    move-result-object v0

    iget v1, p0, Lmw$c;->d:I

    invoke-virtual {v0, v1, p1}, Lmw$b;->g(ILmw$f;)V

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lmw$c;->c:I

    invoke-virtual {p0, v1}, Lmw$c;->f(I)Lmw$b;

    move-result-object v1

    iget v2, p0, Lmw$c;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v2, v3}, Lmw$b;->e(IC)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmw$c;->i(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

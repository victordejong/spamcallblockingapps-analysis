.class final Landroidx/media2/widget/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/StringBuilder;

.field final b:[Landroidx/media2/widget/c$g;

.field final c:[Landroidx/media2/widget/c$g;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media2/widget/c$b;->a:Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    new-array p1, p1, [Landroidx/media2/widget/c$g;

    iput-object p1, p0, Landroidx/media2/widget/c$b;->b:[Landroidx/media2/widget/c$g;

    .line 443
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    new-array p1, p1, [Landroidx/media2/widget/c$g;

    iput-object p1, p0, Landroidx/media2/widget/c$b;->c:[Landroidx/media2/widget/c$g;

    return-void
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Landroidx/media2/widget/c$g;II)V
    .locals 5

    .line 1324
    iget v0, p1, Landroidx/media2/widget/c$g;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x21

    const/4 v4, 0x2

    if-eqz v0, :cond_1

    .line 472
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1328
    :cond_1
    iget p1, p1, Landroidx/media2/widget/c$g;->d:I

    and-int/2addr p1, v4

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 477
    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    return-void
.end method


# virtual methods
.method final a(Landroidx/media2/widget/b;)Landroid/text/SpannableStringBuilder;
    .locals 10

    .line 484
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Landroidx/media2/widget/c$b;->a:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    move-object v6, v1

    const/4 v4, -0x1

    const/4 v5, -0x1

    .line 488
    :goto_0
    iget-object v7, p0, Landroidx/media2/widget/c$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v3, v7, :cond_a

    .line 490
    iget-object v7, p0, Landroidx/media2/widget/c$b;->b:[Landroidx/media2/widget/c$g;

    aget-object v8, v7, v3

    if-eqz v8, :cond_0

    .line 492
    aget-object v7, v7, v3

    goto :goto_1

    .line 493
    :cond_0
    iget-object v7, p0, Landroidx/media2/widget/c$b;->c:[Landroidx/media2/widget/c$g;

    aget-object v8, v7, v3

    if-eqz v8, :cond_2

    if-ltz v4, :cond_1

    if-gez v5, :cond_2

    .line 497
    :cond_1
    aget-object v7, v7, v3

    goto :goto_1

    :cond_2
    move-object v7, v1

    :goto_1
    if-eqz v7, :cond_4

    if-ltz v4, :cond_3

    if-ltz v5, :cond_3

    .line 502
    invoke-static {v0, v7, v4, v3}, Landroidx/media2/widget/c$b;->a(Landroid/text/SpannableStringBuilder;Landroidx/media2/widget/c$g;II)V

    :cond_3
    move v4, v3

    move-object v6, v7

    .line 507
    :cond_4
    iget-object v7, p0, Landroidx/media2/widget/c$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v8, 0xa0

    if-eq v7, v8, :cond_5

    if-gez v5, :cond_9

    move v5, v3

    goto :goto_4

    :cond_5
    if-ltz v5, :cond_9

    .line 512
    iget-object v7, p0, Landroidx/media2/widget/c$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v5, -0x1

    .line 513
    :goto_2
    iget-object v7, p0, Landroidx/media2/widget/c$b;->a:Ljava/lang/StringBuilder;

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_7

    move v7, v3

    goto :goto_3

    :cond_7
    add-int/lit8 v7, v3, 0x1

    .line 514
    :goto_3
    new-instance v8, Landroidx/media2/widget/c$e;

    iget v9, p1, Landroidx/media2/widget/b;->c:I

    invoke-direct {v8, v9}, Landroidx/media2/widget/c$e;-><init>(I)V

    const/16 v9, 0x21

    invoke-virtual {v0, v8, v5, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    if-ltz v4, :cond_8

    .line 519
    invoke-static {v0, v6, v4, v7}, Landroidx/media2/widget/c$b;->a(Landroid/text/SpannableStringBuilder;Landroidx/media2/widget/c$g;II)V

    :cond_8
    const/4 v5, -0x1

    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_a
    return-object v0
.end method

.method final a(IC)V
    .locals 1

    .line 447
    iget-object v0, p0, Landroidx/media2/widget/c$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 448
    iget-object p2, p0, Landroidx/media2/widget/c$b;->b:[Landroidx/media2/widget/c$g;

    const/4 v0, 0x0

    aput-object v0, p2, p1

    return-void
.end method

.class final Landroidx/media2/widget/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final a:[Landroidx/media2/widget/c$b;

.field b:I

.field c:I

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    new-array v0, v0, [Landroidx/media2/widget/c$b;

    .line 535
    iput-object v0, p0, Landroidx/media2/widget/c$c;->a:[Landroidx/media2/widget/c$b;

    const/16 v0, 0x22

    new-array v0, v0, [C

    const/16 v1, 0xa0

    .line 541
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 542
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Landroidx/media2/widget/c$c;->d:Ljava/lang/String;

    return-void
.end method

.method private static b(II)I
    .locals 0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-le p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method


# virtual methods
.method final a()V
    .locals 3

    const/4 v0, 0x0

    .line 547
    :goto_0
    iget-object v1, p0, Landroidx/media2/widget/c$c;->a:[Landroidx/media2/widget/c$b;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    .line 548
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    .line 550
    iput v0, p0, Landroidx/media2/widget/c$c;->b:I

    const/4 v0, 0x1

    .line 551
    iput v0, p0, Landroidx/media2/widget/c$c;->c:I

    return-void
.end method

.method final a(I)V
    .locals 1

    .line 648
    iget v0, p0, Landroidx/media2/widget/c$c;->c:I

    add-int/2addr v0, p1

    const/16 p1, 0x20

    invoke-static {v0, p1}, Landroidx/media2/widget/c$c;->b(II)I

    move-result p1

    iput p1, p0, Landroidx/media2/widget/c$c;->c:I

    return-void
.end method

.method final a(II)V
    .locals 1

    const/16 v0, 0xf

    .line 643
    invoke-static {p1, v0}, Landroidx/media2/widget/c$c;->b(II)I

    move-result p1

    iput p1, p0, Landroidx/media2/widget/c$c;->b:I

    const/16 p1, 0x20

    .line 644
    invoke-static {p2, p1}, Landroidx/media2/widget/c$c;->b(II)I

    move-result p1

    iput p1, p0, Landroidx/media2/widget/c$c;->c:I

    return-void
.end method

.method final a(Landroidx/media2/widget/b;)[Landroid/text/SpannableStringBuilder;
    .locals 5

    .line 631
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v1, :cond_1

    .line 633
    iget-object v3, p0, Landroidx/media2/widget/c$c;->a:[Landroidx/media2/widget/c$b;

    aget-object v4, v3, v2

    if-eqz v4, :cond_0

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Landroidx/media2/widget/c$b;->a(Landroidx/media2/widget/b;)Landroid/text/SpannableStringBuilder;

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

    .line 635
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/SpannableStringBuilder;

    return-object p1
.end method

.method final b(I)Landroidx/media2/widget/c$b;
    .locals 3

    .line 685
    iget-object v0, p0, Landroidx/media2/widget/c$c;->a:[Landroidx/media2/widget/c$b;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 686
    new-instance v1, Landroidx/media2/widget/c$b;

    iget-object v2, p0, Landroidx/media2/widget/c$c;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroidx/media2/widget/c$b;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, p1

    .line 688
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/c$c;->a:[Landroidx/media2/widget/c$b;

    aget-object p1, v0, p1

    return-object p1
.end method

.method final b()V
    .locals 3

    const/4 v0, -0x1

    .line 573
    invoke-virtual {p0, v0}, Landroidx/media2/widget/c$c;->a(I)V

    .line 574
    iget-object v0, p0, Landroidx/media2/widget/c$c;->a:[Landroidx/media2/widget/c$b;

    iget v1, p0, Landroidx/media2/widget/c$c;->b:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 575
    aget-object v0, v0, v1

    iget v1, p0, Landroidx/media2/widget/c$c;->c:I

    const/16 v2, 0xa0

    invoke-virtual {v0, v1, v2}, Landroidx/media2/widget/c$b;->a(IC)V

    .line 576
    iget v0, p0, Landroidx/media2/widget/c$c;->c:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 580
    iget-object v0, p0, Landroidx/media2/widget/c$c;->a:[Landroidx/media2/widget/c$b;

    iget v1, p0, Landroidx/media2/widget/c$c;->b:I

    aget-object v0, v0, v1

    const/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Landroidx/media2/widget/c$b;->a(IC)V

    :cond_0
    return-void
.end method

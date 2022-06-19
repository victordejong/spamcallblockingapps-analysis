.class public Le/g/a/a/b$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/g/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/content/res/ColorStateList;

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x190

    iput v0, p0, Le/g/a/a/b$b;->a:I

    const/4 v0, 0x4

    iput v0, p0, Le/g/a/a/b$b;->b:I

    const/16 v1, 0x40

    iput v1, p0, Le/g/a/a/b$b;->c:I

    iput v1, p0, Le/g/a/a/b$b;->d:I

    const/16 v1, 0x8

    iput v1, p0, Le/g/a/a/b$b;->f:I

    const/16 v1, 0x20

    iput v1, p0, Le/g/a/a/b$b;->g:I

    const/4 v2, -0x1

    iput v2, p0, Le/g/a/a/b$b;->h:I

    sget-object v3, Lcom/callerid/block/R$styleable;->CheckBoxDrawable:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-static {p1, v1}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result p3

    const/4 p4, 0x7

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Le/g/a/a/b$b;->i(I)Le/g/a/a/b$b;

    invoke-static {p1, v1}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result p3

    const/4 p4, 0x3

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Le/g/a/a/b$b;->e(I)Le/g/a/a/b$b;

    const/16 p3, 0x12

    invoke-static {p1, p3}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result p3

    const/4 p4, 0x1

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Le/g/a/a/b$b;->b(I)Le/g/a/a/b$b;

    const/4 p3, 0x2

    invoke-static {p1, p3}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Le/g/a/a/b$b;->d(I)Le/g/a/a/b$b;

    invoke-static {p1, p3}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result v1

    const/4 v3, 0x5

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Le/g/a/a/b$b;->g(I)Le/g/a/a/b$b;

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/g/a/a/b$b;->f(Landroid/content/res/ColorStateList;)Le/g/a/a/b$b;

    const/4 v0, 0x6

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Le/g/a/a/b$b;->h(I)Le/g/a/a/b$b;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Le/g/a/a/b$b;->a(I)Le/g/a/a/b$b;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p2, p0, Le/g/a/a/b$b;->e:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_0

    new-array p2, p3, [[I

    new-array v0, p4, [I

    const v2, -0x10100a0

    aput v2, v0, v1

    aput-object v0, p2, v1

    new-array v0, p4, [I

    const v2, 0x10100a0

    aput v2, v0, v1

    aput-object v0, p2, p4

    new-array p3, p3, [I

    const/high16 v0, -0x1000000

    invoke-static {p1, v0}, Le/g/a/b/b;->d(Landroid/content/Context;I)I

    move-result v2

    aput v2, p3, v1

    invoke-static {p1, v0}, Le/g/a/b/b;->b(Landroid/content/Context;I)I

    move-result p1

    aput p1, p3, p4

    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, p2, p3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, p1}, Le/g/a/a/b$b;->f(Landroid/content/res/ColorStateList;)Le/g/a/a/b$b;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Le/g/a/a/b$b;
    .locals 0

    iput p1, p0, Le/g/a/a/b$b;->a:I

    return-object p0
.end method

.method public b(I)Le/g/a/a/b$b;
    .locals 0

    iput p1, p0, Le/g/a/a/b$b;->g:I

    return-object p0
.end method

.method public c()Le/g/a/a/b;
    .locals 11

    iget-object v0, p0, Le/g/a/a/b$b;->e:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Le/g/a/a/b$b;->e:Landroid/content/res/ColorStateList;

    :cond_0
    new-instance v0, Le/g/a/a/b;

    iget v2, p0, Le/g/a/a/b$b;->c:I

    iget v3, p0, Le/g/a/a/b$b;->d:I

    iget v4, p0, Le/g/a/a/b$b;->g:I

    iget v5, p0, Le/g/a/a/b$b;->f:I

    iget v6, p0, Le/g/a/a/b$b;->b:I

    iget-object v7, p0, Le/g/a/a/b$b;->e:Landroid/content/res/ColorStateList;

    iget v8, p0, Le/g/a/a/b$b;->h:I

    iget v9, p0, Le/g/a/a/b$b;->a:I

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Le/g/a/a/b;-><init>(IIIIILandroid/content/res/ColorStateList;IILe/g/a/a/b$a;)V

    return-object v0
.end method

.method public d(I)Le/g/a/a/b$b;
    .locals 0

    iput p1, p0, Le/g/a/a/b$b;->f:I

    return-object p0
.end method

.method public e(I)Le/g/a/a/b$b;
    .locals 0

    iput p1, p0, Le/g/a/a/b$b;->d:I

    return-object p0
.end method

.method public f(Landroid/content/res/ColorStateList;)Le/g/a/a/b$b;
    .locals 0

    iput-object p1, p0, Le/g/a/a/b$b;->e:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public g(I)Le/g/a/a/b$b;
    .locals 0

    iput p1, p0, Le/g/a/a/b$b;->b:I

    return-object p0
.end method

.method public h(I)Le/g/a/a/b$b;
    .locals 0

    iput p1, p0, Le/g/a/a/b$b;->h:I

    return-object p0
.end method

.method public i(I)Le/g/a/a/b$b;
    .locals 0

    iput p1, p0, Le/g/a/a/b$b;->c:I

    return-object p0
.end method

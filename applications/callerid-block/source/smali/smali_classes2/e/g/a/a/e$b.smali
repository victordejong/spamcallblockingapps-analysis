.class public Le/g/a/a/e$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/g/a/a/e;
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

.field private e:I

.field private f:I

.field private g:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x190

    iput v0, p0, Le/g/a/a/e$b;->a:I

    const/4 v0, 0x4

    iput v0, p0, Le/g/a/a/e$b;->b:I

    const/16 v1, 0x40

    iput v1, p0, Le/g/a/a/e$b;->c:I

    iput v1, p0, Le/g/a/a/e$b;->d:I

    const/16 v1, 0x12

    iput v1, p0, Le/g/a/a/e$b;->e:I

    const/16 v1, 0xa

    iput v1, p0, Le/g/a/a/e$b;->f:I

    sget-object v2, Lcom/callerid/block/R$styleable;->RadioButtonDrawable:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 p3, 0x20

    invoke-static {p1, p3}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result p4

    const/4 v2, 0x6

    invoke-virtual {p2, v2, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    invoke-virtual {p0, p4}, Le/g/a/a/e$b;->h(I)Le/g/a/a/e$b;

    invoke-static {p1, p3}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result p3

    const/4 p4, 0x1

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p0, p3}, Le/g/a/a/e$b;->c(I)Le/g/a/a/e$b;

    const/4 p3, 0x2

    invoke-static {p1, p3}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v2}, Le/g/a/a/e$b;->g(I)Le/g/a/a/e$b;

    invoke-static {p1, v1}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Le/g/a/a/e$b;->e(I)Le/g/a/a/e$b;

    invoke-static {p1, v3}, Le/g/a/b/b;->e(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Le/g/a/a/e$b;->d(I)Le/g/a/a/e$b;

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/g/a/a/e$b;->f(Landroid/content/res/ColorStateList;)Le/g/a/a/e$b;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Le/g/a/a/e$b;->a(I)Le/g/a/a/e$b;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p2, p0, Le/g/a/a/e$b;->g:Landroid/content/res/ColorStateList;

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

    invoke-virtual {p0, p1}, Le/g/a/a/e$b;->f(Landroid/content/res/ColorStateList;)Le/g/a/a/e$b;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Le/g/a/a/e$b;
    .locals 0

    iput p1, p0, Le/g/a/a/e$b;->a:I

    return-object p0
.end method

.method public b()Le/g/a/a/e;
    .locals 10

    iget-object v0, p0, Le/g/a/a/e$b;->g:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Le/g/a/a/e$b;->g:Landroid/content/res/ColorStateList;

    :cond_0
    new-instance v0, Le/g/a/a/e;

    iget v2, p0, Le/g/a/a/e$b;->c:I

    iget v3, p0, Le/g/a/a/e$b;->d:I

    iget v4, p0, Le/g/a/a/e$b;->b:I

    iget-object v5, p0, Le/g/a/a/e$b;->g:Landroid/content/res/ColorStateList;

    iget v6, p0, Le/g/a/a/e$b;->e:I

    iget v7, p0, Le/g/a/a/e$b;->f:I

    iget v8, p0, Le/g/a/a/e$b;->a:I

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Le/g/a/a/e;-><init>(IIILandroid/content/res/ColorStateList;IIILe/g/a/a/e$a;)V

    return-object v0
.end method

.method public c(I)Le/g/a/a/e$b;
    .locals 0

    iput p1, p0, Le/g/a/a/e$b;->d:I

    return-object p0
.end method

.method public d(I)Le/g/a/a/e$b;
    .locals 0

    iput p1, p0, Le/g/a/a/e$b;->f:I

    return-object p0
.end method

.method public e(I)Le/g/a/a/e$b;
    .locals 0

    iput p1, p0, Le/g/a/a/e$b;->e:I

    return-object p0
.end method

.method public f(Landroid/content/res/ColorStateList;)Le/g/a/a/e$b;
    .locals 0

    iput-object p1, p0, Le/g/a/a/e$b;->g:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public g(I)Le/g/a/a/e$b;
    .locals 0

    iput p1, p0, Le/g/a/a/e$b;->b:I

    return-object p0
.end method

.method public h(I)Le/g/a/a/e$b;
    .locals 0

    iput p1, p0, Le/g/a/a/e$b;->c:I

    return-object p0
.end method

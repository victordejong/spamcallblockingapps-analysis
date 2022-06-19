.class public abstract Landroidx/recyclerview/widget/k;
.super Ljava/lang/Object;
.source "OrientationHelper.java"


# instance fields
.field protected final a:Landroidx/recyclerview/widget/RecyclerView$i;

.field final b:Landroid/graphics/Rect;

.field private c:I


# direct methods
.method private constructor <init>(Landroidx/recyclerview/widget/RecyclerView$i;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/k;->c:I

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/k;->b:Landroid/graphics/Rect;

    .line 47
    iput-object p1, p0, Landroidx/recyclerview/widget/k;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/k$1;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/k;-><init>(Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-void
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;
    .locals 1

    .prologue
    .line 258
    new-instance v0, Landroidx/recyclerview/widget/k$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/k$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-object v0
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView$i;I)Landroidx/recyclerview/widget/k;
    .locals 2

    .prologue
    .line 241
    packed-switch p1, :pswitch_data_0

    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :pswitch_0
    invoke-static {p0}, Landroidx/recyclerview/widget/k;->a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p0}, Landroidx/recyclerview/widget/k;->b(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;

    move-result-object v0

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/k;
    .locals 1

    .prologue
    .line 356
    new-instance v0, Landroidx/recyclerview/widget/k$2;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/k$2;-><init>(Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)I
.end method

.method public a()V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k;->f()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/k;->c:I

    .line 65
    return-void
.end method

.method public abstract a(I)V
.end method

.method public b()I
    .locals 2

    .prologue
    .line 78
    const/high16 v0, -0x80000000

    iget v1, p0, Landroidx/recyclerview/widget/k;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/k;->f()I

    move-result v0

    iget v1, p0, Landroidx/recyclerview/widget/k;->c:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public abstract b(Landroid/view/View;)I
.end method

.method public abstract c()I
.end method

.method public abstract c(Landroid/view/View;)I
.end method

.method public abstract d()I
.end method

.method public abstract d(Landroid/view/View;)I
.end method

.method public abstract e()I
.end method

.method public abstract e(Landroid/view/View;)I
.end method

.method public abstract f()I
.end method

.method public abstract f(Landroid/view/View;)I
.end method

.method public abstract g()I
.end method

.method public abstract h()I
.end method

.method public abstract i()I
.end method

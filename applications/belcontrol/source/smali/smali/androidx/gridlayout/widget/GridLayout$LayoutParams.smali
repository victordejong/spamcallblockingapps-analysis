.class public Landroidx/gridlayout/widget/GridLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/gridlayout/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final c:Landroidx/gridlayout/widget/GridLayout$n;

.field public static final d:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:I

.field public static final n:I

.field public static final o:I

.field public static final p:I

.field public static final q:I

.field public static final r:I


# instance fields
.field public a:Landroidx/gridlayout/widget/GridLayout$q;

.field public b:Landroidx/gridlayout/widget/GridLayout$q;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/gridlayout/widget/GridLayout$n;

    const/high16 v1, -0x80000000

    const v2, -0x7fffffff

    invoke-direct {v0, v1, v2}, Landroidx/gridlayout/widget/GridLayout$n;-><init>(II)V

    sput-object v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->c:Landroidx/gridlayout/widget/GridLayout$n;

    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$n;->b()I

    move-result v0

    sput v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->d:I

    sget v0, Lbe;->GridLayout_Layout_android_layout_margin:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->f:I

    sget v0, Lbe;->GridLayout_Layout_android_layout_marginLeft:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->g:I

    sget v0, Lbe;->GridLayout_Layout_android_layout_marginTop:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->h:I

    sget v0, Lbe;->GridLayout_Layout_android_layout_marginRight:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->j:I

    sget v0, Lbe;->GridLayout_Layout_android_layout_marginBottom:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->k:I

    sget v0, Lbe;->GridLayout_Layout_layout_column:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->l:I

    sget v0, Lbe;->GridLayout_Layout_layout_columnSpan:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->m:I

    sget v0, Lbe;->GridLayout_Layout_layout_columnWeight:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->n:I

    sget v0, Lbe;->GridLayout_Layout_layout_row:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->o:I

    sget v0, Lbe;->GridLayout_Layout_layout_rowSpan:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->p:I

    sget v0, Lbe;->GridLayout_Layout_layout_rowWeight:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->q:I

    sget v0, Lbe;->GridLayout_Layout_layout_gravity:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->r:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Landroidx/gridlayout/widget/GridLayout$q;->e:Landroidx/gridlayout/widget/GridLayout$q;

    invoke-direct {p0, v0, v0}, Landroidx/gridlayout/widget/GridLayout$LayoutParams;-><init>(Landroidx/gridlayout/widget/GridLayout$q;Landroidx/gridlayout/widget/GridLayout$q;)V

    return-void
.end method

.method public constructor <init>(IIIIIILandroidx/gridlayout/widget/GridLayout$q;Landroidx/gridlayout/widget/GridLayout$q;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    sget-object p1, Landroidx/gridlayout/widget/GridLayout$q;->e:Landroidx/gridlayout/widget/GridLayout$q;

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->a:Landroidx/gridlayout/widget/GridLayout$q;

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->b:Landroidx/gridlayout/widget/GridLayout$q;

    invoke-virtual {p0, p3, p4, p5, p6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput-object p7, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->a:Landroidx/gridlayout/widget/GridLayout$q;

    iput-object p8, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->b:Landroidx/gridlayout/widget/GridLayout$q;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Landroidx/gridlayout/widget/GridLayout$q;->e:Landroidx/gridlayout/widget/GridLayout$q;

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->a:Landroidx/gridlayout/widget/GridLayout$q;

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->b:Landroidx/gridlayout/widget/GridLayout$q;

    invoke-virtual {p0, p1, p2}, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1, p2}, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p1, Landroidx/gridlayout/widget/GridLayout$q;->e:Landroidx/gridlayout/widget/GridLayout$q;

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->a:Landroidx/gridlayout/widget/GridLayout$q;

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->b:Landroidx/gridlayout/widget/GridLayout$q;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    sget-object p1, Landroidx/gridlayout/widget/GridLayout$q;->e:Landroidx/gridlayout/widget/GridLayout$q;

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->a:Landroidx/gridlayout/widget/GridLayout$q;

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->b:Landroidx/gridlayout/widget/GridLayout$q;

    return-void
.end method

.method public constructor <init>(Landroidx/gridlayout/widget/GridLayout$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    sget-object v0, Landroidx/gridlayout/widget/GridLayout$q;->e:Landroidx/gridlayout/widget/GridLayout$q;

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->a:Landroidx/gridlayout/widget/GridLayout$q;

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->b:Landroidx/gridlayout/widget/GridLayout$q;

    iget-object v0, p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->a:Landroidx/gridlayout/widget/GridLayout$q;

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->a:Landroidx/gridlayout/widget/GridLayout$q;

    iget-object p1, p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->b:Landroidx/gridlayout/widget/GridLayout$q;

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->b:Landroidx/gridlayout/widget/GridLayout$q;

    return-void
.end method

.method public constructor <init>(Landroidx/gridlayout/widget/GridLayout$q;Landroidx/gridlayout/widget/GridLayout$q;)V
    .locals 9

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/high16 v3, -0x80000000

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    const/high16 v6, -0x80000000

    move-object v0, p0

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Landroidx/gridlayout/widget/GridLayout$LayoutParams;-><init>(IIIIIILandroidx/gridlayout/widget/GridLayout$q;Landroidx/gridlayout/widget/GridLayout$q;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    sget-object v0, Lbe;->GridLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->r:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    sget v1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->l:I

    const/high16 v2, -0x80000000

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->m:I

    sget v4, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->d:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    sget v5, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->n:I

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/4 v7, 0x1

    invoke-static {p2, v7}, Landroidx/gridlayout/widget/GridLayout;->n(IZ)Landroidx/gridlayout/widget/GridLayout$i;

    move-result-object v7

    invoke-static {v1, v3, v7, v5}, Landroidx/gridlayout/widget/GridLayout;->J(IILandroidx/gridlayout/widget/GridLayout$i;F)Landroidx/gridlayout/widget/GridLayout$q;

    move-result-object v1

    iput-object v1, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->b:Landroidx/gridlayout/widget/GridLayout$q;

    sget v1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->o:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget v2, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->p:I

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    sget v3, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->q:I

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-static {p2, v0}, Landroidx/gridlayout/widget/GridLayout;->n(IZ)Landroidx/gridlayout/widget/GridLayout$i;

    move-result-object p2

    invoke-static {v1, v2, p2, v3}, Landroidx/gridlayout/widget/GridLayout;->J(IILandroidx/gridlayout/widget/GridLayout$i;F)Landroidx/gridlayout/widget/GridLayout$q;

    move-result-object p2

    iput-object p2, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->a:Landroidx/gridlayout/widget/GridLayout$q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public final c(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget-object v0, Lbe;->GridLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->f:I

    const/high16 v0, -0x80000000

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    sget v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->g:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sget v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->h:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sget v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->j:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sget v0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->k:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public final d(Landroidx/gridlayout/widget/GridLayout$n;)V
    .locals 1

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->b:Landroidx/gridlayout/widget/GridLayout$q;

    invoke-virtual {v0, p1}, Landroidx/gridlayout/widget/GridLayout$q;->a(Landroidx/gridlayout/widget/GridLayout$n;)Landroidx/gridlayout/widget/GridLayout$q;

    move-result-object p1

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->b:Landroidx/gridlayout/widget/GridLayout$q;

    return-void
.end method

.method public final e(Landroidx/gridlayout/widget/GridLayout$n;)V
    .locals 1

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->a:Landroidx/gridlayout/widget/GridLayout$q;

    invoke-virtual {v0, p1}, Landroidx/gridlayout/widget/GridLayout$q;->a(Landroidx/gridlayout/widget/GridLayout$n;)Landroidx/gridlayout/widget/GridLayout$q;

    move-result-object p1

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->a:Landroidx/gridlayout/widget/GridLayout$q;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;

    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->b:Landroidx/gridlayout/widget/GridLayout$q;

    iget-object v3, p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->b:Landroidx/gridlayout/widget/GridLayout$q;

    invoke-virtual {v2, v3}, Landroidx/gridlayout/widget/GridLayout$q;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->a:Landroidx/gridlayout/widget/GridLayout$q;

    iget-object p1, p1, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->a:Landroidx/gridlayout/widget/GridLayout$q;

    invoke-virtual {v2, p1}, Landroidx/gridlayout/widget/GridLayout$q;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->a:Landroidx/gridlayout/widget/GridLayout$q;

    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$q;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/gridlayout/widget/GridLayout$LayoutParams;->b:Landroidx/gridlayout/widget/GridLayout$q;

    invoke-virtual {v1}, Landroidx/gridlayout/widget/GridLayout$q;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 1

    const/4 v0, -0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    return-void
.end method

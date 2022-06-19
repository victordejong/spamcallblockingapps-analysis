.class public final La/a/a/a/a/a;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/a/a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Paint;


# direct methods
.method private constructor <init>(IIII)V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    .line 43
    iput p1, p0, La/a/a/a/a/a;->a:I

    .line 44
    iput p2, p0, La/a/a/a/a/a;->b:I

    .line 45
    iput p3, p0, La/a/a/a/a/a;->c:I

    .line 46
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, La/a/a/a/a/a;->d:Landroid/graphics/Paint;

    .line 47
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public synthetic constructor <init>(IIIILa/a/a/a/a/a$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, La/a/a/a/a/a;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 11

    .line 55
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 58
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 60
    iget v3, p0, La/a/a/a/a/a;->a:I

    add-int/2addr v3, v2

    .line 62
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p0, La/a/a/a/a/a;->b:I

    add-int/2addr v4, v5

    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v5, p0, La/a/a/a/a/a;->c:I

    sub-int/2addr v1, v5

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v6, v4

    int-to-float v7, v2

    int-to-float v8, v1

    int-to-float v9, v3

    .line 66
    iget-object v10, p0, La/a/a/a/a/a;->d:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 0

    .line 76
    iget p2, p0, La/a/a/a/a/a;->a:I

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

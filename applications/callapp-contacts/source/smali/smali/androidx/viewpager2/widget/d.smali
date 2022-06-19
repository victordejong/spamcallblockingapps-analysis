.class final Landroidx/viewpager2/widget/d;
.super Landroidx/viewpager2/widget/ViewPager2$e;
.source "SourceFile"


# instance fields
.field a:Landroidx/viewpager2/widget/ViewPager2$g;

.field private final b:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$e;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/viewpager2/widget/d;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final a(IFI)V
    .locals 2

    .line 58
    iget-object p1, p0, Landroidx/viewpager2/widget/d;->a:Landroidx/viewpager2/widget/ViewPager2$g;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 63
    :goto_0
    iget-object p3, p0, Landroidx/viewpager2/widget/d;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_2

    .line 64
    iget-object p3, p0, Landroidx/viewpager2/widget/d;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 70
    invoke-static {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Landroid/view/View;)I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 66
    :cond_1
    new-instance p3, Ljava/lang/IllegalStateException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    iget-object p1, p0, Landroidx/viewpager2/widget/d;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "LayoutManager returned a null child at pos %d/%d while transforming pages"

    .line 66
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_2
    return-void
.end method

.method public final b(I)V
    .locals 0

    return-void
.end method

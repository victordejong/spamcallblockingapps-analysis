.class public Landroidx/appcompat/app/AlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycleListView"
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 840
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/AlertController$RecycleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 841
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 844
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 846
    sget-object v0, Landroidx/appcompat/a$j;->RecycleListView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 848
    sget v1, Landroidx/appcompat/a$j;->RecycleListView_paddingBottomNoButtons:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/app/AlertController$RecycleListView;->b:I

    .line 850
    sget v1, Landroidx/appcompat/a$j;->RecycleListView_paddingTopNoTitle:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/app/AlertController$RecycleListView;->a:I

    .line 852
    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 4

    .prologue
    .line 855
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 856
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertController$RecycleListView;->getPaddingLeft()I

    move-result v2

    .line 857
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertController$RecycleListView;->getPaddingTop()I

    move-result v0

    .line 858
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertController$RecycleListView;->getPaddingRight()I

    move-result v3

    .line 859
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertController$RecycleListView;->getPaddingBottom()I

    move-result v1

    .line 860
    :goto_1
    invoke-virtual {p0, v2, v0, v3, v1}, Landroidx/appcompat/app/AlertController$RecycleListView;->setPadding(IIII)V

    .line 862
    :cond_1
    return-void

    .line 857
    :cond_2
    iget v0, p0, Landroidx/appcompat/app/AlertController$RecycleListView;->a:I

    goto :goto_0

    .line 859
    :cond_3
    iget v1, p0, Landroidx/appcompat/app/AlertController$RecycleListView;->b:I

    goto :goto_1
.end method

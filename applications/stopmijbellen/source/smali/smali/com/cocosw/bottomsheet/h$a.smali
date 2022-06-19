.class public Lcom/cocosw/bottomsheet/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cocosw/bottomsheet/h;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cocosw/bottomsheet/h;


# direct methods
.method public constructor <init>(Lcom/cocosw/bottomsheet/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cocosw/bottomsheet/h$a;->a:Lcom/cocosw/bottomsheet/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h$a;->a:Lcom/cocosw/bottomsheet/h;

    .line 2
    iget-object v0, v0, Lcom/cocosw/bottomsheet/h;->j:Landroid/widget/GridView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4
    iget-object v0, p0, Lcom/cocosw/bottomsheet/h$a;->a:Lcom/cocosw/bottomsheet/h;

    .line 5
    iget-object v0, v0, Lcom/cocosw/bottomsheet/h;->j:Landroid/widget/GridView;

    .line 6
    invoke-virtual {v0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/cocosw/bottomsheet/h$a;->a:Lcom/cocosw/bottomsheet/h;

    .line 8
    iget-object v1, v1, Lcom/cocosw/bottomsheet/h;->j:Landroid/widget/GridView;

    .line 9
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/cocosw/bottomsheet/h$a;->a:Lcom/cocosw/bottomsheet/h;

    .line 10
    iget-object v4, v4, Lcom/cocosw/bottomsheet/h;->j:Landroid/widget/GridView;

    .line 11
    invoke-virtual {v4}, Landroid/widget/GridView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v0

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

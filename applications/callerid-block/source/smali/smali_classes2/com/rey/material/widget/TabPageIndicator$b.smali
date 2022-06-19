.class Lcom/rey/material/widget/TabPageIndicator$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rey/material/widget/TabPageIndicator;->u(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/rey/material/widget/TabPageIndicator;


# direct methods
.method constructor <init>(Lcom/rey/material/widget/TabPageIndicator;I)V
    .locals 0

    iput-object p1, p0, Lcom/rey/material/widget/TabPageIndicator$b;->c:Lcom/rey/material/widget/TabPageIndicator;

    iput p2, p0, Lcom/rey/material/widget/TabPageIndicator$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/rey/material/widget/TabPageIndicator$b;->c:Lcom/rey/material/widget/TabPageIndicator;

    iget v1, p0, Lcom/rey/material/widget/TabPageIndicator$b;->b:I

    invoke-static {v0, v1}, Lcom/rey/material/widget/TabPageIndicator;->i(Lcom/rey/material/widget/TabPageIndicator;I)Landroid/widget/CheckedTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/rey/material/widget/TabPageIndicator$b;->c:Lcom/rey/material/widget/TabPageIndicator;

    invoke-static {v1}, Lcom/rey/material/widget/TabPageIndicator;->l(Lcom/rey/material/widget/TabPageIndicator;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/rey/material/widget/TabPageIndicator$b;->c:Lcom/rey/material/widget/TabPageIndicator;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getMeasuredWidth()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/rey/material/widget/TabPageIndicator;->m(Lcom/rey/material/widget/TabPageIndicator;II)V

    :cond_0
    iget-object v1, p0, Lcom/rey/material/widget/TabPageIndicator$b;->c:Lcom/rey/material/widget/TabPageIndicator;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/rey/material/widget/TabPageIndicator$b;->c:Lcom/rey/material/widget/TabPageIndicator;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getWidth()I

    move-result v0

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v0, p0, Lcom/rey/material/widget/TabPageIndicator$b;->c:Lcom/rey/material/widget/TabPageIndicator;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v0

    add-int/2addr v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    iget-object v0, p0, Lcom/rey/material/widget/TabPageIndicator$b;->c:Lcom/rey/material/widget/TabPageIndicator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rey/material/widget/TabPageIndicator;->o(Lcom/rey/material/widget/TabPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method

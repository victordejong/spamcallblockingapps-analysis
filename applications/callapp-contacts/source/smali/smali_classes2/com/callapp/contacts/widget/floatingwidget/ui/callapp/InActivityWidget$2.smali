.class Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;Landroid/view/View;I)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$2;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$2;->a:Landroid/view/View;

    iput p3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 173
    :try_start_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$2;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    iget v1, v1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->m:I

    sub-int/2addr v0, v1

    .line 174
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$2;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->m:I

    .line 175
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$2;->a:Landroid/view/View;

    const v2, 0x7f0a0945

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 176
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 177
    iget-object v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$2;->a:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$2;->b:I

    if-nez v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$2;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    iget-object v1, v1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$2;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    invoke-static {v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;)I

    move-result v2

    iget-object v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$2;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    invoke-static {v3}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->b(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v2, p1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 181
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$2;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$2;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v1

    .line 1153
    iget-object v1, v1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v1, v1, Lcom/facebook/rebound/e$a;->a:D

    int-to-double v3, v0

    sub-double/2addr v1, v3

    const/4 v0, 0x1

    .line 2113
    invoke-virtual {p1, v1, v2, v0}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

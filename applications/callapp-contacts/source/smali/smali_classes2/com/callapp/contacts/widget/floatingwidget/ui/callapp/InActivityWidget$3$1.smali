.class Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;

    iget-object v0, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;->a:Landroid/view/View;

    const v1, 0x7f0a0945

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 252
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 253
    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;

    iget-object v2, v2, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;

    iget v0, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;->b:I

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;

    iget-object v0, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;

    iget-object v1, v1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    invoke-static {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->b(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;)I

    move-result v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v1, p1

    int-to-float p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    :cond_0
    return-void
.end method

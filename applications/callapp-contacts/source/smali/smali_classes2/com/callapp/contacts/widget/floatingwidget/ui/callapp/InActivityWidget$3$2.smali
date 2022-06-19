.class Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    .line 260
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3$2;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 268
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3$2;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;

    iget-object p1, p1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3$2;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;

    iget v0, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;->b:I

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->b(I)V

    .line 269
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3$2;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;

    iget p1, p1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;->b:I

    if-nez p1, :cond_0

    .line 270
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3$2;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;

    iget-object p1, p1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3$2;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;

    iget-object v0, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    .line 1153
    iget-object v0, v0, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v0, v0, Lcom/facebook/rebound/e$a;->a:D

    .line 270
    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3$2;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;

    iget-object v2, v2, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    invoke-static {v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;)I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    const/4 v2, 0x1

    .line 2113
    invoke-virtual {p1, v0, v1, v2}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

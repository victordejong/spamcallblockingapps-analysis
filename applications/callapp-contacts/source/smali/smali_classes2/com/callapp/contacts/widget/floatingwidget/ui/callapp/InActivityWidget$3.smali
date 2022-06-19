.class Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->c(I)V
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

    .line 244
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;->a:Landroid/view/View;

    iput p3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-static {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->b(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->l:Landroid/animation/ValueAnimator;

    .line 248
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    iget-object v0, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->l:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 249
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    iget-object v0, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->l:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3$1;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 260
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    iget-object v0, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->l:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3$2;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 284
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$3;->c:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    iget-object v0, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

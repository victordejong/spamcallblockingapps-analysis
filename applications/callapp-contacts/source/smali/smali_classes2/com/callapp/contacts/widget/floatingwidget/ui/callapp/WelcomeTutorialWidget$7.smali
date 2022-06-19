.class Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->setupRightTooltipLayout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$7;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 235
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$7;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-static {p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;F)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

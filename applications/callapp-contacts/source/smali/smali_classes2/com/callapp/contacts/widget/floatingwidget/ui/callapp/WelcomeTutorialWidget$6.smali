.class Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->setupLeftTooltipLayout(Z)V
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

    .line 202
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$6;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 205
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$6;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;

    invoke-static {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->i(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget$6;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;

    invoke-static {p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;->h(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialWidget;)Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getChatHeads()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-interface {p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->b(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)Z

    const/4 p1, 0x1

    return p1
.end method

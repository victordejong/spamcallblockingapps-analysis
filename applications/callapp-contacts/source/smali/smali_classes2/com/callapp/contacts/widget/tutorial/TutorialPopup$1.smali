.class Lcom/callapp/contacts/widget/tutorial/TutorialPopup$1;
.super Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$1;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

    invoke-direct {p0}, Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 66
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$1;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

    invoke-static {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->d(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;)Lcom/skyfishjy/library/RippleBackground;

    move-result-object p1

    invoke-virtual {p1}, Lcom/skyfishjy/library/RippleBackground;->b()V

    return-void
.end method

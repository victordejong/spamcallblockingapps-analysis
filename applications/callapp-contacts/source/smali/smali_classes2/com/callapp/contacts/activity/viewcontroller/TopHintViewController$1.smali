.class Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$1;
.super Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController;->a(Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;

.field final synthetic b:Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController;Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$1;->b:Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController;

    iput-object p2, p0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$1;->a:Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;

    invoke-direct {p0}, Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/animation/AnimationListenerAdapter;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 54
    iget-object p1, p0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$1;->b:Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController;->getRootView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object p1, p0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$1;->a:Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->g(Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$1;->a:Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;->g(Lcom/callapp/contacts/activity/viewcontroller/TopHintViewController$HintBuilder;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

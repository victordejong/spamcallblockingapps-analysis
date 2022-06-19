.class Lcom/callapp/contacts/widget/tutorial/TutorialViewController$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/tutorial/TutorialViewController;-><init>(Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;Lcom/callapp/contacts/event/bus/EventBus;Landroid/view/ViewGroup;Landroid/app/Activity;Lcom/callapp/contacts/widget/tutorial/TutorialViewController$OnWidgetAddedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/tutorial/TutorialViewController;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/tutorial/TutorialViewController;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController$1;->a:Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController$1;->a:Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    invoke-static {v1}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->a(Lcom/callapp/contacts/widget/tutorial/TutorialViewController;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialViewController$1;->a:Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    invoke-static {v2}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->a(Lcom/callapp/contacts/widget/tutorial/TutorialViewController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ","

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    .line 63
    invoke-virtual {v2}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v2, "Contact List"

    const-string v3, "Tutorial Pages Picked"

    invoke-virtual {v1, v2, v3, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

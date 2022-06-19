.class public Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;
    }
.end annotation


# instance fields
.field final a:Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->b:Ljava/util/List;

    .line 45
    invoke-interface {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;->getCapacity()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->c:I

    .line 46
    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->b:Ljava/util/List;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;->getTutorialPages()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static b()V
    .locals 1

    .line 103
    sget-object v0, Lcom/callapp/contacts/workers/CompleteTutorialReminderWorker;->a:Lcom/callapp/contacts/workers/CompleteTutorialReminderWorker$Companion;

    invoke-static {}, Lcom/callapp/contacts/workers/CompleteTutorialReminderWorker$Companion;->a()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final a()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;->b()Z

    move-result v0

    return v0
.end method

.method public getCurrentPage()Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;->getCurrentPageName()Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;

    invoke-interface {v1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;->getTutorialPages()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->a(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    return-object v0
.end method

.method getTutorialPages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->b:Ljava/util/List;

    .line 54
    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;

    invoke-interface {v1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;->getBeginningTutorialPageModel()Lcom/callapp/contacts/widget/tutorial/BeginningTutorialPageModel;

    move-result-object v1

    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v0, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialPageModel;->setCallAppInstructionalDrawableResources(Ljava/util/List;)V

    goto :goto_1

    .line 57
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->c:I

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    .line 59
    invoke-virtual {v2}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->c:I

    if-ge v2, v3, :cond_2

    goto :goto_0

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;

    invoke-interface {v1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;->getBeginningTutorialPageModel()Lcom/callapp/contacts/widget/tutorial/BeginningTutorialPageModel;

    move-result-object v1

    .line 68
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/widget/tutorial/BeginningTutorialPageModel;->setCallAppInstructionalDrawableResources(Ljava/util/List;)V

    const/4 v2, 0x0

    .line 69
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 70
    iget-object v1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;

    invoke-interface {v1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;->getEndingTutorialPageModel()Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method public setCurrentPage(Ljava/lang/String;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageManager$TutorialPagesProvider;->setCurrentPagePosition(Ljava/lang/String;)V

    return-void
.end method

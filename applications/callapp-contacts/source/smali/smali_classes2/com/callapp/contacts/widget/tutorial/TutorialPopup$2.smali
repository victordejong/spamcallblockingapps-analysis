.class Lcom/callapp/contacts/widget/tutorial/TutorialPopup$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->a(Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

.field final synthetic b:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$2;->b:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

    iput-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$2;->a:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$2;->b:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

    invoke-static {v0}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->a(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;)Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->a(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;I)Lcom/callapp/contacts/util/Predicate;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/util/Predicate;->accept()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$2;->b:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

    invoke-static {v0}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->a(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;)Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->getCurrentItem()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->b(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;I)V

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$2;->a:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    sget-object v2, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;->MANDATORY:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$2;->b:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

    invoke-static {v0}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->a(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;)Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->getCurrentItem()I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->a(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;IZ)V

    return-void
.end method

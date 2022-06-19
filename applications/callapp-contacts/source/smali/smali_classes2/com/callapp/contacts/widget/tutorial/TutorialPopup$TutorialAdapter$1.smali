.class Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;I)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter$1;->b:Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;

    iput p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 279
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter$1;->b:Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->a(Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter$1;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter$1;->b:Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->a(Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter$1;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getCommand()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter$1;->b:Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->a(Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter$1;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter$1;->b:Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->a(Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter$1;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getCommand()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;->getCommandType()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;->MANDATORY:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 280
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter$1;->b:Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;

    iget-object p1, p1, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

    invoke-static {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->c(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;)V

    return-void

    .line 282
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter$1;->b:Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;

    iget-object p1, p1, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPopup;

    invoke-static {p1}, Lcom/callapp/contacts/widget/tutorial/TutorialPopup;->a(Lcom/callapp/contacts/widget/tutorial/TutorialPopup;)Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    move-result-object p1

    iget v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialPopup$TutorialAdapter$1;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->setCurrentItem(I)V

    return-void
.end method

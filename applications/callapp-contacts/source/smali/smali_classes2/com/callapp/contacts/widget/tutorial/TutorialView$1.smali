.class Lcom/callapp/contacts/widget/tutorial/TutorialView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/tutorial/TutorialView;->a(Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;Landroid/view/View$OnClickListener;Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

.field final synthetic b:Lcom/callapp/contacts/widget/tutorial/TutorialView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/tutorial/TutorialView;Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView$1;->b:Lcom/callapp/contacts/widget/tutorial/TutorialView;

    iput-object p2, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView$1;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$fpsKe4aTqR_ABYid-xD_neGsNW0()Z
    .locals 1

    invoke-static {}, Lcom/callapp/contacts/widget/tutorial/TutorialView$1;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView$1;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getCommand()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView$1;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getCommand()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;->getCommandType()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;->NOT_MANDATORY:Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView$1;->b:Lcom/callapp/contacts/widget/tutorial/TutorialView;

    sget-object v1, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialView$1$fpsKe4aTqR_ABYid-xD_neGsNW0;->INSTANCE:Lcom/callapp/contacts/widget/tutorial/-$$Lambda$TutorialView$1$fpsKe4aTqR_ABYid-xD_neGsNW0;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/tutorial/TutorialView;->setNextButtonState(Lcom/callapp/contacts/util/Predicate;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialView$1;->a:Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;->getCommand()Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/base/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand;->b(Lcom/callapp/contacts/activity/base/BaseActivity;)V

    return-void
.end method

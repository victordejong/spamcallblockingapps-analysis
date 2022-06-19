.class public abstract Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;
.super Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;


# instance fields
.field protected text:Ljava/lang/String;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/BasePresenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;)Landroid/widget/TextView;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;->textView:Landroid/widget/TextView;

    return-object p0
.end method

.method private isContainerModeIsOverlay()Z
    .locals 3

    .line 73
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter$2;->a:[I

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method protected getInitialTextColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;->text:Ljava/lang/String;

    return-object v0
.end method

.method protected getTextView()Landroid/widget/TextView;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected abstract getTextViewId()I
.end method

.method isContainsContactHeader()Z
    .locals 2

    .line 85
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;->isContainerModeIsOverlay()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    .line 86
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->POST_CALL_SCREEN:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    .line 87
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->CALL_RECORDER_POPUP:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    .line 88
    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->MISSED_CALL:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;->getTextViewId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;->textView:Landroid/widget/TextView;

    return-void
.end method

.method protected setText(Ljava/lang/String;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;->textView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;->getTextViewId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;->textView:Landroid/widget/TextView;

    .line 34
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;->getInitialTextColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;->textView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 36
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;->text:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter$1;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setVisibility(I)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

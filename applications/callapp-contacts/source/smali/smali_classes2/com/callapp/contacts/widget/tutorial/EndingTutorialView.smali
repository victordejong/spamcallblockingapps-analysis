.class public Lcom/callapp/contacts/widget/tutorial/EndingTutorialView;
.super Lcom/callapp/contacts/widget/tutorial/TutorialView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/widget/tutorial/TutorialView<",
        "Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/tutorial/EndingTutorialView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/tutorial/EndingTutorialView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/tutorial/TutorialView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;Landroid/view/View$OnClickListener;Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/tutorial/TutorialView;->a(Lcom/callapp/contacts/widget/tutorial/TutorialPageModel;Landroid/view/View$OnClickListener;Lcom/callapp/contacts/widget/tutorial/command/TutorialCommand$COMMAND_TYPE;)V

    .line 24
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/EndingTutorialView;->g:Landroid/widget/FrameLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

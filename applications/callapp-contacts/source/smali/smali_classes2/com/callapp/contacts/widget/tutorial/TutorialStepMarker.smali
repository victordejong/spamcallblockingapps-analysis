.class public Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1042
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d017e

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1043
    new-instance p1, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f0a04e9

    .line 1046
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;->b:Landroid/widget/ImageView;

    const p1, 0x7f0a0a73

    .line 1047
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method final a(FFF)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 115
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 116
    iget-object p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setShouldResizeUponCurrentStep(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;->a:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/callapp/contacts/widget/tutorial/TutorialStepMarker;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.class public abstract Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListenerImpel;,
        Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;
    }
.end annotation


# static fields
.field public static a:I = -0xa


# instance fields
.field protected final b:[Ljava/lang/Object;

.field protected final c:I

.field protected d:Landroid/widget/RadioGroup;

.field protected final e:Z

.field protected f:Lcom/callapp/contacts/widget/CallAppCheckBox;

.field private g:Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;IZLcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->i:Z

    .line 32
    iput-object p5, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->g:Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;

    .line 33
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->h:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->b:[Ljava/lang/Object;

    .line 35
    iput p3, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->c:I

    .line 36
    iput-boolean p4, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->e:Z

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Landroid/view/View;Landroid/view/LayoutInflater;)V
    .locals 4

    .line 115
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070156

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const v1, 0x7f0a0719

    .line 117
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->d:Landroid/widget/RadioGroup;

    const v1, 0x7f080113

    .line 118
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->b:[Ljava/lang/Object;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const v2, 0x7f0d0129

    .line 121
    iget-object v3, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->d:Landroid/widget/RadioGroup;

    invoke-virtual {p2, v2, v3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    const v3, 0x7f0601ec

    .line 122
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 123
    iget-object v3, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->b:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    float-to-int v3, v0

    .line 124
    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setMinimumHeight(I)V

    .line 125
    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setId(I)V

    .line 126
    iget-object v3, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->d:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_0
    iget p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->c:I

    sget p2, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->a:I

    if-eq p1, p2, :cond_1

    .line 130
    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->d:Landroid/widget/RadioGroup;

    invoke-virtual {p2, p1}, Landroid/widget/RadioGroup;->check(I)V

    .line 131
    iget p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->c:I

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->c(I)V

    .line 132
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->d:Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->getCheckedChangeListener()Landroid/widget/RadioGroup$OnCheckedChangeListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    :cond_1
    return-void
.end method

.method protected final b()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->g:Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->getChosenIndex()I

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->g:Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;

    invoke-interface {v1, v0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;->b(I)V

    .line 106
    iget-boolean v0, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->i:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->dismiss()V

    :cond_0
    return-void

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->dismiss()V

    return-void
.end method

.method protected final c(I)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->g:Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0, p1}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;->a(I)V

    :cond_0
    return-void
.end method

.method protected abstract getCheckedChangeListener()Landroid/widget/RadioGroup$OnCheckedChangeListener;
.end method

.method protected abstract getChosenIndex()I
.end method

.method protected abstract getLayoutResourceId()I
.end method

.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 138
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->withInset:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 82
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->getLayoutResourceId()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 84
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->h:Ljava/lang/String;

    const v1, 0x7f0a0a45

    invoke-virtual {p0, p2, v0, v1}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->setupTextViewMember(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/widget/TextView;

    .line 86
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0200

    .line 87
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/CallAppCheckBox;

    iput-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->f:Lcom/callapp/contacts/widget/CallAppCheckBox;

    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/CallAppCheckBox;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->f:Lcom/callapp/contacts/widget/CallAppCheckBox;

    iget-boolean v2, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->e:Z

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/widget/CallAppCheckBox;->setChecked(Z)V

    const v0, 0x7f0a0225

    .line 91
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f1202ad

    .line 92
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->a(Landroid/view/View;Landroid/view/LayoutInflater;)V

    return-object p2
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method protected setDismissOnDone(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->i:Z

    return-void
.end method

.method protected setListener(Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase;->g:Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;

    return-void
.end method

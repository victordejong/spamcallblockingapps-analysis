.class public Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \u001b2\u00020\u00012\u00020\u0002:\u0001\u001bB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0012\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\u001a\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u000e\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\rR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;",
        "Lcom/callapp/contacts/manager/popup/DialogPopup;",
        "Landroid/view/View$OnClickListener;",
        "dialogMessageBuilder",
        "Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;",
        "(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;)V",
        "getLayoutResource",
        "",
        "getPopupType",
        "Lcom/callapp/contacts/manager/popup/Popup$DialogType;",
        "onClick",
        "",
        "v",
        "Landroid/view/View;",
        "onDialogCancelled",
        "dialog",
        "Landroid/content/DialogInterface;",
        "ovViewCreated",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "setDialogWindowSize",
        "window",
        "Landroid/view/Window;",
        "setupViews",
        "itemView",
        "Companion",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion;


# instance fields
.field private b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->a:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;)V
    .locals 1

    const-string v0, "dialogMessageBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    return-void
.end method


# virtual methods
.method protected final getLayoutResource()I
    .locals 1

    const v0, 0x7f0d00b1

    return v0
.end method

.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 43
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->roundedCenter:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x7f0a0758

    if-ne v1, v2, :cond_3

    .line 55
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getRightBtnListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->dismiss()V

    return-void

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    goto :goto_2

    .line 58
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x7f0a0568

    if-ne v1, v2, :cond_6

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getLeftBtnListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 60
    :cond_5
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->dismiss()V

    return-void

    :cond_6
    :goto_2
    if-nez v0, :cond_7

    return-void

    .line 62
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f0a0244

    if-ne p1, v0, :cond_8

    .line 63
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->dismiss()V

    :cond_8
    return-void
.end method

.method public onDialogCancelled(Landroid/content/DialogInterface;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->onDialogCancelled(Landroid/content/DialogInterface;)V

    .line 48
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->dismiss()V

    return-void
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->getLayoutResource()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string p2, "view"

    .line 38
    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->setupViews(Landroid/view/View;)V

    return-object p1
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const-string v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public final setupViews(Landroid/view/View;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0a0311

    .line 71
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v3, 0x7f0a094d

    .line 72
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0a014b

    .line 73
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0a0313

    .line 74
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a030d

    .line 75
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a030f

    .line 76
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0a0310

    .line 77
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f0a0758

    .line 78
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0a0568

    .line 79
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0a02d2

    .line 80
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object v15, v11

    check-cast v15, Landroidx/constraintlayout/widget/Guideline;

    const v11, 0x7f0a0244

    .line 81
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 83
    move-object v14, v0

    check-cast v14, Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v11, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v11}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getShapePaddingLeft()I

    move-result v11

    .line 88
    iget-object v12, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v12}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getShapePaddingTop()I

    move-result v12

    .line 89
    iget-object v13, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v13}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getShapePaddingRight()I

    move-result v13

    move-object/from16 p1, v14

    .line 90
    iget-object v14, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v14}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getShapePaddingBottom()I

    move-result v14

    .line 87
    invoke-virtual {v2, v11, v12, v13, v14}, Landroidx/constraintlayout/widget/ConstraintLayout;->setPadding(IIII)V

    .line 92
    iget-object v2, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v2}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getLeftBtnText()Landroid/text/SpannableString;

    move-result-object v2

    const-string v14, "leftButton"

    const-string v13, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    if-eqz v2, :cond_2

    .line 95
    iget-object v2, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v2}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getLeftBtnResource()Ljava/lang/Integer;

    move-result-object v12

    .line 96
    iget-object v2, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v2}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getLeftBtnBackgroundColor()Ljava/lang/Integer;

    move-result-object v2

    .line 97
    iget-object v11, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v11}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getLeftBtnStrokeColor()Ljava/lang/Integer;

    move-result-object v16

    .line 98
    iget-object v11, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v11}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getLeftBtnStrokeWidth()Ljava/lang/Integer;

    move-result-object v17

    .line 99
    iget-object v11, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v11}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getLeftBtnTextColor()Ljava/lang/Integer;

    move-result-object v18

    .line 100
    iget-object v11, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v11}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getLeftBtnText()Landroid/text/SpannableString;

    move-result-object v19

    .line 101
    iget-object v11, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v11}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getLeftBtnTextSize()Ljava/lang/Float;

    move-result-object v20

    .line 102
    iget-object v11, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v11}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getLeftBtnAllCaps()Z

    move-result v21

    .line 103
    iget-object v11, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v11}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getLeftBtnBold()Z

    move-result v22

    move-object v11, v10

    move-object/from16 v23, v1

    move-object v1, v13

    move-object v13, v2

    move-object v2, v14

    move-object/from16 v14, v16

    move-object/from16 v24, v4

    move-object v4, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move/from16 v19, v21

    move/from16 v20, v22

    .line 94
    invoke-static/range {v11 .. v20}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion;->a(Landroid/widget/TextView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/text/SpannableString;Ljava/lang/Float;ZZ)V

    .line 105
    invoke-static {v10, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    invoke-static {v11, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 106
    iget-object v12, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v12}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getLeftBtnMarginLeft()I

    move-result v12

    .line 107
    iget-object v13, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v13}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getLeftBtnMarginTop()I

    move-result v13

    .line 108
    iget-object v14, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v14}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getLeftBtnMarginRight()I

    move-result v14

    .line 109
    iget-object v15, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v15}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getLeftBtnMarginBottom()I

    move-result v15

    .line 106
    invoke-virtual {v11, v12, v13, v14, v15}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMargins(IIII)V

    .line 110
    iget-object v12, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v12}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getLeftBtnWidth()Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_0

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 111
    iput v12, v11, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 112
    sget-object v12, Lkotlin/v;->a:Lkotlin/v;

    .line 113
    :cond_0
    iget-object v12, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v12}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getLeftBtnHeight()Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_1

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 114
    iput v12, v11, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 115
    sget-object v12, Lkotlin/v;->a:Lkotlin/v;

    .line 116
    :cond_1
    check-cast v11, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    sget-object v11, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_0

    :cond_2
    move-object/from16 v23, v1

    move-object/from16 v24, v4

    move-object v1, v13

    move-object v2, v14

    move-object v4, v15

    .line 119
    :goto_0
    iget-object v11, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v11}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getRightBtnText()Landroid/text/SpannableString;

    move-result-object v11

    const-string v15, "rightButton"

    if-eqz v11, :cond_5

    .line 122
    iget-object v11, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v11}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getRightBtnResource()Ljava/lang/Integer;

    move-result-object v11

    .line 123
    iget-object v12, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v12}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getRightBtnBackgroundColor()Ljava/lang/Integer;

    move-result-object v12

    .line 124
    iget-object v13, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v13}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getRightBtnStrokeColor()Ljava/lang/Integer;

    move-result-object v13

    .line 125
    iget-object v14, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v14}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getRightBtnStrokeWidth()Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v16, v10

    .line 126
    iget-object v10, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v10}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getRightBtnTextColor()Ljava/lang/Integer;

    move-result-object v17

    .line 127
    iget-object v10, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v10}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getRightBtnText()Landroid/text/SpannableString;

    move-result-object v18

    .line 128
    iget-object v10, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v10}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getRightBtnTextSize()Ljava/lang/Float;

    move-result-object v19

    .line 129
    iget-object v10, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v10}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getRightBtnAllCaps()Z

    move-result v20

    .line 130
    iget-object v10, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v10}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getRightBtnBold()Z

    move-result v21

    move-object/from16 v22, v3

    move-object/from16 v3, v16

    move-object v10, v9

    move-object/from16 v25, v4

    move-object v4, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move/from16 v18, v20

    move/from16 v19, v21

    .line 121
    invoke-static/range {v10 .. v19}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion;->a(Landroid/widget/TextView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/text/SpannableString;Ljava/lang/Float;ZZ)V

    .line 132
    invoke-static {v9, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    invoke-static {v10, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 133
    iget-object v11, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v11}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getRightBtnMarginLeft()I

    move-result v11

    .line 134
    iget-object v12, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v12}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getRightBtnMarginTop()I

    move-result v12

    .line 135
    iget-object v13, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v13}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getRightBtnMarginRight()I

    move-result v13

    .line 136
    iget-object v14, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v14}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getRightBtnMarginBottom()I

    move-result v14

    .line 133
    invoke-virtual {v10, v11, v12, v13, v14}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMargins(IIII)V

    .line 137
    iget-object v11, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v11}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getRightBtnWidth()Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_3

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 138
    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 139
    sget-object v11, Lkotlin/v;->a:Lkotlin/v;

    .line 140
    :cond_3
    iget-object v11, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v11}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getRightBtnHeight()Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_4

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 141
    iput v11, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 142
    sget-object v11, Lkotlin/v;->a:Lkotlin/v;

    .line 143
    :cond_4
    check-cast v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    sget-object v10, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_1

    :cond_5
    move-object/from16 v22, v3

    move-object/from16 v25, v4

    move-object v3, v10

    move-object v4, v15

    .line 147
    :goto_1
    iget-object v10, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v10}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v10, :cond_8

    const-string v13, "dialogTitle"

    .line 148
    invoke-static {v5, v13}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v10, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v10}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getTitleTextIsBold()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 151
    invoke-virtual {v5}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v5, v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 153
    :cond_6
    iget-object v10, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v10}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getTitleTextColor()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_7

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v10, Lkotlin/v;->a:Lkotlin/v;

    .line 155
    :cond_7
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    invoke-static {v10, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 156
    iget-object v13, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v13}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getTitleMarginLeft()I

    move-result v13

    .line 157
    iget-object v14, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v14}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getTitleMarginTop()I

    move-result v14

    .line 158
    iget-object v15, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v15}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getTitleMarginRight()I

    move-result v15

    .line 159
    iget-object v11, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v11}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getTitleMarginBottom()I

    move-result v11

    .line 156
    invoke-virtual {v10, v13, v14, v15, v11}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMargins(IIII)V

    .line 160
    check-cast v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    .line 164
    :cond_8
    iget-object v5, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v5}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getMessage()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_b

    const-string v10, "dialogBody"

    .line 165
    invoke-static {v6, v10}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v5, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v5}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getMessageTextIsBold()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 168
    invoke-virtual {v6}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    const/4 v10, 0x1

    invoke-virtual {v6, v5, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 170
    :cond_9
    iget-object v5, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v5}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getMessageTextColor()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_a

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    .line 172
    :cond_a
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 173
    iget-object v10, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v10}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getMessageMarginLeft()I

    move-result v10

    .line 174
    iget-object v11, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v11}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getMessageMarginTop()I

    move-result v11

    .line 175
    iget-object v13, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v13}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getMessageMarginRight()I

    move-result v13

    .line 176
    iget-object v14, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v14}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getMessageMarginBottom()I

    move-result v14

    .line 173
    invoke-virtual {v5, v10, v11, v13, v14}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMargins(IIII)V

    .line 177
    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    .line 181
    :cond_b
    iget-object v5, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v5}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getBottomMessage()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_e

    const-string v6, "dialogBottomBody"

    .line 182
    invoke-static {v7, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v5, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v5}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getBottomMessageTextIsBold()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 185
    invoke-virtual {v7}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v7, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 187
    :cond_c
    iget-object v5, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v5}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getBottomMessageTextColor()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_d

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    .line 189
    :cond_d
    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 190
    iget-object v6, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v6}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getBottomMessageMarginLeft()I

    move-result v6

    .line 191
    iget-object v10, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v10}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getBottomMessageMarginTop()I

    move-result v10

    .line 192
    iget-object v11, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v11}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getBottomMessageMarginRight()I

    move-result v11

    .line 193
    iget-object v13, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v13}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getBottomMessageMarginBottom()I

    move-result v13

    .line 190
    invoke-virtual {v5, v6, v10, v11, v13}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMargins(IIII)V

    .line 194
    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    .line 198
    :cond_e
    iget-object v5, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v5}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getBottomMessageImage()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_f

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    const-string v6, "dialogBottomBodyImage"

    .line 199
    invoke-static {v8, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 200
    iget-object v7, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v7}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getBottomMessageImageMarginLeft()I

    move-result v7

    .line 201
    iget-object v10, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v10}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getBottomMessageImageMarginTop()I

    move-result v10

    .line 202
    iget-object v11, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v11}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getBottomMessageImageMarginRight()I

    move-result v11

    .line 203
    iget-object v13, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v13}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getBottomMessageImageMarginBottom()I

    move-result v13

    .line 200
    invoke-virtual {v6, v7, v10, v11, v13}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMargins(IIII)V

    .line 205
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    check-cast v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    .line 212
    :cond_f
    iget-object v5, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v5}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getLeftWrapContentWidth()Z

    move-result v5

    const/4 v6, -0x2

    if-eqz v5, :cond_10

    .line 213
    invoke-static {v3, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 214
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 215
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    :cond_10
    iget-object v5, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v5}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getRightWrapContentWidth()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 219
    invoke-static {v9, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 220
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 221
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    :cond_11
    iget-object v5, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v5}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getRightBtnGravity()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_12

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v9, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setGravity(I)V

    sget-object v4, Lkotlin/v;->a:Lkotlin/v;

    .line 226
    :cond_12
    iget-object v4, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v4}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getLeftBtnGravity()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_13

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v3, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 228
    :cond_13
    iget-object v2, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v2}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getButtonPositioning()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_14

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    const-string v3, "customDialogGuideline"

    move-object/from16 v11, v25

    .line 229
    invoke-static {v11, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroidx/constraintlayout/widget/Guideline;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 230
    iput v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c:F

    .line 231
    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v11, v3}, Landroidx/constraintlayout/widget/Guideline;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 235
    :cond_14
    iget-object v2, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v2}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getTopImageResource()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_15

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const-string v3, "topImage"

    move-object/from16 v4, v22

    .line 236
    invoke-static {v4, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 240
    iget-object v3, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v3}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getTopImageMarginLeft()I

    move-result v3

    .line 241
    iget-object v5, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v5}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getTopImageMarginTop()I

    move-result v5

    .line 242
    iget-object v6, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v6}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getTopImageMarginRight()I

    move-result v6

    .line 243
    iget-object v7, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v7}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getTopImageMarginBottom()I

    move-result v7

    .line 240
    invoke-virtual {v2, v3, v5, v6, v7}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMargins(IIII)V

    .line 244
    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 248
    :cond_15
    iget-object v2, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v2}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getBottomImageResource()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_16

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const-string v3, "bottomImage"

    move-object/from16 v4, v24

    .line 249
    invoke-static {v4, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 253
    iget-object v1, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v1}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getBottomImageMarginLeft()I

    move-result v1

    .line 254
    iget-object v3, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v3}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getBottomImageMarginTop()I

    move-result v3

    .line 255
    iget-object v5, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v5}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getBottomImageMarginRight()I

    move-result v5

    .line 256
    iget-object v6, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v6}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getBottomImageMarginBottom()I

    move-result v6

    .line 253
    invoke-virtual {v2, v1, v3, v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMargins(IIII)V

    .line 257
    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    .line 260
    :cond_16
    iget-object v1, v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->b:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    invoke-virtual {v1}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->getCloseButtonVisibility()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "closeButton"

    move-object/from16 v2, v23

    .line 261
    invoke-static {v2, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const v3, 0x7f0601ec

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    move-object/from16 v1, p1

    .line 263
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_17
    return-void
.end method

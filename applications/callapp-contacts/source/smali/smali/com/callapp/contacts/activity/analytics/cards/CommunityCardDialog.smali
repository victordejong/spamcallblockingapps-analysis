.class public Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$UserClickOnConfirmPhone;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$UserClickOnConfirmPhone;

.field private d:Z


# direct methods
.method public constructor <init>(ZLcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$UserClickOnConfirmPhone;ZZ)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    .line 41
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;->a:Z

    .line 42
    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;->c:Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$UserClickOnConfirmPhone;

    .line 43
    iput-boolean p3, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;->b:Z

    .line 44
    iput-boolean p4, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;)Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$UserClickOnConfirmPhone;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;->c:Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$UserClickOnConfirmPhone;

    return-object p0
.end method


# virtual methods
.method protected getLayoutResource()I
    .locals 1

    const v0, 0x7f0d009d

    return v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;->getLayoutResource()I

    move-result v1

    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0922

    .line 1061
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a08ad

    .line 1062
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a012a

    .line 1063
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a0129

    .line 1064
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a00cf

    .line 1065
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a00ce

    .line 1066
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0a05ab

    .line 1067
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0a05aa

    .line 1068
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0a00cd

    .line 1069
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0a05a9

    .line 1070
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f0a0461

    .line 1071
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f0a0454

    .line 1072
    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v14, 0x7f0a02f9

    .line 1073
    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v15, 0x7f0a0adb

    .line 1074
    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    move-object/from16 p1, v12

    const v12, 0x7f08009c

    .line 1075
    invoke-virtual {v15, v12}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v16, 0x7f060026

    move-object/from16 p2, v11

    .line 1076
    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v11

    invoke-static {v15, v12, v11}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    const v11, 0x7f0a00cc

    .line 1077
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f120218

    .line 1078
    invoke-static {v12}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, 0x7f120217

    .line 1079
    invoke-static {v12}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, 0x7f12021d

    .line 1080
    invoke-static {v12}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f12021c

    .line 1081
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f12021e

    .line 1082
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f12021b

    .line 1083
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f120214

    .line 1084
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f1203cd

    .line 1086
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f060088

    .line 1088
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1089
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0601ec

    .line 1090
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1092
    iget-boolean v3, v0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;->a:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 1093
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const v3, 0x7f120215

    .line 1094
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1095
    new-instance v3, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$1;

    invoke-direct {v3, v0, v11}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;Landroid/widget/TextView;)V

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    .line 1106
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1109
    :goto_0
    iget-boolean v3, v0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;->b:Z

    if-eqz v3, :cond_1

    const v3, 0x7f120216

    .line 1110
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1111
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1112
    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    .line 1114
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const v2, 0x7f120093

    .line 1118
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f120424

    .line 1119
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v11, p2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f120362

    .line 1120
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v12, p1

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1121
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1122
    new-instance v2, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$2;

    invoke-direct {v2, v0, v12}, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$2;-><init>(Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;Landroid/widget/TextView;)V

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    const v0, 0x106000d

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method

.method public shouldCanceledOnTouchOutside()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog;->d:Z

    return v0
.end method

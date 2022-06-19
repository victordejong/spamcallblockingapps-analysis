.class public Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;
    }
.end annotation


# instance fields
.field a:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

.field b:Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$UserClickOnConfirmPhone;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$UserClickOnConfirmPhone;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog;->a:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    .line 40
    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog;->b:Lcom/callapp/contacts/activity/analytics/cards/CommunityCardDialog$UserClickOnConfirmPhone;

    return-void
.end method


# virtual methods
.method protected getLayoutResource()I
    .locals 1

    const v0, 0x7f0d0160

    return v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20

    move-object/from16 v0, p0

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog;->getLayoutResource()I

    move-result v1

    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0adb

    .line 1057
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f08009c

    .line 1058
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v4, 0x7f060026

    .line 1059
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    const v2, 0x7f0a0922

    .line 1061
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0a08ad

    .line 1062
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a02f9

    .line 1063
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a05ca

    .line 1064
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a0454

    .line 1065
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0a0181

    .line 1066
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0a04b8

    .line 1067
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/callapp/contacts/widget/RoundedCornersImageView;

    const v10, 0x7f0a04d0

    .line 1068
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    const v11, 0x7f0a04d3

    .line 1069
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f0a04d2

    .line 1070
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f0a04d1

    .line 1071
    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v14, 0x7f120218

    .line 1073
    invoke-static {v14}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f1204fa

    .line 1074
    invoke-static {v14}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f1203cd

    .line 1075
    invoke-static {v14}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f120214

    .line 1076
    invoke-static {v14}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, 0x7f060088

    .line 1078
    invoke-static {v12}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1079
    invoke-static {v12}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1080
    invoke-static {v12}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0601ec

    .line 1081
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v14

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1082
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1083
    invoke-static {v12}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1086
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog;->a:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    sget-object v7, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;->ADVANCED:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    const v15, 0x7f080067

    const v16, 0x7f0600a3

    const v17, 0x7f120362

    const v12, 0x7f1203cf

    const v18, 0x7f120095

    const/16 v19, 0x0

    const/4 v14, 0x1

    if-ne v2, v7, :cond_0

    .line 1087
    invoke-static/range {v18 .. v18}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v2, v14, [Ljava/lang/Object;

    .line 1088
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserFirstName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v19

    invoke-static {v12, v2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1089
    invoke-static/range {v17 .. v17}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1090
    invoke-virtual {v10, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1091
    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v10, v3, v2}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    .line 1092
    invoke-virtual {v9, v15}, Lcom/callapp/contacts/widget/RoundedCornersImageView;->setImageResource(I)V

    const v2, 0x7f12021c

    .line 1093
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f120093

    .line 1094
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1096
    :cond_0
    iget-object v2, v0, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog;->a:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    sget-object v7, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;->CONFIRM:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    if-ne v2, v7, :cond_1

    .line 1097
    invoke-static/range {v18 .. v18}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f1203ce

    new-array v4, v14, [Ljava/lang/Object;

    .line 1098
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserFirstName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v19

    invoke-static {v2, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f120223

    .line 1099
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    invoke-virtual {v10, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1101
    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v10, v3, v2}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    .line 1102
    invoke-virtual {v9, v15}, Lcom/callapp/contacts/widget/RoundedCornersImageView;->setImageResource(I)V

    const v2, 0x7f12021c

    .line 1103
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f120093

    .line 1104
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x8

    .line 1105
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const v2, 0x7f120426

    .line 1108
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v2, v14, [Ljava/lang/Object;

    .line 1109
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserFirstName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v19

    invoke-static {v12, v2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1110
    invoke-static/range {v17 .. v17}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1111
    invoke-virtual {v10, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    const v2, 0x7f0600a5

    .line 1112
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v10, v3, v2}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    const v2, 0x7f080536

    .line 1113
    invoke-virtual {v9, v2}, Lcom/callapp/contacts/widget/RoundedCornersImageView;->setImageResource(I)V

    const v2, 0x7f12021e

    .line 1114
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f120424

    .line 1115
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1119
    :goto_0
    new-instance v2, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$1;

    invoke-direct {v2, v0, v8}, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog;Landroid/widget/TextView;)V

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    const v0, 0x106000d

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method

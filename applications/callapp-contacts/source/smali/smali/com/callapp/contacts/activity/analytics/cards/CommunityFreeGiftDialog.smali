.class public Lcom/callapp/contacts/activity/analytics/cards/CommunityFreeGiftDialog;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# instance fields
.field a:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityFreeGiftDialog;->a:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    return-void
.end method


# virtual methods
.method protected getLayoutResource()I
    .locals 1

    const v0, 0x7f0d015f

    return v0
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13

    .line 43
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/cards/CommunityFreeGiftDialog;->getLayoutResource()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0adb

    .line 1049
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const v0, 0x7f08009c

    .line 1050
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const v1, 0x7f060026

    .line 1051
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    const p2, 0x7f0a0922

    .line 1053
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v1, 0x7f0a08ad

    .line 1054
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a02f9

    .line 1055
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a05ca

    .line 1056
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0264

    .line 1057
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a0323

    .line 1058
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a0181

    .line 1059
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a04b8

    .line 1060
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/widget/RoundedCornersImageView;

    const v8, 0x7f0a04d0

    .line 1061
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    const v9, 0x7f0a04d3

    .line 1062
    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0a04d2

    .line 1063
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0a04d1

    .line 1064
    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f120218

    .line 1066
    invoke-static {v12}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v12, 0x7f120214

    .line 1067
    invoke-static {v12}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f120224

    .line 1068
    invoke-static {v10}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f1202af

    .line 1069
    invoke-static {v10}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f120362

    .line 1070
    invoke-static {v10}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f120244

    .line 1071
    invoke-static {v10}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f120245

    .line 1072
    invoke-static {v10}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f060088

    .line 1074
    invoke-static {v10}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v12

    invoke-virtual {p2, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1075
    invoke-static {v10}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const p2, 0x7f0601ec

    .line 1076
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1077
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1078
    invoke-static {v10}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1079
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1080
    invoke-static {v10}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1083
    iget-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/CommunityFreeGiftDialog;->a:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    sget-object v4, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;->ADVANCED:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    if-ne p2, v4, :cond_0

    const p2, 0x7f120095

    .line 1084
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    const p2, 0x7f0600a3

    .line 1086
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v8, v0, p2}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    const p2, 0x7f080067

    .line 1087
    invoke-virtual {v7, p2}, Lcom/callapp/contacts/widget/RoundedCornersImageView;->setImageResource(I)V

    const p2, 0x7f12021c

    .line 1088
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v9, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f120093

    .line 1089
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v11, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x8

    .line 1090
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1091
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const p2, 0x7f120426

    .line 1095
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1096
    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    const p2, 0x7f0600a5

    .line 1097
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-static {v8, v0, p2}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    const p2, 0x7f080536

    .line 1098
    invoke-virtual {v7, p2}, Lcom/callapp/contacts/widget/RoundedCornersImageView;->setImageResource(I)V

    const p2, 0x7f12021e

    .line 1099
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v9, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f120424

    .line 1100
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v11, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    :goto_0
    new-instance p2, Lcom/callapp/contacts/activity/analytics/cards/CommunityFreeGiftDialog$1;

    invoke-direct {p2, p0, v6}, Lcom/callapp/contacts/activity/analytics/cards/CommunityFreeGiftDialog$1;-><init>(Lcom/callapp/contacts/activity/analytics/cards/CommunityFreeGiftDialog;Landroid/widget/TextView;)V

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    const v0, 0x106000d

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method

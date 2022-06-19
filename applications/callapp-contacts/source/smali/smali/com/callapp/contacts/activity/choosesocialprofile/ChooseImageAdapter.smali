.class public Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;
.super Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter$OnChooseImageEventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter<",
        "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
        "Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private c:I

.field private final d:I

.field private e:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter$OnChooseImageEventListener;

.field private f:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method public constructor <init>(Ljava/util/List;IILcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter$OnChooseImageEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
            ">;II",
            "Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter$OnChooseImageEventListener;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;-><init>(Ljava/util/List;)V

    .line 33
    iput p2, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;->c:I

    .line 34
    iput p3, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;->d:I

    .line 35
    iput-object p4, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;->e:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter$OnChooseImageEventListener;

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;Lcom/callapp/contacts/activity/base/BaseViewTypeData;)V
    .locals 17

    move-object/from16 v0, p0

    .line 74
    invoke-virtual/range {p2 .. p2}, Lcom/callapp/contacts/activity/base/BaseViewTypeData;->getViewType()I

    move-result v1

    const/16 v2, 0xd

    const/4 v3, 0x1

    if-eq v1, v2, :cond_8

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    goto/16 :goto_6

    .line 81
    :cond_0
    move-object/from16 v1, p1

    check-cast v1, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder;

    move-object/from16 v2, p2

    check-cast v2, Lcom/callapp/contacts/activity/choosesocialprofile/DevicePhotoData;

    iget v5, v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;->c:I

    iget-object v6, v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;->e:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter$OnChooseImageEventListener;

    .line 7053
    iget-object v7, v1, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder;->u:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/choosesocialprofile/DevicePhotoData;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7055
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/choosesocialprofile/DevicePhotoData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 7057
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const v9, 0x7f0802c2

    if-eqz v7, :cond_2

    .line 7058
    iget-object v7, v1, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder;->t:Lcom/callapp/contacts/widget/ProfilePictureView;

    new-instance v10, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v10, v9}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(I)V

    .line 7371
    iput-boolean v3, v10, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 8307
    invoke-virtual {v7, v10}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    goto :goto_1

    .line 7060
    :cond_2
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/choosesocialprofile/DevicePhotoData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 7061
    iget-object v7, v1, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder;->t:Lcom/callapp/contacts/widget/ProfilePictureView;

    new-instance v9, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/choosesocialprofile/DevicePhotoData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    .line 8371
    iput-boolean v3, v9, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 7061
    invoke-virtual {v7, v9}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    goto :goto_1

    .line 7064
    :cond_3
    iget-object v7, v1, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder;->t:Lcom/callapp/contacts/widget/ProfilePictureView;

    new-instance v8, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v8, v9}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(I)V

    .line 9371
    iput-boolean v3, v8, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 10307
    invoke-virtual {v7, v8}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    const/4 v8, 0x0

    .line 7068
    :goto_1
    iget-object v7, v1, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder;->w:Landroid/view/View;

    const/16 v9, 0x8

    if-eqz v8, :cond_4

    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    const/16 v10, 0x8

    :goto_2
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 7070
    iget-object v7, v1, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder;->t:Lcom/callapp/contacts/widget/ProfilePictureView;

    new-instance v10, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder$1;

    invoke-direct {v10, v1, v6}, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder$1;-><init>(Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder;Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter$OnChooseImageEventListener;)V

    invoke-virtual {v7, v10}, Lcom/callapp/contacts/widget/ProfilePictureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7077
    iget-object v7, v1, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder;->v:Lcom/callapp/contacts/widget/CallAppRadioButton;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder;->getAdapterPosition()I

    move-result v10

    if-ne v10, v5, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v7, v3}, Lcom/callapp/contacts/widget/CallAppRadioButton;->setChecked(Z)V

    .line 7078
    iget-object v3, v1, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder;->v:Lcom/callapp/contacts/widget/CallAppRadioButton;

    new-instance v5, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder$2;

    invoke-direct {v5, v1, v6}, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder$2;-><init>(Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder;Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter$OnChooseImageEventListener;)V

    invoke-virtual {v3, v5}, Lcom/callapp/contacts/widget/CallAppRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7086
    iget-object v3, v1, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder;->s:Lcom/callapp/contacts/activity/base/CallAppRow;

    new-instance v5, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder$3;

    invoke-direct {v5, v1, v6}, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder$3;-><init>(Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder;Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter$OnChooseImageEventListener;)V

    invoke-virtual {v3, v5}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnContainerClickListener(Landroid/view/View$OnClickListener;)V

    .line 7094
    iget-object v3, v1, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder;->v:Lcom/callapp/contacts/widget/CallAppRadioButton;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/choosesocialprofile/DevicePhotoData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {v3, v2}, Lcom/callapp/contacts/widget/CallAppRadioButton;->setVisibility(I)V

    .line 7096
    iget-object v2, v1, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder;->w:Landroid/view/View;

    new-instance v3, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder$4;

    invoke-direct {v3, v1, v6}, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder$4;-><init>(Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder;Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter$OnChooseImageEventListener;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7102
    iget-object v1, v1, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder;->v:Lcom/callapp/contacts/widget/CallAppRadioButton;

    if-eqz v8, :cond_7

    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    const/16 v4, 0x8

    :goto_5
    invoke-virtual {v1, v4}, Lcom/callapp/contacts/widget/CallAppRadioButton;->setVisibility(I)V

    :goto_6
    return-void

    .line 76
    :cond_8
    move-object/from16 v1, p1

    check-cast v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;

    iget v2, v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;->d:I

    move-object/from16 v5, p2

    check-cast v5, Lcom/callapp/contacts/model/contact/SocialMatchesData;

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;->getAdapterPosition()I

    move-result v6

    iget v7, v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;->c:I

    iget-object v8, v0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;->e:Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter$OnChooseImageEventListener;

    .line 1094
    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v9

    .line 1095
    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v10

    .line 1098
    invoke-static {v9}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1099
    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getPhotoResId()I

    move-result v11

    goto :goto_7

    :cond_9
    const/4 v11, 0x0

    :goto_7
    if-eq v2, v11, :cond_b

    .line 1101
    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getState()Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    move-result-object v2

    sget-object v12, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->MULTI_MATCH:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    if-ne v2, v12, :cond_a

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v2, 0x1

    :goto_9
    if-eqz v2, :cond_c

    .line 1102
    iget v12, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->B:I

    goto :goto_a

    :cond_c
    iget v12, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->C:I

    .line 1103
    :goto_a
    iget v13, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->C:I

    .line 1106
    iget-object v14, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->D:Lcom/callapp/contacts/activity/base/CallAppRow;

    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v15, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v15}, Lcom/callapp/contacts/activity/base/CallAppRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1108
    sget-object v3, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder$6;->a:[I

    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getState()Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const v4, 0x7f120677

    const/4 v14, 0x4

    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x0

    .line 1170
    const-class v0, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;

    const-string v2, "Unknown state for profile picture - 6pack screen"

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1167
    :pswitch_0
    iget-object v2, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->D:Lcom/callapp/contacts/activity/base/CallAppRow;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/activity/base/CallAppRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_c

    :pswitch_1
    const/4 v4, 0x0

    const v2, 0x7f120672

    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/Object;

    .line 1156
    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v4

    invoke-static {v2, v11}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->setTitleVisibleOnly(Ljava/lang/String;)V

    .line 1157
    iget-object v2, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->t:Landroid/widget/TextView;

    iget v3, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->z:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1158
    iget v12, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->A:I

    .line 1159
    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialBadgeResourceId()I

    move-result v11

    .line 1160
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 1161
    iget-object v3, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->x:Lcom/callapp/contacts/widget/CallAppRadioButton;

    invoke-virtual {v3, v14}, Lcom/callapp/contacts/widget/CallAppRadioButton;->setVisibility(I)V

    .line 1162
    iget-object v3, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Z)V

    .line 1163
    iget v13, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->B:I

    move v4, v2

    const/4 v2, 0x1

    goto :goto_b

    :pswitch_2
    const v2, 0x7f1200cd

    .line 1146
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->setTitleVisibleOnly(Ljava/lang/String;)V

    .line 1147
    iget-object v2, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->t:Landroid/widget/TextView;

    iget v3, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->z:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x2

    .line 1149
    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialBadgeResourceId()I

    move-result v3

    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialBadgeBackgroundColor()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->setPhotoWithBadge(II)V

    .line 1150
    iget-object v3, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->x:Lcom/callapp/contacts/widget/CallAppRadioButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/widget/CallAppRadioButton;->setVisibility(I)V

    :goto_b
    const/4 v3, 0x0

    goto/16 :goto_11

    :pswitch_3
    const/4 v4, 0x0

    .line 1137
    iget-object v2, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->t:Landroid/widget/TextView;

    const v3, 0x7f120674

    const/4 v15, 0x1

    new-array v14, v15, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v4

    invoke-static {v3, v14}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1138
    iget-object v2, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->u:Landroid/widget/TextView;

    const v3, 0x7f120673

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v14, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->y:I

    invoke-static {v2, v3, v14}, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->a(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 1139
    invoke-virtual {v1, v4, v4}, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->a(ZZ)V

    .line 1140
    iget-object v2, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->t:Landroid/widget/TextView;

    iget v3, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->y:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1141
    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialBadgeResourceId()I

    move-result v2

    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialBadgeBackgroundColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->setPhotoWithBadge(II)V

    .line 1142
    iget-object v2, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->x:Lcom/callapp/contacts/widget/CallAppRadioButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/widget/CallAppRadioButton;->setVisibility(I)V

    :goto_c
    const/4 v3, 0x0

    goto/16 :goto_10

    :pswitch_4
    const/4 v3, 0x4

    .line 1128
    iget-object v14, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->t:Landroid/widget/TextView;

    const/4 v15, 0x1

    new-array v3, v15, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialName()Ljava/lang/String;

    move-result-object v15

    const/4 v0, 0x0

    aput-object v15, v3, v0

    invoke-static {v4, v3}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->a(Lcom/callapp/contacts/model/contact/SocialMatchesData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    iget-object v3, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->u:Landroid/widget/TextView;

    const v4, 0x7f120676

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v14, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->y:I

    invoke-static {v3, v4, v14}, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->a(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 1130
    invoke-virtual {v1, v0, v0}, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->a(ZZ)V

    .line 1131
    iget-object v0, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->t:Landroid/widget/TextView;

    iget v3, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->y:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1132
    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialBadgeResourceId()I

    move-result v0

    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialBadgeBackgroundColor()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->setPhotoWithBadge(II)V

    .line 1133
    iget-object v0, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->x:Lcom/callapp/contacts/widget/CallAppRadioButton;

    if-eqz v2, :cond_d

    const/4 v2, 0x4

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    :goto_d
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/widget/CallAppRadioButton;->setVisibility(I)V

    goto :goto_c

    .line 1119
    :pswitch_5
    iget-object v0, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->t:Landroid/widget/TextView;

    const/4 v3, 0x1

    new-array v14, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v4, v14}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->a(Lcom/callapp/contacts/model/contact/SocialMatchesData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1120
    iget-object v0, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->u:Landroid/widget/TextView;

    const v4, 0x7f120671

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v14, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->y:I

    invoke-static {v0, v4, v14}, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->a(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 1121
    invoke-virtual {v1, v3, v3}, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->a(ZZ)V

    .line 1122
    iget-object v0, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->t:Landroid/widget/TextView;

    iget v3, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->y:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1123
    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialBadgeResourceId()I

    move-result v0

    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialBadgeBackgroundColor()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->setPhotoWithBadge(II)V

    .line 1124
    iget-object v0, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->x:Lcom/callapp/contacts/widget/CallAppRadioButton;

    if-eqz v2, :cond_e

    const/4 v14, 0x4

    goto :goto_e

    :cond_e
    const/4 v14, 0x0

    :goto_e
    invoke-virtual {v0, v14}, Lcom/callapp/contacts/widget/CallAppRadioButton;->setVisibility(I)V

    goto/16 :goto_c

    .line 1110
    :pswitch_6
    iget-object v0, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->t:Landroid/widget/TextView;

    const/4 v3, 0x1

    new-array v14, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialName()Ljava/lang/String;

    move-result-object v15

    const/4 v3, 0x0

    aput-object v15, v14, v3

    invoke-static {v4, v14}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->a(Lcom/callapp/contacts/model/contact/SocialMatchesData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1111
    iget-object v0, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->u:Landroid/widget/TextView;

    const v4, 0x7f120675

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v14, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->y:I

    invoke-static {v0, v4, v14}, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->a(Landroid/widget/TextView;Ljava/lang/String;I)V

    const/4 v0, 0x1

    .line 1112
    invoke-virtual {v1, v3, v0}, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->a(ZZ)V

    .line 1113
    iget-object v0, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->t:Landroid/widget/TextView;

    iget v4, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->y:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1114
    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialBadgeResourceId()I

    move-result v0

    invoke-virtual {v5}, Lcom/callapp/contacts/model/contact/SocialMatchesData;->getSocialBadgeBackgroundColor()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->setPhotoWithBadge(II)V

    .line 1115
    iget-object v0, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->x:Lcom/callapp/contacts/widget/CallAppRadioButton;

    if-eqz v2, :cond_f

    const/4 v14, 0x4

    goto :goto_f

    :cond_f
    const/4 v14, 0x0

    :goto_f
    invoke-virtual {v0, v14}, Lcom/callapp/contacts/widget/CallAppRadioButton;->setVisibility(I)V

    :goto_10
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1174
    :goto_11
    iget-object v0, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1175
    iget-object v0, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->x:Lcom/callapp/contacts/widget/CallAppRadioButton;

    if-ne v6, v7, :cond_10

    const/4 v3, 0x1

    :cond_10
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/widget/CallAppRadioButton;->setChecked(Z)V

    .line 1176
    invoke-static {v9}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1177
    iget-object v0, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v2, v9}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    .line 1178
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->isLightTheme()Z

    move-result v3

    if-eqz v3, :cond_11

    const v3, 0x7f080593

    goto :goto_12

    :cond_11
    const v3, 0x7f080592

    .line 1501
    :goto_12
    iput v3, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->o:I

    .line 1178
    iget-object v3, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 1179
    invoke-virtual {v3}, Lcom/callapp/contacts/widget/ProfilePictureView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2432
    iput-object v3, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    .line 1180
    invoke-virtual {v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a()Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v2

    .line 1181
    invoke-virtual {v2, v10}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(Lcom/callapp/contacts/model/contact/DataSource;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v2

    const/4 v3, 0x1

    .line 3371
    iput-boolean v3, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 1177
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    goto :goto_13

    .line 4228
    :cond_12
    iget-object v0, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v2, v11}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(I)V

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 4229
    invoke-virtual {v2, v13, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4354
    iput-object v3, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    int-to-float v3, v4

    .line 4466
    iput v3, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->i:F

    const/4 v3, 0x1

    .line 5371
    iput-boolean v3, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 6307
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    .line 1187
    :goto_13
    iget-object v0, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->D:Lcom/callapp/contacts/activity/base/CallAppRow;

    new-instance v2, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder$1;

    invoke-direct {v2, v1, v8}, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder$1;-><init>(Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter$OnChooseImageEventListener;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnContainerClickListener(Landroid/view/View$OnClickListener;)V

    .line 1194
    iget-object v0, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    new-instance v2, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder$2;

    invoke-direct {v2, v1, v8}, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder$2;-><init>(Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter$OnChooseImageEventListener;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1202
    iget-object v0, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->x:Lcom/callapp/contacts/widget/CallAppRadioButton;

    new-instance v2, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder$3;

    invoke-direct {v2, v1, v8}, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder$3;-><init>(Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter$OnChooseImageEventListener;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/widget/CallAppRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1210
    iget-object v0, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->v:Landroid/view/View;

    new-instance v2, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder$4;

    invoke-direct {v2, v1, v8}, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder$4;-><init>(Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter$OnChooseImageEventListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1218
    iget-object v0, v1, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;->w:Landroid/view/View;

    new-instance v2, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder$5;

    invoke-direct {v2, v1, v8}, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder$5;-><init>(Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter$OnChooseImageEventListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCheckedImagePosition()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;->c:I

    return v0
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xd

    if-ne p2, v1, :cond_0

    .line 11057
    new-instance p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->LEFT_SOCIAL_PROFILE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 11074
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 11057
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_CHOOSE_SOCIAL_PROFILE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 11079
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->b:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 11058
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->RIGHT_RADIO:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 11084
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->c:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 11058
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    .line 11059
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->setSwipeable(Z)V

    .line 11060
    new-instance p2, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;

    iget-object v0, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;->f:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p2, p1, v0}, Lcom/callapp/contacts/activity/choosesocialprofile/SocialProfileViewHolder;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-object p2

    :cond_0
    const/16 v1, 0xe

    if-ne p2, v1, :cond_1

    .line 11062
    new-instance p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->LEFT_SOCIAL_PROFILE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 12074
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 11062
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_USER_PHOTO_MEDIA:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 12079
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->b:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 11063
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->RIGHT_RADIO:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 12084
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->c:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 11064
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    .line 11065
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->setSwipeable(Z)V

    .line 11066
    new-instance p2, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/choosesocialprofile/AddDevicePhotoViewHolder;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public setCheckedImagePosition(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;->c:I

    .line 89
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setContact(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/callapp/contacts/activity/choosesocialprofile/ChooseImageAdapter;->f:Lcom/callapp/contacts/model/contact/ContactData;

    return-void
.end method

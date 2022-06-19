.class public Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;
.super Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;",
        "Landroidx/lifecycle/u<",
        "Ljava/util/List<",
        "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileAdapter;

.field private b:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewModel;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/ProgressBar;

.field private e:Z

.field private f:Z

.field private final g:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/callapp/contacts/model/SectionData;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->e:Z

    .line 67
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->f:Z

    .line 68
    new-instance v0, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->g:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    .line 73
    new-instance v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/-$$Lambda$WhoViewedMyProfileActivity$ZYJVGyz1kaxlBfmCZ0zpOO_IbgQ;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/-$$Lambda$WhoViewedMyProfileActivity$ZYJVGyz1kaxlBfmCZ0zpOO_IbgQ;-><init>(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->j:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

    return-void
.end method

.method private a()V
    .locals 2

    .line 163
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/whoViewedMyProfile/-$$Lambda$WhoViewedMyProfileActivity$1G1plhRsvsIPwd8y4GDcbNaRgjQ;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/-$$Lambda$WhoViewedMyProfileActivity$1G1plhRsvsIPwd8y4GDcbNaRgjQ;-><init>(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->b()V

    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V
    .locals 1

    .line 74
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 75
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->e:Z

    .line 76
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->f:Z

    if-eqz p1, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->a()V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 12

    .line 257
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const v1, 0x7f0a0497

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserPhoneOrFallbackPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserVerifiedPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->g()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hE:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    :cond_1
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 260
    :cond_2
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 261
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 262
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0601f0

    .line 263
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    goto :goto_0

    :cond_3
    const v1, 0x7f0601ef

    .line 265
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundColor(I)V

    :goto_0
    const v0, 0x7f0a0ab5

    .line 268
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0ab4

    .line 269
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f0a0a98

    .line 270
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x7f0a0a8e

    .line 271
    invoke-virtual {p0, v5}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/widget/ProfilePictureView;

    const v6, 0x7f0a06de

    .line 272
    invoke-virtual {p0, v6}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a0a97

    .line 273
    invoke-virtual {p0, v7}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0601cc

    .line 275
    invoke-static {v8}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const v8, 0x7f0601ec

    .line 276
    invoke-static {v8}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const v8, 0x7f120869

    .line 277
    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f12086d

    .line 278
    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v8, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-lez v8, :cond_5

    .line 281
    iget-object v8, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v9, :cond_4

    const v8, 0x7f12086c

    new-array v10, v9, [Ljava/lang/Object;

    .line 282
    iget-object v11, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->c:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-static {v8, v10}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const v8, 0x7f12086b

    new-array v10, v9, [Ljava/lang/Object;

    .line 284
    iget-object v11, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->c:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-static {v8, v10}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v8, 0x7f12086a

    .line 286
    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    const v8, 0x7f120866

    .line 288
    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v10, v3, [C

    invoke-static {v8, v10}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f120865

    .line 289
    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    :goto_2
    sget-object v8, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v8}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 292
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 294
    :cond_6
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    :goto_3
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserPhoneOrFallbackPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v8

    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserVerifiedPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 298
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 299
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 301
    :cond_7
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 302
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v2

    invoke-virtual {v2, v5, v9}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Lcom/callapp/contacts/widget/ProfilePictureView;Z)V

    const v2, 0x7f120868

    .line 304
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f120867

    .line 305
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :goto_4
    new-instance v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity$2;-><init>(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    new-instance v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity$3;-><init>(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    new-instance v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity$4;-><init>(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;)V

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic c()V
    .locals 7

    .line 165
    invoke-static {}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->getAllViewers()Ljava/util/List;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewMyProfileUtils;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->h:Ljava/util/Map;

    .line 168
    iget-object v1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 169
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 170
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->hE:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v4, 0x0

    .line 171
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 172
    new-instance v5, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;

    invoke-direct {v5, v6, v1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;-><init>(Lcom/callapp/contacts/model/objectbox/ProfileViewedData;Z)V

    .line 173
    iget-object v6, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->c:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 177
    :cond_2
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hE:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;

    .line 181
    iget-object v1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    iget-object v5, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->c:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->c:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;

    iput-boolean v3, v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->g:Z

    .line 187
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/whoViewedMyProfile/-$$Lambda$WhoViewedMyProfileActivity$O_NyoL7G7rs7NPq8813zJu7iVtA;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/-$$Lambda$WhoViewedMyProfileActivity$O_NyoL7G7rs7NPq8813zJu7iVtA;-><init>(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic d()V
    .locals 4

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->e:Z

    .line 189
    invoke-direct {p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->b()V

    .line 190
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileAdapter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileAdapter;->setData(Ljava/util/List;)V

    .line 193
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->d:Landroid/widget/ProgressBar;

    new-instance v1, Lcom/callapp/contacts/activity/whoViewedMyProfile/-$$Lambda$WhoViewedMyProfileActivity$UNKoIj_kthrVzqePoaZXctDx3vk;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/-$$Lambda$WhoViewedMyProfileActivity$UNKoIj_kthrVzqePoaZXctDx3vk;-><init>(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;)V

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic e()V
    .locals 7

    .line 2221
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;

    .line 2222
    iget-wide v4, v3, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->c:J

    cmp-long v6, v4, v1

    if-lez v6, :cond_0

    .line 2223
    iget-wide v1, v3, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->c:J

    goto :goto_0

    .line 2226
    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hD:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$1G1plhRsvsIPwd8y4GDcbNaRgjQ(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->c()V

    return-void
.end method

.method public static synthetic lambda$O_NyoL7G7rs7NPq8813zJu7iVtA(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->d()V

    return-void
.end method

.method public static synthetic lambda$UNKoIj_kthrVzqePoaZXctDx3vk(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->e()V

    return-void
.end method

.method public static synthetic lambda$ZYJVGyz1kaxlBfmCZ0zpOO_IbgQ(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->a(Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;)V

    return-void
.end method


# virtual methods
.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d01ce

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 334
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x1d1d

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const-string p1, "RESULT_USER_PHONE_NUMBER"

    .line 338
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "RESULT_USER_CALLAPP_TOKEN"

    .line 339
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "RESULT_USER_CALLAPP_TOKEN_TYPE"

    .line 340
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 342
    invoke-static {}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->get()Lcom/callapp/contacts/manager/PhoneVerifierManager;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity$5;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity$5;-><init>(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;)V

    .line 2088
    iput-object v1, v0, Lcom/callapp/contacts/manager/PhoneVerifierManager;->a:Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;

    .line 348
    sget-object v0, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->SINCH:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    invoke-virtual {v0}, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-static {}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->get()Lcom/callapp/contacts/manager/PhoneVerifierManager;

    move-result-object p3

    sget-object v0, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->SINCH:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    invoke-virtual {p3, p1, p2, v0}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;)V

    return-void

    .line 350
    :cond_0
    sget-object v0, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->CALLAPP:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    invoke-virtual {v0}, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 351
    invoke-static {}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->get()Lcom/callapp/contacts/manager/PhoneVerifierManager;

    move-result-object p3

    sget-object v0, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->CALLAPP:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    invoke-virtual {p3, p1, p2, v0}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;)V

    :cond_1
    return-void
.end method

.method public synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 2159
    invoke-direct {p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->a()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 84
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ViewProfile"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v2, "whoViewedMyProfileNotificationClicked"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v2, "ViewProfile_notification_open"

    invoke-virtual {p1, v0, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->d()V

    .line 91
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v2, "ViewProfileScreen"

    invoke-virtual {p1, v0, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hB:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    const p1, 0x7f0a0740

    .line 94
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 95
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->g:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 97
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 98
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 99
    iget-object v1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileAdapter;

    if-nez v1, :cond_1

    .line 100
    new-instance v1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileAdapter;

    iget-object v2, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->g:Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    invoke-direct {v1, v2, v3}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/activity/base/ScrollEvents;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->a:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileAdapter;

    .line 101
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->c:Ljava/util/List;

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileAdapter;->setData(Ljava/util/List;)V

    .line 105
    :goto_0
    new-instance p1, Landroidx/lifecycle/ab;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ab;-><init>(Landroidx/lifecycle/ad;)V

    const-class v1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewModel;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/ab;->a(Ljava/lang/Class;)Landroidx/lifecycle/aa;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewModel;

    iput-object p1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->b:Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewModel;

    .line 106
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileViewModel;->a(Lio/objectbox/a;)Lio/objectbox/a/a;

    move-result-object p1

    invoke-virtual {p1, p0, p0}, Lio/objectbox/a/a;->a(Landroidx/lifecycle/p;Landroidx/lifecycle/u;)V

    const p1, 0x7f0a06f7

    .line 107
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->d:Landroid/widget/ProgressBar;

    .line 109
    invoke-direct {p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->b()V

    const p1, 0x7f0a0ad1

    .line 111
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 113
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f060111

    .line 114
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_2
    const v1, 0x7f0600ab

    .line 116
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 118
    :goto_1
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->j:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

    invoke-virtual {p1, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    const p1, 0x7f0a0939

    .line 120
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f120864

    .line 121
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f060088

    .line 122
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 124
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/app/ActionBar;

    const v1, 0x7f0804c7

    invoke-static {v1}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->b(Landroid/graphics/drawable/Drawable;)V

    .line 125
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->a(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 211
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a05c6

    .line 212
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 216
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 3

    .line 141
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->e:Z

    .line 143
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    iget-object v2, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->j:Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a05c6

    if-ne v0, v1, :cond_0

    .line 1230
    new-instance p1, Lcom/callapp/contacts/popup/contact/DialogList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/callapp/contacts/popup/contact/DialogList;-><init>(Ljava/lang/String;)V

    .line 1231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1232
    new-instance v1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v2, 0x7f080369

    const v3, 0x7f120857

    invoke-direct {v1, v2, v3}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1233
    new-instance v1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;

    const v2, 0x7f080486

    const v3, 0x7f120663

    invoke-direct {v1, v2, v3}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    new-instance v1, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;

    const v2, 0x7f0d00aa

    invoke-direct {v1, p0, v2, v0}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1236
    new-instance v0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity$1;-><init>(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;Lcom/callapp/contacts/popup/contact/DialogList;)V

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/popup/contact/AdapterIconAndText;->setListener(Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    .line 1250
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/popup/contact/DialogList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1251
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    const/4 p1, 0x1

    return p1

    .line 206
    :cond_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onPause()V

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->f:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 132
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseNoTitleActivity;->onResume()V

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->f:Z

    .line 134
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->e:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;->a()V

    :cond_0
    return-void
.end method

.class public Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;
.super Lcom/callapp/contacts/activity/base/BaseContactHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;
    }
.end annotation


# static fields
.field private static final u:Landroidx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/e<",
            "Lcom/callapp/framework/phone/Phone;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/callapp/contacts/model/ReminderData;

.field private B:Landroid/widget/FrameLayout;

.field private C:Landroid/widget/FrameLayout;

.field private v:Lcom/callapp/contacts/activity/base/CallAppRow;

.field private w:Lcom/callapp/contacts/widget/ProfilePictureView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Landroidx/b/e;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroidx/b/e;-><init>(I)V

    sput-object v0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->u:Landroidx/b/e;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V
    .locals 4

    .line 73
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder;-><init>(Landroid/view/View;)V

    .line 75
    iput-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    const v0, 0x7f0a06ed

    .line 76
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    const/4 v1, 0x1

    .line 77
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setClickable(Z)V

    const v0, 0x7f0a0614

    .line 78
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->x:Landroid/widget/TextView;

    const v1, 0x7f0601ec

    .line 79
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a06ac

    .line 80
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->y:Landroid/widget/TextView;

    const v1, 0x7f0601cc

    .line 81
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a076a

    .line 82
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 83
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const v2, 0x7f060088

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    const v2, 0x7f080295

    invoke-static {v0, v2, v1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    const v0, 0x7f0a076b

    .line 84
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->B:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0575

    .line 86
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->z:Landroid/widget/ImageView;

    const v0, 0x7f0a0576

    .line 87
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->C:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->setSwipeable(Z)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;)Lcom/callapp/contacts/model/ReminderData;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->A:Lcom/callapp/contacts/model/ReminderData;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/ReminderData;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->a(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/ReminderData;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/model/ReminderData;Landroid/content/Context;I)V
    .locals 3

    .line 2325
    iget-object v0, p0, Lcom/callapp/contacts/model/ReminderData;->type:Lcom/callapp/contacts/model/ReminderType;

    sget-object v1, Lcom/callapp/contacts/model/ReminderType;->BLOCKED_RULE:Lcom/callapp/contacts/model/ReminderType;

    if-ne v0, v1, :cond_0

    .line 2326
    iget-wide v0, p0, Lcom/callapp/contacts/model/ReminderData;->reminderId:J

    long-to-int p2, v0

    .line 2327
    invoke-virtual {p0}, Lcom/callapp/contacts/model/ReminderData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p0

    .line 2328
    invoke-static {p1, p2, p0}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;ILjava/lang/String;)V

    return-void

    .line 2329
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/model/ReminderData;->type:Lcom/callapp/contacts/model/ReminderType;

    sget-object v1, Lcom/callapp/contacts/model/ReminderType;->BLOCKED:Lcom/callapp/contacts/model/ReminderType;

    if-ne v0, v1, :cond_1

    .line 2330
    iget-object p2, p0, Lcom/callapp/contacts/model/ReminderData;->displayName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/callapp/contacts/model/ReminderData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2331
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/ReminderData;->phone:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Lcom/callapp/framework/phone/Phone;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2332
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p0

    const p1, 0x7f1204cc

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3111
    invoke-virtual {p0, p1, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 2333
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/model/ReminderData;->type:Lcom/callapp/contacts/model/ReminderType;

    sget-object v2, Lcom/callapp/contacts/model/ReminderType;->SPAM:Lcom/callapp/contacts/model/ReminderType;

    if-ne v0, v2, :cond_3

    .line 2334
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->BLOCK:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v0}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v0

    const/4 v2, 0x7

    invoke-static {v0, p2, v2}, Lcom/callapp/contacts/model/DataChangedInfo;->create(III)Lcom/callapp/contacts/model/DataChangedInfo;

    move-result-object p2

    .line 2337
    iget-object v0, p0, Lcom/callapp/contacts/model/ReminderData;->type:Lcom/callapp/contacts/model/ReminderType;

    iget-object v0, v0, Lcom/callapp/contacts/model/ReminderType;->title:Ljava/lang/String;

    invoke-static {p1, p0, v0, p2, v1}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Ljava/lang/String;Lcom/callapp/contacts/model/DataChangedInfo;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/ReminderData;)V
    .locals 0

    .line 307
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->setPhone(Ljava/lang/CharSequence;)V

    .line 309
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 310
    sget-object p1, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->u:Landroidx/b/e;

    iget-object p2, p3, Lcom/callapp/contacts/model/ReminderData;->phone:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {p1, p2}, Landroidx/b/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p3, Lcom/callapp/contacts/model/ReminderData;->displayName:Ljava/lang/String;

    goto :goto_0

    .line 312
    :cond_0
    iput-object p1, p3, Lcom/callapp/contacts/model/ReminderData;->displayName:Ljava/lang/String;

    .line 315
    :goto_0
    iget-object p1, p3, Lcom/callapp/contacts/model/ReminderData;->displayName:Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 316
    iget-object p1, p3, Lcom/callapp/contacts/model/ReminderData;->phone:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->setName(Ljava/lang/CharSequence;)V

    const-string p1, "?"

    .line 317
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->setProfileText(Ljava/lang/String;)V

    return-void

    .line 319
    :cond_1
    iget-object p1, p3, Lcom/callapp/contacts/model/ReminderData;->displayName:Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->setName(Ljava/lang/CharSequence;)V

    .line 320
    iget-object p1, p3, Lcom/callapp/contacts/model/ReminderData;->displayName:Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->setProfileText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;)Lcom/callapp/contacts/activity/base/CallAppRow;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    return-object p0
.end method

.method static synthetic n()Landroidx/b/e;
    .locals 1

    .line 60
    sget-object v0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->u:Landroidx/b/e;

    return-object v0
.end method

.method private setProfileText(Ljava/lang/String;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/model/ReminderData;Lcom/callapp/contacts/activity/base/ScrollEvents;ILcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;)V
    .locals 9

    .line 168
    iput-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->A:Lcom/callapp/contacts/model/ReminderData;

    .line 170
    iget-object v0, p1, Lcom/callapp/contacts/model/ReminderData;->type:Lcom/callapp/contacts/model/ReminderType;

    sget-object v1, Lcom/callapp/contacts/model/ReminderType;->BLOCKED_RULE:Lcom/callapp/contacts/model/ReminderType;

    if-ne v0, v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    const v1, 0x7f0802f4

    invoke-direct {v0, v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(I)V

    const/4 v1, 0x1

    .line 1371
    iput-boolean v1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 2307
    invoke-virtual {p2, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;)Z

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/ReminderData;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p1, Lcom/callapp/contacts/model/ReminderData;->contactId:J

    invoke-virtual {p1}, Lcom/callapp/contacts/model/ReminderData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v8

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->a(Ljava/lang/String;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/base/ScrollEvents;JLcom/callapp/framework/phone/Phone;)V

    .line 176
    :goto_0
    iget-object p2, p1, Lcom/callapp/contacts/model/ReminderData;->type:Lcom/callapp/contacts/model/ReminderType;

    sget-object v0, Lcom/callapp/contacts/model/ReminderType;->SPAM:Lcom/callapp/contacts/model/ReminderType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p2, v0, :cond_3

    .line 177
    move-object p2, p1

    check-cast p2, Lcom/callapp/contacts/activity/blocked/SpamReminderData;

    .line 179
    iget-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->z:Landroid/widget/ImageView;

    iget-boolean v3, p2, Lcom/callapp/contacts/activity/blocked/SpamReminderData;->isBlocked:Z

    if-eqz v3, :cond_1

    const v3, 0x7f080297

    goto :goto_1

    :cond_1
    const v3, 0x7f08028d

    :goto_1
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    iget-boolean v5, p2, Lcom/callapp/contacts/activity/blocked/SpamReminderData;->isBlocked:Z

    if-eqz v5, :cond_2

    const v5, 0x7f0601db

    goto :goto_2

    :cond_2
    const v5, 0x7f0601cc

    :goto_2
    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v0, v3, v4}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 181
    iget-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->C:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->C:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$2;

    invoke-direct {v3, p0, p2, p1, p4}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$2;-><init>(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;Lcom/callapp/contacts/activity/blocked/SpamReminderData;Lcom/callapp/contacts/model/ReminderData;Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 198
    :cond_3
    iget-object p2, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->C:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 199
    iget-object p2, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->C:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    :goto_3
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/callapp/contacts/model/ReminderData;->isChecked()Z

    move-result v0

    invoke-virtual {p2, v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->b(ZZ)V

    .line 203
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$3;-><init>(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;Lcom/callapp/contacts/model/ReminderData;I)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object p2, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    new-instance v0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$4;

    invoke-direct {v0, p0, p1, p3}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$4;-><init>(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;Lcom/callapp/contacts/model/ReminderData;I)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnContainerClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object p2, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->B:Landroid/widget/FrameLayout;

    new-instance p3, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;

    invoke-direct {p3, p0, p1, p4}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$5;-><init>(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;Lcom/callapp/contacts/model/ReminderData;Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object p2, p1, Lcom/callapp/contacts/model/ReminderData;->type:Lcom/callapp/contacts/model/ReminderType;

    sget-object p3, Lcom/callapp/contacts/model/ReminderType;->BLOCKED:Lcom/callapp/contacts/model/ReminderType;

    if-eq p2, p3, :cond_5

    iget-object p2, p1, Lcom/callapp/contacts/model/ReminderData;->type:Lcom/callapp/contacts/model/ReminderType;

    sget-object p3, Lcom/callapp/contacts/model/ReminderType;->SPAM:Lcom/callapp/contacts/model/ReminderType;

    if-ne p2, p3, :cond_4

    goto :goto_4

    .line 299
    :cond_4
    iget-object p2, p1, Lcom/callapp/contacts/model/ReminderData;->type:Lcom/callapp/contacts/model/ReminderType;

    sget-object p3, Lcom/callapp/contacts/model/ReminderType;->BLOCKED_RULE:Lcom/callapp/contacts/model/ReminderType;

    if-ne p2, p3, :cond_6

    .line 300
    invoke-virtual {p1}, Lcom/callapp/contacts/model/ReminderData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 295
    :cond_5
    :goto_4
    invoke-virtual {p1}, Lcom/callapp/contacts/model/ReminderData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 297
    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v2

    .line 303
    :cond_6
    :goto_5
    iget-object p2, p1, Lcom/callapp/contacts/model/ReminderData;->displayName:Ljava/lang/String;

    invoke-direct {p0, p2, v2, p1}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->a(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/ReminderData;)V

    return-void
.end method

.method public getLoaderLoadFields()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 107
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->CONTACTS_ADAPTER_WITH_NAME_LOADED_FIELD:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->w:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object v0
.end method

.method public final l()Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
    .locals 2

    .line 102
    new-instance v0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder$1;)V

    return-object v0
.end method

.method public setName(Ljava/lang/CharSequence;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->x:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPhone(Ljava/lang/CharSequence;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedContactViewHolder;->y:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

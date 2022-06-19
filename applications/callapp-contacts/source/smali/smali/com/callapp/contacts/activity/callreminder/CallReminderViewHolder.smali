.class public Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;
.super Lcom/callapp/contacts/activity/base/BaseContactHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder$RemindersAdapterDataLoadTask;
    }
.end annotation


# instance fields
.field private u:Lcom/callapp/contacts/activity/base/CallAppRow;

.field private v:Lcom/callapp/contacts/widget/ProfilePictureView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V
    .locals 6

    .line 54
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder;-><init>(Landroid/view/View;)V

    .line 55
    iput-object p1, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;->u:Lcom/callapp/contacts/activity/base/CallAppRow;

    const v0, 0x7f0600f3

    .line 56
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    const v1, 0x7f0601ec

    .line 57
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    const v2, 0x7f0a06ed

    .line 59
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v2, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;->v:Lcom/callapp/contacts/widget/ProfilePictureView;

    const v2, 0x7f0a028d

    .line 61
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;->w:Landroid/widget/TextView;

    .line 62
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f0a02df

    .line 63
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;->x:Landroid/widget/TextView;

    .line 64
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f0a0371

    .line 66
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;->y:Landroid/widget/ImageView;

    .line 67
    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08039b

    invoke-direct {v2, v1, v4, v3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;ILandroid/content/Context;)V

    const v1, 0x7f0601cc

    .line 68
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object v2

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1354
    iput-object v3, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    const/4 v3, 0x1

    .line 1371
    iput-boolean v3, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 71
    invoke-virtual {v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    const v2, 0x7f0a02f3

    .line 72
    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;->z:Landroid/widget/ImageView;

    .line 73
    new-instance v4, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object p1

    const v5, 0x7f080368

    invoke-direct {v4, v2, v5, p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 74
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, p1, v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILandroid/graphics/PorterDuff$Mode;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object p1

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2354
    iput-object v0, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->g:Ljava/lang/Integer;

    .line 2371
    iput-boolean v3, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->l:Z

    .line 77
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/activity/callreminder/CallRemindersData;Landroid/view/View;)V
    .locals 12

    const/4 v0, 0x1

    .line 94
    invoke-static {p2, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 95
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact List"

    const-string v2, "Pressed on contact image in: reminders"

    const-string v3, "Clicked"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v0}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->ordinal()I

    move-result v0

    .line 97
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;->getAdapterPosition()I

    move-result v1

    const/4 v2, 0x2

    .line 96
    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/model/DataChangedInfo;->create(III)Lcom/callapp/contacts/model/DataChangedInfo;

    move-result-object v9

    .line 99
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p1, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->contactId:J

    iget-object v0, p1, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->phone:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v6

    sget-object v11, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->CALL_LOG_CONTACT_LIST:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v10, "CallReminderProfilePicture"

    invoke-static/range {v3 .. v11}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->createIntent(Landroid/content/Context;JLjava/lang/String;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZLcom/callapp/contacts/model/DataChangedInfo;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)Landroid/content/Intent;

    move-result-object v0

    .line 100
    iget-object p1, p1, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->displayName:Ljava/lang/String;

    const-string v1, "fullName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "EXTRA_FORCE_SHOW_CORRECTED_INFO_PRESENTER"

    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "EXTRA_FORCE_SHOW_IS_SPAM_PRESENTER"

    .line 103
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/activity/callreminder/CallRemindersData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Landroid/view/View;)Z
    .locals 7

    const/4 v0, 0x1

    .line 111
    invoke-static {p4, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 112
    iget-object p4, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;->u:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {p4}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v5, Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;->REGULAR:Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Lcom/callapp/contacts/activity/contact/list/ContactItemContextMenuHelper$MENU_TYPE;Landroid/view/View;)V

    return v0
.end method

.method public static synthetic lambda$380c9xrovDUmCq8fj_vE7MnrJmU(Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;Lcom/callapp/contacts/activity/callreminder/CallRemindersData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;->a(Lcom/callapp/contacts/activity/callreminder/CallRemindersData;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$cf7I6wP3KuX3O9Lv8hwLI-I_Uiw(Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;Lcom/callapp/contacts/activity/callreminder/CallRemindersData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;->a(Lcom/callapp/contacts/activity/callreminder/CallRemindersData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;Landroid/view/View;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/callreminder/CallRemindersData;Lcom/callapp/contacts/activity/base/ScrollEvents;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;)V
    .locals 7

    .line 81
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    iget-wide v4, p1, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->contactId:J

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v6

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;->a(Ljava/lang/String;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/base/ScrollEvents;JLcom/callapp/framework/phone/Phone;)V

    .line 82
    iget-object p2, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;->w:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->displayName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object p2, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;->u:Lcom/callapp/contacts/activity/base/CallAppRow;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/callapp/contacts/util/ListsUtils;->a(Lcom/callapp/contacts/activity/base/CallAppRow;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 88
    iget-object v0, p1, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->notificationTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v0, 0xc

    const/4 v1, 0x1

    .line 89
    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;->x:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/contacts/util/date/DateUtils;->c(Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p2, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;->v:Lcom/callapp/contacts/widget/ProfilePictureView;

    iget-object v0, p1, Lcom/callapp/contacts/activity/callreminder/CallRemindersData;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    new-instance p2, Lcom/callapp/contacts/activity/callreminder/-$$Lambda$CallReminderViewHolder$380c9xrovDUmCq8fj_vE7MnrJmU;

    invoke-direct {p2, p0, p1}, Lcom/callapp/contacts/activity/callreminder/-$$Lambda$CallReminderViewHolder$380c9xrovDUmCq8fj_vE7MnrJmU;-><init>(Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;Lcom/callapp/contacts/activity/callreminder/CallRemindersData;)V

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;->v:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/widget/ProfilePictureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;->u:Lcom/callapp/contacts/activity/base/CallAppRow;

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnContainerClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object p2, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;->u:Lcom/callapp/contacts/activity/base/CallAppRow;

    new-instance v0, Lcom/callapp/contacts/activity/callreminder/-$$Lambda$CallReminderViewHolder$cf7I6wP3KuX3O9Lv8hwLI-I_Uiw;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/callapp/contacts/activity/callreminder/-$$Lambda$CallReminderViewHolder$cf7I6wP3KuX3O9Lv8hwLI-I_Uiw;-><init>(Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;Lcom/callapp/contacts/activity/callreminder/CallRemindersData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnContainerLongClickListener(Landroid/view/View$OnLongClickListener;)V

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

    .line 134
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->CONTACTS_ADAPTER_WITH_NAME_LOADED_FIELD:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;->v:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object v0
.end method

.method public final l()Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
    .locals 2

    .line 129
    new-instance v0, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder$RemindersAdapterDataLoadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder$RemindersAdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder$1;)V

    return-object v0
.end method

.method public setOnDeleteClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnEditClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/callapp/contacts/activity/callreminder/CallReminderViewHolder;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

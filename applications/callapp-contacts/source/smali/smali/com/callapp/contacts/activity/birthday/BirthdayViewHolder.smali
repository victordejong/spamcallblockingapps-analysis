.class public Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;
.super Lcom/callapp/contacts/activity/base/BaseContactHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask;
    }
.end annotation


# instance fields
.field private final A:Ljava/util/Calendar;

.field private final B:Ljava/util/Calendar;

.field private final C:Ljava/util/Calendar;

.field private final D:Ljava/util/Calendar;

.field private final E:Ljava/util/Calendar;

.field private final F:Ljava/util/Calendar;

.field private G:Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;

.field private final u:Lcom/callapp/contacts/widget/ProfilePictureView;

.field private final v:Lcom/callapp/contacts/activity/base/CallAppRow;

.field private final w:Landroid/widget/TextView;

.field private final x:Landroid/widget/TextView;

.field private final y:Ljava/text/SimpleDateFormat;

.field private final z:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V
    .locals 2

    .line 53
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder;-><init>(Landroid/view/View;)V

    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->y:Ljava/text/SimpleDateFormat;

    .line 48
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d, yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->z:Ljava/text/SimpleDateFormat;

    .line 54
    iput-object p1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    const v0, 0x7f0601ec

    .line 56
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    const v1, 0x7f0a06ed

    .line 58
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->u:Lcom/callapp/contacts/widget/ProfilePictureView;

    const v1, 0x7f0a028d

    .line 59
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->w:Landroid/widget/TextView;

    .line 60
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f0a02df

    .line 61
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->x:Landroid/widget/TextView;

    .line 62
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a012d

    .line 63
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 64
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f06008a

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/graphics/drawable/Drawable;I)V

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->setSwipeable(Z)V

    .line 68
    invoke-static {}, Lcom/callapp/contacts/util/date/DateUtils;->a()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->A:Ljava/util/Calendar;

    .line 69
    invoke-static {}, Lcom/callapp/contacts/util/date/DateUtils;->a()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->B:Ljava/util/Calendar;

    const/16 v0, 0xa

    const/16 v1, 0x18

    .line 70
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 71
    invoke-static {}, Lcom/callapp/contacts/util/date/DateUtils;->a()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->C:Ljava/util/Calendar;

    const/16 v1, -0x18

    .line 72
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 73
    invoke-static {}, Lcom/callapp/contacts/util/date/DateUtils;->a()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->D:Ljava/util/Calendar;

    const/16 v1, 0x30

    .line 74
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 75
    invoke-static {}, Lcom/callapp/contacts/util/date/DateUtils;->a()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->E:Ljava/util/Calendar;

    const/16 v1, -0x30

    .line 76
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 77
    invoke-static {}, Lcom/callapp/contacts/util/date/DateUtils;->a()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->F:Ljava/util/Calendar;

    const/16 v1, -0x48

    .line 78
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;)Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->G:Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;)V
    .locals 6

    .line 2096
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact List"

    const-string v2, "Pressed on birthday from contact list"

    const-string v3, "Clicked"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/birthday/PostBirthdayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2099
    iget-object v1, p1, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->netId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->netId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->socialId:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2100
    iget-object v1, p1, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->socialId:Ljava/lang/String;

    const-string v2, "FB_ID_EXTRA"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2102
    :cond_0
    iget-wide v1, p1, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->contactId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 2103
    iget-object v1, p1, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->phone:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PHONE_EXTRA"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2104
    iget-wide v1, p1, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->contactId:J

    const-string p1, "CONTACT_ID_EXTRA"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2106
    :cond_1
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;)Lcom/callapp/contacts/activity/base/BaseAdapterItemData;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->t:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->w:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;)Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->u:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;Lcom/callapp/contacts/activity/base/ScrollEvents;)V
    .locals 7

    .line 82
    iput-object p1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->G:Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;

    .line 83
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    iget-wide v4, p1, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->contactId:J

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v6

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->a(Ljava/lang/String;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/base/ScrollEvents;JLcom/callapp/framework/phone/Phone;)V

    .line 84
    iget-object p2, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->w:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object p2, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->x:Landroid/widget/TextView;

    .line 1110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1111
    iget-object v1, p1, Lcom/callapp/contacts/model/ReminderData;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x2

    .line 1113
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    .line 1114
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1117
    iget-object v5, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->F:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    iget-object v5, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->F:Ljava/util/Calendar;

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v2, v5, :cond_0

    const v0, 0x7f12071f

    .line 1118
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1119
    :cond_0
    iget-object v5, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->E:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    iget-object v5, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->E:Ljava/util/Calendar;

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v2, v5, :cond_1

    const v0, 0x7f1207e6

    .line 1120
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1121
    :cond_1
    iget-object v5, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->C:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_2

    iget-object v5, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->C:Ljava/util/Calendar;

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v2, v5, :cond_2

    const v0, 0x7f12087a

    .line 1122
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1123
    :cond_2
    iget-object v5, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->A:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_3

    iget-object v5, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->A:Ljava/util/Calendar;

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v2, v5, :cond_3

    const v0, 0x7f120723

    .line 1124
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1125
    :cond_3
    iget-object v5, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->B:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_4

    iget-object v5, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->B:Ljava/util/Calendar;

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v2, v5, :cond_4

    const v0, 0x7f120725

    .line 1126
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1127
    :cond_4
    iget-object v5, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->D:Ljava/util/Calendar;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_5

    iget-object v3, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->D:Ljava/util/Calendar;

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_5

    const v0, 0x7f1207e7

    .line 1128
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1129
    :cond_5
    iget-object v1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->A:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    if-lez v1, :cond_6

    .line 1130
    iget-object v1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->y:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    .line 1132
    invoke-virtual {v0, v1, v1}, Ljava/util/Calendar;->add(II)V

    .line 1133
    iget-object v1, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->z:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 85
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object p2, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->u:Lcom/callapp/contacts/widget/ProfilePictureView;

    iget-object v0, p1, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p2, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->v:Lcom/callapp/contacts/activity/base/CallAppRow;

    new-instance v0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$1;-><init>(Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->setOnContainerClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 146
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->CONTACTS_ADAPTER_WITH_NAME_LOADED_FIELD:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->u:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object v0
.end method

.method public final l()Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
    .locals 2

    .line 141
    new-instance v0, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$BirthdaysAdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder$1;)V

    return-object v0
.end method

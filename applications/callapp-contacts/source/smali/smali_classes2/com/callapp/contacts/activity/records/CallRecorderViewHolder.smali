.class public Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;
.super Lcom/callapp/contacts/activity/base/BaseContactHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/records/CallRecorderViewHolder$CallRecorderAdapterDataLoadTask;
    }
.end annotation


# static fields
.field private static final v:I


# instance fields
.field private final A:Landroidx/appcompat/widget/AppCompatImageView;

.field private final B:Landroid/widget/TextView;

.field private final C:Lcom/callapp/contacts/activity/base/CallAppRow;

.field private D:Lcom/callapp/contacts/model/objectbox/CallRecorder;

.field final u:Landroid/widget/ImageView;

.field private final w:Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;

.field private final x:Lcom/callapp/contacts/widget/ProfilePictureView;

.field private final y:Landroid/widget/TextView;

.field private final z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060088

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->v:I

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/base/CallAppRow;Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;)V
    .locals 7

    .line 75
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseContactHolder;-><init>(Landroid/view/View;)V

    .line 77
    iput-object p2, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->w:Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;

    const/4 p2, 0x0

    .line 79
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/base/CallAppRow;->setSwipeable(Z)V

    .line 80
    iget-object p2, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f060088

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p2

    const v0, 0x7f0601cc

    .line 81
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0601ec

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    .line 84
    iget-object v2, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0a06ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v2, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->x:Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 85
    iget-object v2, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0a0922

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->y:Landroid/widget/TextView;

    .line 86
    iget-object v3, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->itemView:Landroid/view/View;

    const v4, 0x7f0a01a7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v3, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->A:Landroidx/appcompat/widget/AppCompatImageView;

    .line 87
    iget-object v3, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->itemView:Landroid/view/View;

    const v4, 0x7f0a08be

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->z:Landroid/widget/TextView;

    .line 88
    iget-object v4, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->itemView:Landroid/view/View;

    const v5, 0x7f0a0766

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->B:Landroid/widget/TextView;

    .line 89
    iget-object v5, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->itemView:Landroid/view/View;

    const v6, 0x7f0a04b8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->u:Landroid/widget/ImageView;

    .line 92
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->C:Lcom/callapp/contacts/activity/base/CallAppRow;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;)Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->w:Lcom/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;)Lcom/callapp/contacts/model/objectbox/CallRecorder;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->D:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/model/objectbox/CallRecorder;Lcom/callapp/contacts/activity/base/ScrollEvents;Z)V
    .locals 9

    .line 100
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->D:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    .line 102
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getPhoneText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "private"

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getPhoneText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 105
    :goto_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getContactId()J

    move-result-wide v6

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v8

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->a(Ljava/lang/String;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;Lcom/callapp/contacts/activity/base/ScrollEvents;JLcom/callapp/framework/phone/Phone;)V

    .line 107
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->isChecked()Z

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->b(ZZ)V

    .line 108
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->isUploaded()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object p2

    const v2, 0x7f0802e9

    invoke-static {v2}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Landroid/graphics/drawable/Drawable;)Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 110
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Z)V

    goto :goto_1

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(Z)V

    .line 1140
    :goto_1
    iget-object p2, p1, Lcom/callapp/contacts/model/objectbox/CallRecorder;->displayName:Ljava/lang/String;

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1141
    iget-object p2, p1, Lcom/callapp/contacts/model/objectbox/CallRecorder;->displayName:Ljava/lang/String;

    .line 1142
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p3, :cond_2

    goto :goto_2

    .line 1147
    :cond_2
    iget-object p3, p1, Lcom/callapp/contacts/model/objectbox/CallRecorder;->textHighlights:Landroid/util/SparseIntArray;

    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result p3

    if-nez p3, :cond_3

    goto :goto_2

    .line 1150
    :cond_3
    iget-object p3, p1, Lcom/callapp/contacts/model/objectbox/CallRecorder;->textHighlights:Landroid/util/SparseIntArray;

    sget v1, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->v:I

    invoke-static {p2, p3, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Ljava/lang/String;Landroid/util/SparseIntArray;I)Landroid/text/SpannableString;

    move-result-object p2

    .line 1154
    :goto_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_4

    .line 1156
    :cond_4
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getPhoneText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const p2, 0x7f120198

    .line 1157
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 1159
    :cond_5
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getPhoneText()Ljava/lang/String;

    move-result-object p2

    :goto_3
    const-string p3, "?"

    .line 1164
    :goto_4
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    iget-object p3, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->y:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    new-instance p2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const-string v1, "MMM d, HH:mm a"

    invoke-direct {p2, v1, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 117
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getDate()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 118
    iget-object p3, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->z:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object p2, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->A:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getCallType()I

    move-result p3

    if-ne p3, v0, :cond_6

    goto :goto_5

    :cond_6
    const/4 v0, 0x2

    :goto_5
    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->getCallHistoryIcon(I)I

    move-result p3

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 120
    iget-object p2, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->B:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f060088

    .line 122
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    .line 124
    iget-object p3, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->u:Landroid/widget/ImageView;

    const v0, 0x7f080293

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {p3, v0, v1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 125
    iget-object p2, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->u:Landroid/widget/ImageView;

    new-instance p3, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder$1;

    invoke-direct {p3, p0, p1}, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder$1;-><init>(Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;Lcom/callapp/contacts/model/objectbox/CallRecorder;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getCallAppRow()Lcom/callapp/contacts/activity/base/CallAppRow;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->C:Lcom/callapp/contacts/activity/base/CallAppRow;

    return-object v0
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

    .line 62
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->CONTACTS_ADAPTER_WITH_NAME_AND_PHONE_LOADED_FIELD:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getProfilePicture()Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;->x:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object v0
.end method

.method public final l()Lcom/callapp/contacts/activity/base/BaseContactHolder$AdapterDataLoadTask;
    .locals 1

    .line 57
    new-instance v0, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder$CallRecorderAdapterDataLoadTask;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/records/CallRecorderViewHolder$CallRecorderAdapterDataLoadTask;-><init>(Lcom/callapp/contacts/activity/records/CallRecorderViewHolder;)V

    return-object v0
.end method

.class public Lcom/callapp/contacts/action/shared/ShareCameraAction;
.super Lcom/callapp/contacts/action/shared/AbstractPhotoAction;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/callapp/contacts/action/shared/AbstractPhotoAction;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/action/shared/ShareCameraAction;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction;->b:I

    return p0
.end method

.method static synthetic a(Lcom/callapp/contacts/action/shared/ShareCameraAction;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)V
    .locals 3

    .line 1142
    invoke-static {p2}, Lcom/callapp/contacts/util/ImageUtils;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1143
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f120077

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 2111
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1144
    new-instance v0, Lcom/callapp/contacts/action/shared/ShareCameraAction$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/callapp/contacts/action/shared/ShareCameraAction$2;-><init>(Lcom/callapp/contacts/action/shared/ShareCameraAction;Landroid/graphics/Bitmap;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 1154
    invoke-virtual {v0}, Lcom/callapp/contacts/action/shared/ShareCameraAction$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/action/shared/ShareCameraAction;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction;->a:I

    return p0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z
    .locals 1

    .line 164
    sget-object v0, Lcom/callapp/contacts/action/Action$ContextType;->CONTACT_DETAILS_ACTION_BOTTOM_SHEET:Lcom/callapp/contacts/action/Action$ContextType;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 167
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/action/shared/AbstractPhotoAction;->a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z

    move-result p1

    return p1
.end method

.method public final b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 7

    .line 47
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p3

    const-string v0, "Contact List"

    const-string v1, "Share camera action"

    const-string v2, "Clicked"

    invoke-virtual {p3, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result p3

    if-nez p3, :cond_0

    .line 50
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p2

    const-string p3, "Contact Details"

    const-string v0, "Didn\'t share Camera"

    const-string v1, "No internet"

    invoke-virtual {p2, p3, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Landroid/content/Context;)V

    return-void

    :cond_0
    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p3, v0

    const-string v0, "callApp-snapshot-%s.jpg"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 1123
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1124
    invoke-static {v0, p3}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1130
    :cond_1
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1131
    invoke-static {v0, p3}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1137
    :cond_2
    invoke-static {p3}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    .line 57
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const-string p2, "Error creating photo file"

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    return-void

    .line 61
    :cond_3
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 64
    instance-of p3, p1, Landroid/app/Activity;

    if-eqz p3, :cond_4

    .line 65
    move-object p3, p1

    check-cast p3, Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    const v0, 0x1020002

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 66
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction;->a:I

    .line 67
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    iput p3, p0, Lcom/callapp/contacts/action/shared/ShareCameraAction;->b:I

    .line 70
    :cond_4
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhonesList()Ljava/util/List;

    move-result-object p3

    .line 71
    new-instance v6, Lcom/callapp/contacts/action/shared/ShareCameraAction$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/action/shared/ShareCameraAction$1;-><init>(Lcom/callapp/contacts/action/shared/ShareCameraAction;Lcom/callapp/contacts/model/contact/ContactData;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-static {p1, p3, v6}, Lcom/callapp/contacts/util/SmsUtils;->a(Landroid/content/Context;Ljava/util/List;Lcom/callapp/contacts/util/SmsUtils$SelectNumberListener;)V

    return-void
.end method

.method public final getDescriptionMessage$469752d4()Ljava/lang/String;
    .locals 1

    const v0, 0x7f1201a2

    .line 159
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

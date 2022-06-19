.class public Lcom/callapp/contacts/action/shared/ShareLocationAction;
.super Lcom/callapp/contacts/action/shared/SharedAction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/callapp/contacts/action/shared/SharedAction;-><init>()V

    return-void
.end method

.method private static synthetic a()V
    .locals 2

    .line 137
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f1201ad

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Z
    .locals 11

    .line 47
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p2

    const-string p3, "Contact Details"

    const-string v0, "Didn\'t share location"

    const-string v2, "No internet"

    invoke-virtual {p2, p3, v0, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Landroid/content/Context;)V

    return v1

    .line 52
    :cond_0
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {}, Lcom/callapp/contacts/manager/LocationManager;->get()Lcom/callapp/contacts/manager/LocationManager;

    move-result-object v2

    .line 54
    invoke-static {}, Lcom/callapp/contacts/manager/LocationManager;->a()Z

    move-result v3

    .line 55
    new-instance v4, Lcom/callapp/contacts/action/shared/ShareLocationAction$1;

    invoke-direct {v4, p0, p3, p1, p2}, Lcom/callapp/contacts/action/shared/ShareLocationAction$1;-><init>(Lcom/callapp/contacts/action/shared/ShareLocationAction;Ljava/lang/String;Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/manager/LocationManager;->a(Lcom/callapp/contacts/manager/LocationManager$LocationResult;)V

    if-nez v3, :cond_1

    .line 85
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p2

    new-instance p3, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v2, 0x7f12006b

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const v6, 0x7f12006c

    .line 86
    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 85
    invoke-static {v2, v5}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v2, 0x7f12006a

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    .line 86
    invoke-static {v2, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const v0, 0x7f12006e

    .line 87
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v0, 0x7f1201a9

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/callapp/contacts/action/shared/ShareLocationAction$2;

    invoke-direct {v9, p0}, Lcom/callapp/contacts/action/shared/ShareLocationAction$2;-><init>(Lcom/callapp/contacts/action/shared/ShareLocationAction;)V

    new-instance v10, Lcom/callapp/contacts/action/shared/ShareLocationAction$3;

    invoke-direct {v10, p0}, Lcom/callapp/contacts/action/shared/ShareLocationAction$3;-><init>(Lcom/callapp/contacts/action/shared/ShareLocationAction;)V

    move-object v4, p3

    invoke-direct/range {v4 .. v10}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 85
    invoke-virtual {p2, p1, p3}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    :cond_1
    return v3
.end method

.method private synthetic b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    const-string v0, "REQUEST"

    .line 136
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/action/shared/ShareLocationAction;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Z

    return-void
.end method

.method public static synthetic lambda$OcIxySKO4zAoTc0hvrbMeTKLli4()V
    .locals 0

    invoke-static {}, Lcom/callapp/contacts/action/shared/ShareLocationAction;->a()V

    return-void
.end method

.method public static synthetic lambda$myt3qVg6iq7v-ce1mxpEDc3RNYU(Lcom/callapp/contacts/action/shared/ShareLocationAction;Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/action/shared/ShareLocationAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/callapp/common/model/message/OutgoingMessage;)Ljava/lang/String;
    .locals 6

    .line 106
    invoke-virtual {p1}, Lcom/callapp/common/model/message/OutgoingMessage;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 110
    :cond_0
    new-instance v0, Lcom/callapp/contacts/util/serializer/string/Parser;

    invoke-virtual {p1}, Lcom/callapp/common/model/message/OutgoingMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/callapp/contacts/util/serializer/string/Parser;-><init>(Ljava/lang/String;)V

    .line 1030
    iget p1, v0, Lcom/callapp/contacts/util/serializer/string/Parser;->c:I

    iget-object v1, v0, Lcom/callapp/contacts/util/serializer/string/Parser;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 1035
    iget-object p1, v0, Lcom/callapp/contacts/util/serializer/string/Parser;->b:Ljava/lang/String;

    iget-object v1, v0, Lcom/callapp/contacts/util/serializer/string/Parser;->a:Ljava/lang/String;

    iget v2, v0, Lcom/callapp/contacts/util/serializer/string/Parser;->c:I

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_1

    .line 1037
    invoke-virtual {v0}, Lcom/callapp/contacts/util/serializer/string/Parser;->a()Ljava/lang/String;

    goto :goto_0

    .line 1040
    :cond_1
    iget-object v1, v0, Lcom/callapp/contacts/util/serializer/string/Parser;->b:Ljava/lang/String;

    iget v2, v0, Lcom/callapp/contacts/util/serializer/string/Parser;->c:I

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1041
    iget-object v1, v0, Lcom/callapp/contacts/util/serializer/string/Parser;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Lcom/callapp/contacts/util/serializer/string/Parser;->c:I

    .line 112
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/callapp/contacts/util/serializer/string/Parser;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Ageo:0,0?q="

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_3

    .line 115
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "q="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string v0, "Lgeo:"

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 118
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "l="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 122
    :cond_4
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "http://maps.google.com/?"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-static {p1}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f12006d

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f12066c

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 125
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppDomain()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p1, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    .line 124
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z
    .locals 1

    .line 149
    sget-object p3, Lcom/callapp/contacts/action/Action$ContextType;->CONTACT_DETAILS_ACTION_BOTTOM_SHEET:Lcom/callapp/contacts/action/Action$ContextType;

    const/4 v0, 0x0

    if-eq p1, p3, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 153
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 4

    .line 130
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p3

    const-string v0, "Contact List"

    const-string v1, "Share location action"

    const-string v2, "Clicked"

    invoke-virtual {p3, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string p3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p3}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string p3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p3}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "REQUEST"

    .line 133
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/action/shared/ShareLocationAction;->a(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Z

    return-void

    .line 134
    :cond_0
    instance-of p3, p1, Lcom/callapp/contacts/activity/base/BaseActivity;

    if-eqz p3, :cond_1

    .line 135
    move-object p3, p1

    check-cast p3, Lcom/callapp/contacts/activity/base/BaseActivity;

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/base/BaseActivity;->getPermissionManager()Lcom/callapp/contacts/manager/permission/PermissionManager;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/action/shared/-$$Lambda$ShareLocationAction$myt3qVg6iq7v-ce1mxpEDc3RNYU;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/action/shared/-$$Lambda$ShareLocationAction$myt3qVg6iq7v-ce1mxpEDc3RNYU;-><init>(Lcom/callapp/contacts/action/shared/ShareLocationAction;Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;)V

    sget-object p1, Lcom/callapp/contacts/action/shared/-$$Lambda$ShareLocationAction$OcIxySKO4zAoTc0hvrbMeTKLli4;->INSTANCE:Lcom/callapp/contacts/action/shared/-$$Lambda$ShareLocationAction$OcIxySKO4zAoTc0hvrbMeTKLli4;

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    const/4 v2, 0x0

    sget-object v3, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->LOCATION:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    aput-object v3, p2, v2

    invoke-virtual {v0, p3, v1, p1, p2}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Lcom/callapp/contacts/activity/base/BaseActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;[Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    :cond_1
    return-void
.end method

.method public final getDescriptionMessage$469752d4()Ljava/lang/String;
    .locals 1

    const v0, 0x7f12040c

    .line 144
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/callapp/contacts/util/SmsUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/SmsUtils$SelectNumberListener;
    }
.end annotation


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Lcom/callapp/contacts/framework/dao/column/StringColumn;

.field public static final c:Lcom/callapp/contacts/framework/dao/column/StringColumn;

.field private static final d:Landroid/net/Uri;

.field private static final e:Landroid/net/Uri;

.field private static final f:Lcom/callapp/contacts/framework/dao/column/DateColumn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/callapp/contacts/util/SmsUtils;->d:Landroid/net/Uri;

    .line 45
    sget-object v0, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/callapp/contacts/util/SmsUtils;->e:Landroid/net/Uri;

    .line 46
    sget-object v0, Landroid/provider/Telephony$Sms$Sent;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/callapp/contacts/util/SmsUtils;->a:Landroid/net/Uri;

    .line 47
    new-instance v0, Lcom/callapp/contacts/framework/dao/column/StringColumn;

    const-string v1, "body"

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/column/StringColumn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/util/SmsUtils;->b:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    .line 48
    new-instance v0, Lcom/callapp/contacts/framework/dao/column/DateColumn;

    const-string v1, "date"

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/column/DateColumn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/util/SmsUtils;->f:Lcom/callapp/contacts/framework/dao/column/DateColumn;

    .line 49
    new-instance v0, Lcom/callapp/contacts/framework/dao/column/StringColumn;

    const-string v1, "address"

    invoke-direct {v0, v1}, Lcom/callapp/contacts/framework/dao/column/StringColumn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/util/SmsUtils;->c:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/callapp/common/util/SerializablePair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/callapp/common/util/SerializablePair<",
            "Ljava/util/Date;",
            "Lcom/callapp/common/util/SerializablePair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/callapp/contacts/framework/dao/column/StringColumn;

    sget-object v1, Lcom/callapp/contacts/util/SmsUtils;->c:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    iget-object v2, v1, Lcom/callapp/contacts/framework/dao/column/StringColumn;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/framework/phone/PhoneNumberUtils;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/callapp/contacts/framework/dao/column/StringColumn;-><init>(Ljava/lang/String;)V

    .line 88
    new-instance v2, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v3, Lcom/callapp/contacts/util/SmsUtils;->d:Landroid/net/Uri;

    invoke-direct {v2, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    sget-object v3, Lcom/callapp/contacts/util/SmsUtils;->b:Lcom/callapp/contacts/framework/dao/column/StringColumn;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/util/SmsUtils;->f:Lcom/callapp/contacts/framework/dao/column/DateColumn;

    .line 89
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/column/Column;Ljava/util/Collection;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    .line 1150
    iget-object v0, v3, Lcom/callapp/contacts/framework/dao/column/Column;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;Z)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object p0

    .line 89
    new-instance v0, Lcom/callapp/contacts/util/SmsUtils$2;

    invoke-direct {v0}, Lcom/callapp/contacts/util/SmsUtils$2;-><init>()V

    const/4 v1, 0x0

    .line 1185
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 90
    check-cast p0, Lcom/callapp/common/util/SerializablePair;

    return-object p0
.end method

.method static synthetic a()Lcom/callapp/contacts/framework/dao/column/DateColumn;
    .locals 1

    .line 35
    sget-object v0, Lcom/callapp/contacts/util/SmsUtils;->f:Lcom/callapp/contacts/framework/dao/column/DateColumn;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Lcom/callapp/contacts/util/SmsUtils$SelectNumberListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;",
            "Lcom/callapp/contacts/util/SmsUtils$SelectNumberListener;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 57
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 59
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/framework/phone/Phone;

    invoke-interface {p2, p0}, Lcom/callapp/contacts/util/SmsUtils$SelectNumberListener;->a(Lcom/callapp/framework/phone/Phone;)V

    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/framework/phone/Phone;

    .line 64
    new-instance v5, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;

    invoke-virtual {v4}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, v1}, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v2

    goto :goto_0

    .line 68
    :cond_1
    new-instance v1, Lcom/callapp/contacts/popup/contact/DialogList;

    const v2, 0x7f120607

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/callapp/contacts/popup/contact/DialogList;-><init>(Ljava/lang/String;)V

    .line 69
    new-instance v2, Lcom/callapp/contacts/popup/contact/AdapterText;

    const v3, 0x7f0d00aa

    invoke-direct {v2, p0, v3, v0}, Lcom/callapp/contacts/popup/contact/AdapterText;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 70
    new-instance v0, Lcom/callapp/contacts/util/SmsUtils$1;

    invoke-direct {v0, p1, p2, v1}, Lcom/callapp/contacts/util/SmsUtils$1;-><init>(Ljava/util/List;Lcom/callapp/contacts/util/SmsUtils$SelectNumberListener;Lcom/callapp/contacts/popup/contact/DialogList;)V

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/popup/contact/AdapterText;->setListener(Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    .line 78
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/popup/contact/DialogList;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    .line 106
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->i()Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/SmsUtils;->c(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 115
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 116
    invoke-virtual {v1, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 118
    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0

    :catch_0
    move-exception p0

    .line 120
    const-class p1, Lcom/callapp/contacts/util/SmsUtils;

    invoke-static {p1, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static b(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V
    .locals 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "smsto:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 135
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 137
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sms_body"

    .line 138
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 139
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v0, "text/plain"

    .line 142
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getIntentFlagForNewDocument()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 150
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_2

    const/high16 v0, 0x10000000

    .line 151
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 154
    :cond_2
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    invoke-static {p0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void

    .line 157
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/SmsUtils;->c(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)Z

    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)Z
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "smsto:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 163
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p2, :cond_0

    const-string p1, "sms_body"

    .line 166
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getIntentFlagForNewDocument()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 169
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_1

    const/high16 p1, 0x10000000

    .line 170
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 172
    :cond_1
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_2

    .line 173
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p0

    const p1, 0x7f1202f0

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2132
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/manager/FeedbackManager;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p0, 0x0

    return p0

    .line 176
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getIncomingCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 177
    invoke-static {p0, v0, p2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 179
    :cond_3
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

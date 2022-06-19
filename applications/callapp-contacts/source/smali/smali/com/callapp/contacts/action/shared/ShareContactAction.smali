.class public Lcom/callapp/contacts/action/shared/ShareContactAction;
.super Lcom/callapp/contacts/action/shared/SharedAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/action/shared/ShareContactAction$ShareItem;,
        Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;,
        Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactPopup;,
        Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f120065

    .line 75
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/action/shared/ShareContactAction;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/callapp/contacts/action/shared/SharedAction;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/callapp/contacts/action/shared/ShareContactAction;->b:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 475
    :cond_0
    invoke-static {p0, v0, v0}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v1, "jpg"

    .line 476
    invoke-static {v1}, Lcom/callapp/contacts/util/aws/AWSUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 478
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x7f120070

    if-eqz v2, :cond_1

    .line 479
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 480
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v1

    .line 2111
    invoke-virtual {v1, p0, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0

    .line 485
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    const-class v5, Lcom/callapp/contacts/service/jobs/UploadFileService;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.callapp.contacts.ACTION_UPLOAD_FILE"

    .line 486
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v4, "uploadFile"

    invoke-virtual {v2, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "uploadFileName"

    .line 488
    invoke-virtual {v2, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    const-class v4, Lcom/callapp/contacts/service/jobs/UploadFileService;

    const/4 v5, 0x3

    invoke-static {p0, v4, v5, v2}, Landroidx/core/app/JobIntentService;->a(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    .line 491
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callapp"

    invoke-static {v2}, Lcom/callapp/contacts/util/aws/AWSUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallappServerPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ssd?imgurl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/callapp/common/util/UrlUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&bd=0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2497
    invoke-static {p0}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2498
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2499
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p0

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3111
    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0

    :cond_2
    return-object p0
.end method

.method private static a(Lcom/callapp/framework/phone/PhoneType;)Ljava/lang/String;
    .locals 1

    .line 536
    sget-object v0, Lcom/callapp/contacts/action/shared/ShareContactAction$4;->b:[I

    invoke-virtual {p0}, Lcom/callapp/framework/phone/PhoneType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const p0, 0x7f120525

    goto :goto_0

    :cond_0
    const p0, 0x7f120521

    goto :goto_0

    :cond_1
    const p0, 0x7f12052a

    goto :goto_0

    :cond_2
    const p0, 0x7f120523

    goto :goto_0

    :cond_3
    const p0, 0x7f120522

    .line 553
    :goto_0
    invoke-static {p0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactData;)Ljava/util/ArrayList;
    .locals 0

    .line 73
    invoke-static {p0, p1}, Lcom/callapp/contacts/action/shared/ShareContactAction;->b(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactData;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/ArrayList;Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;)V
    .locals 7

    .line 3458
    new-instance v6, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;

    move-object v0, v6

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;-><init>(Ljava/util/ArrayList;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;Landroid/app/Activity;)V

    .line 3459
    invoke-virtual {v6}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->isNeedToShowPopup()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3460
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    invoke-virtual {p1, p0, v6}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    .line 4163
    :cond_0
    invoke-virtual {v6}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->getPhones()Ljava/util/List;

    move-result-object p1

    .line 4164
    invoke-virtual {v6}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->getEmailsFromContact()[Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 4165
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_1

    .line 4166
    invoke-virtual {v6, p0, p1}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->a(Landroid/app/Activity;Ljava/util/List;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4167
    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4168
    invoke-virtual {v6, p0, p2}, Lcom/callapp/contacts/popup/ShareContactViaSmsOrEmailPopup;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/action/shared/ShareContactAction;Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/action/shared/ShareContactAction;->d(Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V

    return-void
.end method

.method protected static a(Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V
    .locals 3

    const/4 v0, 0x0

    .line 260
    invoke-static {p0, v0}, Lcom/callapp/contacts/action/shared/ShareContactAction;->b(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactData;)Ljava/util/ArrayList;

    move-result-object v0

    .line 261
    new-instance v1, Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup;

    sget-object v2, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;->sendingThisContactsInfo:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;

    invoke-direct {v1, v0, p0, v2, p1}, Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup;-><init>(Ljava/util/ArrayList;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;Landroid/app/Activity;)V

    .line 263
    invoke-virtual {v1}, Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup;->isNeedToShowPopup()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 264
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    .line 266
    :cond_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.SEND"

    .line 267
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 268
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/popup/ShareContactViaSendIntentPopup;->a(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "text/plain"

    .line 269
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x7f120631

    .line 270
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static b(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactData;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/action/shared/ShareContactAction$ShareItem;",
            ">;"
        }
    .end annotation

    const-string v0, "0"

    if-eqz p1, :cond_1

    .line 402
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRegionCode()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 403
    :cond_1
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getCountryIso()Ljava/lang/String;

    move-result-object p1

    .line 407
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 410
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/framework/phone/Phone;

    .line 411
    invoke-virtual {v3}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 414
    invoke-virtual {v3, p1}, Lcom/callapp/framework/phone/Phone;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 416
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->isContactInDevice()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    .line 417
    invoke-virtual {v3}, Lcom/callapp/framework/phone/Phone;->getType()Lcom/callapp/framework/phone/PhoneType;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/contacts/action/shared/ShareContactAction;->a(Lcom/callapp/framework/phone/PhoneType;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v6

    aput-object v5, v8, v7

    const-string v4, "%s (%s)"

    .line 418
    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v4, v5, v6

    const-string v4, "%s"

    .line 420
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 422
    :goto_3
    new-instance v5, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareItem;

    sget-object v6, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;->Phone:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;

    invoke-direct {v5, v6, v3, v4}, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareItem;-><init>(Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 426
    :cond_4
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getVisibleEmails()Ljava/util/Collection;

    move-result-object p1

    .line 427
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/common/model/json/JSONEmail;

    .line 428
    new-instance v2, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareItem;

    sget-object v3, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;->Email:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareItem;-><init>(Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 433
    :cond_5
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getAddresses()Ljava/util/Collection;

    move-result-object p0

    const/4 p1, 0x0

    .line 437
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/common/model/json/JSONAddress;

    if-eqz v0, :cond_6

    .line 438
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 440
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 441
    new-instance p1, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareItem;

    sget-object v2, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;->Address:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v0, v3}, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareItem;-><init>(Lcom/callapp/contacts/action/shared/ShareContactAction$ShareType;Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONAddress;->getFullAddress()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 449
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 450
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p0

    sget-object p1, Lcom/callapp/contacts/action/shared/ShareContactAction;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/FeedbackManager;->b(Ljava/lang/String;)V

    :cond_8
    return-object v1
.end method

.method private d(Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V
    .locals 9

    .line 230
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    new-instance v8, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v1, 0x7f120050

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 231
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFirstName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const v3, 0x7f120051

    invoke-static {v3, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f1204ea

    .line 232
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/callapp/contacts/action/shared/ShareContactAction$2;

    invoke-direct {v6, p0, p1}, Lcom/callapp/contacts/action/shared/ShareContactAction$2;-><init>(Lcom/callapp/contacts/action/shared/ShareContactAction;Lcom/callapp/contacts/model/contact/ContactData;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 230
    invoke-virtual {v0, p2, v8}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/callapp/common/model/message/OutgoingMessage;)Ljava/lang/String;
    .locals 4

    .line 99
    invoke-virtual {p1}, Lcom/callapp/common/model/message/OutgoingMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 105
    :cond_0
    const-class v0, Lcom/callapp/common/model/json/JSONContact;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/common/model/json/JSONContact;

    if-nez p1, :cond_1

    return-object v1

    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :goto_0
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getPhoneNumbers()Ljava/util/List;

    move-result-object v1

    const-string v2, "\n"

    if-eqz v1, :cond_3

    .line 116
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/common/model/json/JSONPhoneNumber;

    .line 117
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONPhoneNumber;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 121
    :cond_3
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getEmails()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 123
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/common/model/json/JSONEmail;

    .line 124
    invoke-virtual {v3}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 128
    :cond_4
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONContact;->getAddresses()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 130
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/common/model/json/JSONAddress;

    .line 131
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const p1, 0x7f120064

    .line 135
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f12066c

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 137
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppDomain()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 562
    :cond_0
    sget-object v1, Lcom/callapp/contacts/action/shared/ShareContactAction$4;->a:[I

    iget-object v2, p0, Lcom/callapp/contacts/action/shared/ShareContactAction;->b:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;

    invoke-virtual {v2}, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 564
    :cond_1
    sget-object v1, Lcom/callapp/contacts/action/Action$ContextType;->CONTACT_DETAILS_ACTION_BOTTOM_SHEET:Lcom/callapp/contacts/action/Action$ContextType;

    if-eq p1, v1, :cond_2

    return v0

    .line 572
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/action/shared/SharedAction;->a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 3

    .line 143
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p3

    const-string v0, "Contact List"

    const-string v1, "Share contact action"

    const-string v2, "Clicked"

    invoke-virtual {p3, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    check-cast p1, Landroid/app/Activity;

    .line 147
    sget-object p3, Lcom/callapp/contacts/action/shared/ShareContactAction$4;->a:[I

    iget-object v0, p0, Lcom/callapp/contacts/action/shared/ShareContactAction;->b:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;

    invoke-virtual {v0}, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;->ordinal()I

    move-result v0

    aget p3, p3, v0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    const/4 v0, 0x4

    if-eq p3, v0, :cond_1

    const/4 v0, 0x5

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/callapp/contacts/action/shared/ShareContactAction;->d(Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V

    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-static {p2, p1}, Lcom/callapp/contacts/action/shared/ShareContactAction;->a(Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V

    return-void

    .line 155
    :cond_2
    invoke-virtual {p0, p2, p1}, Lcom/callapp/contacts/action/shared/ShareContactAction;->b(Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V

    return-void

    .line 152
    :cond_3
    invoke-virtual {p0, p2, p1}, Lcom/callapp/contacts/action/shared/ShareContactAction;->c(Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V

    return-void

    .line 1167
    :cond_4
    new-instance p3, Lcom/callapp/contacts/action/shared/ShareContactAction$1;

    invoke-direct {p3, p0, p2, p1}, Lcom/callapp/contacts/action/shared/ShareContactAction$1;-><init>(Lcom/callapp/contacts/action/shared/ShareContactAction;Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V

    .line 1226
    invoke-virtual {p3}, Lcom/callapp/contacts/action/shared/ShareContactAction$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method protected final b(Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V
    .locals 8

    .line 275
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    new-instance v7, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactPopup;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactPopup;-><init>(Lcom/callapp/contacts/action/shared/ShareContactAction;Landroid/app/Activity;Lcom/callapp/contacts/model/contact/ContactData;ZLcom/callapp/contacts/action/shared/ShareContactAction$1;)V

    invoke-virtual {v0, p2, v7}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ResultPopup;)V

    return-void
.end method

.method protected final c(Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V
    .locals 1

    .line 280
    new-instance v0, Lcom/callapp/contacts/action/shared/ShareContactAction$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/action/shared/ShareContactAction$3;-><init>(Lcom/callapp/contacts/action/shared/ShareContactAction;Lcom/callapp/contacts/model/contact/ContactData;Landroid/app/Activity;)V

    .line 299
    invoke-virtual {v0}, Lcom/callapp/contacts/action/shared/ShareContactAction$3;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public getDescriptionMessage$469752d4()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/callapp/contacts/action/shared/SharedAction;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/action/shared/ShareContactAction;->b:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;

    invoke-virtual {v1}, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

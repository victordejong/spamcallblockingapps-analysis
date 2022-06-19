.class public Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;,
        Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComTypeConverter;,
        Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;,
        Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOriginConverter;,
        Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/Object;

.field private static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const-string v0, "msg"

    goto :goto_0

    :cond_0
    const-string v0, "android.msg"

    :goto_0
    sput-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a:Ljava/lang/String;

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    const-string v0, "call"

    goto :goto_1

    :cond_1
    const-string v0, "android.call"

    :goto_1
    sput-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->b:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->c:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->d:Ljava/util/HashMap;

    .line 216
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->values()[Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 217
    sget-object v4, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->d:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;)I
    .locals 1

    .line 436
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$3;->a:[I

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const p0, 0x7f08036b

    return p0

    :cond_1
    const p0, 0x7f080481

    return p0

    :cond_2
    const p0, 0x7f0803d8

    return p0

    :cond_3
    const p0, 0x7f0803d7

    return p0
.end method

.method static a(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)I
    .locals 5

    .line 85
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->recognizedPersonOrigin:Lio/objectbox/g;

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->ordinal()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->when:Lio/objectbox/g;

    const/4 v1, 0x1

    .line 1283
    invoke-virtual {p0, v0, v1}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    const-wide/16 v2, 0x5

    invoke-virtual {p0, v2, v3}, Lio/objectbox/query/Query;->a(J)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 89
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    .line 90
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    const/4 v2, 0x1

    .line 92
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 93
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    .line 94
    iget-object v4, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->senderName:Ljava/lang/String;

    iget-object v3, v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->senderName:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method private static a(Landroid/app/Person;)Lcom/callapp/framework/phone/Phone;
    .locals 4

    .line 655
    invoke-virtual {p0}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 656
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object p0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    invoke-virtual {p0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object p0

    .line 658
    invoke-virtual {p0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/ContactLookupData_;->contactId:Lio/objectbox/g;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    if-eqz p0, :cond_1

    .line 660
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getPhoneNumbers()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 661
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 662
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    .line 663
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 664
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    invoke-static {p0}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    return-object p0

    .line 670
    :cond_0
    invoke-virtual {p0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    invoke-virtual {p0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 672
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    invoke-static {p0}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/Object;)Lcom/callapp/framework/phone/Phone;
    .locals 3

    .line 337
    instance-of v0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 338
    check-cast p0, [Ljava/lang/String;

    .line 339
    array-length v0, p0

    if-nez v0, :cond_0

    return-object v2

    .line 342
    :cond_0
    aget-object p0, p0, v1

    goto :goto_0

    .line 344
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 345
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 346
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 347
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    instance-of v0, p0, Landroid/app/Person;

    if-eqz v0, :cond_2

    .line 349
    check-cast p0, Landroid/app/Person;

    invoke-virtual {p0}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 350
    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 351
    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object p0, v2

    .line 356
    :goto_0
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 358
    :try_start_0
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    const-string v0, "tel"

    .line 359
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 360
    invoke-virtual {p0}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    .line 361
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    .line 362
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->isValid()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    return-object p0

    :catch_0
    :cond_4
    return-object v2
.end method

.method static a(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 1

    const-string v0, "android.title"

    .line 228
    invoke-static {p0, v0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 279
    invoke-static {p0, p1}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->b(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 282
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/common/util/RegexUtils;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object p1
.end method

.method static a(Landroid/service/notification/StatusBarNotification;ZLcom/callapp/framework/phone/Phone;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/StatusBarNotification;",
            "Z",
            "Lcom/callapp/framework/phone/Phone;",
            ")",
            "Ljava/util/HashMap<",
            "Lcom/callapp/framework/phone/Phone;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 244
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 250
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_4

    .line 251
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->m(Landroid/service/notification/StatusBarNotification;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 253
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 254
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Person;

    .line 255
    invoke-static {v3}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Landroid/app/Person;)Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_2

    .line 1595
    invoke-virtual {v3}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1597
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    .line 1599
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_1

    .line 259
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move-object v0, v2

    :cond_4
    if-nez p1, :cond_5

    .line 265
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 271
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/ExtractedInfo;",
            ">;"
        }
    .end annotation

    .line 719
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 720
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->phoneAsRaw:Lio/objectbox/g;

    invoke-virtual {v0, v1, p0}, Lio/objectbox/query/QueryBuilder;->c(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->d()Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->displayName:Lio/objectbox/g;

    invoke-virtual {p0, v0}, Lio/objectbox/query/QueryBuilder;->b(Lio/objectbox/g;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->d()Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->displayName:Lio/objectbox/g;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lio/objectbox/query/QueryBuilder;->b(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->displayName:Lio/objectbox/g;

    const/4 v1, 0x0

    .line 7272
    invoke-virtual {p0, v0, v1}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    .line 720
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    .line 722
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static a()V
    .locals 14

    .line 65
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isNotificationListenerServiceSupportedOnDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AbTestUtils;->getGroupDimension()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 66
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->values()[Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 67
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v5

    const-class v6, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {v5, v6}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v5

    .line 69
    invoke-virtual {v5}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v5

    sget-object v6, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->recognizedPersonOrigin:Lio/objectbox/g;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->ordinal()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v5

    invoke-virtual {v5}, Lio/objectbox/query/Query;->e()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_1

    const-wide/16 v7, 0xa

    cmp-long v9, v5, v7

    if-gez v9, :cond_0

    const-wide/16 v5, 0x1

    goto :goto_1

    .line 75
    :cond_0
    div-long/2addr v5, v7

    mul-long v5, v5, v7

    .line 77
    :goto_1
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " Identified contacts count report"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const-wide/16 v11, 0x0

    new-array v13, v2, [Ljava/lang/String;

    const-string v8, "CallAppPlus"

    invoke-virtual/range {v7 .. v13}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static a(Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;)V
    .locals 4

    .line 685
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->phoneAsRaw:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->senderName:Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Ljava/lang/String;Lcom/callapp/framework/phone/Phone;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 687
    iput-object v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->senderName:Ljava/lang/String;

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->groupName:Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Ljava/lang/String;Lcom/callapp/framework/phone/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 691
    iput-object v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->groupName:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)V
    .locals 3

    .line 874
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 875
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    .line 876
    sget-object v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->phoneAsRaw:Lio/objectbox/g;

    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    if-eqz p1, :cond_0

    .line 878
    sget-object p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->recognizedPersonOrigin:Lio/objectbox/g;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->ordinal()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    .line 881
    :cond_0
    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->f()J

    return-void
.end method

.method public static a(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V
    .locals 1

    .line 105
    new-instance v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$1;-><init>(Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/ExtractedInfo;",
            ">;)V"
        }
    .end annotation

    .line 819
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 820
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    .line 821
    invoke-virtual {v1, p0}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    .line 822
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;Lcom/callapp/framework/phone/Phone;)Z
    .locals 4

    .line 832
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 833
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->recognizedPersonOrigin:Lio/objectbox/g;

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->ordinal()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    .line 834
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->d()Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->phoneAsRaw:Lio/objectbox/g;

    .line 835
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    .line 836
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->e()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)Z
    .locals 10

    .line 759
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    .line 760
    :try_start_0
    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 764
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v2

    const-class v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {v2, v3}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v2

    .line 766
    invoke-virtual {v2}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->recognizedPersonOrigin:Lio/objectbox/g;

    iget-object v5, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->ordinal()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->phoneAsRaw:Lio/objectbox/g;

    iget-object v5, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    .line 767
    invoke-virtual {v3, v4, v5}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v3

    invoke-virtual {v3}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 771
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->ei:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 10039
    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 772
    sget-object v3, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v5, Lcom/callapp/contacts/activity/interfaces/OnBadgeNotificationDataChangeListener;->b_:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v6, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALLAPP_PLUS_UNREAD_COUNT_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 10091
    invoke-virtual {v3, v5, v6, v1}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 773
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->firstSeen:J

    .line 774
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v3, "CallAppPlus"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IdentifyCallAppPlusPhoneNumber_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-virtual {v6}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v1, v3, v5, v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 776
    :cond_1
    iget-wide v5, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->when:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    .line 777
    iget-wide v5, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->when:J

    iput-wide v5, v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->when:J

    .line 780
    :cond_2
    iget-object v5, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    sget-object v6, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->UNKNOWN:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    if-eq v5, v6, :cond_3

    .line 781
    iget-object v5, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    iput-object v5, v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    .line 784
    :cond_3
    iget-object v5, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->senderName:Ljava/lang/String;

    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v3}, Lcom/callapp/contacts/manager/NotificationExtractors/DataExtractedInspector;->a(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 785
    :cond_4
    iget-object v5, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->senderName:Ljava/lang/String;

    iput-object v5, v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->senderName:Ljava/lang/String;

    .line 788
    :cond_5
    iget-object p0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->groupName:Ljava/lang/String;

    iput-object p0, v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->groupName:Ljava/lang/String;

    .line 790
    iput-boolean v1, v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->disableNotification:Z

    move-object p0, v3

    .line 793
    :goto_0
    invoke-virtual {v2, p0}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    .line 795
    new-instance p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$2;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$2;-><init>()V

    .line 800
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    .line 802
    monitor-exit v0

    return v4

    .line 761
    :cond_6
    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 803
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static a(Ljava/lang/String;Lcom/callapp/framework/phone/Phone;)Z
    .locals 1

    .line 697
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 701
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static a(Ljava/lang/CharSequence;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 385
    :cond_0
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 386
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    return-object p1

    .line 389
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\s*"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/common/util/RegexUtils;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)I
    .locals 1

    .line 453
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$3;->b:[I

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const p0, 0x7f08048f

    return p0

    :pswitch_1
    const p0, 0x7f08036c

    return p0

    :pswitch_2
    const p0, 0x7f080331

    return p0

    :pswitch_3
    const p0, 0x7f08047f

    return p0

    :pswitch_4
    const p0, 0x7f080498

    return p0

    :pswitch_5
    const p0, 0x7f0804e2

    return p0

    :pswitch_6
    const p0, 0x7f0804b3

    return p0

    :pswitch_7
    const p0, 0x7f0804d9

    return p0

    :pswitch_8
    const p0, 0x7f0804e6

    return p0

    :pswitch_9
    const p0, 0x7f0804e7

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    .line 296
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 299
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    .line 302
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method static b(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 1

    const-string v0, "android.text"

    .line 232
    invoke-static {p0, v0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;Lcom/callapp/framework/phone/Phone;)Ljava/lang/String;
    .locals 4

    .line 859
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 861
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->recognizedPersonOrigin:Lio/objectbox/g;

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->ordinal()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->phoneAsRaw:Lio/objectbox/g;

    .line 862
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->senderName:Lio/objectbox/g;

    .line 863
    invoke-virtual {p0, p1}, Lio/objectbox/query/QueryBuilder;->b(Lio/objectbox/g;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    if-eqz p0, :cond_0

    .line 866
    iget-object p0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->senderName:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/ExtractedInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "\\s+"

    .line 728
    invoke-static {p0, v0}, Lcom/callapp/framework/util/StringUtils;->k(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 729
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 730
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    .line 731
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 732
    sget-object v5, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->unAccentName:Lio/objectbox/g;

    invoke-virtual {v0, v5, v4}, Lio/objectbox/query/QueryBuilder;->c(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 734
    :cond_0
    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->d()Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->displayName:Lio/objectbox/g;

    invoke-virtual {p0, v0}, Lio/objectbox/query/QueryBuilder;->b(Lio/objectbox/g;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->d()Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->displayName:Lio/objectbox/g;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lio/objectbox/query/QueryBuilder;->b(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->displayName:Lio/objectbox/g;

    .line 8272
    invoke-virtual {p0, v0, v2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    .line 734
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    .line 736
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_1
    return-object p0

    .line 740
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static b()V
    .locals 2

    .line 393
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bW:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    if-eqz v0, :cond_0

    .line 394
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bW:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static b(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)V
    .locals 3

    .line 846
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 847
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    .line 849
    invoke-virtual {v1, p0}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    .line 850
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static c(Landroid/service/notification/StatusBarNotification;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 237
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)I
    .locals 1

    .line 481
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$3;->b:[I

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const p0, 0x7f0601d5

    return p0

    :pswitch_1
    const p0, 0x7f06004b

    return p0

    :pswitch_2
    const p0, 0x7f06004a

    return p0

    :pswitch_3
    const p0, 0x7f06004c

    return p0

    :pswitch_4
    const p0, 0x7f0601d9

    return p0

    :pswitch_5
    const p0, 0x7f060236

    return p0

    :pswitch_6
    const p0, 0x7f0601e8

    return p0

    :pswitch_7
    const p0, 0x7f060233

    return p0

    :pswitch_8
    const p0, 0x7f060242

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/ExtractedInfo;",
            ">;"
        }
    .end annotation

    .line 745
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 747
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->phoneAsRaw:Lio/objectbox/g;

    invoke-virtual {v0, v1, p0}, Lio/objectbox/query/QueryBuilder;->c(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    .line 748
    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->c()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->nameT9Format:Lio/objectbox/g;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->c(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    .line 749
    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->c()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->nameT9FormatNoZero:Lio/objectbox/g;

    invoke-virtual {v1, v2, p0}, Lio/objectbox/query/QueryBuilder;->c(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    .line 750
    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->d()Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->displayName:Lio/objectbox/g;

    invoke-virtual {p0, v0}, Lio/objectbox/query/QueryBuilder;->b(Lio/objectbox/g;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->d()Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->displayName:Lio/objectbox/g;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lio/objectbox/query/QueryBuilder;->b(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->senderName:Lio/objectbox/g;

    const/4 v1, 0x0

    .line 9272
    invoke-virtual {p0, v0, v1}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    .line 750
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    .line 752
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static c()V
    .locals 0

    .line 681
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationExtractors/DataExtractedInspector;->a()V

    return-void
.end method

.method static d(Landroid/service/notification/StatusBarNotification;)J
    .locals 2

    if-eqz p0, :cond_0

    .line 311
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static d()V
    .locals 6

    .line 807
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 808
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    .line 809
    invoke-virtual {v1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->nameT9FormatNoZero:Lio/objectbox/g;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v2

    .line 810
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    .line 812
    iget-object v5, v4, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->setDisplayName(Ljava/lang/String;)V

    goto :goto_0

    .line 814
    :cond_0
    invoke-virtual {v1, v2}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    .line 815
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static e(Landroid/service/notification/StatusBarNotification;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;
    .locals 2

    .line 2328
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const-string v0, "android.people.list"

    .line 2329
    invoke-static {p0, v0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->b(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Ljava/lang/Object;)Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "android.people"

    .line 2331
    invoke-static {p0, v0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->b(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Ljava/lang/Object;)Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 320
    new-instance v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;-><init>()V

    .line 321
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->phoneAsRaw:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic e()Ljava/lang/Object;
    .locals 1

    .line 54
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f()J
    .locals 7

    .line 10885
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 10887
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->starred:Lio/objectbox/g;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Z)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/Query;->e()J

    move-result-wide v1

    const-wide/16 v4, 0x3e8

    cmp-long v6, v1, v4

    if-lez v6, :cond_0

    .line 10890
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->starred:Lio/objectbox/g;

    invoke-virtual {v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Z)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->when:Lio/objectbox/g;

    const/4 v3, 0x1

    .line 11283
    invoke-virtual {v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    .line 10891
    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lio/objectbox/query/Query;->a(J)Ljava/util/List;

    move-result-object v1

    .line 10892
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    .line 10894
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->when:Lio/objectbox/g;

    iget-wide v3, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->when:J

    invoke-virtual {v0, v2, v3, v4}, Lio/objectbox/query/QueryBuilder;->c(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->f()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static f(Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    .line 507
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->l(Landroid/service/notification/StatusBarNotification;)Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static g(Landroid/service/notification/StatusBarNotification;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo;
    .locals 8

    .line 511
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->l(Landroid/service/notification/StatusBarNotification;)Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 516
    :cond_0
    sget-object v2, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$3;->b:[I

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const-string v2, "android.text"

    const/4 v3, 0x1

    const-string v4, "android.title"

    if-eq v0, v3, :cond_c

    const/4 v5, 0x2

    if-eq v0, v5, :cond_c

    const/4 v5, 0x3

    if-eq v0, v5, :cond_9

    const/4 v3, 0x4

    if-eq v0, v3, :cond_8

    const/4 v3, 0x5

    if-eq v0, v3, :cond_6

    const/16 v3, 0xa

    if-eq v0, v3, :cond_1

    return-object v1

    .line 533
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getSignalNotificationDataExtractor()Lcom/callapp/contacts/manager/NotificationExtractors/SignalNotificationDataExtractor;

    .line 6028
    new-instance v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    invoke-direct {v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;-><init>()V

    .line 6037
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    const v3, 0x4c82c

    if-ne v1, v3, :cond_2

    .line 6038
    sget-object v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    goto :goto_0

    .line 6044
    :cond_2
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/SignalNotificationDataExtractor;->a(Landroid/service/notification/StatusBarNotification;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 6046
    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->phoneAsRaw:Ljava/lang/String;

    .line 6232
    invoke-static {p0, v2}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missed call"

    .line 6047
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6049
    sget-object v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->MISSED_CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    goto :goto_0

    .line 6051
    :cond_3
    sget-object v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->TEXT:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    goto :goto_0

    .line 6054
    :cond_4
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/SignalNotificationDataExtractor;->b(Landroid/service/notification/StatusBarNotification;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 6057
    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->phoneAsRaw:Ljava/lang/String;

    .line 6059
    sget-object v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->TEXT:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    .line 7228
    invoke-static {p0, v4}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6060
    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->groupName:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v1, ""

    .line 6063
    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->phoneAsRaw:Ljava/lang/String;

    .line 6031
    :goto_0
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->d(Landroid/service/notification/StatusBarNotification;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->when:J

    .line 6032
    sget-object p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->SIGNAL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    iput-object p0, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    .line 6033
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->build()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object p0

    return-object p0

    .line 525
    :cond_6
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 527
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getVonageNotificationDataExtractor()Lcom/callapp/contacts/manager/NotificationExtractors/VonageNotificationDataExtractor;

    .line 5228
    invoke-static {p0, v4}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5031
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->h(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v2

    .line 5032
    invoke-static {v0, v2}, Lcom/callapp/contacts/manager/NotificationExtractors/VonageNotificationDataExtractor;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 5033
    iget-object v2, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->phoneAsRaw:Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5034
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/VonageNotificationDataExtractor;->a(Landroid/service/notification/StatusBarNotification;)Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    move-result-object v1

    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    .line 5035
    sget-object v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->VONAGE:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    .line 5036
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->d(Landroid/service/notification/StatusBarNotification;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->when:J

    .line 5037
    invoke-static {v0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;)V

    .line 5038
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->build()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v1

    .line 523
    :cond_8
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getTelegramNotificationDataExtractor()Lcom/callapp/contacts/manager/NotificationExtractors/TelegramNotificationDataExtractor;

    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/TelegramNotificationDataExtractor;->a(Landroid/service/notification/StatusBarNotification;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object p0

    return-object p0

    .line 521
    :cond_9
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getViberNotificationDataExtractor()Lcom/callapp/contacts/manager/NotificationExtractors/ViberNotificationDataExtractor;

    .line 4027
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/ViberNotificationDataExtractor;->b(Landroid/service/notification/StatusBarNotification;)Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    move-result-object v0

    .line 4029
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/ViberNotificationDataExtractor;->a(Landroid/service/notification/StatusBarNotification;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 4030
    iget-object v6, v5, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->phoneAsRaw:Ljava/lang/String;

    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 4031
    iput-object v0, v5, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    .line 4032
    invoke-static {v5, p0}, Lcom/callapp/contacts/manager/NotificationExtractors/ViberNotificationDataExtractor;->a(Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;Landroid/service/notification/StatusBarNotification;)V

    .line 4033
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->VIBER:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    iput-object v0, v5, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    .line 4034
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->d(Landroid/service/notification/StatusBarNotification;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->when:J

    .line 4035
    invoke-static {v5}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;)V

    .line 4037
    iget-object v0, v5, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->senderName:Ljava/lang/String;

    const-string v6, "unknown"

    invoke-static {v6, v0, v3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    if-nez v0, :cond_a

    .line 4038
    const-class v0, Lcom/callapp/contacts/manager/NotificationExtractors/ViberNotificationDataExtractor;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "unknown sender name in Viber found:\nTitle: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4228
    invoke-static {p0, v4}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4039
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nText "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4232
    invoke-static {p0, v2}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4040
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nTickerText: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4041
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->h(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\nPhone: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v5, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4038
    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 4043
    iput-object v1, v5, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->senderName:Ljava/lang/String;

    .line 4046
    :cond_a
    invoke-virtual {v5}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->build()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v1

    .line 519
    :cond_c
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getWhatsAppNotificationDataExtractor()Lcom/callapp/contacts/manager/NotificationExtractors/WhatsAppNotificationDataExtractor;

    .line 3228
    invoke-static {p0, v4}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3232
    invoke-static {p0, v2}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3027
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->h(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v4

    .line 3028
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->k(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v5

    if-eqz p0, :cond_d

    .line 3641
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_d

    .line 3642
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->m(Landroid/service/notification/StatusBarNotification;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 3643
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v3, :cond_d

    const/4 v3, 0x0

    .line 3646
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Person;

    invoke-static {v3}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Landroid/app/Person;)Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    goto :goto_1

    :cond_d
    move-object v3, v1

    .line 3031
    :goto_1
    invoke-static {v0, v2, v4, v5, v3}, Lcom/callapp/contacts/manager/NotificationExtractors/WhatsAppNotificationDataExtractor;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 3034
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/WhatsAppNotificationDataExtractor;->a(Landroid/service/notification/StatusBarNotification;)Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    move-result-object v1

    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->comType:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    .line 3035
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/manager/NotificationExtractors/WhatsAppNotificationDataExtractor;->a(Ljava/lang/String;)Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    move-result-object v1

    iput-object v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    .line 3036
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->d(Landroid/service/notification/StatusBarNotification;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->when:J

    .line 3037
    invoke-static {v0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;)V

    .line 3038
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->build()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object p0

    return-object p0

    :cond_e
    return-object v1
.end method

.method public static getAllImNotificationData()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/ExtractedInfo;",
            ">;"
        }
    .end annotation

    .line 826
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 828
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->when:Lio/objectbox/g;

    const/4 v2, 0x1

    .line 10283
    invoke-virtual {v0, v1, v2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    .line 828
    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getDataSinceLastCheck()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/ExtractedInfo;",
            ">;"
        }
    .end annotation

    .line 840
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 841
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->when:Lio/objectbox/g;

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->bW:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->d(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo_;->disableNotification:Lio/objectbox/g;

    const/4 v2, 0x0

    .line 842
    invoke-virtual {v0, v1, v2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Z)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static h(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 541
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 542
    iget-object v0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 543
    iget-object p0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/common/util/RegexUtils;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static i(Landroid/service/notification/StatusBarNotification;)Ljava/lang/CharSequence;
    .locals 2

    .line 550
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 552
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->m(Landroid/service/notification/StatusBarNotification;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 553
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 554
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Person;

    invoke-virtual {p0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static j(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 624
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 626
    iget-object p0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static k(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 634
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static l(Landroid/service/notification/StatusBarNotification;)Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;
    .locals 1

    .line 222
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 224
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    return-object p0
.end method

.method private static m(Landroid/service/notification/StatusBarNotification;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/StatusBarNotification;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/app/Person;",
            ">;"
        }
    .end annotation

    .line 562
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_3

    if-eqz p0, :cond_3

    .line 564
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 565
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 566
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 567
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.messages"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 568
    array-length v1, p0

    if-lez v1, :cond_2

    .line 569
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 570
    check-cast v3, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    const-string v4, "sender_person"

    .line 572
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 573
    instance-of v4, v3, Landroid/app/Person;

    if-eqz v4, :cond_1

    .line 574
    check-cast v3, Landroid/app/Person;

    .line 575
    invoke-virtual {v3}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 576
    invoke-virtual {v3}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 578
    :cond_0
    invoke-virtual {v3}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 584
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

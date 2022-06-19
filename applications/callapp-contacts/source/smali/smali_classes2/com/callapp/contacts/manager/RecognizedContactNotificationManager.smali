.class public Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$StoredNotificationData;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$StoredNotificationData;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Lcom/callapp/framework/phone/Phone;",
            "Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;",
            ">;",
            "Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->a:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->b:Ljava/util/HashMap;

    return-void
.end method

.method private static a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/framework/phone/Phone;",
            "Lcom/callapp/contacts/model/objectbox/ExtractedInfo;",
            "Lcom/callapp/contacts/model/contact/ContactDataChangeListener;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;>;"
        }
    .end annotation

    .line 198
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getContactLoaderManager()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v1

    sget-object v7, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->PHOTO_AND_NAME_FIELDS:Ljava/util/EnumSet;

    const-wide/16 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/callapp/contacts/manager/ContactLoaderManager;->registerForContactDetailsStack(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;Ljava/util/List;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->b(Ljava/util/List;)V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)V
    .locals 2

    .line 191
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)Landroid/util/Pair;

    move-result-object p0

    .line 192
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 193
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/callapp/contacts/model/contact/ContactData;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method private static b(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 251
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->getSourcePhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->a:Ljava/lang/Object;

    check-cast p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object p0, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "%s@%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;",
            ">;)V"
        }
    .end annotation

    .line 3231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3232
    invoke-static {v0}, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->c(Ljava/util/List;)V

    .line 203
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;

    .line 205
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->getSourcePhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    .line 206
    iget-object v2, v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->a:Ljava/lang/Object;

    check-cast v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v2, v2, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    if-eqz v2, :cond_0

    .line 207
    iget-boolean v3, v2, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->showsRecognizedNotification:Z

    if-eqz v3, :cond_0

    .line 208
    iget-object v3, p0, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->b:Ljava/util/HashMap;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 211
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 212
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 213
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v0

    .line 3377
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/NotificationManager;->getImDetailNotificationBuilder()Landroidx/core/app/g$e;

    move-result-object v1

    .line 3379
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x32

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    const/4 v2, 0x0

    .line 3380
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;

    .line 3442
    invoke-virtual {p1}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->getSourceDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/callapp/contacts/manager/NotificationManager;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 3443
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;->a(Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    .line 3444
    iget-object v6, p1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->a:Ljava/lang/Object;

    check-cast v6, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v6, v6, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    iget-object v6, v6, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->comtype:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    sget-object v7, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    if-ne v6, v7, :cond_2

    const v6, 0x7f1203a6

    .line 3445
    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    const v6, 0x7f1203a5

    new-array v7, v4, [Ljava/lang/Object;

    .line 3448
    iget-object v8, p1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->a:Ljava/lang/Object;

    check-cast v8, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v8, v8, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-virtual {v8}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 3451
    :goto_1
    invoke-virtual {v1, v6}, Landroidx/core/app/g$e;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    .line 3452
    invoke-virtual {v1, v5}, Landroidx/core/app/g$e;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    .line 3454
    iget-object v7, v0, Lcom/callapp/contacts/manager/NotificationManager;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v7

    .line 3455
    iget-object v8, v0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->getPhotoUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->getContactData()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v10

    invoke-virtual {v8, v9, v7, v10}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(Ljava/lang/String;ILcom/callapp/contacts/model/contact/ContactData;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    .line 3458
    invoke-virtual {v1, v8}, Landroidx/core/app/g$e;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/g$e;

    move-object v10, v8

    goto :goto_2

    :cond_3
    move-object v10, v9

    :goto_2
    const v11, 0x7f0804a9

    .line 3462
    invoke-virtual {v1, v11}, Landroidx/core/app/g$e;->a(I)Landroidx/core/app/g$e;

    .line 3465
    invoke-static {v1, v10, v9}, Lcom/callapp/contacts/manager/NotificationManager;->a(Landroidx/core/app/g$e;Landroid/graphics/Bitmap;Ljava/util/List;)V

    .line 3466
    invoke-virtual {v0, v1, v3, p1, v7}, Lcom/callapp/contacts/manager/NotificationManager;->a(Landroidx/core/app/g$e;ILcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;I)V

    if-eqz v8, :cond_6

    .line 3468
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gu:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3469
    new-instance p1, Landroidx/core/app/k$a;

    invoke-direct {p1}, Landroidx/core/app/k$a;-><init>()V

    invoke-static {v8}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v7

    .line 4282
    iput-object v7, p1, Landroidx/core/app/k$a;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 5270
    iput-object v6, p1, Landroidx/core/app/k$a;->a:Ljava/lang/CharSequence;

    .line 3469
    invoke-virtual {p1}, Landroidx/core/app/k$a;->a()Landroidx/core/app/k;

    move-result-object p1

    .line 3470
    new-instance v6, Landroidx/core/app/g$h;

    invoke-direct {v6, p1}, Landroidx/core/app/g$h;-><init>(Landroidx/core/app/k;)V

    .line 5403
    new-instance v7, Landroidx/core/app/g$h$a;

    const-wide/16 v8, 0x0

    invoke-direct {v7, v5, v8, v9, p1}, Landroidx/core/app/g$h$a;-><init>(Ljava/lang/CharSequence;JLandroidx/core/app/k;)V

    .line 5415
    iget-object p1, v6, Landroidx/core/app/g$h;->a:Ljava/util/List;

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5416
    iget-object p1, v6, Landroidx/core/app/g$h;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v5, 0x19

    if-le p1, v5, :cond_4

    .line 5417
    iget-object p1, v6, Landroidx/core/app/g$h;->a:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3472
    :cond_4
    invoke-virtual {v6, v4}, Landroidx/core/app/g$h;->a(Z)Landroidx/core/app/g$h;

    move-result-object p1

    .line 3473
    invoke-virtual {v1, p1}, Landroidx/core/app/g$e;->a(Landroidx/core/app/g$i;)Landroidx/core/app/g$e;

    .line 3474
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f080077

    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/core/app/g$e;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/g$e;

    .line 3476
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gu:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    goto :goto_3

    .line 3382
    :cond_5
    invoke-virtual {v0, p1, v1}, Lcom/callapp/contacts/manager/NotificationManager;->a(Ljava/util/List;Landroidx/core/app/g$e;)V

    .line 3384
    :cond_6
    :goto_3
    invoke-virtual {v0, v3, v1}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILandroidx/core/app/g$e;)Z

    :cond_7
    return-void
.end method

.method private static c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;",
            ">;)V"
        }
    .end annotation

    .line 237
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 241
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 242
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;

    .line 244
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->getCallappName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static get()Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;
    .locals 1

    .line 46
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getRecognizedContactNotificationManager()Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;)Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$StoredNotificationData;
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->a:Ljava/util/HashMap;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->a:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->b(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$StoredNotificationData;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 137
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final a(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 146
    iget-object v8, v7, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->a:Ljava/util/HashMap;

    monitor-enter v8

    .line 148
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 149
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;

    .line 150
    invoke-virtual {v7, v3}, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->a(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;)Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$StoredNotificationData;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 152
    iget-object v4, v4, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$StoredNotificationData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->setContactData(Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 154
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;

    .line 161
    new-instance v10, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$1;

    invoke-direct {v10, v7, v1, v0}, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$1;-><init>(Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;Ljava/util/List;)V

    .line 179
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    iget-object v3, v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->a:Ljava/lang/Object;

    check-cast v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v3, v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    iget-object v3, v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->a:Ljava/lang/Object;

    check-cast v3, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    invoke-static {v2, v3, v10}, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)Landroid/util/Pair;

    move-result-object v11

    .line 180
    iget-object v2, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v12, v2

    check-cast v12, Lcom/callapp/contacts/model/contact/ContactData;

    .line 181
    iget-object v13, v7, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->a:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->b(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$StoredNotificationData;

    iget-object v1, v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->a:Ljava/lang/Object;

    check-cast v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v5, v1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    const/4 v6, 0x0

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v12

    move-object v4, v10

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$StoredNotificationData;-><init>(Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$1;)V

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v1, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 183
    iget-object v1, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v10, v12, v1}, Lcom/callapp/contacts/model/contact/ContactDataChangeListener;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    goto :goto_1

    .line 186
    :cond_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-direct/range {p0 .. p1}, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->b(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v0

    .line 186
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public destroy()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method

.class public Lcom/callapp/contacts/manager/UserProfileManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/UserProfileManager$UserProfileEvents;
    }
.end annotation


# instance fields
.field public a:Lcom/callapp/contacts/manager/UserProfileManager$UserProfileEvents;

.field public final b:Ljava/lang/Object;

.field private final c:Lcom/callapp/framework/phone/Phone;

.field private d:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    const-string v1, "0123"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/manager/UserProfileManager;->c:Lcom/callapp/framework/phone/Phone;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/UserProfileManager;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/callapp/contacts/manager/UserProfileManager;->d:Ljava/lang/Long;

    return-void
.end method

.method private a(Z)J
    .locals 4

    if-nez p1, :cond_0

    .line 232
    iget-object p1, p0, Lcom/callapp/contacts/manager/UserProfileManager;->d:Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_1

    return-wide v0

    :cond_1
    const/4 v2, 0x0

    .line 241
    :try_start_0
    invoke-static {p1, v2}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a(Lcom/callapp/framework/phone/Phone;I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/manager/UserProfileManager;->d:Ljava/lang/Long;
    :try_end_0
    .catch Lcom/callapp/contacts/loader/device/DeviceIdLoader$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 243
    const-class v2, Lcom/callapp/contacts/manager/UserProfileManager;

    invoke-static {v2, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 244
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/manager/UserProfileManager;->d:Ljava/lang/Long;

    .line 246
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/manager/UserProfileManager;->d:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/callapp/contacts/manager/preferences/prefs/StringPref;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 522
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 527
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 528
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 531
    :cond_1
    invoke-static {p0, p1}, Lcom/callapp/contacts/manager/UserProfileManager;->b(Lcom/callapp/contacts/manager/preferences/prefs/StringPref;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#@#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 536
    :goto_1
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return v0
.end method

.method public static b()I
    .locals 1

    .line 438
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ax:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    array-length v0, v0

    return v0
.end method

.method private static b(Lcom/callapp/contacts/manager/preferences/prefs/StringPref;Ljava/lang/String;)Z
    .locals 4

    .line 541
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 542
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "#@#"

    .line 546
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 548
    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 549
    invoke-static {v3, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .line 365
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aC:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-static {v0, p0}, Lcom/callapp/contacts/manager/UserProfileManager;->b(Lcom/callapp/contacts/manager/preferences/prefs/StringPref;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Lcom/callapp/contacts/manager/preferences/prefs/StringPref;Ljava/lang/String;)V
    .locals 7

    .line 558
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 559
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "#@#"

    .line 563
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 564
    array-length v1, p0

    if-nez v1, :cond_1

    return-void

    .line 569
    :cond_1
    array-length v1, p0

    const/4 v2, 0x0

    const-string v3, ""

    move-object v4, v3

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v5, p0, v2

    .line 570
    invoke-static {v5, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 571
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 575
    :cond_3
    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 577
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->aC:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .line 416
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aD:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-static {v0, p0}, Lcom/callapp/contacts/manager/UserProfileManager;->b(Lcom/callapp/contacts/manager/preferences/prefs/StringPref;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static get()Lcom/callapp/contacts/manager/UserProfileManager;
    .locals 1

    .line 61
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getUserProfileManager()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v0

    return-object v0
.end method

.method private getBestNonVerifiedPhone()Lcom/callapp/framework/phone/Phone;
    .locals 2

    .line 250
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 251
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    return-object v0

    .line 255
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ao:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 256
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 7

    .line 273
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserVerifiedPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 275
    invoke-direct {p0}, Lcom/callapp/contacts/manager/UserProfileManager;->getBestNonVerifiedPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    if-nez v1, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/UserProfileManager;->getFallbackPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserDeviceId()J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lcom/callapp/contacts/loader/ChosenContactPhotoManager;->a(JLcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 280
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    .line 284
    :try_start_0
    invoke-static {v1, v5}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a(Lcom/callapp/framework/phone/Phone;I)J

    move-result-wide v3
    :try_end_0
    .catch Lcom/callapp/contacts/loader/device/DeviceIdLoader$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 286
    const-class v6, Lcom/callapp/contacts/manager/UserProfileManager;

    invoke-static {v6, v5}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 288
    :goto_0
    invoke-static {v3, v4, v1}, Lcom/callapp/contacts/loader/ChosenContactPhotoManager;->b(JLcom/callapp/framework/phone/Phone;)V

    const/4 v1, 0x1

    .line 291
    invoke-direct {p0, v1}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Z)J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v1

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v0, v1, v2}, Lcom/callapp/contacts/loader/ChosenContactPhotoManager;->a(JLcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 455
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserChosenImageDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 456
    iget v0, v0, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    if-ne v0, p1, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserDeviceId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserPhoneOrFallbackPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/loader/ChosenContactPhotoManager;->b(JLcom/callapp/framework/phone/Phone;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/callapp/contacts/model/contact/ContactField;)V
    .locals 2

    .line 514
    iget-object v0, p0, Lcom/callapp/contacts/manager/UserProfileManager;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/UserProfileManager;->a:Lcom/callapp/contacts/manager/UserProfileManager$UserProfileEvents;

    if-eqz v1, :cond_0

    .line 516
    invoke-interface {v1, p1}, Lcom/callapp/contacts/manager/UserProfileManager$UserProfileEvents;->onUserFieldChanged(Lcom/callapp/contacts/model/contact/ContactField;)V

    .line 518
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/callapp/contacts/widget/ProfilePictureView;Z)V
    .locals 1

    .line 581
    new-instance v0, Lcom/callapp/contacts/manager/UserProfileManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/callapp/contacts/manager/UserProfileManager$1;-><init>(Lcom/callapp/contacts/manager/UserProfileManager;Lcom/callapp/contacts/widget/ProfilePictureView;Z)V

    .line 600
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/UserProfileManager$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public final a(Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 200
    :cond_0
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserDeviceId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserPhoneOrFallbackPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-static {v0, v1, v2, p1, p2}, Lcom/callapp/contacts/loader/ChosenContactPhotoManager;->a(JLcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;)V

    .line 202
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Lcom/callapp/contacts/model/contact/ContactField;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final a(Lcom/callapp/framework/phone/Phone;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 476
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserVerifiedPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    .line 338
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 342
    :cond_0
    invoke-static {p1}, Lcom/callapp/common/model/json/JSONEmail;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ax:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-static {v0, p1}, Lcom/callapp/contacts/manager/preferences/PrefsUtils;->a([Lcom/callapp/contacts/manager/preferences/prefs/StringPref;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 344
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aC:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-static {v0, p1}, Lcom/callapp/contacts/manager/UserProfileManager;->c(Lcom/callapp/contacts/manager/preferences/prefs/StringPref;Ljava/lang/String;)V

    .line 345
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Lcom/callapp/contacts/model/contact/ContactField;)V

    :cond_2
    return v1
.end method

.method public final b(Lcom/callapp/framework/phone/Phone;)Z
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/callapp/contacts/manager/UserProfileManager;->c:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v0, p1}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public getBirthdate()Lcom/callapp/common/model/json/JSONDate;
    .locals 1

    .line 451
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aA:Lcom/callapp/contacts/manager/preferences/prefs/JSONDatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/JSONDatePref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/common/model/json/JSONDate;

    return-object v0
.end method

.method public getFallbackPhone()Lcom/callapp/framework/phone/Phone;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/callapp/contacts/manager/UserProfileManager;->c:Lcom/callapp/framework/phone/Phone;

    return-object v0
.end method

.method public getUserAddress()Ljava/lang/String;
    .locals 1

    .line 492
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->au:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUserChosenImageDataSource()Lcom/callapp/contacts/model/contact/DataSource;
    .locals 3

    .line 164
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserDeviceId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserPhoneOrFallbackPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/loader/ChosenContactPhotoManager;->a(JLcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserDefinition()Ljava/lang/String;
    .locals 1

    .line 496
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->av:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUserDeviceId()J
    .locals 2

    const/4 v0, 0x0

    .line 228
    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserEmails()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 370
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ay:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4424
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 4425
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 4426
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 4427
    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4428
    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 4429
    new-instance v5, Lcom/callapp/common/model/json/JSONEmail;

    const/4 v6, 0x3

    invoke-direct {v5, v4, v6}, Lcom/callapp/common/model/json/JSONEmail;-><init>(Ljava/lang/String;I)V

    .line 4430
    invoke-virtual {v5}, Lcom/callapp/common/model/json/JSONEmail;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4431
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Ljava/lang/String;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 372
    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ay:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 375
    :cond_2
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ax:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-static {v0}, Lcom/callapp/contacts/manager/preferences/PrefsUtils;->a([Lcom/callapp/contacts/manager/preferences/prefs/StringPref;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserFirstName()Ljava/lang/String;
    .locals 1

    .line 316
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ar:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUserFullName()Ljava/lang/String;
    .locals 3

    .line 324
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ar:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 325
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->as:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    if-nez v0, :cond_0

    move-object v0, v2

    :cond_0
    if-nez v1, :cond_1

    move-object v1, v2

    .line 334
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserLastName()Ljava/lang/String;
    .locals 1

    .line 320
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->as:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUserPhone()Lcom/callapp/framework/phone/Phone;
    .locals 1

    .line 223
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserVerifiedPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/manager/UserProfileManager;->getBestNonVerifiedPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getUserPhoneOrFallbackPhone()Lcom/callapp/framework/phone/Phone;
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/UserProfileManager;->getFallbackPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUserProfileImageUrl()Ljava/lang/String;
    .locals 8

    .line 173
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserDeviceId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserPhoneOrFallbackPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/loader/ChosenContactPhotoManager;->a(JLcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/ChosenContactPhoto;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    new-array v1, v0, [Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    .line 179
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 180
    invoke-static {}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->get()Lcom/callapp/contacts/api/helper/vk/VKHelper;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    .line 181
    invoke-static {}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->get()Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    move-result-object v5

    aput-object v5, v1, v2

    :goto_0
    const/4 v2, 0x0

    if-ge v3, v0, :cond_a

    .line 184
    aget-object v5, v1, v3

    if-nez v5, :cond_1

    goto/16 :goto_2

    .line 1125
    :cond_1
    invoke-virtual {v5}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isLoggedIn()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1126
    invoke-virtual {v5}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getApiConstantNetworkId()I

    move-result v6

    if-eq v6, v4, :cond_7

    const/4 v7, 0x7

    if-eq v6, v7, :cond_6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_5

    const/4 v7, 0x5

    if-eq v6, v7, :cond_4

    const/16 v7, 0x9

    if-eq v6, v7, :cond_3

    const/16 v7, 0xa

    if-eq v6, v7, :cond_2

    goto/16 :goto_2

    .line 1154
    :cond_2
    invoke-virtual {v5}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getCurrentUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1155
    invoke-static {}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->get()Lcom/callapp/contacts/api/helper/vk/VKHelper;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->a(Ljava/lang/String;)Z

    move-result v7

    xor-int/2addr v7, v4

    if-eqz v7, :cond_8

    goto :goto_1

    .line 1149
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;->get()Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;

    invoke-virtual {v5}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getCurrentUserId()Ljava/lang/String;

    .line 1150
    invoke-static {}, Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;->get()Lcom/callapp/contacts/api/helper/pinterest/PinterestHelper;

    const-string v6, "default"

    .line 4118
    invoke-static {v2, v6}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 1139
    :cond_4
    invoke-static {}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->get()Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 1140
    invoke-static {}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->get()Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    goto :goto_2

    .line 1136
    :cond_5
    invoke-static {}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->get()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    move-result-object v2

    invoke-virtual {v5}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getCurrentUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1144
    :cond_6
    invoke-static {}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->get()Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;

    move-result-object v6

    invoke-virtual {v5}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getCurrentUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1145
    invoke-static {}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->get()Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/callapp/contacts/api/helper/instagram/InstagramHelper;->a(Ljava/lang/String;)Z

    move-result v7

    xor-int/2addr v7, v4

    if-eqz v7, :cond_8

    :goto_1
    move-object v2, v6

    goto :goto_2

    .line 1128
    :cond_7
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->getLoggedInUser()Lcom/callapp/common/model/json/JSONFBUserOrPage;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 1130
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v2

    invoke-virtual {v6}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1131
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    .line 186
    :cond_8
    :goto_2
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 187
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserDeviceId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserPhoneOrFallbackPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {v5}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getApiConstantNetworkId()I

    move-result v4

    invoke-static {v4}, Lcom/callapp/contacts/model/contact/DataSource;->getDataSource(I)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v4

    invoke-static {v0, v1, v3, v4, v2}, Lcom/callapp/contacts/loader/ChosenContactPhotoManager;->a(JLcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;)V

    return-object v2

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    return-object v2
.end method

.method public getUserProfileName()Ljava/lang/String;
    .locals 5

    .line 94
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserFullName()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 100
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-static {}, Lcom/callapp/contacts/util/LocaleUtils;->isRussianUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    invoke-static {}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->get()Lcom/callapp/contacts/api/helper/vk/VKHelper;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-static {}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->get()Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    if-nez v1, :cond_3

    goto :goto_0

    .line 1071
    :cond_3
    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isLoggedIn()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1072
    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getApiConstantNetworkId()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    const/4 v4, 0x5

    if-eq v3, v4, :cond_5

    const/16 v4, 0xa

    if-eq v3, v4, :cond_4

    goto :goto_0

    .line 1083
    :cond_4
    check-cast v1, Lcom/callapp/contacts/api/helper/vk/VKHelper;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->k(Ljava/lang/String;)Lcom/callapp/contacts/api/helper/vk/VKUser;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1085
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1080
    :cond_5
    check-cast v1, Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1074
    :cond_6
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->getLoggedInUser()Lcom/callapp/common/model/json/JSONFBUserOrPage;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1076
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getName()Ljava/lang/String;

    move-result-object v2

    .line 109
    :cond_7
    :goto_0
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_8
    return-object v2
.end method

.method public getUserVerifiedPhone()Lcom/callapp/framework/phone/Phone;
    .locals 2

    .line 218
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aF:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 219
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getUserWebsites()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 420
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aw:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-static {v0}, Lcom/callapp/contacts/manager/preferences/PrefsUtils;->a([Lcom/callapp/contacts/manager/preferences/prefs/StringPref;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserYoutubeChannel()Ljava/lang/String;
    .locals 1

    .line 386
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aB:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public setBirthdate(Lcom/callapp/common/model/json/JSONDate;)V
    .locals 2

    .line 442
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONDate;->toCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 443
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aA:Lcom/callapp/contacts/manager/preferences/prefs/JSONDatePref;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/JSONDatePref;->set(Ljava/lang/Object;)V

    .line 446
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Lcom/callapp/contacts/model/contact/ContactField;)V

    :cond_0
    return-void
.end method

.method public setUserAddress(Ljava/lang/String;)V
    .locals 1

    .line 466
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->au:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 467
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->addresses:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void
.end method

.method public setUserDefinition(Ljava/lang/String;)V
    .locals 1

    .line 471
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->av:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 472
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->userDefinition:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void
.end method

.method public setUserFullName(Ljava/lang/String;)V
    .locals 3

    .line 297
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, " "

    .line 303
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    .line 306
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    .line 309
    :cond_1
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->ar:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 310
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->as:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 312
    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/UserProfileManager;->a(Lcom/callapp/contacts/model/contact/ContactField;)V

    return-void
.end method

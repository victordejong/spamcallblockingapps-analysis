.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;
.super Lcom/callapp/contacts/observers/CallAppContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleContactContentObserver"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

.field private b:J


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Landroid/os/Handler;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    .line 461
    invoke-direct {p0, p2}, Lcom/callapp/contacts/observers/CallAppContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private synthetic c()V
    .locals 4

    .line 496
    const-class v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Contact content observer fired for device deviceId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    sget-object v1, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->DEVICE_ID_MONITORED:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/ContactData;->fireChange(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$n5kmFAXBuBvWIXJneQdxhoubO-4(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;->c()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 484
    :try_start_0
    iget-wide v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 485
    const-class v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Contact content observer unregistering for deviceId: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;->b:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 486
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 487
    iput-wide v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;->b:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 3

    .line 465
    iget-wide v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;->b:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    return-void

    .line 468
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;->a()V

    .line 469
    iput-wide p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;->b:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 472
    :try_start_0
    const-class v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;

    const-string v1, "Contact content observer registering for deviceId: "

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 473
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 474
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/CallAppApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;->a:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$400(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_1
    return-void
.end method

.method public final b()Ljava/lang/Runnable;
    .locals 1

    .line 495
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$SingleContactContentObserver$n5kmFAXBuBvWIXJneQdxhoubO-4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$ContactDetailsActivity$SingleContactContentObserver$n5kmFAXBuBvWIXJneQdxhoubO-4;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$SingleContactContentObserver;)V

    return-object v0
.end method

.class public Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    .line 69
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fZ:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fZ:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static b()V
    .locals 2

    .line 75
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eG:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->a(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    return-void
.end method

.method public static get()Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;
    .locals 1

    .line 21
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getRetentionAnalytics()Lcom/callapp/contacts/activity/contact/list/RetentionAnalytics;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method

.class public Lcom/callapp/contacts/manager/IncognitoCallManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;
.implements Lcom/callapp/contacts/manager/phone/CallStateListener;
.implements Lcom/callapp/contacts/model/contact/ContactDataChangeListener;
.implements Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private numbersMarkedIncognito:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/callapp/framework/phone/Phone;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/IncognitoCallManager;->lock:Ljava/lang/Object;

    return-void
.end method

.method public static get()Lcom/callapp/contacts/manager/IncognitoCallManager;
    .locals 1

    .line 39
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getIncognitoCallManager()Lcom/callapp/contacts/manager/IncognitoCallManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onContentChanged$0(Lcom/callapp/contacts/util/CallLogEntry;Lcom/callapp/contacts/util/CallLogEntry;)I
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/callapp/contacts/util/CallLogEntry;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/callapp/contacts/util/CallLogEntry;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 76
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->removeListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    .line 77
    invoke-static {p0}, Lcom/callapp/contacts/observers/CallLogContentObserver;->d(Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;)V

    .line 78
    iget-object v0, p0, Lcom/callapp/contacts/manager/IncognitoCallManager;->numbersMarkedIncognito:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public init()V
    .locals 1

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/IncognitoCallManager;->numbersMarkedIncognito:Ljava/util/Map;

    .line 70
    invoke-static {p0}, Lcom/callapp/contacts/observers/CallLogContentObserver;->c(Lcom/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener;)V

    .line 71
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->addListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    return-void
.end method

.method public isIncognito(Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/framework/phone/Phone;

    .line 61
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/manager/IncognitoCallManager;->isIncognito(Lcom/callapp/framework/phone/Phone;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isIncognito(Lcom/callapp/framework/phone/Phone;)Z
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/callapp/contacts/manager/IncognitoCallManager;->numbersMarkedIncognito:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/callapp/framework/phone/Phone;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public markIncognito(Lcom/callapp/framework/phone/Phone;)V
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/callapp/contacts/manager/IncognitoCallManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/IncognitoCallManager;->numbersMarkedIncognito:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/callapp/framework/phone/Phone;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/callapp/contacts/manager/IncognitoCallManager;->numbersMarkedIncognito:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v2, v1

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/IncognitoCallManager;->numbersMarkedIncognito:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 8

    .line 149
    sget-object v0, Lcom/callapp/contacts/manager/IncognitoCallManager$1;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 172
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getContactDataByCallData(Lcom/callapp/contacts/model/call/CallData;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    .line 173
    invoke-static {}, Lcom/callapp/contacts/manager/ContactLoaderManager;->get()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/callapp/contacts/manager/ContactLoaderManager;->unRegisterForContactDetailsStack(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;)V

    goto/16 :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/manager/IncognitoCallManager;->numbersMarkedIncognito:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v1, [Lcom/callapp/framework/phone/Phone;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/IncognitoCallManager;->markIncognito(Lcom/callapp/framework/phone/Phone;)V

    return-void

    .line 162
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-static {v0, v1}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->getBuilderAccordingToOrigin(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->build()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object v3

    .line 163
    invoke-static {}, Lcom/callapp/contacts/manager/ContactLoaderManager;->get()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    const-wide/16 v4, 0x0

    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->isIncognito:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    move-object v6, p0

    invoke-virtual/range {v1 .. v7}, Lcom/callapp/contacts/manager/ContactLoaderManager;->registerForContactDetailsStack(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Landroid/util/Pair;

    move-result-object p1

    .line 164
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 165
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/callapp/contacts/model/contact/ContactData;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/manager/IncognitoCallManager;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    return-void

    .line 151
    :cond_3
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-static {v0, v1}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->getBuilderAccordingToOrigin(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->build()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object v3

    .line 152
    invoke-static {}, Lcom/callapp/contacts/manager/ContactLoaderManager;->get()Lcom/callapp/contacts/manager/ContactLoaderManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    const-wide/16 v4, 0x0

    sget-object p1, Lcom/callapp/contacts/model/contact/ContactField;->isIncognito:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    move-object v6, p0

    invoke-virtual/range {v1 .. v7}, Lcom/callapp/contacts/manager/ContactLoaderManager;->registerForContactDetailsStack(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;JLcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)Landroid/util/Pair;

    move-result-object p1

    .line 153
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 154
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/callapp/contacts/model/contact/ContactData;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/manager/IncognitoCallManager;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 186
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->isIncognito:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 187
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 188
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/framework/phone/Phone;

    .line 189
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallForPhone(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 190
    iget-object v1, p0, Lcom/callapp/contacts/manager/IncognitoCallManager;->numbersMarkedIncognito:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-array v2, v0, [Lcom/callapp/framework/phone/Phone;

    invoke-virtual {p2}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    invoke-virtual {p2}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/IncognitoCallManager;->markIncognito(Lcom/callapp/framework/phone/Phone;)V

    :cond_1
    return-void
.end method

.method public onContentChanged()V
    .locals 15

    .line 84
    iget-object v0, p0, Lcom/callapp/contacts/manager/IncognitoCallManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/IncognitoCallManager;->numbersMarkedIncognito:Ljava/util/Map;

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->fS:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 87
    monitor-exit v0

    return-void

    .line 91
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 92
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->fS:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    invoke-static {v2}, Lcom/callapp/contacts/util/CallLogUtils;->a(Ljava/util/Date;)Ljava/util/List;

    move-result-object v2

    .line 93
    sget-object v3, Lcom/callapp/contacts/manager/-$$Lambda$IncognitoCallManager$ITq5FEEOkhYCPzHV-2781jDqaAg;->INSTANCE:Lcom/callapp/contacts/manager/-$$Lambda$IncognitoCallManager$ITq5FEEOkhYCPzHV-2781jDqaAg;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 96
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 97
    iget-object v4, p0, Lcom/callapp/contacts/manager/IncognitoCallManager;->numbersMarkedIncognito:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/framework/phone/Phone;

    .line 98
    iget-object v8, p0, Lcom/callapp/contacts/manager/IncognitoCallManager;->numbersMarkedIncognito:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_1

    const/4 v10, 0x0

    .line 103
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/callapp/contacts/util/CallLogEntry;

    .line 104
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v13

    invoke-virtual {v12}, Lcom/callapp/contacts/util/CallLogEntry;->getNumber()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/callapp/framework/phone/Phone;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object v10, v12

    :cond_3
    if-eqz v10, :cond_5

    .line 113
    invoke-virtual {v10}, Lcom/callapp/contacts/util/CallLogEntry;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/callapp/contacts/util/CallLogUtils;->a(Ljava/util/List;)V

    .line 114
    invoke-interface {v2, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 115
    iget-object v6, p0, Lcom/callapp/contacts/manager/IncognitoCallManager;->numbersMarkedIncognito:Ljava/util/Map;

    add-int/lit8 v10, v8, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v10, :cond_4

    .line 117
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v6, 0x1

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 126
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/framework/phone/Phone;

    .line 127
    iget-object v4, p0, Lcom/callapp/contacts/manager/IncognitoCallManager;->numbersMarkedIncognito:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    if-eqz v6, :cond_8

    .line 132
    invoke-static {}, Lcom/callapp/contacts/util/CallLogUtils;->a()V

    .line 133
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->c()V

    .line 134
    sget-object v2, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v3, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v4, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->LAST_SEEN_CALL_LOG_TIMESTAMP:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v2, v3, v4}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 135
    sget-object v2, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v3, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v4, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->RECENT_CALLS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v2, v3, v4}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 139
    :cond_8
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallListSize()I

    move-result v2

    if-nez v2, :cond_9

    .line 140
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->fS:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 142
    :cond_9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

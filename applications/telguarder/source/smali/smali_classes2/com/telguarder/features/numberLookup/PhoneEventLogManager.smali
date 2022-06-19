.class public Lcom/telguarder/features/numberLookup/PhoneEventLogManager;
.super Ljava/lang/Object;
.source "PhoneEventLogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallStateReceiver;,
        Lcom/telguarder/features/numberLookup/PhoneEventLogManager$DownloadSpamCommentCompletionHandler;,
        Lcom/telguarder/features/numberLookup/PhoneEventLogManager$LastNumberCheckCompletionHandler;,
        Lcom/telguarder/features/numberLookup/PhoneEventLogManager$MergeObject;,
        Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateCallBack;,
        Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;,
        Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;
    }
.end annotation


# static fields
.field private static mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private static mInstance:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;


# instance fields
.field private volatile callLogUpdateState:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

.field public volatile mCallLogUpdateCallBack:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateCallBack;

.field private volatile mContacts:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/telguarder/helpers/contact/Contact;",
            ">;"
        }
    .end annotation
.end field

.field public mDownloadSpamCommentCompletionHandler:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$DownloadSpamCommentCompletionHandler;

.field private volatile mNumbersWithSpamComment:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mNumbersWithSpamDate:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPeListPrevIndex:I

.field private volatile mPhoneCallLog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSpamCallLog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;"
        }
    .end annotation
.end field

.field private volatile phoneCallLogState:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

.field public spamCommentLoadInProgress:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mNumbersWithSpamComment:Landroidx/collection/SimpleArrayMap;

    .line 62
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mNumbersWithSpamDate:Landroidx/collection/SimpleArrayMap;

    .line 63
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mContacts:Landroidx/collection/SimpleArrayMap;

    .line 65
    sget-object v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;->EMPTY:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->phoneCallLogState:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    .line 68
    sget-object v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;->NOT_UPDATED:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->callLogUpdateState:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->spamCommentLoadInProgress:Z

    const/4 v1, 0x0

    .line 80
    iput-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mDownloadSpamCommentCompletionHandler:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$DownloadSpamCommentCompletionHandler;

    .line 82
    iput v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mPeListPrevIndex:I

    return-void
.end method

.method static synthetic access$100(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Landroid/content/Context;Ljava/util/ArrayList;Lcom/telguarder/features/numberLookup/NumberLookupResponse;Lcom/telguarder/helpers/backend/BackendCallbackListener;I)V
    .locals 0

    .line 54
    invoke-direct/range {p0 .. p5}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->handleNumberLookupResult(Landroid/content/Context;Ljava/util/ArrayList;Lcom/telguarder/features/numberLookup/NumberLookupResponse;Lcom/telguarder/helpers/backend/BackendCallbackListener;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getCallLogWithLimit(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->loadLastNumber(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getLastComment(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Landroidx/collection/SimpleArrayMap;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mNumbersWithSpamComment:Landroidx/collection/SimpleArrayMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Landroidx/collection/SimpleArrayMap;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mNumbersWithSpamDate:Landroidx/collection/SimpleArrayMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Ljava/util/ArrayList;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mPhoneCallLog:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$402(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mPhoneCallLog:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)Ljava/util/ArrayList;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mSpamCallLog:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$502(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mSpamCallLog:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$602(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;)Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->phoneCallLogState:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    return-object p1
.end method

.method static synthetic access$700(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Ljava/util/ArrayList;)Z
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->isUpdateNeeded(Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Landroid/content/Context;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->setLoadUpdatedState(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->populateSpamCalls()V

    return-void
.end method

.method private createMergedListOfPhoneCalls(Ljava/util/TreeMap;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;"
        }
    .end annotation

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 400
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 401
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telguarder/features/numberLookup/PhoneEvent;

    .line 402
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcom/telguarder/features/numberLookup/PhoneEvent;->counter:I

    .line 403
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private fetchPhoneCallLogFromDevice(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 19

    move-object/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v1, v2, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "android.permission.READ_CALL_LOG"

    .line 138
    invoke-static {v0, v4}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getUserConsentForPolicy2018()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "_id"

    const-string v6, "number"

    const-string v7, "normalized_number"

    const-string v8, "countryiso"

    const-string v9, "name"

    const-string v10, "type"

    const-string v11, "date"

    const-string v12, "duration"

    .line 141
    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    move-result-object v15

    .line 143
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_2

    .line 144
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "date"

    .line 145
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "android:query-arg-sort-columns"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v5, "android:query-arg-sort-direction"

    .line 146
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "android:query-arg-limit"

    .line 147
    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v15, v4, v3}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 150
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "date desc limit "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    return-object v3
.end method

.method private getCallLogForActorType(Ljava/util/List;Lcom/telguarder/features/numberLookup/ActorType;)Lcom/telguarder/features/numberLookup/PhoneEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;",
            "Lcom/telguarder/features/numberLookup/ActorType;",
            ")",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 188
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telguarder/features/numberLookup/PhoneEvent;

    .line 193
    iget-object v2, v1, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorType:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorType:Ljava/lang/String;

    invoke-static {v2}, Lcom/telguarder/features/numberLookup/ActorType;->valueOf(Ljava/lang/String;)Lcom/telguarder/features/numberLookup/ActorType;

    move-result-object v2

    if-ne v2, p2, :cond_1

    move-object v0, v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getCallLogWithLimit(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->fetchPhoneCallLogFromDevice(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object p2

    if-nez p2, :cond_0

    return-object v0

    .line 119
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 120
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 123
    :cond_1
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "number"

    .line 124
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {v1}, Lcom/telguarder/helpers/contact/ContactUtils;->isHiddenNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/telguarder/helpers/contact/ContactUtils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    :cond_2
    invoke-static {p1, p2}, Lcom/telguarder/features/numberLookup/PhoneEvent;->phoneEventOfCallCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method private declared-synchronized getContact(Landroid/content/Context;Ljava/lang/String;)Lcom/telguarder/helpers/contact/Contact;
    .locals 1

    monitor-enter p0

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mContacts:Landroidx/collection/SimpleArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mContacts:Landroidx/collection/SimpleArrayMap;

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mContacts:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p2}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mContacts:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p1, p2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/telguarder/helpers/contact/Contact;

    goto :goto_0

    .line 249
    :cond_1
    invoke-static {}, Lcom/telguarder/helpers/contact/ContactManager;->getInstance()Lcom/telguarder/helpers/contact/ContactManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/telguarder/helpers/contact/ContactManager;->getContactByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/telguarder/helpers/contact/Contact;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :try_start_1
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mContacts:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p2, p1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    :catch_0
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/numberLookup/PhoneEventLogManager;
    .locals 2

    const-class v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mInstance:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    invoke-direct {v1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;-><init>()V

    sput-object v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mInstance:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;

    .line 93
    :cond_0
    sget-object v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mInstance:Lcom/telguarder/features/numberLookup/PhoneEventLogManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getLastComment(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
            "Lcom/telguarder/features/rateAndFeedback/CommentsResult;",
            ">;)V"
        }
    .end annotation

    .line 599
    sget-object v0, Lcom/telguarder/helpers/backend/BackendRequest$Method;->POST:Lcom/telguarder/helpers/backend/BackendRequest$Method;

    const-string v1, "https://api.advista.no/Report/Number/Comments/Mobile"

    invoke-static {p1, v1, v0}, Lcom/telguarder/helpers/backend/BackendRequestCreator;->backendRequestOfUrlAndMethodWithLogging(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/backend/BackendRequest$Method;)Lcom/telguarder/helpers/backend/BackendRequest;

    move-result-object p1

    .line 600
    iget-object p2, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    const-string v0, "number"

    invoke-virtual {p1, v0, p2}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 601
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "offset"

    invoke-virtual {p1, v0, p2}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Ljava/lang/Number;)V

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "count"

    invoke-virtual {p1, v0, p2}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Ljava/lang/Number;)V

    .line 602
    const-class p2, Lcom/telguarder/features/rateAndFeedback/CommentsResult;

    invoke-virtual {p1, p2, p3}, Lcom/telguarder/helpers/backend/BackendRequest;->execute(Ljava/lang/Class;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V

    return-void
.end method

.method private getPhoneNumberForContactLookup(Lcom/telguarder/features/numberLookup/PhoneEvent;)Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->phonebookNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->phonebookNumber:Ljava/lang/String;

    return-object p1

    .line 259
    :cond_0
    iget-object v0, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorPhoneNumber:Ljava/lang/String;

    return-object p1

    .line 262
    :cond_1
    iget-object p1, p1, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    return-object p1
.end method

.method private handleNumberLookupResult(Landroid/content/Context;Ljava/util/ArrayList;Lcom/telguarder/features/numberLookup/NumberLookupResponse;Lcom/telguarder/helpers/backend/BackendCallbackListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;",
            "Lcom/telguarder/features/numberLookup/NumberLookupResponse;",
            "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;>;I)V"
        }
    .end annotation

    .line 324
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->processAndSaveLookupResults(Landroid/content/Context;Ljava/util/ArrayList;Lcom/telguarder/features/numberLookup/NumberLookupResponse;Lcom/telguarder/helpers/backend/BackendCallbackListener;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 328
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 329
    invoke-virtual {p0, p1, p5}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getMergedCallLookupResultsFromCache(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 330
    invoke-virtual {p4, p2}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method private isUpdateNeeded(Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;)Z"
        }
    .end annotation

    .line 739
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mPhoneCallLog:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 740
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mPhoneCallLog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mPhoneCallLog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 745
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-wide v3, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->dateTimeInMillis:J

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mPhoneCallLog:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-wide v5, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->dateTimeInMillis:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    .line 748
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 749
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v3, v3, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v3, v3, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mPhoneCallLog:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object v4, v4, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method private loadLastNumber(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;)V"
        }
    .end annotation

    .line 816
    new-instance v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;

    invoke-direct {v0, p0, p1, p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$7;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Landroid/content/Context;Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getPhoneCallLogWithResultsFromBackend(Landroid/content/Context;Ljava/util/ArrayList;Lcom/telguarder/helpers/backend/BackendCallbackListener;I)V

    return-void
.end method

.method private lookupNumbersOnBackend(Landroid/content/Context;Ljava/util/ArrayList;Lcom/telguarder/helpers/backend/BackendCallbackListener;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;",
            "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;>;I)V"
        }
    .end annotation

    .line 276
    sget-object v0, Lcom/telguarder/helpers/backend/BackendRequest$Method;->POST:Lcom/telguarder/helpers/backend/BackendRequest$Method;

    const v1, 0x7f1001ae

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://tgedgeapi.telguarder.com/v2/Search/NumberLookup/Mobile"

    invoke-static {p1, v2, v0, v1}, Lcom/telguarder/helpers/backend/BackendRequestCreator;->backendRequestOfUrlAndMethodWithLogging(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/backend/BackendRequest$Method;Ljava/lang/String;)Lcom/telguarder/helpers/backend/BackendRequest;

    move-result-object v0

    .line 277
    invoke-virtual {p0, p1, p2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getPhoneNumbersToLookup(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    invoke-virtual {p3, p2}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v2, "numbers"

    .line 282
    invoke-virtual {v0, v2, v1}, Lcom/telguarder/helpers/backend/BackendRequest;->putParam(Ljava/lang/String;Ljava/util/List;)V

    .line 283
    invoke-static {}, Lcom/telguarder/features/numberLookup/SearchManager;->getInstance()Lcom/telguarder/features/numberLookup/SearchManager;

    move-result-object v1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {p1, v2}, Lcom/telguarder/helpers/ui/UiHelper;->dpToPixel(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v3, v2}, Lcom/telguarder/features/numberLookup/SearchManager;->addLogoParamToRequest(Lcom/telguarder/helpers/backend/BackendRequest;ZZI)V

    .line 284
    const-class v1, Lcom/telguarder/features/numberLookup/NumberLookupResponse;

    new-instance v9, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$1;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$1;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Landroid/content/Context;Landroid/content/Context;Ljava/util/ArrayList;Lcom/telguarder/helpers/backend/BackendCallbackListener;I)V

    invoke-virtual {v0, v1, v9}, Lcom/telguarder/helpers/backend/BackendRequest;->execute(Ljava/lang/Class;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V

    return-void
.end method

.method private populateSpamCalls()V
    .locals 3

    .line 761
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mSpamCallLog:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 762
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mSpamCallLog:Ljava/util/ArrayList;

    goto :goto_0

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mSpamCallLog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 766
    :goto_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mPhoneCallLog:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mPhoneCallLog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mPhoneCallLog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telguarder/features/numberLookup/PhoneEvent;

    .line 768
    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpam()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 769
    iget-object v2, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mSpamCallLog:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private processAndSaveLookupResults(Landroid/content/Context;Ljava/util/ArrayList;Lcom/telguarder/features/numberLookup/NumberLookupResponse;Lcom/telguarder/helpers/backend/BackendCallbackListener;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;",
            "Lcom/telguarder/features/numberLookup/NumberLookupResponse;",
            "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;>;)Z"
        }
    .end annotation

    if-eqz p3, :cond_5

    .line 335
    iget-object v0, p3, Lcom/telguarder/features/numberLookup/NumberLookupResponse;->results:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p3, Lcom/telguarder/features/numberLookup/NumberLookupResponse;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 339
    :cond_0
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 340
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 341
    iget-object p3, p3, Lcom/telguarder/features/numberLookup/NumberLookupResponse;->results:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telguarder/features/numberLookup/NumberLookup;

    .line 342
    iget-object v2, v1, Lcom/telguarder/features/numberLookup/NumberLookup;->result:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/telguarder/features/numberLookup/NumberLookup;->result:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 343
    iget-object v2, v1, Lcom/telguarder/features/numberLookup/NumberLookup;->result:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/telguarder/features/numberLookup/SearchResult;

    if-eqz v3, :cond_2

    .line 345
    iget-object v4, v1, Lcom/telguarder/features/numberLookup/NumberLookup;->number:Ljava/lang/String;

    iget-object v5, v1, Lcom/telguarder/features/numberLookup/NumberLookup;->spam:Lcom/telguarder/features/numberLookup/Spam;

    iget-object v6, v1, Lcom/telguarder/features/numberLookup/NumberLookup;->securityLevel:Ljava/lang/String;

    invoke-static {p1, v3, v4, v5, v6}, Lcom/telguarder/features/numberLookup/PhoneEvent;->phoneCallOfSearchResult(Landroid/content/Context;Lcom/telguarder/features/numberLookup/SearchResult;Ljava/lang/String;Lcom/telguarder/features/numberLookup/Spam;Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v4

    .line 346
    invoke-virtual {v3}, Lcom/telguarder/features/numberLookup/SearchResult;->getActorType()Lcom/telguarder/features/numberLookup/ActorType;

    move-result-object v5

    sget-object v6, Lcom/telguarder/features/numberLookup/ActorType;->PERSON:Lcom/telguarder/features/numberLookup/ActorType;

    if-ne v5, v6, :cond_3

    .line 347
    iget-object v3, v1, Lcom/telguarder/features/numberLookup/NumberLookup;->number:Ljava/lang/String;

    invoke-virtual {p4, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 348
    :cond_3
    invoke-virtual {v3}, Lcom/telguarder/features/numberLookup/SearchResult;->getActorType()Lcom/telguarder/features/numberLookup/ActorType;

    move-result-object v3

    sget-object v5, Lcom/telguarder/features/numberLookup/ActorType;->COMPANY:Lcom/telguarder/features/numberLookup/ActorType;

    if-ne v3, v5, :cond_2

    .line 349
    iget-object v3, v1, Lcom/telguarder/features/numberLookup/NumberLookup;->number:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 355
    :cond_4
    invoke-direct {p0, p1, p2, p4, v0}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->saveOrUpdateCacheNumberLookupResults(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    const/4 p1, 0x1

    return p1

    .line 336
    :cond_5
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p4, p1}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->onSuccess(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method private registerCallObserver(Landroid/content/Context;)V
    .locals 3

    const-string v0, "android.permission.READ_CALL_LOG"

    .line 781
    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getUserConsentForPolicy2018()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 784
    :cond_0
    sget-object v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 785
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :catch_0
    sput-object v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 788
    :cond_1
    new-instance v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallStateReceiver;

    invoke-direct {v0, p0, v1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallStateReceiver;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Lcom/telguarder/features/numberLookup/PhoneEventLogManager$1;)V

    .line 789
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 791
    sput-object v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 792
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    :goto_0
    return-void
.end method

.method private saveOrUpdateCacheNumberLookupResults(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 425
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 426
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 432
    invoke-static {p1}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->getInstance(Landroid/content/Context;)Lcom/telguarder/features/numberLookup/PhoneCallManager;

    move-result-object v1

    .line 434
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/telguarder/features/numberLookup/PhoneEvent;

    .line 435
    iget-object v3, v2, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    .line 436
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 439
    :cond_1
    invoke-virtual {v1, p1, v3}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->getPersonPhoneCallByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v4

    .line 440
    invoke-virtual {v1, p1, v3}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->getCompanyPhoneCallByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v5

    .line 441
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/telguarder/features/numberLookup/PhoneEvent;

    .line 442
    invoke-virtual {p4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/telguarder/features/numberLookup/PhoneEvent;

    if-eqz v6, :cond_2

    .line 444
    iget-wide v8, v2, Lcom/telguarder/features/numberLookup/PhoneEvent;->dateTimeInMillis:J

    iput-wide v8, v6, Lcom/telguarder/features/numberLookup/PhoneEvent;->dateTimeInMillis:J

    :cond_2
    if-eqz v7, :cond_3

    .line 447
    iget-wide v8, v2, Lcom/telguarder/features/numberLookup/PhoneEvent;->dateTimeInMillis:J

    iput-wide v8, v7, Lcom/telguarder/features/numberLookup/PhoneEvent;->dateTimeInMillis:J

    .line 449
    :cond_3
    invoke-direct {p0, p1, v4, v6}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->saveOrUpdatePhoneCall(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    .line 450
    invoke-direct {p0, p1, v5, v7}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->saveOrUpdatePhoneCall(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    .line 451
    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_4
    :goto_1
    return-void
.end method

.method private saveOrUpdatePhoneCall(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/features/numberLookup/PhoneEvent;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 462
    :cond_0
    invoke-static {p1}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->getInstance(Landroid/content/Context;)Lcom/telguarder/features/numberLookup/PhoneCallManager;

    move-result-object v0

    .line 463
    invoke-virtual {v0, p1, p2, p3}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->saverOrUpdatePhoneCall(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/features/numberLookup/PhoneEvent;)I

    return-void
.end method

.method private setDataOnMergedCallLogItem(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/features/numberLookup/PhoneEventLogManager$MergeObject;)V
    .locals 4

    .line 203
    iget-object v0, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    iget-object v1, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->regionCode:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/telguarder/helpers/contact/ContactUtils;->getFormattedPhoneNumber(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->phoneNumberForDisplaying:Ljava/lang/String;

    .line 204
    iget-object v0, p3, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$MergeObject;->companyCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

    if-nez v0, :cond_2

    iget-object v0, p3, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$MergeObject;->personCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

    if-nez v0, :cond_2

    .line 205
    invoke-direct {p0, p2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getPhoneNumberForContactLookup(Lcom/telguarder/features/numberLookup/PhoneEvent;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getContact(Landroid/content/Context;Ljava/lang/String;)Lcom/telguarder/helpers/contact/Contact;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 207
    iget-object p3, p3, Lcom/telguarder/helpers/contact/Contact;->name:Ljava/lang/String;

    iput-object p3, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 208
    :cond_0
    iget-object p3, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 209
    iget-object p3, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/telguarder/helpers/contact/ContactUtils;->getUnknownNumberWithRegionDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 211
    :cond_1
    invoke-static {p1}, Lcom/telguarder/helpers/contact/ContactUtils;->getHiddenNumberDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    goto/16 :goto_0

    .line 214
    :cond_2
    invoke-direct {p0, p2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getPhoneNumberForContactLookup(Lcom/telguarder/features/numberLookup/PhoneEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getContact(Landroid/content/Context;Ljava/lang/String;)Lcom/telguarder/helpers/contact/Contact;

    move-result-object v0

    const-string v1, " | "

    if-eqz v0, :cond_4

    .line 216
    iget-object v2, p3, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$MergeObject;->companyCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

    if-eqz v2, :cond_3

    .line 217
    iget-object v2, p3, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$MergeObject;->companyCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {p2, v2}, Lcom/telguarder/features/numberLookup/PhoneEvent;->setCoreValuesFromOtherPhoneCall(Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->phoneNumberForDisplaying:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$MergeObject;->companyCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object p3, p3, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->phoneNumberForDisplaying:Ljava/lang/String;

    .line 220
    :cond_3
    iget-object p3, v0, Lcom/telguarder/helpers/contact/Contact;->name:Ljava/lang/String;

    iput-object p3, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    goto :goto_0

    .line 221
    :cond_4
    iget-object v0, p3, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$MergeObject;->companyCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

    if-eqz v0, :cond_6

    iget-object v0, p3, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$MergeObject;->personCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

    if-eqz v0, :cond_6

    .line 222
    iget-object v0, p3, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$MergeObject;->personCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {p2, v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->setCoreValuesFromOtherPhoneCall(Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    .line 223
    iget-object v0, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->phoneNumberForDisplaying:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 224
    iget-object p3, p3, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$MergeObject;->companyCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object p3, p3, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    iput-object p3, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->phoneNumberForDisplaying:Ljava/lang/String;

    goto :goto_0

    .line 226
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->phoneNumberForDisplaying:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$MergeObject;->companyCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

    iget-object p3, p3, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->phoneNumberForDisplaying:Ljava/lang/String;

    goto :goto_0

    .line 228
    :cond_6
    iget-object v0, p3, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$MergeObject;->personCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

    if-eqz v0, :cond_7

    .line 229
    iget-object p3, p3, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$MergeObject;->personCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {p2, p3}, Lcom/telguarder/features/numberLookup/PhoneEvent;->setCoreValuesFromOtherPhoneCall(Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    goto :goto_0

    .line 231
    :cond_7
    iget-object p3, p3, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$MergeObject;->companyCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

    invoke-virtual {p2, p3}, Lcom/telguarder/features/numberLookup/PhoneEvent;->setCoreValuesFromOtherPhoneCall(Lcom/telguarder/features/numberLookup/PhoneEvent;)V

    .line 234
    :goto_0
    iget-object p3, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8

    iget-object p3, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->actorId:Ljava/lang/String;

    if-nez p3, :cond_8

    invoke-virtual {p2}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpam()Z

    move-result p3

    if-nez p3, :cond_8

    .line 235
    invoke-direct {p0, p2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getPhoneNumberForContactLookup(Lcom/telguarder/features/numberLookup/PhoneEvent;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getContact(Landroid/content/Context;Ljava/lang/String;)Lcom/telguarder/helpers/contact/Contact;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 237
    iget-object p1, p1, Lcom/telguarder/helpers/contact/Contact;->name:Ljava/lang/String;

    iput-object p1, p2, Lcom/telguarder/features/numberLookup/PhoneEvent;->name:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method private setLoadUpdatedState(Landroid/content/Context;I)V
    .locals 1

    .line 731
    sget-object v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;->UPDATED:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->callLogUpdateState:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_0

    .line 733
    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->preloadFinalPhoneCallLog(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkLastNumber(Landroid/content/Context;Ljava/lang/Long;Lcom/telguarder/features/numberLookup/PhoneEventLogManager$LastNumberCheckCompletionHandler;)V
    .locals 15

    const-string v0, "android.permission.READ_CALL_LOG"

    move-object/from16 v1, p1

    .line 484
    invoke-static {v1, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getUserConsentForPolicy2018()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const-wide/16 v2, 0x0

    const-string v0, "_id"

    const-string v4, "number"

    const-string v5, "type"

    const-string v6, "date"

    .line 491
    filled-new-array {v0, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "DATE >= ?"

    const/4 v7, 0x1

    new-array v11, v7, [Ljava/lang/String;

    if-nez p2, :cond_1

    const-string v8, "0"

    goto :goto_0

    .line 493
    :cond_1
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_0
    const/4 v13, 0x0

    aput-object v8, v11, v13

    .line 496
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1d

    const/4 v14, 0x0

    if-lt v8, v12, :cond_2

    .line 497
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v12, "android:query-arg-sql-selection"

    .line 498
    invoke-virtual {v8, v12, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "android:query-arg-sql-selection-args"

    .line 499
    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 500
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "android:query-arg-sort-columns"

    invoke-virtual {v8, v11, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v10, "android:query-arg-sort-direction"

    .line 501
    invoke-virtual {v8, v10, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "android:query-arg-limit"

    .line 502
    invoke-virtual {v8, v10, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 503
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v7, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v7, v9, v8, v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_1

    .line 505
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v12, "date desc limit 1"

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    move-object v7, v14

    .line 509
    :goto_2
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 510
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 511
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 512
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 513
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 518
    :cond_3
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v4, v7

    move v5, v13

    move-wide v6, v2

    move-object v3, v14

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 516
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 518
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 519
    throw v0

    :cond_4
    move-wide v6, v2

    move-object v3, v14

    move-object v4, v3

    const/4 v5, 0x0

    :goto_5
    if-eqz p3, :cond_5

    move-object/from16 v2, p3

    .line 522
    invoke-interface/range {v2 .. v7}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$LastNumberCheckCompletionHandler;->handle(Ljava/lang/String;Ljava/lang/Long;IJ)V

    :cond_5
    :goto_6
    return-void
.end method

.method public countEventsPerNumber(Ljava/util/ArrayList;)Ljava/util/TreeMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;)",
            "Ljava/util/TreeMap<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 376
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 377
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telguarder/features/numberLookup/PhoneEvent;

    if-eqz v1, :cond_0

    .line 378
    iget-object v2, v1, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 380
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 381
    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/telguarder/features/numberLookup/PhoneEvent;

    .line 382
    invoke-virtual {v5, v1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->compareTo(Lcom/telguarder/features/numberLookup/PhoneEvent;)I

    move-result v6

    if-nez v6, :cond_1

    .line 383
    iget-wide v6, v1, Lcom/telguarder/features/numberLookup/PhoneEvent;->dateTimeInMillis:J

    iget-wide v8, v5, Lcom/telguarder/features/numberLookup/PhoneEvent;->dateTimeInMillis:J

    cmp-long v2, v6, v8

    if-lez v2, :cond_2

    move-object v5, v1

    :cond_2
    move-object v2, v5

    goto :goto_1

    .line 386
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v4

    .line 388
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 390
    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public downloadSpamCommentData(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;I)V"
        }
    .end annotation

    if-eqz p2, :cond_8

    .line 533
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_8

    if-lez p3, :cond_0

    iget v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mPeListPrevIndex:I

    if-ne v0, p3, :cond_0

    goto/16 :goto_3

    .line 537
    :cond_0
    iput p3, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mPeListPrevIndex:I

    .line 538
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/telguarder/features/numberLookup/PhoneEvent;

    if-eqz v0, :cond_6

    .line 539
    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpam()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 547
    :cond_1
    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mNumbersWithSpamComment:Landroidx/collection/SimpleArrayMap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mNumbersWithSpamComment:Landroidx/collection/SimpleArrayMap;

    iget-object v2, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 548
    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mNumbersWithSpamComment:Landroidx/collection/SimpleArrayMap;

    iget-object v2, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 549
    iget-object v2, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mNumbersWithSpamDate:Landroidx/collection/SimpleArrayMap;

    iget-object v3, v0, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 550
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getLastSpamComment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/telguarder/features/numberLookup/PhoneEvent;->getLastSpamDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 551
    :cond_2
    invoke-virtual {v0, v1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->setLastSpamComment(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/telguarder/features/numberLookup/PhoneEvent;->setLastSpamDate(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mDownloadSpamCommentCompletionHandler:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$DownloadSpamCommentCompletionHandler;

    if-eqz v0, :cond_3

    invoke-interface {v0, p3}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$DownloadSpamCommentCompletionHandler;->handle(I)V

    .line 554
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p3, v0, :cond_4

    add-int/lit8 p3, p3, 0x1

    .line 555
    invoke-virtual {p0, p1, p2, p3}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->downloadSpamCommentData(Landroid/content/Context;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 557
    :cond_4
    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->saveFullHistoryListCache(Landroid/content/Context;)V

    :goto_0
    return-void

    .line 561
    :cond_5
    new-instance v7, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    move v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$3;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Lcom/telguarder/features/numberLookup/PhoneEvent;ILjava/util/ArrayList;Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v7}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getLastComment(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V

    return-void

    .line 540
    :cond_6
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p3, v0, :cond_7

    add-int/lit8 p3, p3, 0x1

    .line 541
    invoke-virtual {p0, p1, p2, p3}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->downloadSpamCommentData(Landroid/content/Context;Ljava/util/ArrayList;I)V

    goto :goto_2

    .line 543
    :cond_7
    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->saveFullHistoryListCache(Landroid/content/Context;)V

    :goto_2
    return-void

    :cond_8
    :goto_3
    const/4 p1, 0x0

    .line 534
    iput-boolean p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->spamCommentLoadInProgress:Z

    return-void
.end method

.method public getLastCallLogEntry(Landroid/content/Context;)Lcom/telguarder/features/numberLookup/PhoneEvent;
    .locals 1

    const/4 v0, 0x1

    .line 104
    invoke-direct {p0, p1, v0}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getCallLogWithLimit(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/telguarder/features/numberLookup/PhoneEvent;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMergedCallLookupResultsFromCache(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;"
        }
    .end annotation

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 362
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getCallLogWithLimit(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getPhoneEventLogWithResultsFromCache(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 363
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 364
    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->countEventsPerNumber(Ljava/util/ArrayList;)Ljava/util/TreeMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->createMergedListOfPhoneCalls(Ljava/util/TreeMap;)Ljava/util/ArrayList;

    move-result-object p1

    .line 365
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 367
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 368
    invoke-virtual {p0, v0}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->sortMergedResultListByDate(Ljava/util/ArrayList;)V

    :cond_1
    return-object v0
.end method

.method public getPhoneCallLog()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;"
        }
    .end annotation

    .line 643
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mPhoneCallLog:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mPhoneCallLog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mPhoneCallLog:Ljava/util/ArrayList;

    return-object v0

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->phoneCallLogState:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    sget-object v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;->LOADING:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    if-ne v0, v1, :cond_1

    .line 647
    :goto_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->phoneCallLogState:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    sget-object v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;->LOADED:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    if-eq v0, v1, :cond_1

    const-wide/16 v0, 0x64

    .line 648
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Error during phonecall load"

    invoke-static {v0}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 651
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mPhoneCallLog:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mPhoneCallLog:Ljava/util/ArrayList;

    :goto_1
    return-object v0
.end method

.method public getPhoneCallLogWithResultsFromBackend(Landroid/content/Context;Ljava/util/ArrayList;Lcom/telguarder/helpers/backend/BackendCallbackListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;",
            "Lcom/telguarder/helpers/backend/BackendCallbackListener<",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;>;I)V"
        }
    .end annotation

    .line 268
    invoke-virtual {p3}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->triggerStart()V

    .line 269
    invoke-static {}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getInstance()Lcom/telguarder/helpers/preferences/PreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/preferences/PreferencesManager;->getUserConsentForPolicy2018()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->lookupNumbersOnBackend(Landroid/content/Context;Ljava/util/ArrayList;Lcom/telguarder/helpers/backend/BackendCallbackListener;I)V

    :cond_0
    return-void
.end method

.method public getPhoneEventFromCache(Landroid/content/Context;Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEvent;
    .locals 0

    .line 173
    invoke-static {p1}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->getInstance(Landroid/content/Context;)Lcom/telguarder/features/numberLookup/PhoneCallManager;

    move-result-object p1

    .line 174
    invoke-virtual {p1, p2}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->getPhoneCallsForPhoneNumber(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 175
    sget-object p2, Lcom/telguarder/features/numberLookup/ActorType;->PERSON:Lcom/telguarder/features/numberLookup/ActorType;

    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getCallLogForActorType(Ljava/util/List;Lcom/telguarder/features/numberLookup/ActorType;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    .line 179
    :cond_0
    sget-object p2, Lcom/telguarder/features/numberLookup/ActorType;->COMPANY:Lcom/telguarder/features/numberLookup/ActorType;

    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getCallLogForActorType(Ljava/util/List;Lcom/telguarder/features/numberLookup/ActorType;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPhoneEventLogWithResultsFromCache(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telguarder/features/numberLookup/PhoneEvent;

    .line 158
    invoke-static {p1}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->getInstance(Landroid/content/Context;)Lcom/telguarder/features/numberLookup/PhoneCallManager;

    move-result-object v2

    .line 159
    iget-object v3, v1, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/telguarder/features/numberLookup/PhoneCallManager;->getPhoneCallsForPhoneNumber(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 160
    sget-object v3, Lcom/telguarder/features/numberLookup/ActorType;->COMPANY:Lcom/telguarder/features/numberLookup/ActorType;

    invoke-direct {p0, v2, v3}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getCallLogForActorType(Ljava/util/List;Lcom/telguarder/features/numberLookup/ActorType;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v3

    .line 161
    sget-object v4, Lcom/telguarder/features/numberLookup/ActorType;->PERSON:Lcom/telguarder/features/numberLookup/ActorType;

    invoke-direct {p0, v2, v4}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->getCallLogForActorType(Ljava/util/List;Lcom/telguarder/features/numberLookup/ActorType;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v2

    .line 162
    new-instance v4, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$MergeObject;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$MergeObject;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Lcom/telguarder/features/numberLookup/PhoneEventLogManager$1;)V

    .line 163
    iput-object v3, v4, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$MergeObject;->companyCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

    .line 164
    iput-object v2, v4, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$MergeObject;->personCall:Lcom/telguarder/features/numberLookup/PhoneEvent;

    .line 165
    invoke-direct {p0, p1, v1, v4}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->setDataOnMergedCallLogItem(Landroid/content/Context;Lcom/telguarder/features/numberLookup/PhoneEvent;Lcom/telguarder/features/numberLookup/PhoneEventLogManager$MergeObject;)V

    .line 166
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getPhoneNumbersToLookup(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 304
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 306
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 307
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/telguarder/features/numberLookup/PhoneEvent;

    .line 308
    iget-object v2, v1, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/telguarder/helpers/contact/ContactUtils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 311
    :cond_2
    invoke-virtual {v1, p1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isFromFreshCache(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 312
    iget-object v2, v1, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    iget-object v1, v1, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 315
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 316
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 317
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method public getSpamCallLog()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;"
        }
    .end annotation

    .line 656
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->phoneCallLogState:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    sget-object v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;->LOADING:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    const-string v2, "Error during phonecall load"

    const-wide/16 v3, 0x64

    if-ne v0, v1, :cond_0

    .line 657
    :goto_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->phoneCallLogState:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    sget-object v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;->LOADED:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    if-eq v0, v1, :cond_0

    .line 658
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v2}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mSpamCallLog:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mSpamCallLog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mSpamCallLog:Ljava/util/ArrayList;

    return-object v0

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->callLogUpdateState:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

    sget-object v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;->UPDATING:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

    if-ne v0, v1, :cond_2

    .line 665
    :goto_1
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->callLogUpdateState:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

    sget-object v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;->UPDATED:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

    if-eq v0, v1, :cond_2

    .line 666
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-static {v2}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 669
    :cond_2
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mSpamCallLog:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mSpamCallLog:Ljava/util/ArrayList;

    :goto_2
    return-object v0
.end method

.method public initPhoneEventLogManager(Landroid/content/Context;)V
    .locals 1

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->preloadInitialPhoneCallLog(Landroid/content/Context;)V

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->registerCallObserver(Landroid/content/Context;)V

    return-void
.end method

.method public loadCallLogWitResultsFromBackend(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;I)V"
        }
    .end annotation

    .line 674
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->callLogUpdateState:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

    sget-object v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;->UPDATING:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 675
    :cond_0
    sget-object v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;->UPDATING:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->callLogUpdateState:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

    .line 676
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$6;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 716
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifySystemToUpdatePhoneCallLog(Landroid/content/Context;)V
    .locals 2

    .line 468
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public preloadFinalPhoneCallLog(Landroid/content/Context;)V
    .locals 2

    .line 634
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$5;

    invoke-direct {v1, p0, p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$5;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 638
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public preloadInitialPhoneCallLog(Landroid/content/Context;)V
    .locals 2

    .line 611
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mPhoneCallLog:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mPhoneCallLog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 612
    invoke-virtual {p0, p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->preloadFinalPhoneCallLog(Landroid/content/Context;)V

    return-void

    .line 615
    :cond_0
    sget-object v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;->LOADING:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    iput-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->phoneCallLogState:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    .line 616
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$4;

    invoke-direct {v1, p0, p1}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$4;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 629
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public removePhoneEvent(Lcom/telguarder/features/numberLookup/PhoneEvent;)V
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mPhoneCallLog:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mPhoneCallLog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mPhoneCallLog:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mSpamCallLog:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mSpamCallLog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mSpamCallLog:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public saveFullHistoryListCache(Landroid/content/Context;)V
    .locals 2

    .line 721
    iget-object v0, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mPhoneCallLog:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 722
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->getInstance()Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mPhoneCallLog:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lcom/telguarder/features/numberLookup/PhoneEventHistoryManger;->saveHistoryListCache(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 724
    iput-boolean p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->spamCommentLoadInProgress:Z

    const/4 p1, 0x0

    .line 725
    iput-object p1, p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager;->mDownloadSpamCommentCompletionHandler:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$DownloadSpamCommentCompletionHandler;

    :goto_0
    return-void
.end method

.method public sortMergedResultListByDate(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;)V"
        }
    .end annotation

    .line 411
    :try_start_0
    new-instance v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$2;

    invoke-direct {v0, p0}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$2;-><init>(Lcom/telguarder/features/numberLookup/PhoneEventLogManager;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

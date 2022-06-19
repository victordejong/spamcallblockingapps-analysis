.class public Lcom/callapp/contacts/recorder/CallRecorderManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;
    }
.end annotation


# instance fields
.field public a:Lcom/callapp/contacts/model/objectbox/CallRecorder;

.field public b:Lcom/callapp/contacts/model/call/CallData;

.field private c:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

.field private d:Z

.field private final e:Ljava/lang/Object;

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/recorder/interfaces/CallRecorderEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->a:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    .line 71
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eI:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->PRE_RECORD:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->IDLE:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    :goto_0
    iput-object v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->c:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->e:Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->f:Ljava/util/Set;

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 6

    .line 87
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 90
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 91
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 92
    :try_start_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 p0, 0x9

    .line 93
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 95
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    return-wide v2

    :cond_0
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 103
    :cond_1
    throw p0

    :catch_1
    nop

    :goto_1
    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_2
    :goto_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method static synthetic a(Lcom/callapp/contacts/recorder/CallRecorderManager;)Lcom/callapp/contacts/model/objectbox/CallRecorder;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->a:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    return-object p0
.end method

.method public static a(Lcom/callapp/framework/phone/Phone;J)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/framework/phone/Phone;",
            "J)",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/CallRecorder;",
            ">;"
        }
    .end annotation

    .line 566
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 568
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/CallRecorder_;->callType:Lio/objectbox/g;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->b(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->d()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/CallRecorder_;->phoneOrIdKey:Lio/objectbox/g;

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/model/contact/ContactData;->generateId(Lcom/callapp/framework/phone/Phone;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    sget-object p1, Lcom/callapp/contacts/model/objectbox/CallRecorder_;->date:Lio/objectbox/g;

    const/4 p2, 0x1

    .line 5283
    invoke-virtual {p0, p1, p2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object p0

    .line 568
    invoke-virtual {p0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object p0

    invoke-virtual {p0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object p0

    .line 569
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    .line 570
    invoke-static {p2}, Lcom/callapp/contacts/recorder/CallRecorderManager;->e(Lcom/callapp/contacts/model/objectbox/CallRecorder;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/callapp/contacts/model/objectbox/CallRecorder;)V
    .locals 5

    .line 410
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 412
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 413
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "*/*"

    .line 414
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    .line 415
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const p1, 0x7f120629

    .line 416
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f120061

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 417
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppDomain()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    .line 125
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {v1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v3

    sget-object v4, Lcom/callapp/contacts/model/objectbox/CallRecorder_;->fileName:Lio/objectbox/g;

    invoke-virtual {v3, v4, v2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Ljava/lang/String;)Lio/objectbox/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 129
    invoke-virtual {v2, v3}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->setUploaded(Z)V

    .line 130
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 135
    invoke-virtual {v1, v0}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/recorder/CallRecorderManager;)Lcom/callapp/contacts/model/objectbox/CallRecorder;
    .locals 1

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->a:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    return-object v0
.end method

.method public static b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/CallRecorder;",
            ">;)V"
        }
    .end annotation

    .line 538
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 540
    invoke-virtual {v0, p0}, Lio/objectbox/a;->a(Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/model/objectbox/CallRecorder;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 6637
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 6639
    invoke-virtual {v0, p0}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    :cond_0
    return-void
.end method

.method public static d()V
    .locals 6

    .line 545
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 547
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/CallRecorder_;->fileName:Lio/objectbox/g;

    const/4 v3, 0x0

    .line 5272
    invoke-virtual {v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    .line 547
    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v1

    .line 548
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 550
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 551
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    .line 552
    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 553
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 555
    :cond_0
    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getFileName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 559
    :cond_1
    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 560
    invoke-virtual {v0, v3}, Lio/objectbox/a;->b(Ljava/util/Collection;)V

    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/callapp/contacts/model/objectbox/CallRecorder;)V
    .locals 0

    .line 65
    invoke-static {p0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->f(Lcom/callapp/contacts/model/objectbox/CallRecorder;)V

    return-void
.end method

.method public static e()V
    .locals 4

    .line 593
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 594
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/CallRecorder_;->callType:Lio/objectbox/g;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->f()J

    return-void
.end method

.method private static e(Lcom/callapp/contacts/model/objectbox/CallRecorder;)V
    .locals 4

    .line 598
    invoke-virtual {p0}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getPhoneOrIdKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    .line 599
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 601
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    const/4 v0, 0x0

    .line 602
    aget-object v0, v1, v0

    .line 603
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "private"

    .line 606
    :cond_0
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->setPhoneText(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 607
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->setContactId(J)V

    return-void

    .line 609
    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->setContactId(J)V

    const/4 v0, 0x0

    .line 610
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->setPhoneText(Ljava/lang/String;)V

    return-void
.end method

.method private f()V
    .locals 3

    .line 157
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 158
    iget-object v1, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->c:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->ordinal()I

    move-result v1

    const-string v2, "RECORDER_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method private static f(Lcom/callapp/contacts/model/objectbox/CallRecorder;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 616
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 618
    invoke-virtual {v0, p0}, Lio/objectbox/a;->b(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private g()V
    .locals 4

    .line 221
    const-class v0, Lcom/callapp/contacts/recorder/CallRecorderManager;

    iget-object v1, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->b:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->isCallWaiting()Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->b:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->isIncoming()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->eI:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->eJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1261
    invoke-virtual {p0, v3, v2}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(ILcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting service (TALKING - Incoming call) - Number="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->b:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 226
    :cond_0
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->eI:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->eK:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2261
    invoke-virtual {p0, v3, v2}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(ILcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting service (TALKING - Outgoing call) - Number="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->b:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static get()Lcom/callapp/contacts/recorder/CallRecorderManager;
    .locals 1

    .line 117
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getRecordManager()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v0

    return-object v0
.end method

.method private h()Z
    .locals 2

    .line 311
    iget-boolean v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->d:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eI:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->c:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    sget-object v1, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->RECORDING:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->c:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    sget-object v1, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->PRE_RECORD:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    if-ne v0, v1, :cond_0

    .line 313
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isRecorderOn()Z
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->c:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    sget-object v1, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->RECORDING:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->c:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    sget-object v1, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->PRE_RECORD:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 215
    invoke-virtual {p0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->b:Lcom/callapp/contacts/model/call/CallData;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->g()V

    :cond_0
    return-void
.end method

.method public final a(ILcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V
    .locals 6

    .line 265
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.callapp.contacts.ACTION_CALL_RECORDING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    new-instance v1, Landroid/content/ComponentName;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const-class v3, Lcom/callapp/contacts/service/CallAppService;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->b:Lcom/callapp/contacts/model/call/CallData;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 267
    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v5, "EXTRA_RECORDER_IS_INCOMING"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->b:Lcom/callapp/contacts/model/call/CallData;

    if-eqz v2, :cond_1

    .line 268
    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/callapp/framework/phone/Phone;->b:Lcom/callapp/framework/phone/Phone;

    :goto_1
    const-string v5, "EXTRA_RECORDER_PHONE_NUMBER"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_RECORDER_COMMAND_TYPE"

    .line 269
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_RECORDING_TEST_DATA"

    .line 270
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_2

    .line 280
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-static {p1, v0, v3}, Lcom/callapp/contacts/service/CallAppService;->a(Landroid/content/Context;Landroid/content/Intent;Z)V

    :goto_2
    return-void

    .line 276
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-static {p1, v0, v4}, Lcom/callapp/contacts/service/CallAppService;->a(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 5

    .line 186
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->values()[Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    move-result-object v0

    const-string v1, "RECORDER_STATE"

    sget-object v2, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->IDLE:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->ordinal()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->c:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    const-string v0, "CallRecorderManager"

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyRecordStateChanged, recorderEnabled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->c:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->f:Ljava/util/Set;

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 190
    iget-object v1, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/recorder/interfaces/CallRecorderEvent;

    .line 191
    sget-object v3, Lcom/callapp/contacts/recorder/CallRecorderManager$6;->a:[I

    iget-object v4, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->c:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    invoke-virtual {v4}, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    invoke-interface {v2, p1}, Lcom/callapp/contacts/recorder/interfaces/CallRecorderEvent;->onRecorderStopped(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const-string v3, "RECORDER_DATA"

    .line 202
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    iput-object v3, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->a:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    .line 203
    invoke-interface {v2, p1}, Lcom/callapp/contacts/recorder/interfaces/CallRecorderEvent;->onRecordFileReady(Landroid/os/Bundle;)V

    goto :goto_0

    .line 199
    :cond_2
    invoke-interface {v2, p1}, Lcom/callapp/contacts/recorder/interfaces/CallRecorderEvent;->onError(Landroid/os/Bundle;)V

    goto :goto_0

    .line 196
    :cond_3
    invoke-interface {v2, p1}, Lcom/callapp/contacts/recorder/interfaces/CallRecorderEvent;->onPreRecord(Landroid/os/Bundle;)V

    goto :goto_0

    .line 193
    :cond_4
    invoke-interface {v2, p1}, Lcom/callapp/contacts/recorder/interfaces/CallRecorderEvent;->onRecorderStarted(Landroid/os/Bundle;)V

    goto :goto_0

    .line 211
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/callapp/contacts/model/call/CallData;I)V
    .locals 1

    .line 242
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eH:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->d:Z

    .line 243
    invoke-virtual {p0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->isEnableMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 245
    iget-object p2, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->b:Lcom/callapp/contacts/model/call/CallData;

    if-nez p2, :cond_1

    .line 246
    iput-object p1, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->b:Lcom/callapp/contacts/model/call/CallData;

    .line 247
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->isIncoming()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/callapp/contacts/recorder/CallRecorderManager;->b(Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 249
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/model/call/CallState;->isTalking()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a()V

    return-void

    .line 252
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->isIncoming()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/recorder/CallRecorderManager;->setPreRecorderState(Z)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/callapp/contacts/model/objectbox/CallRecorder;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 472
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/recorder/CallRecorderManager$3;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/recorder/CallRecorderManager$3;-><init>(Lcom/callapp/contacts/recorder/CallRecorderManager;Lcom/callapp/contacts/model/objectbox/CallRecorder;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/recorder/interfaces/CallRecorderEvent;Z)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->f:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->f()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 167
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/util/List;Lcom/callapp/contacts/action/ActionDoneListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/CallRecorder;",
            ">;",
            "Lcom/callapp/contacts/action/ActionDoneListener;",
            ")V"
        }
    .end annotation

    .line 490
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/recorder/CallRecorderManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/recorder/CallRecorderManager$4;-><init>(Lcom/callapp/contacts/recorder/CallRecorderManager;Ljava/util/List;Lcom/callapp/contacts/action/ActionDoneListener;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/model/objectbox/CallRecorder;Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 2

    .line 423
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getStarred()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 425
    new-instance v1, Lcom/callapp/contacts/recorder/CallRecorderManager$1;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/callapp/contacts/recorder/CallRecorderManager$1;-><init>(Lcom/callapp/contacts/recorder/CallRecorderManager;Lcom/callapp/contacts/model/objectbox/CallRecorder;ZLcom/callapp/contacts/model/contact/ContactData;)V

    .line 438
    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/CallRecorderManager$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return v0
.end method

.method public final a(Z)Z
    .locals 5

    .line 322
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->c()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 329
    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eH:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 335
    :cond_2
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eI:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 336
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->eJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 337
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->eK:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    if-eqz v3, :cond_3

    return v1

    :cond_3
    if-nez p1, :cond_4

    if-eqz v4, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public final b(Lcom/callapp/contacts/model/objectbox/CallRecorder;)J
    .locals 7

    .line 521
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 523
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->eS:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 524
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->CONF_1000:Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->ordinal()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 525
    sget-object v1, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->CONF_200:Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->ordinal()I

    move-result v1

    .line 527
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->values()[Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->getValue()I

    move-result v1

    .line 529
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/model/objectbox/CallRecorder_;->starred:Lio/objectbox/g;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Z)Lio/objectbox/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v2

    invoke-virtual {v2}, Lio/objectbox/query/Query;->e()J

    move-result-wide v2

    int-to-long v5, v1

    cmp-long v1, v2, v5

    if-ltz v1, :cond_1

    .line 3623
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {v1, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v1

    .line 3625
    invoke-virtual {v1}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/CallRecorder_;->starred:Lio/objectbox/g;

    invoke-virtual {v1, v2, v4}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;Z)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/CallRecorder_;->date:Lio/objectbox/g;

    .line 4272
    invoke-virtual {v1, v2, v4}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    .line 3625
    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/Query;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    if-eqz v1, :cond_1

    .line 3627
    invoke-static {v1}, Lcom/callapp/contacts/recorder/CallRecorderManager;->f(Lcom/callapp/contacts/model/objectbox/CallRecorder;)V

    .line 3628
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/callapp/contacts/util/IoUtils;->b(Ljava/io/File;)Z

    .line 534
    :cond_1
    invoke-virtual {v0, p1}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->b:Lcom/callapp/contacts/model/call/CallData;

    if-eqz v0, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->isRecorderOn()Z

    move-result v0

    const/4 v1, 0x0

    .line 3261
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(ILcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V

    const/4 v0, 0x1

    .line 297
    iput-boolean v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->d:Z

    :cond_0
    return-void
.end method

.method public final b(Lcom/callapp/contacts/recorder/interfaces/CallRecorderEvent;Z)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->f:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 178
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->f()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 178
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Z)Z
    .locals 5

    .line 377
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eH:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 383
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eI:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 384
    :goto_0
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->eJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 385
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->eK:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    if-eqz v3, :cond_2

    return v2

    :cond_2
    if-nez p1, :cond_3

    if-eqz v4, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public final c()Z
    .locals 2

    .line 402
    invoke-virtual {p0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->isTermsAccepted()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public getAllRecords()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/CallRecorder;",
            ">;"
        }
    .end annotation

    .line 577
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 579
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/CallRecorder_;->callType:Lio/objectbox/g;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->b(Lio/objectbox/g;J)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/objectbox/CallRecorder_;->date:Lio/objectbox/g;

    const/4 v2, 0x1

    .line 6283
    invoke-virtual {v0, v1, v2}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object v0

    .line 579
    invoke-virtual {v0}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v0

    .line 580
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    .line 581
    invoke-static {v2}, Lcom/callapp/contacts/recorder/CallRecorderManager;->e(Lcom/callapp/contacts/model/objectbox/CallRecorder;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public isEnableMode()Z
    .locals 5

    .line 354
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->c()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 362
    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eI:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->d:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 363
    :cond_3
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 364
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->eK:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 365
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->eH:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v2, :cond_5

    if-nez v0, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    return v1

    :cond_5
    return v4
.end method

.method public isRecording()Z
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->c:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    sget-object v1, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->RECORDING:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTermsAccepted()Z
    .locals 1

    .line 406
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eL:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setPreRecorderState(Z)V
    .locals 0

    .line 152
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/recorder/CallRecorderManager;->b(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->PRE_RECORD:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->IDLE:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    :goto_0
    iput-object p1, p0, Lcom/callapp/contacts/recorder/CallRecorderManager;->c:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    .line 153
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->f()V

    return-void
.end method

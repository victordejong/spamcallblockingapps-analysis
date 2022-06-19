.class public final Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;,
        Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleImageObject;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard<",
        "Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;",
        "Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleImageObject;",
        ">;",
        "Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\r\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u001a\u0012\n\u0012\u0008\u0018\u00010\u0002R\u00020\u0000\u0012\n\u0012\u0008\u0018\u00010\u0003R\u00020\u00000\u00012\u00020\u0004:\u0002OPB\u0015\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0006\u0010)\u001a\u00020*J\n\u0010+\u001a\u0004\u0018\u00010,H\u0016J\u0010\u0010-\u001a\n\u0012\u0004\u0012\u00020/\u0018\u00010.H\u0016J\u0008\u00100\u001a\u00020\u0008H\u0016J\u0016\u00101\u001a\u00020*2\u000c\u00102\u001a\u0008\u0018\u00010\u0002R\u00020\u0000H\u0014J\"\u00103\u001a\u00020*2\u0008\u00104\u001a\u0004\u0018\u0001052\u000e\u00106\u001a\n\u0012\u0004\u0012\u00020/\u0018\u00010.H\u0016J\u0018\u00107\u001a\u0008\u0018\u00010\u0002R\u00020\u00002\u0008\u00108\u001a\u0004\u0018\u000109H\u0014J\u0008\u0010:\u001a\u00020*H\u0016J\u001e\u0010;\u001a\u00020*2\u0014\u0010<\u001a\u0010\u0012\u0004\u0012\u00020>\u0012\u0004\u0012\u00020?\u0018\u00010=H\u0016J\u001e\u0010@\u001a\u00020*2\u0014\u0010A\u001a\u0010\u0012\u0004\u0012\u00020>\u0012\u0004\u0012\u00020B\u0018\u00010=H\u0016J\u0012\u0010C\u001a\u00020*2\u0008\u0010D\u001a\u0004\u0018\u00010EH\u0016J\u0012\u0010F\u001a\u00020*2\u0008\u0010G\u001a\u0004\u0018\u00010HH\u0016J\u0008\u0010I\u001a\u00020*H\u0016J\u0008\u0010J\u001a\u00020$H\u0016J\u001e\u0010K\u001a\u00020*2\u000c\u0010L\u001a\u0008\u0018\u00010\u0003R\u00020\u00002\u0006\u0010M\u001a\u00020$H\u0014J\u0012\u0010N\u001a\u00020*2\u0008\u0010D\u001a\u0004\u0018\u00010EH\u0002R\u001e\u0010\n\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001e\u0010 \u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\u0008!\u0010\u000c\"\u0004\u0008\"\u0010\u000eR\u001a\u0010#\u001a\u00020$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;",
        "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;",
        "Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;",
        "Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleImageObject;",
        "Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;",
        "presentersContainer",
        "Lcom/callapp/contacts/activity/contact/details/PresentersContainer;",
        "cardPriority",
        "",
        "(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V",
        "cardImage",
        "getCardImage",
        "()Ljava/lang/Integer;",
        "setCardImage",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getCardPriority",
        "()I",
        "setCardPriority",
        "(I)V",
        "cardTitle",
        "",
        "getCardTitle",
        "()Ljava/lang/CharSequence;",
        "setCardTitle",
        "(Ljava/lang/CharSequence;)V",
        "eventBus",
        "Lcom/callapp/contacts/event/bus/EventBus;",
        "getEventBus",
        "()Lcom/callapp/contacts/event/bus/EventBus;",
        "setEventBus",
        "(Lcom/callapp/contacts/event/bus/EventBus;)V",
        "marginBottom",
        "getMarginBottom",
        "setMarginBottom",
        "showButtons",
        "",
        "getShowButtons",
        "()Z",
        "setShowButtons",
        "(Z)V",
        "contactUsByMail",
        "",
        "getHeaderTitle",
        "",
        "getListenFields",
        "",
        "Lcom/callapp/contacts/model/contact/ContactField;",
        "getPriority",
        "onBindViewHolder",
        "cardViewHolder",
        "onContactChanged",
        "contact",
        "Lcom/callapp/contacts/model/contact/ContactData;",
        "changedFields",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "onDestroy",
        "onRecorderTestChanged",
        "recorderTestData",
        "Lkotlin/Pair;",
        "",
        "Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;",
        "onRecorderTestProgressChanged",
        "testProgressCounter",
        "",
        "onRecorderTestStatusChanged",
        "testStatus",
        "Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;",
        "setBackground",
        "cardView",
        "Landroidx/cardview/widget/CardView;",
        "setElevation",
        "showShouldExpandButton",
        "updateCardData",
        "data",
        "forceRefresh",
        "updateData",
        "TitleDescriptionImageViewHolder",
        "TitleImageObject",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private cardImage:Ljava/lang/Integer;

.field private cardPriority:I

.field private cardTitle:Ljava/lang/CharSequence;

.field private eventBus:Lcom/callapp/contacts/event/bus/EventBus;

.field private marginBottom:Ljava/lang/Integer;

.field private showButtons:Z


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V
    .locals 1

    const-string v0, "presentersContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0d0250

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    iput p2, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->cardPriority:I

    .line 39
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    const-string p2, "presentersContainer.eventBus"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    .line 48
    sget-object p2, Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;->c:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p1, p2, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 50
    sget-object p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->getCurrentTestStatus()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->updateData(Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;)V

    return-void
.end method

.method private final updateData(Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;)V
    .locals 4

    if-eqz p1, :cond_5

    .line 170
    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$WhenMappings;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x7f12059d

    const v1, 0x7f0805ad

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gM:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    const-string v0, "Prefs.recorderTestFinished"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->isNotNull()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f12059c

    .line 191
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->cardTitle:Ljava/lang/CharSequence;

    .line 192
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->cardImage:Ljava/lang/Integer;

    .line 193
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->showCard(Z)V

    :cond_1
    :goto_0
    return-void

    .line 184
    :cond_2
    iput-boolean v2, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->showButtons:Z

    .line 185
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->cardTitle:Ljava/lang/CharSequence;

    .line 186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->cardImage:Ljava/lang/Integer;

    .line 187
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->showCard(Z)V

    return-void

    .line 172
    :cond_3
    sget-object p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f120596

    .line 173
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->cardTitle:Ljava/lang/CharSequence;

    const p1, 0x7f0800b8

    .line 174
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->cardImage:Ljava/lang/Integer;

    goto :goto_1

    .line 176
    :cond_4
    iput-boolean v2, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->showButtons:Z

    .line 177
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->cardTitle:Ljava/lang/CharSequence;

    .line 178
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->cardImage:Ljava/lang/Integer;

    .line 181
    :goto_1
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->showCard(Z)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final contactUsByMail()V
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 210
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Prefs.isPremium.get()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f120335

    goto :goto_0

    :cond_0
    const v2, 0x7f120334

    :goto_0
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f120337

    new-array v0, v0, [Ljava/lang/Object;

    .line 211
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    const-string v5, "CallAppApplication.get()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/callapp/contacts/CallAppApplication;->getVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f120336

    .line 212
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 216
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/callapp/contacts/util/IoUtils;->getCacheFolder()Ljava/io/File;

    move-result-object v6

    const-string v7, "callapp_device_info.txt"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 218
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getDeviceDataString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V

    .line 220
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/callapp/contacts/CallAppApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v8, "CallAppApplication.get().applicationContext"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".fileprovider"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v4}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 222
    const-class v5, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    move-object v6, v4

    check-cast v6, Ljava/lang/Throwable;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unable to write file: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 224
    :goto_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-static {v4, v1, v0, v2, v3}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public final getCardImage()Ljava/lang/Integer;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->cardImage:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCardPriority()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->cardPriority:I

    return v0
.end method

.method public final getCardTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->cardTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getEventBus()Lcom/callapp/contacts/event/bus/EventBus;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    return-object v0
.end method

.method public final getHeaderTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 92
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NONE:Ljava/util/EnumSet;

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final getMarginBottom()Ljava/lang/Integer;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->marginBottom:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->cardPriority:I

    return v0
.end method

.method public final getShowButtons()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->showButtons:Z

    return v0
.end method

.method protected final onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;)V
    .locals 9

    if-eqz p1, :cond_9

    .line 113
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->showButtons:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;->getNothingWorksButtonsContainer()Landroid/view/View;

    move-result-object v0

    const-string v2, "nothingWorksButtonsContainer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    sget-object v0, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->a:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion;

    .line 116
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;->getCenterBottom()Landroid/widget/TextView;

    move-result-object v2

    const v0, 0x7f060088

    .line 117
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v3, 0x7f060244

    .line 118
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 119
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 121
    new-instance v8, Landroid/text/SpannableString;

    const v0, 0x7f1205a1

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {v8, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const v0, 0x7f08058d

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 115
    invoke-static/range {v2 .. v8}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion;->a(Landroid/widget/TextView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/text/SpannableString;)V

    .line 126
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;->getCenterBottom()Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$onBindViewHolder$$inlined$apply$lambda$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$onBindViewHolder$$inlined$apply$lambda$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->cardTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;->getCardTitleTextView()Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0601ec

    .line 137
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->cardImage:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 144
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;->getCardImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 145
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->marginBottom:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 151
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;->getTitleImageFrame()Landroid/view/View;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v5, 0x0

    if-nez v4, :cond_3

    move-object v3, v5

    :cond_3
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_4

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 229
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v6, :cond_5

    move-object v4, v5

    :cond_5
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_6

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    .line 230
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v7, :cond_7

    goto :goto_2

    :cond_7
    move-object v5, v6

    :goto_2
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_8

    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 153
    :cond_8
    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 158
    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    return-void
.end method

.method public final bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;)V

    return-void
.end method

.method public final onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected final onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;
    .locals 1

    if-eqz p1, :cond_0

    .line 107
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;

    check-cast p1, Landroid/view/View;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;-><init>(Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;Landroid/view/View;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleDescriptionImageViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    .line 79
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->onDestroy()V

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    .line 81
    sget-object v1, Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;->c:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    return-void
.end method

.method public final onRecorderTestChanged(Lkotlin/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/n<",
            "Ljava/lang/Long;",
            "+",
            "Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final onRecorderTestProgressChanged(Lkotlin/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/n<",
            "Ljava/lang/Long;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final onRecorderTestStatusChanged(Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->updateData(Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;)V

    return-void
.end method

.method public final setBackground(Landroidx/cardview/widget/CardView;)V
    .locals 0

    return-void
.end method

.method public final setCardImage(Ljava/lang/Integer;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->cardImage:Ljava/lang/Integer;

    return-void
.end method

.method public final setCardPriority(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->cardPriority:I

    return-void
.end method

.method public final setCardTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->cardTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setElevation()V
    .locals 0

    return-void
.end method

.method public final setEventBus(Lcom/callapp/contacts/event/bus/EventBus;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    return-void
.end method

.method public final setMarginBottom(Ljava/lang/Integer;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->marginBottom:Ljava/lang/Integer;

    return-void
.end method

.method public final setShowButtons(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->showButtons:Z

    return-void
.end method

.method public final showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final updateCardData(Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleImageObject;Z)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 36
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleImageObject;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard;->updateCardData(Lcom/callapp/contacts/activity/contact/cards/RecorderTestHintCard$TitleImageObject;Z)V

    return-void
.end method

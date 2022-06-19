.class public final Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;
.implements Lcom/callapp/contacts/event/listener/PauseListener;
.implements Lcom/callapp/contacts/event/listener/ResumeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;,
        Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardObject;,
        Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard<",
        "Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;",
        "Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardObject;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;",
        "Lcom/callapp/contacts/event/listener/PauseListener;",
        "Lcom/callapp/contacts/event/listener/ResumeListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00a2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u0000 P2\u001a\u0012\n\u0012\u0008\u0018\u00010\u0002R\u00020\u0000\u0012\n\u0012\u0008\u0018\u00010\u0003R\u00020\u00000\u00012\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u0007:\u0003PQRB\u0015\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010%\u001a\u00020&H\u0016J\u0010\u0010\'\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010(H\u0016J\u0008\u0010*\u001a\u00020\u001eH\u0016J\u0008\u0010+\u001a\u00020\u001eH\u0016J\u0010\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/H\u0002J\u0016\u00100\u001a\u00020-2\u000c\u00101\u001a\u0008\u0018\u00010\u0002R\u00020\u0000H\u0014J\u0010\u00102\u001a\u00020-2\u0006\u00103\u001a\u000204H\u0016J\"\u00105\u001a\u00020-2\u0008\u00106\u001a\u0004\u0018\u0001072\u000e\u00108\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010(H\u0016J\u0018\u00109\u001a\u0008\u0018\u00010\u0002R\u00020\u00002\u0008\u0010:\u001a\u0004\u0018\u00010;H\u0014J\u0008\u0010<\u001a\u00020-H\u0016J\u0008\u0010=\u001a\u00020-H\u0016J\u001c\u0010>\u001a\u00020-2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u00020@0?H\u0016J\u001c\u0010A\u001a\u00020-2\u0012\u0010B\u001a\u000e\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u00020\u000e0?H\u0016J\u0012\u0010C\u001a\u00020-2\u0008\u0010D\u001a\u0004\u0018\u00010EH\u0016J\u0008\u0010F\u001a\u00020-H\u0016J\u0006\u0010G\u001a\u00020-J\u0016\u0010H\u001a\u00020-2\u000c\u00101\u001a\u0008\u0018\u00010\u0002R\u00020\u0000H\u0002J\u0016\u0010I\u001a\u00020-2\u000c\u00101\u001a\u0008\u0018\u00010\u0002R\u00020\u0000H\u0002J\u0016\u0010J\u001a\u00020-2\u000c\u00101\u001a\u0008\u0018\u00010\u0002R\u00020\u0000H\u0002J\u0008\u0010K\u001a\u00020LH\u0016J\u001e\u0010M\u001a\u00020-2\u000c\u0010N\u001a\u0008\u0018\u00010\u0003R\u00020\u00002\u0006\u0010O\u001a\u00020LH\u0014R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006S"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;",
        "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;",
        "Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;",
        "Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardObject;",
        "Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;",
        "Lcom/callapp/contacts/event/listener/PauseListener;",
        "Lcom/callapp/contacts/event/listener/ResumeListener;",
        "Landroid/view/View$OnClickListener;",
        "presentersContainer",
        "Lcom/callapp/contacts/activity/contact/details/PresentersContainer;",
        "recorderTestData",
        "Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;",
        "(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V",
        "currentTestProgress",
        "",
        "getCurrentTestProgress",
        "()F",
        "setCurrentTestProgress",
        "(F)V",
        "eventBus",
        "Lcom/callapp/contacts/event/bus/EventBus;",
        "getEventBus",
        "()Lcom/callapp/contacts/event/bus/EventBus;",
        "setEventBus",
        "(Lcom/callapp/contacts/event/bus/EventBus;)V",
        "getRecorderTestData",
        "()Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;",
        "setRecorderTestData",
        "(Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V",
        "salt",
        "",
        "seekBarManager",
        "Lcom/callapp/contacts/recorder/SeekBarManager;",
        "getSeekBarManager",
        "()Lcom/callapp/contacts/recorder/SeekBarManager;",
        "setSeekBarManager",
        "(Lcom/callapp/contacts/recorder/SeekBarManager;)V",
        "getHeaderTitle",
        "",
        "getListenFields",
        "",
        "Lcom/callapp/contacts/model/contact/ContactField;",
        "getPriority",
        "getSalt",
        "onApplyClicked",
        "",
        "recorderTestId",
        "",
        "onBindViewHolder",
        "cardViewHolder",
        "onClick",
        "v",
        "Landroid/view/View;",
        "onContactChanged",
        "contact",
        "Lcom/callapp/contacts/model/contact/ContactData;",
        "changedFields",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "onDestroy",
        "onPause",
        "onRecorderTestChanged",
        "Lkotlin/Pair;",
        "Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;",
        "onRecorderTestProgressChanged",
        "testProgressCounter",
        "onRecorderTestStatusChanged",
        "testStatus",
        "Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;",
        "onResume",
        "setCardBackgroundColor",
        "setSeekBarColor",
        "showFinishedView",
        "showProgressView",
        "showShouldExpandButton",
        "",
        "updateCardData",
        "data",
        "forceRefresh",
        "Companion",
        "RecorderTestCardObject",
        "RecorderTestCardViewHolder",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$Companion;

.field private static final saltCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private currentTestProgress:F

.field private eventBus:Lcom/callapp/contacts/event/bus/EventBus;

.field private recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

.field private salt:I

.field private seekBarManager:Lcom/callapp/contacts/recorder/SeekBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->Companion:Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$Companion;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->saltCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V
    .locals 1

    const-string v0, "presentersContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recorderTestData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0d024d

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    .line 51
    sget-object p2, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->saltCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    iput p2, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->salt:I

    .line 54
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    const-string p2, "presentersContainer.getEventBus()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    .line 56
    sget-object p2, Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p1, p2, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 57
    sget-object p2, Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p1, p2, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 58
    sget-object p2, Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;->c:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p1, p2, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 59
    sget-object p2, Lcom/callapp/contacts/event/listener/PauseListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p1, p2, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 60
    sget-object p2, Lcom/callapp/contacts/event/listener/ResumeListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p1, p2, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getSaltCounter$cp()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 40
    sget-object v0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->saltCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private final onApplyClicked(J)V
    .locals 40

    move-object/from16 v0, p0

    .line 248
    new-instance v2, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-object v1, v2

    invoke-direct {v2}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;-><init>()V

    .line 249
    new-instance v3, Landroid/text/SpannableString;

    move-object v2, v3

    const v4, 0x7f1200d2

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const v19, 0x7f060244

    .line 250
    invoke-static/range {v19 .. v19}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f08058d

    .line 251
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v23, v4

    const/4 v5, 0x2

    .line 252
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v25, 0x7f060088

    .line 253
    invoke-static/range {v25 .. v25}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 256
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v7

    const-string v15, "CallAppApplication.get()"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v14, 0x7f07035a

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 257
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v7

    invoke-static {v7, v15}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v13, 0x7f070359

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 260
    invoke-static/range {v25 .. v25}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 261
    sget-object v8, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$onApplyClicked$dialogMessageWithTopImageNew$1;->a:Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$onApplyClicked$dialogMessageWithTopImageNew$1;

    move-object v9, v8

    check-cast v9, Landroid/view/View$OnClickListener;

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v18, 0x32

    move/from16 v13, v18

    const/16 v18, 0x0

    move/from16 v14, v18

    const/16 v18, 0xf

    move-object/from16 v39, v15

    move/from16 v15, v18

    const/16 v18, 0x6a40

    .line 249
    invoke-static/range {v1 .. v18}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;Landroid/text/SpannableString;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Landroid/view/View$OnClickListener;ZLjava/lang/Integer;ZIIILjava/lang/Integer;Ljava/lang/Integer;I)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-result-object v20

    .line 263
    new-instance v1, Landroid/text/SpannableString;

    move-object/from16 v21, v1

    const v2, 0x7f1200af

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 264
    invoke-static/range {v25 .. v25}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/4 v1, 0x0

    .line 267
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    .line 268
    invoke-static/range {v25 .. v25}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .line 270
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    move-object/from16 v3, v39

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07035a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    .line 271
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070359

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    .line 274
    invoke-static/range {v19 .. v19}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    .line 275
    new-instance v2, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$onApplyClicked$dialogMessageWithTopImageNew$2;

    move-wide/from16 v3, p1

    invoke-direct {v2, v0, v3, v4}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$onApplyClicked$dialogMessageWithTopImageNew$2;-><init>(Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;J)V

    move-object/from16 v28, v2

    check-cast v28, Landroid/view/View$OnClickListener;

    const/16 v27, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x0

    const/16 v33, 0x32

    const/16 v34, 0xf

    const/16 v35, 0x0

    const v38, 0xaa40

    .line 263
    invoke-static/range {v20 .. v38}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;Landroid/text/SpannableString;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Landroid/view/View$OnClickListener;ZLjava/lang/Integer;ZZIIILjava/lang/Integer;Ljava/lang/Integer;I)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-result-object v2

    const/16 v3, 0x46

    const/16 v4, 0x46

    const/16 v5, 0x1e

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const/16 v8, 0x43

    .line 279
    invoke-static/range {v2 .. v8}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;IIIIZI)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-result-object v9

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 280
    iget-object v3, v0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {v3}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getTestPriority()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const v1, 0x7f12058c

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/CharSequence;

    const v1, 0x7f0601ec

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x0

    const/16 v14, 0xf4

    invoke-static/range {v9 .. v14}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;Ljava/lang/CharSequence;Ljava/lang/Integer;ZII)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-result-object v2

    const v3, 0x7f12058b

    .line 281
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v1, v4}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;Ljava/lang/CharSequence;Ljava/lang/Integer;I)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a()Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;

    move-result-object v1

    .line 284
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v1, Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {v2, v3, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method private final setSeekBarColor(Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 199
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->getCurrentTestStatus()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$WhenMappings;->b:[I

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const v0, 0x7f06010f

    .line 203
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7f060088

    .line 201
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    .line 205
    :goto_0
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->getRecorderTestPlayButton()Landroid/widget/ImageView;

    move-result-object v1

    const-string v2, "recorderTestPlayButton"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    check-cast v2, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 206
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->getDeleteRecordTestConfiguration()Landroid/widget/ImageView;

    move-result-object v1

    const-string v2, "deleteRecordTestConfiguration"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    check-cast v2, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 207
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->getPlayerSeekBar()Landroidx/appcompat/widget/AppCompatSeekBar;

    move-result-object v1

    const-string v2, "playerSeekBar"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v3, "playerSeekBar.progressDrawable"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    check-cast v3, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 208
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->getPlayerSeekBar()Landroidx/appcompat/widget/AppCompatSeekBar;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v2, "playerSeekBar.thumb"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    check-cast v2, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 210
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getTestStatus()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->APPLIED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    if-ne v1, v2, :cond_1

    const v1, 0x7f080363

    goto :goto_1

    :cond_1
    const v1, 0x7f080362

    .line 215
    :goto_1
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->getApplyRecordTestConfiguration()Landroid/widget/ImageView;

    move-result-object p1

    .line 216
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v1, "this"

    .line 217
    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    return-void
.end method

.method private final showFinishedView(Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->getProgressRecorderCard()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 243
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->getDoneRecorderCard()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private final showProgressView(Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 237
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->getProgressRecorderCard()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 238
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->getDoneRecorderCard()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getCurrentTestProgress()F
    .locals 1

    .line 49
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->currentTestProgress:F

    return v0
.end method

.method public final getEventBus()Lcom/callapp/contacts/event/bus/EventBus;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    return-object v0
.end method

.method public final getHeaderTitle()Ljava/lang/String;
    .locals 2

    const v0, 0x7f120598

    .line 308
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getTestPriority()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    .line 304
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NONE:Ljava/util/EnumSet;

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getTestPriority()I

    move-result v0

    return v0
.end method

.method public final getRecorderTestData()Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    return-object v0
.end method

.method public final getSalt()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->salt:I

    return v0
.end method

.method public final getSeekBarManager()Lcom/callapp/contacts/recorder/SeekBarManager;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->seekBarManager:Lcom/callapp/contacts/recorder/SeekBarManager;

    return-object v0
.end method

.method protected final onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;)V
    .locals 5

    if-eqz p1, :cond_a

    .line 143
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getTestStatus()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$WhenMappings;->a:[I

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    const v3, 0x7f060088

    if-eq v0, v1, :cond_0

    .line 173
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->showProgressView(Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;)V

    .line 174
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->getRecorderTestProgressBar()Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 175
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgressColor(I)V

    const v1, 0x7f0600f3

    .line 176
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgressBackgroundColor(I)V

    .line 177
    invoke-virtual {v0}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->disableAnimation()V

    .line 178
    invoke-virtual {v0, v2}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgress(F)V

    goto :goto_1

    .line 164
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->getRecorderTestProgressBar()Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {v0}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->enableAnimation()V

    .line 166
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgressColor(I)V

    .line 167
    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->currentTestProgress:F

    invoke-virtual {v0, v1}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgress(F)V

    .line 169
    :cond_1
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->showProgressView(Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;)V

    goto :goto_1

    .line 152
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->getRecorderTestProgressBar()Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 153
    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->currentTestProgress:F

    const v3, 0x7f06001b

    cmpg-float v1, v1, v2

    if-nez v1, :cond_3

    .line 154
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgressBackgroundColor(I)V

    goto :goto_0

    .line 156
    :cond_3
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgressColor(I)V

    .line 158
    :goto_0
    invoke-virtual {v0}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->disableAnimation()V

    .line 159
    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->currentTestProgress:F

    invoke-virtual {v0, v1}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgress(F)V

    .line 161
    :cond_4
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->showProgressView(Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;)V

    goto :goto_1

    .line 145
    :cond_5
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->showFinishedView(Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;)V

    .line 146
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;->b(J)Lcom/callapp/contacts/model/objectbox/CallRecorder;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 148
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->seekBarManager:Lcom/callapp/contacts/recorder/SeekBarManager;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/recorder/SeekBarManager;->a(Lcom/callapp/contacts/model/objectbox/CallRecorder;)V

    .line 185
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->getApplyRecordTestConfiguration()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object v1, p0

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    :cond_7
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->getDeleteRecordTestConfiguration()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_8

    move-object v1, p0

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    :cond_8
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->getRecorderTestPlayButton()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_9

    move-object v1, p0

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    :cond_9
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;->getRecordTestTime()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "recordTestTime"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getRecordTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f12063a

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->setSeekBarColor(Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;)V

    .line 193
    :cond_a
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->setCardBackgroundColor()V

    return-void
.end method

.method public final bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->isClickValid(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 346
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a00e5

    if-eq p1, v0, :cond_4

    const v0, 0x7f0a02f4

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0731

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->seekBarManager:Lcom/callapp/contacts/recorder/SeekBarManager;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/SeekBarManager;->b()V

    return-void

    .line 352
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->seekBarManager:Lcom/callapp/contacts/recorder/SeekBarManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/SeekBarManager;->a()V

    .line 353
    :cond_2
    sget-object p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getId()J

    move-result-wide v0

    .line 2082
    invoke-static {v0, v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;->a(J)Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2084
    sget-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->DELETED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->setTestStatus(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;)V

    .line 2085
    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a()Lio/objectbox/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/objectbox/a;->a(Ljava/lang/Object;)J

    .line 354
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->hideCard()V

    return-void

    .line 349
    :cond_4
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->onApplyClicked(J)V

    :cond_5
    :goto_0
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

.method protected final onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;
    .locals 1

    if-eqz p1, :cond_0

    .line 137
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;

    check-cast p1, Landroid/view/View;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;-><init>(Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;Landroid/view/View;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    .line 288
    invoke-super {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;->onDestroy()V

    .line 289
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    .line 290
    sget-object v1, Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 291
    sget-object v1, Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 292
    sget-object v1, Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;->c:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 293
    sget-object v1, Lcom/callapp/contacts/event/listener/PauseListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 294
    sget-object v1, Lcom/callapp/contacts/event/listener/ResumeListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->seekBarManager:Lcom/callapp/contacts/recorder/SeekBarManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/SeekBarManager;->a()V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->seekBarManager:Lcom/callapp/contacts/recorder/SeekBarManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/SeekBarManager;->d()V

    :cond_0
    return-void
.end method

.method public final onRecorderTestChanged(Lkotlin/n;)V
    .locals 5
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

    const-string v0, "recorderTestData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1027
    iget-object v0, p1, Lkotlin/n;->a:Ljava/lang/Object;

    .line 312
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 313
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    .line 1028
    iget-object p1, p1, Lkotlin/n;->b:Ljava/lang/Object;

    .line 313
    check-cast p1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->setTestStatus(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;)V

    .line 314
    sget-object p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isRecorderTestRunning()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getTestStatus()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->FAILED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    if-ne p1, v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->hideCard()V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 317
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->showCard(Z)V

    :cond_1
    return-void
.end method

.method public final onRecorderTestProgressChanged(Lkotlin/n;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/n<",
            "Ljava/lang/Long;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "testProgressCounter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2027
    iget-object v0, p1, Lkotlin/n;->a:Ljava/lang/Object;

    .line 329
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {v2}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2028
    iget-object p1, p1, Lkotlin/n;->b:Ljava/lang/Object;

    .line 330
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->currentTestProgress:F

    const/4 p1, 0x1

    .line 331
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->showCard(Z)V

    :cond_0
    return-void
.end method

.method public final onRecorderTestStatusChanged(Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;)V
    .locals 1

    .line 323
    sget-object p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isRecorderTestRunning()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getTestStatus()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->FAILED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    if-ne p1, v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->hideCard()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->seekBarManager:Lcom/callapp/contacts/recorder/SeekBarManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2230
    iput-boolean v1, v0, Lcom/callapp/contacts/recorder/SeekBarManager;->b:Z

    :cond_0
    return-void
.end method

.method public final setCardBackgroundColor()V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;->getTestStatus()Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->APPLIED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    const-string v2, "null cannot be cast to non-null type androidx.cardview.widget.CardView"

    if-ne v0, v1, :cond_1

    .line 224
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f060055

    .line 225
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0601bf

    .line 227
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    .line 224
    :goto_0
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->setCardBgColor(I)V

    .line 229
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->getCardView()Lit/gmariotti/cardslib/library/view/a/a;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroidx/cardview/widget/CardView;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->setBackground(Landroidx/cardview/widget/CardView;)V

    return-void

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->setCardBackground()V

    .line 232
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->getCardView()Lit/gmariotti/cardslib/library/view/a/a;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroidx/cardview/widget/CardView;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->setBackground(Landroidx/cardview/widget/CardView;)V

    return-void
.end method

.method public final setCurrentTestProgress(F)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->currentTestProgress:F

    return-void
.end method

.method public final setEventBus(Lcom/callapp/contacts/event/bus/EventBus;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    return-void
.end method

.method public final setRecorderTestData(Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->recorderTestData:Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    return-void
.end method

.method public final setSeekBarManager(Lcom/callapp/contacts/recorder/SeekBarManager;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->seekBarManager:Lcom/callapp/contacts/recorder/SeekBarManager;

    return-void
.end method

.method public final showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final updateCardData(Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardObject;Z)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 40
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardObject;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->updateCardData(Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$RecorderTestCardObject;Z)V

    return-void
.end method

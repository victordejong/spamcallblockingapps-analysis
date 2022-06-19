.class public interface abstract Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/callapp/contacts/event/bus/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/bus/EventType<",
            "Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;",
            "Lkotlin/n<",
            "Ljava/lang/Long;",
            "Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final b:Lcom/callapp/contacts/event/bus/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/bus/EventType<",
            "Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;",
            "Lkotlin/n<",
            "Ljava/lang/Long;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final c:Lcom/callapp/contacts/event/bus/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/event/bus/EventType<",
            "Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;",
            "Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    sget-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$CWsjKF3R2zvwUMrFUYrz1FBMcDU;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$CWsjKF3R2zvwUMrFUYrz1FBMcDU;

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    .line 15
    sget-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$za8RZzoEt7CeLbfTw84YvXIEGFs;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$za8RZzoEt7CeLbfTw84YvXIEGFs;

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    .line 18
    sget-object v0, Lcom/callapp/contacts/activity/interfaces/-$$Lambda$fHS8wNYwxfGUOOrQQ2vBdKoKuUY;->INSTANCE:Lcom/callapp/contacts/activity/interfaces/-$$Lambda$fHS8wNYwxfGUOOrQQ2vBdKoKuUY;

    sput-object v0, Lcom/callapp/contacts/activity/interfaces/RecorderTestChangedListener;->c:Lcom/callapp/contacts/event/bus/EventType;

    return-void
.end method


# virtual methods
.method public abstract onRecorderTestChanged(Lkotlin/n;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/n<",
            "Ljava/lang/Long;",
            "Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRecorderTestProgressChanged(Lkotlin/n;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/n<",
            "Ljava/lang/Long;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRecorderTestStatusChanged(Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;)V
.end method

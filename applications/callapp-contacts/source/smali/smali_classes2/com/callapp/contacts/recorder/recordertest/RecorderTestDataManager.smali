.class public final Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;",
        "",
        "()V",
        "Companion",
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
.field public static final a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;

.field private static final b:Lio/objectbox/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/a<",
            "Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;

    .line 14
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-string v1, "CallAppApplication.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->b:Lio/objectbox/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lio/objectbox/a;
    .locals 1

    .line 11
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->b:Lio/objectbox/a;

    return-object v0
.end method

.method public static final getAllDoneRecorderTests()J
    .locals 2

    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;->getAllDoneRecorderTests()J

    move-result-wide v0

    return-wide v0
.end method

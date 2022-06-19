.class public final enum Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecorderTestManagerStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;",
        "",
        "(Ljava/lang/String;I)V",
        "IDLE",
        "STARTED",
        "STOPPED",
        "RUNNING",
        "FINISHED",
        "APPLIED",
        "EMPTY",
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
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

.field public static final enum APPLIED:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

.field public static final enum EMPTY:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

.field public static final enum FINISHED:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

.field public static final enum IDLE:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

.field public static final enum RUNNING:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

.field public static final enum STARTED:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

.field public static final enum STOPPED:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    const-string v2, "IDLE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->IDLE:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    const-string v2, "STARTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->STARTED:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    const-string v2, "STOPPED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->STOPPED:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    const-string v2, "RUNNING"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->RUNNING:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    const-string v2, "FINISHED"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->FINISHED:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    const-string v2, "APPLIED"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->APPLIED:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    const-string v2, "EMPTY"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->EMPTY:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->$VALUES:[Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;
    .locals 1

    const-class v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;
    .locals 1

    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->$VALUES:[Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    invoke-virtual {v0}, [Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;

    return-object v0
.end method

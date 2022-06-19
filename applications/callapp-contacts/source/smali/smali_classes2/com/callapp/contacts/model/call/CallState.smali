.class public final enum Lcom/callapp/contacts/model/call/CallState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/model/call/CallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/model/call/CallState;

.field public static final enum CONNECTING:Lcom/callapp/contacts/model/call/CallState;

.field public static final enum DISCONNECTED:Lcom/callapp/contacts/model/call/CallState;

.field public static final enum NO_CALLS:Lcom/callapp/contacts/model/call/CallState;

.field public static final enum ON_CONFERENCE:Lcom/callapp/contacts/model/call/CallState;

.field public static final enum ON_HOLD:Lcom/callapp/contacts/model/call/CallState;

.field public static final enum POST_CALL:Lcom/callapp/contacts/model/call/CallState;

.field public static final enum PRE_CALL:Lcom/callapp/contacts/model/call/CallState;

.field public static final enum RINGING_INCOMING:Lcom/callapp/contacts/model/call/CallState;

.field public static final enum RINGING_OUTGOING:Lcom/callapp/contacts/model/call/CallState;

.field public static final enum TALKING:Lcom/callapp/contacts/model/call/CallState;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 4
    new-instance v0, Lcom/callapp/contacts/model/call/CallState;

    const-string v1, "NO_CALLS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/model/call/CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/model/call/CallState;->NO_CALLS:Lcom/callapp/contacts/model/call/CallState;

    .line 5
    new-instance v1, Lcom/callapp/contacts/model/call/CallState;

    const-string v3, "RINGING_INCOMING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/model/call/CallState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/model/call/CallState;->RINGING_INCOMING:Lcom/callapp/contacts/model/call/CallState;

    .line 6
    new-instance v3, Lcom/callapp/contacts/model/call/CallState;

    const-string v5, "RINGING_OUTGOING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/model/call/CallState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/model/call/CallState;->RINGING_OUTGOING:Lcom/callapp/contacts/model/call/CallState;

    .line 7
    new-instance v5, Lcom/callapp/contacts/model/call/CallState;

    const-string v7, "TALKING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/callapp/contacts/model/call/CallState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/callapp/contacts/model/call/CallState;->TALKING:Lcom/callapp/contacts/model/call/CallState;

    .line 8
    new-instance v7, Lcom/callapp/contacts/model/call/CallState;

    const-string v9, "ON_HOLD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/callapp/contacts/model/call/CallState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/callapp/contacts/model/call/CallState;->ON_HOLD:Lcom/callapp/contacts/model/call/CallState;

    .line 9
    new-instance v9, Lcom/callapp/contacts/model/call/CallState;

    const-string v11, "ON_CONFERENCE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/callapp/contacts/model/call/CallState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/callapp/contacts/model/call/CallState;->ON_CONFERENCE:Lcom/callapp/contacts/model/call/CallState;

    .line 10
    new-instance v11, Lcom/callapp/contacts/model/call/CallState;

    const-string v13, "CONNECTING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/callapp/contacts/model/call/CallState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/callapp/contacts/model/call/CallState;->CONNECTING:Lcom/callapp/contacts/model/call/CallState;

    .line 11
    new-instance v13, Lcom/callapp/contacts/model/call/CallState;

    const-string v15, "DISCONNECTED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/callapp/contacts/model/call/CallState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/callapp/contacts/model/call/CallState;->DISCONNECTED:Lcom/callapp/contacts/model/call/CallState;

    .line 12
    new-instance v15, Lcom/callapp/contacts/model/call/CallState;

    const-string v14, "PRE_CALL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/callapp/contacts/model/call/CallState;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/callapp/contacts/model/call/CallState;->PRE_CALL:Lcom/callapp/contacts/model/call/CallState;

    .line 13
    new-instance v14, Lcom/callapp/contacts/model/call/CallState;

    const-string v12, "POST_CALL"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/callapp/contacts/model/call/CallState;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/callapp/contacts/model/call/CallState;->POST_CALL:Lcom/callapp/contacts/model/call/CallState;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/callapp/contacts/model/call/CallState;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 3
    sput-object v12, Lcom/callapp/contacts/model/call/CallState;->$VALUES:[Lcom/callapp/contacts/model/call/CallState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/model/call/CallState;
    .locals 1

    .line 3
    const-class v0, Lcom/callapp/contacts/model/call/CallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/call/CallState;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/model/call/CallState;
    .locals 1

    .line 3
    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->$VALUES:[Lcom/callapp/contacts/model/call/CallState;

    invoke-virtual {v0}, [Lcom/callapp/contacts/model/call/CallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/model/call/CallState;

    return-object v0
.end method


# virtual methods
.method public final isConnectingOrConnected()Z
    .locals 1

    .line 56
    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->TALKING:Lcom/callapp/contacts/model/call/CallState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->RINGING_OUTGOING:Lcom/callapp/contacts/model/call/CallState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->RINGING_INCOMING:Lcom/callapp/contacts/model/call/CallState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isConnectingOrOutgoing()Z
    .locals 1

    .line 36
    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->CONNECTING:Lcom/callapp/contacts/model/call/CallState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->RINGING_OUTGOING:Lcom/callapp/contacts/model/call/CallState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isDisconnected()Z
    .locals 1

    .line 28
    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->DISCONNECTED:Lcom/callapp/contacts/model/call/CallState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isIdle()Z
    .locals 1

    .line 44
    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->PRE_CALL:Lcom/callapp/contacts/model/call/CallState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->POST_CALL:Lcom/callapp/contacts/model/call/CallState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->DISCONNECTED:Lcom/callapp/contacts/model/call/CallState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isIncoming()Z
    .locals 1

    .line 20
    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->RINGING_INCOMING:Lcom/callapp/contacts/model/call/CallState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isOnHold()Z
    .locals 1

    .line 32
    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->ON_HOLD:Lcom/callapp/contacts/model/call/CallState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isOutgoing()Z
    .locals 1

    .line 16
    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->RINGING_OUTGOING:Lcom/callapp/contacts/model/call/CallState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isPostCall()Z
    .locals 1

    .line 48
    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->POST_CALL:Lcom/callapp/contacts/model/call/CallState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isPreCall()Z
    .locals 1

    .line 52
    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->PRE_CALL:Lcom/callapp/contacts/model/call/CallState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isRinging()Z
    .locals 1

    .line 40
    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->RINGING_INCOMING:Lcom/callapp/contacts/model/call/CallState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->RINGING_OUTGOING:Lcom/callapp/contacts/model/call/CallState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isTalking()Z
    .locals 1

    .line 24
    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->TALKING:Lcom/callapp/contacts/model/call/CallState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

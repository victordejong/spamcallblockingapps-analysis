.class public final enum Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

.field public static final enum IDLE:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

.field public static final enum INSTALLED:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

.field public static final enum PENDING:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;


# instance fields
.field private final status:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 92
    new-instance v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    const-string v3, "Idle"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;->IDLE:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    .line 93
    new-instance v1, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    const-string v3, "PENDING"

    const/4 v4, 0x1

    const-string v5, "Pending"

    invoke-direct {v1, v3, v4, v4, v5}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;->PENDING:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    .line 94
    new-instance v3, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    const-string v5, "INSTALLED"

    const/4 v6, 0x2

    const-string v7, "Installed"

    invoke-direct {v3, v5, v6, v6, v7}, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;->INSTALLED:Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 91
    sput-object v5, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;->$VALUES:[Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput-object p4, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;->status:Ljava/lang/String;

    .line 101
    iput p3, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;->value:I

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;)I
    .locals 0

    .line 91
    iget p0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;
    .locals 1

    .line 91
    const-class v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;
    .locals 1

    .line 91
    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;->$VALUES:[Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    invoke-virtual {v0}, [Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    return-object v0
.end method


# virtual methods
.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;->value:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "STATUS{status=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

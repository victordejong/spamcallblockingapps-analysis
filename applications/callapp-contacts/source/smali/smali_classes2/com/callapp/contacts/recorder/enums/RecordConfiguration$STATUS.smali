.class public final enum Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/recorder/enums/RecordConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

.field public static final enum APPLIED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

.field public static final enum DELETED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

.field public static final enum DONE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

.field public static final enum FAILED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

.field public static final enum IDLE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

.field public static final enum STARTED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

.field public static final enum STOPPED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;


# instance fields
.field private final status:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 56
    new-instance v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    const-string v3, "Idle"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->IDLE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    .line 57
    new-instance v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    const-string v3, "STARTED"

    const/4 v4, 0x1

    const-string v5, "Started"

    invoke-direct {v1, v3, v4, v4, v5}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->STARTED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    .line 58
    new-instance v3, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    const-string v5, "STOPPED"

    const/4 v6, 0x2

    const-string v7, "Stopped"

    invoke-direct {v3, v5, v6, v6, v7}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->STOPPED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    .line 59
    new-instance v5, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    const-string v7, "FAILED"

    const/4 v8, 0x3

    const-string v9, "Failed"

    invoke-direct {v5, v7, v8, v8, v9}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->FAILED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    .line 60
    new-instance v7, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    const-string v9, "DONE"

    const/4 v10, 0x4

    const-string v11, "Done"

    invoke-direct {v7, v9, v10, v10, v11}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->DONE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    .line 61
    new-instance v9, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    const-string v11, "APPLIED"

    const/4 v12, 0x5

    const-string v13, "Applied"

    invoke-direct {v9, v11, v12, v12, v13}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->APPLIED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    .line 62
    new-instance v11, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    const-string v13, "DELETED"

    const/4 v14, 0x6

    const-string v15, "Deleted"

    invoke-direct {v11, v13, v14, v14, v15}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->DELETED:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 55
    sput-object v13, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->$VALUES:[Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

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

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput-object p4, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->status:Ljava/lang/String;

    .line 69
    iput p3, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->value:I

    return-void
.end method

.method static synthetic access$300(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;
    .locals 1

    .line 55
    const-class v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;
    .locals 1

    .line 55
    sget-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->$VALUES:[Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    invoke-virtual {v0}, [Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;

    return-object v0
.end method


# virtual methods
.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->value:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "STATUS{status=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$STATUS;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

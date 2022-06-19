.class public final enum Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

.field public static final enum CONF_100:Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

.field public static final enum CONF_1000:Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

.field public static final enum CONF_200:Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

.field public static final enum CONF_50:Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 5
    new-instance v0, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    const-string v1, "CONF_50"

    const/4 v2, 0x0

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->CONF_50:Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    .line 6
    new-instance v1, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    const-string v3, "CONF_100"

    const/4 v4, 0x1

    const/16 v5, 0x64

    invoke-direct {v1, v3, v4, v5}, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->CONF_100:Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    .line 7
    new-instance v3, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    const-string v5, "CONF_200"

    const/4 v6, 0x2

    const/16 v7, 0xc8

    invoke-direct {v3, v5, v6, v7}, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->CONF_200:Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    .line 9
    new-instance v5, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    const-string v7, "CONF_1000"

    const/4 v8, 0x3

    const/16 v9, 0x3e8

    invoke-direct {v5, v7, v8, v9}, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->CONF_1000:Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 3
    sput-object v7, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->$VALUES:[Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;
    .locals 1

    .line 3
    const-class v0, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;
    .locals 1

    .line 3
    sget-object v0, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->$VALUES:[Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    invoke-virtual {v0}, [Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->value:I

    return v0
.end method

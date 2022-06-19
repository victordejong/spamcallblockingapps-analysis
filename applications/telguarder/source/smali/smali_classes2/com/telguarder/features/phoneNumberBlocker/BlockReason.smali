.class public final enum Lcom/telguarder/features/phoneNumberBlocker/BlockReason;
.super Ljava/lang/Enum;
.source "BlockReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telguarder/features/phoneNumberBlocker/BlockReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

.field public static final enum REASON_FRAUD:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

.field public static final enum REASON_OTHER:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

.field public static final enum REASON_POLL:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

.field public static final enum REASON_SURVEY:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

.field public static final enum REASON_TELEMARKETING:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 14
    new-instance v0, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    const-string v1, "REASON_TELEMARKETING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->REASON_TELEMARKETING:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    .line 15
    new-instance v1, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    const-string v3, "REASON_SURVEY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->REASON_SURVEY:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    .line 16
    new-instance v3, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    const-string v5, "REASON_POLL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->REASON_POLL:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    .line 17
    new-instance v5, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    const-string v7, "REASON_FRAUD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->REASON_FRAUD:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    .line 18
    new-instance v7, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    const-string v9, "REASON_OTHER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->REASON_OTHER:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 12
    sput-object v9, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->$VALUES:[Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getAllReasons()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/phoneNumberBlocker/BlockReason;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    sget-object v1, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->REASON_TELEMARKETING:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v1, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->REASON_SURVEY:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v1, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->REASON_POLL:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v1, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->REASON_FRAUD:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v1, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->REASON_OTHER:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static ofBackendKeyword(Ljava/lang/String;)Lcom/telguarder/features/phoneNumberBlocker/BlockReason;
    .locals 2

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "telemarketing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "other"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "fraud"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "poll"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "survey"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 51
    sget-object p0, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->REASON_OTHER:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    return-object p0

    .line 46
    :pswitch_0
    sget-object p0, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->REASON_TELEMARKETING:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    return-object p0

    .line 50
    :pswitch_1
    sget-object p0, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->REASON_OTHER:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    return-object p0

    .line 49
    :pswitch_2
    sget-object p0, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->REASON_FRAUD:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    return-object p0

    .line 48
    :pswitch_3
    sget-object p0, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->REASON_POLL:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    return-object p0

    .line 47
    :pswitch_4
    sget-object p0, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->REASON_SURVEY:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x351c58a6 -> :sswitch_4
        0x3497bf -> :sswitch_3
        0x5d2aa64 -> :sswitch_2
        0x6527f10 -> :sswitch_1
        0x164205bc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telguarder/features/phoneNumberBlocker/BlockReason;
    .locals 1

    .line 12
    const-class v0, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    return-object p0
.end method

.method public static values()[Lcom/telguarder/features/phoneNumberBlocker/BlockReason;
    .locals 1

    .line 12
    sget-object v0, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->$VALUES:[Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    invoke-virtual {v0}, [Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    return-object v0
.end method


# virtual methods
.method public backendKeyword()Ljava/lang/String;
    .locals 2

    .line 33
    sget-object v0, Lcom/telguarder/features/phoneNumberBlocker/BlockReason$1;->$SwitchMap$com$telguarder$features$phoneNumberBlocker$BlockReason:[I

    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "other"

    return-object v0

    :cond_0
    const-string v0, "fraud"

    return-object v0

    :cond_1
    const-string v0, "poll"

    return-object v0

    :cond_2
    const-string v0, "survey"

    return-object v0

    :cond_3
    const-string v0, "telemarketing"

    return-object v0
.end method

.method public displayableNameId()I
    .locals 2

    .line 57
    sget-object v0, Lcom/telguarder/features/phoneNumberBlocker/BlockReason$1;->$SwitchMap$com$telguarder$features$phoneNumberBlocker$BlockReason:[I

    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const v0, 0x7f1000d6

    return v0

    :cond_0
    const v0, 0x7f1000d4

    return v0

    :cond_1
    const v0, 0x7f1000d7

    return v0

    :cond_2
    const v0, 0x7f1000d8

    return v0

    :cond_3
    const v0, 0x7f1000d9

    return v0
.end method

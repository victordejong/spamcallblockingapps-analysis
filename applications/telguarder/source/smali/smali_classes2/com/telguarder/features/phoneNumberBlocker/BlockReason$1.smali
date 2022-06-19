.class synthetic Lcom/telguarder/features/phoneNumberBlocker/BlockReason$1;
.super Ljava/lang/Object;
.source "BlockReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/phoneNumberBlocker/BlockReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$telguarder$features$phoneNumberBlocker$BlockReason:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    invoke-static {}, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->values()[Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/telguarder/features/phoneNumberBlocker/BlockReason$1;->$SwitchMap$com$telguarder$features$phoneNumberBlocker$BlockReason:[I

    :try_start_0
    sget-object v1, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->REASON_TELEMARKETING:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    invoke-virtual {v1}, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/telguarder/features/phoneNumberBlocker/BlockReason$1;->$SwitchMap$com$telguarder$features$phoneNumberBlocker$BlockReason:[I

    sget-object v1, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->REASON_SURVEY:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    invoke-virtual {v1}, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/telguarder/features/phoneNumberBlocker/BlockReason$1;->$SwitchMap$com$telguarder$features$phoneNumberBlocker$BlockReason:[I

    sget-object v1, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->REASON_POLL:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    invoke-virtual {v1}, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/telguarder/features/phoneNumberBlocker/BlockReason$1;->$SwitchMap$com$telguarder$features$phoneNumberBlocker$BlockReason:[I

    sget-object v1, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->REASON_FRAUD:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    invoke-virtual {v1}, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/telguarder/features/phoneNumberBlocker/BlockReason$1;->$SwitchMap$com$telguarder$features$phoneNumberBlocker$BlockReason:[I

    sget-object v1, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->REASON_OTHER:Lcom/telguarder/features/phoneNumberBlocker/BlockReason;

    invoke-virtual {v1}, Lcom/telguarder/features/phoneNumberBlocker/BlockReason;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method

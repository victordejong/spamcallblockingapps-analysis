.class synthetic Lcom/telguarder/features/numberLookup/SearchManager$1;
.super Ljava/lang/Object;
.source "SearchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/numberLookup/SearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$telguarder$features$numberLookup$PhoneNumberLookupManager$CallType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    invoke-static {}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->values()[Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/telguarder/features/numberLookup/SearchManager$1;->$SwitchMap$com$telguarder$features$numberLookup$PhoneNumberLookupManager$CallType:[I

    :try_start_0
    sget-object v1, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->OUTGOING:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/telguarder/features/numberLookup/SearchManager$1;->$SwitchMap$com$telguarder$features$numberLookup$PhoneNumberLookupManager$CallType:[I

    sget-object v1, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->INCOMING:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/telguarder/features/numberLookup/SearchManager$1;->$SwitchMap$com$telguarder$features$numberLookup$PhoneNumberLookupManager$CallType:[I

    sget-object v1, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->BLOCKED:Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneNumberLookupManager$CallType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

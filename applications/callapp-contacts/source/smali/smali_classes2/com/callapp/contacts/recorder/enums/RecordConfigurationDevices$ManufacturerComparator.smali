.class Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ManufacturerComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ManufacturerComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final binarySearchIndices:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x80

    new-array v0, v0, [C

    .line 48
    fill-array-data v0, :array_0

    sput-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ManufacturerComparator;->binarySearchIndices:[C

    return-void

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
        0x1es
        0x1fs
        0x9s
        0xas
        0x20s
        0xbs
        0xcs
        0xds
        0xes
        0xfs
        0x10s
        0x11s
        0x12s
        0x13s
        0x14s
        0x15s
        0x16s
        0x17s
        0x18s
        0x19s
        0x1as
        0x1bs
        0x1cs
        0x21s
        0x27s
        0x2bs
        0x37s
        0x41s
        0x38s
        0x36s
        0x2as
        0x2cs
        0x2ds
        0x33s
        0x3bs
        0x24s
        0x23s
        0x29s
        0x34s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x26s
        0x25s
        0x3cs
        0x3ds
        0x3es
        0x28s
        0x32s
        0x4cs
        0x4es
        0x50s
        0x52s
        0x54s
        0x56s
        0x58s
        0x5as
        0x5cs
        0x5es
        0x60s
        0x62s
        0x64s
        0x66s
        0x68s
        0x6as
        0x6cs
        0x6es
        0x70s
        0x72s
        0x74s
        0x76s
        0x78s
        0x7as
        0x7cs
        0x7es
        0x2es
        0x35s
        0x2fs
        0x3as
        0x22s
        0x39s
        0x4ds
        0x4fs
        0x51s
        0x53s
        0x55s
        0x57s
        0x59s
        0x5bs
        0x5ds
        0x5fs
        0x61s
        0x63s
        0x65s
        0x67s
        0x69s
        0x6bs
        0x6ds
        0x6fs
        0x71s
        0x73s
        0x75s
        0x77s
        0x79s
        0x7bs
        0x7ds
        0x7fs
        0x30s
        0x3fs
        0x31s
        0x40s
        0x1ds
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$1;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ManufacturerComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 20
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ManufacturerComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 25
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 28
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 29
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_1

    .line 30
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    if-eq v6, v7, :cond_1

    .line 33
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 34
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    if-eq v4, v5, :cond_1

    .line 38
    sget-object p1, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ManufacturerComparator;->binarySearchIndices:[C

    array-length p2, p1

    if-ge v4, p2, :cond_0

    array-length p2, p1

    if-ge v5, p2, :cond_0

    .line 39
    aget-char p2, p1, v4

    aget-char p1, p1, v5

    sub-int/2addr p2, p1

    return p2

    :cond_0
    sub-int/2addr v4, v5

    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v0, v1

    return v0
.end method

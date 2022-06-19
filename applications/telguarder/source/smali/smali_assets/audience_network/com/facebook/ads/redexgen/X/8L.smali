.class public final Lcom/facebook/ads/redexgen/X/8L;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source ""


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/8K;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 17858
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8L;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8L;->A02()V

    const-class v0, Lcom/facebook/ads/redexgen/X/8L;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8L;->A03:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/8K;)V
    .locals 3

    .line 17859
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/8L;->A01(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x4

    invoke-direct {p0, p1, v2, v1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 17860
    if-eqz p2, :cond_0

    .line 17861
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/8L;->A00:Lcom/facebook/ads/redexgen/X/8K;

    .line 17862
    return-void

    .line 17863
    :cond_0
    const/16 v2, 0x29

    const/16 v1, 0x20

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8L;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/8L;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x43

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;
    .locals 8

    .line 17864
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8L;->A00(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    const/16 v2, 0x7e

    const/16 v1, 0x8

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8L;->A00(III)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 17865
    .local p0, "defaultDbName":Ljava/lang/String;
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A1e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17866
    return-object v1

    .line 17867
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Wl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 17868
    .local v6, "packageName":Ljava/lang/String;
    invoke-static {p0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 17869
    .local v2, "processName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17870
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x5f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v3, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 17871
    :cond_1
    return-object v1
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x86

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8L;->A01:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/8L;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x17

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/8L;->A02:[Ljava/lang/String;

    const-string v1, "z4ETzKVSWwABxmvmOp0bWtQm6ZVGd83i"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "IiBR5v01IEKLzmVqyabUzMw7zaZ4VOx3"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        -0x69t
        0x65t
        -0x77t
        -0x76t
        -0x75t
        -0x7at
        -0x66t
        -0x6ft
        -0x67t
        0x65t
        0x75t
        0x0t
        0xbt
        0x13t
        0x4t
        0x11t
        -0x21t
        0x13t
        0x0t
        0x1t
        0xbt
        0x4t
        -0x21t
        0x24t
        0x35t
        0x24t
        0x2dt
        0x33t
        0x32t
        -0x21t
        0x0t
        0x3t
        0x3t
        -0x21t
        0x2t
        0xet
        0xbt
        0x14t
        0xct
        0xdt
        -0x21t
        -0x7at
        -0x57t
        -0x77t
        -0x5at
        -0x47t
        -0x5at
        -0x59t
        -0x5at
        -0x48t
        -0x56t
        -0x73t
        -0x56t
        -0x4ft
        -0x4bt
        -0x56t
        -0x49t
        0x65t
        -0x58t
        -0x5at
        -0x4dt
        0x65t
        -0x4dt
        -0x4ct
        -0x47t
        0x65t
        -0x59t
        -0x56t
        0x65t
        -0x4dt
        -0x46t
        -0x4ft
        -0x4ft
        -0x10t
        -0x2t
        -0x5t
        -0x4t
        -0x34t
        0x0t
        -0x13t
        -0x12t
        -0x8t
        -0xft
        -0x34t
        -0xbt
        -0xet
        -0x34t
        -0xft
        0x4t
        -0xbt
        -0x1t
        0x0t
        -0x1t
        -0x34t
        0xft
        0x1et
        0xdt
        0x1ft
        0x14t
        0x11t
        0x1ft
        -0xat
        -0x8t
        -0x19t
        -0x13t
        -0xdt
        -0x19t
        -0x3at
        0xct
        0x15t
        0x18t
        0xbt
        0xft
        0xdt
        0x14t
        0x5t
        0x11t
        0xbt
        0x1ft
        0x19t
        -0x3at
        -0x1dt
        -0x3at
        -0xbt
        -0xct
        -0x1ft
        -0x33t
        -0x30t
        -0x21t
        -0x6ft
        -0x21t
        -0x66t
        -0x30t
        -0x32t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "XfAyR2vU0BibGbkW5sl"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "72EQRqCB7z"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "pQj0Q1BmcNSJNmsLpeVJ6qN75i73IOus"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "lsxje2C6xdGld5UPkxYO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "GgAbEVzt1AOENmbxI3KXH96Z5ccDQ2lY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3OXRqiMUeM1s"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WQkJsHQStWfxe"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "yOid3ecrxpkgxviYKYk6NUThnYl"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8L;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 17872
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8L;->A00:Lcom/facebook/ads/redexgen/X/8K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8K;->A0N()[Lcom/facebook/ads/redexgen/X/8O;

    move-result-object v3

    .line 17873
    .local p0, "tables":[Lcom/facebook/ads/redexgen/X/8O;
    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, v3, v1

    .line 17874
    .local v3, "table":Lcom/facebook/ads/redexgen/X/8O;
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/8O;->A06(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 17875
    .end local v3    # "table":Lcom/facebook/ads/redexgen/X/8O;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17876
    :cond_0
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    .line 17877
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8L;->A00:Lcom/facebook/ads/redexgen/X/8K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8K;->A0N()[Lcom/facebook/ads/redexgen/X/8O;

    move-result-object v3

    .line 17878
    .local p0, "tables":[Lcom/facebook/ads/redexgen/X/8O;
    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, v3, v1

    .line 17879
    .local p3, "table":Lcom/facebook/ads/redexgen/X/8O;
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/8O;->A07(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 17880
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/8O;->A06(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 17881
    .end local p3    # "table":Lcom/facebook/ads/redexgen/X/8O;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17882
    :cond_0
    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 17883
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 17884
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17885
    const/16 v2, 0x65

    const/16 v1, 0x19

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8L;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 17886
    :cond_0
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

    .line 17887
    const/4 v3, 0x3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    if-lt p3, v3, :cond_0

    .line 17888
    const/16 v2, 0x49

    const/16 v1, 0x1c

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8L;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 17889
    :cond_0
    if-gt p2, v3, :cond_1

    const/4 v0, 0x4

    if-lt p3, v0, :cond_1

    .line 17890
    sget-object v4, Lcom/facebook/ads/redexgen/X/Wk;->A02:Lcom/facebook/ads/redexgen/X/8I;

    .line 17891
    .local p0, "attemptColumn":Lcom/facebook/ads/redexgen/X/8I;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb

    const/16 v1, 0x1e

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8L;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/8I;->A01:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8L;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/8I;->A02:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/16 v1, 0xa

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8L;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 17892
    .end local p0    # "attemptColumn":Lcom/facebook/ads/redexgen/X/8I;
    :cond_1
    return-void
.end method

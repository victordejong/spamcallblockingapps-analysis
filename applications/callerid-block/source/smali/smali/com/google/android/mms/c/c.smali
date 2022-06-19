.class public Lcom/google/android/mms/c/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:[I

.field private static final b:[Ljava/lang/String;

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/mms/c/c;->a:[I

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "*"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "us-ascii"

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const/4 v2, 0x2

    const-string v5, "iso-8859-1"

    aput-object v5, v0, v2

    const/4 v2, 0x3

    const-string v5, "iso-8859-2"

    aput-object v5, v0, v2

    const/4 v2, 0x4

    const-string v5, "iso-8859-3"

    aput-object v5, v0, v2

    const/4 v2, 0x5

    const-string v5, "iso-8859-4"

    aput-object v5, v0, v2

    const/4 v2, 0x6

    const-string v5, "iso-8859-5"

    aput-object v5, v0, v2

    const/4 v2, 0x7

    const-string v5, "iso-8859-6"

    aput-object v5, v0, v2

    const/16 v2, 0x8

    const-string v5, "iso-8859-7"

    aput-object v5, v0, v2

    const/16 v2, 0x9

    const-string v5, "iso-8859-8"

    aput-object v5, v0, v2

    const/16 v2, 0xa

    const-string v5, "iso-8859-9"

    aput-object v5, v0, v2

    const/16 v2, 0xb

    const-string v5, "shift_JIS"

    aput-object v5, v0, v2

    const/16 v2, 0xc

    const-string v5, "utf-8"

    aput-object v5, v0, v2

    const/16 v2, 0xd

    const-string v5, "big5"

    aput-object v5, v0, v2

    const/16 v2, 0xe

    const-string v5, "iso-10646-ucs-2"

    aput-object v5, v0, v2

    const/16 v2, 0xf

    const-string v5, "utf-16"

    aput-object v5, v0, v2

    sput-object v0, Lcom/google/android/mms/c/c;->b:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/c/c;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/c/c;->d:Ljava/util/HashMap;

    array-length v0, v1

    sub-int/2addr v0, v4

    :goto_0
    if-gt v3, v0, :cond_0

    sget-object v1, Lcom/google/android/mms/c/c;->c:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/mms/c/c;->a:[I

    aget v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/google/android/mms/c/c;->b:[Ljava/lang/String;

    aget-object v6, v5, v3

    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/mms/c/c;->d:Ljava/util/HashMap;

    aget-object v4, v5, v3

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0x11
        0x6a
        0x7ea
        0x3e8
        0x3f7
    .end array-data
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    sget-object v0, Lcom/google/android/mms/c/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {p0}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw p0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/mms/c/c;->c:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {p0}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw p0
.end method

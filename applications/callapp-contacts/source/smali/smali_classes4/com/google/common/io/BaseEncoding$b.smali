.class final Lcom/google/common/io/BaseEncoding$b;
.super Lcom/google/common/io/BaseEncoding$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:[C


# direct methods
.method private constructor <init>(Lcom/google/common/io/BaseEncoding$a;)V
    .locals 5

    const/4 v0, 0x0

    .line 897
    invoke-direct {p0, p1, v0}, Lcom/google/common/io/BaseEncoding$d;-><init>(Lcom/google/common/io/BaseEncoding$a;Ljava/lang/Character;)V

    const/16 v0, 0x200

    new-array v0, v0, [C

    .line 890
    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$b;->a:[C

    .line 1420
    iget-object v0, p1, Lcom/google/common/io/BaseEncoding$a;->a:[C

    .line 898
    array-length v0, v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->a(Z)V

    :goto_1
    const/16 v0, 0x100

    if-ge v1, v0, :cond_1

    .line 900
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$b;->a:[C

    ushr-int/lit8 v2, v1, 0x4

    .line 1472
    iget-object v3, p1, Lcom/google/common/io/BaseEncoding$a;->a:[C

    aget-char v2, v3, v2

    .line 900
    aput-char v2, v0, v1

    .line 901
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$b;->a:[C

    or-int/lit16 v2, v1, 0x100

    and-int/lit8 v3, v1, 0xf

    .line 2472
    iget-object v4, p1, Lcom/google/common/io/BaseEncoding$a;->a:[C

    aget-char v3, v4, v3

    .line 901
    aput-char v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 893
    new-instance v0, Lcom/google/common/io/BaseEncoding$a;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/common/io/BaseEncoding$a;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0}, Lcom/google/common/io/BaseEncoding$b;-><init>(Lcom/google/common/io/BaseEncoding$a;)V

    return-void
.end method


# virtual methods
.method final a([BLjava/lang/CharSequence;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/BaseEncoding$DecodingException;
        }
    .end annotation

    .line 918
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 923
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 924
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$b;->b:Lcom/google/common/io/BaseEncoding$a;

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/io/BaseEncoding$a;->a(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$b;->b:Lcom/google/common/io/BaseEncoding$a;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/common/io/BaseEncoding$a;->a(C)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    .line 925
    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x2

    move v1, v3

    goto :goto_0

    :cond_0
    return v1

    .line 920
    :cond_1
    new-instance p1, Lcom/google/common/io/BaseEncoding$DecodingException;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/16 v0, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid input length "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final a(Lcom/google/common/io/BaseEncoding$a;)Lcom/google/common/io/BaseEncoding;
    .locals 1

    .line 932
    new-instance v0, Lcom/google/common/io/BaseEncoding$b;

    invoke-direct {v0, p1}, Lcom/google/common/io/BaseEncoding$b;-><init>(Lcom/google/common/io/BaseEncoding$a;)V

    return-object v0
.end method

.method final a(Ljava/lang/Appendable;[BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 907
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p4, 0x0

    .line 908
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {v1, p3, v0}, Lcom/google/common/base/m;->a(III)V

    :goto_0
    if-ge v1, p4, :cond_0

    add-int/lit8 p3, v1, 0x0

    .line 910
    aget-byte p3, p2, p3

    and-int/lit16 p3, p3, 0xff

    .line 911
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$b;->a:[C

    aget-char v0, v0, p3

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 912
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$b;->a:[C

    or-int/lit16 p3, p3, 0x100

    aget-char p3, v0, p3

    invoke-interface {p1, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

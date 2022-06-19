.class final Lcom/google/common/collect/ap;
.super Lcom/google/common/collect/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ap$b;,
        Lcom/google/common/collect/ap$c;,
        Lcom/google/common/collect/ap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/x<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final b:Lcom/google/common/collect/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/x<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient c:[Ljava/lang/Object;

.field private final transient d:Ljava/lang/Object;

.field private final transient e:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    new-instance v0, Lcom/google/common/collect/ap;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/common/collect/ap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/common/collect/ap;->b:Lcom/google/common/collect/x;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0

    .line 192
    invoke-direct {p0}, Lcom/google/common/collect/x;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/google/common/collect/ap;->d:Ljava/lang/Object;

    .line 194
    iput-object p2, p0, Lcom/google/common/collect/ap;->c:[Ljava/lang/Object;

    .line 195
    iput p3, p0, Lcom/google/common/collect/ap;->e:I

    return-void
.end method

.method static a(I[Ljava/lang/Object;)Lcom/google/common/collect/ap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/ap<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 74
    sget-object p0, Lcom/google/common/collect/ap;->b:Lcom/google/common/collect/x;

    check-cast p0, Lcom/google/common/collect/ap;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    .line 76
    aget-object p0, p1, v1

    aget-object v1, p1, v2

    invoke-static {p0, v1}, Lcom/google/common/collect/i;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    new-instance p0, Lcom/google/common/collect/ap;

    invoke-direct {p0, v0, p1, v2}, Lcom/google/common/collect/ap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object p0

    .line 79
    :cond_1
    array-length v3, p1

    shr-int/2addr v3, v2

    invoke-static {p0, v3}, Lcom/google/common/base/m;->b(II)I

    .line 80
    invoke-static {p0}, Lcom/google/common/collect/z;->a(I)I

    move-result v3

    if-ne p0, v2, :cond_2

    .line 1093
    aget-object v1, p1, v1

    aget-object v2, p1, v2

    invoke-static {v1, v2}, Lcom/google/common/collect/i;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_2
    add-int/lit8 v0, v3, -0x1

    const/16 v2, 0x80

    const/4 v4, -0x1

    if-gt v3, v2, :cond_6

    .line 1105
    new-array v2, v3, [B

    .line 1106
    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([BB)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p0, :cond_5

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v1

    .line 1110
    aget-object v5, p1, v4

    xor-int/lit8 v6, v4, 0x1

    .line 1111
    aget-object v6, p1, v6

    .line 1112
    invoke-static {v5, v6}, Lcom/google/common/collect/i;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1113
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Lcom/google/common/collect/s;->a(I)I

    move-result v7

    :goto_1
    and-int/2addr v7, v0

    .line 1115
    aget-byte v8, v2, v7

    const/16 v9, 0xff

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_3

    int-to-byte v4, v4

    .line 1117
    aput-byte v4, v2, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1119
    :cond_3
    aget-object v9, p1, v8

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1120
    :cond_4
    invoke-static {v5, v6, p1, v8}, Lcom/google/common/collect/ap;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_5
    move-object v0, v2

    goto/16 :goto_6

    :cond_6
    const v2, 0x8000

    if-gt v3, v2, :cond_9

    .line 1132
    new-array v2, v3, [S

    .line 1133
    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([SS)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, p0, :cond_5

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v1

    .line 1137
    aget-object v5, p1, v4

    xor-int/lit8 v6, v4, 0x1

    .line 1138
    aget-object v6, p1, v6

    .line 1139
    invoke-static {v5, v6}, Lcom/google/common/collect/i;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1140
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Lcom/google/common/collect/s;->a(I)I

    move-result v7

    :goto_3
    and-int/2addr v7, v0

    .line 1142
    aget-short v8, v2, v7

    const v9, 0xffff

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_7

    int-to-short v4, v4

    .line 1144
    aput-short v4, v2, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1146
    :cond_7
    aget-object v9, p1, v8

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1147
    :cond_8
    invoke-static {v5, v6, p1, v8}, Lcom/google/common/collect/ap;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 1156
    :cond_9
    new-array v2, v3, [I

    .line 1157
    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    const/4 v3, 0x0

    :goto_4
    if-ge v3, p0, :cond_5

    mul-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v1

    .line 1161
    aget-object v6, p1, v5

    xor-int/lit8 v7, v5, 0x1

    .line 1162
    aget-object v7, p1, v7

    .line 1163
    invoke-static {v6, v7}, Lcom/google/common/collect/i;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1164
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Lcom/google/common/collect/s;->a(I)I

    move-result v8

    :goto_5
    and-int/2addr v8, v0

    .line 1166
    aget v9, v2, v8

    if-ne v9, v4, :cond_a

    .line 1168
    aput v5, v2, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1170
    :cond_a
    aget-object v10, p1, v9

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1171
    :cond_b
    invoke-static {v6, v7, p1, v9}, Lcom/google/common/collect/ap;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 82
    :goto_6
    new-instance v1, Lcom/google/common/collect/ap;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/common/collect/ap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v1
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;
    .locals 3

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aget-object v1, p2, p3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    xor-int/lit8 p3, p3, 0x1

    aget-object p2, p2, p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x27

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p3, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p3, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Multiple entries with same key: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method final d()Lcom/google/common/collect/z;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/z<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 266
    new-instance v0, Lcom/google/common/collect/ap$a;

    iget-object v1, p0, Lcom/google/common/collect/ap;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/ap;->e:I

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/google/common/collect/ap$a;-><init>(Lcom/google/common/collect/x;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method final f()Lcom/google/common/collect/z;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/z<",
            "TK;>;"
        }
    .end annotation

    .line 342
    new-instance v0, Lcom/google/common/collect/ap$c;

    iget-object v1, p0, Lcom/google/common/collect/ap;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/ap;->e:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/collect/ap$c;-><init>([Ljava/lang/Object;II)V

    .line 344
    new-instance v1, Lcom/google/common/collect/ap$b;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ap$b;-><init>(Lcom/google/common/collect/x;Lcom/google/common/collect/v;)V

    return-object v1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/google/common/collect/ap;->d:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/ap;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/ap;->e:I

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    const/4 v0, 0x0

    .line 1219
    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1220
    aget-object p1, v1, v4

    return-object p1

    :cond_1
    return-object v3

    :cond_2
    if-nez v0, :cond_3

    return-object v3

    .line 1225
    :cond_3
    instance-of v2, v0, [B

    if-eqz v2, :cond_6

    .line 1226
    move-object v2, v0

    check-cast v2, [B

    .line 1227
    array-length v0, v2

    add-int/lit8 v5, v0, -0x1

    .line 1228
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/s;->a(I)I

    move-result v0

    :goto_0
    and-int/2addr v0, v5

    .line 1230
    aget-byte v6, v2, v0

    const/16 v7, 0xff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_4

    return-object v3

    .line 1233
    :cond_4
    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    xor-int/lit8 p1, v6, 0x1

    .line 1234
    aget-object p1, v1, p1

    return-object p1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1237
    :cond_6
    instance-of v2, v0, [S

    if-eqz v2, :cond_9

    .line 1238
    move-object v2, v0

    check-cast v2, [S

    .line 1239
    array-length v0, v2

    add-int/lit8 v5, v0, -0x1

    .line 1240
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/s;->a(I)I

    move-result v0

    :goto_1
    and-int/2addr v0, v5

    .line 1242
    aget-short v6, v2, v0

    const v7, 0xffff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_7

    return-object v3

    .line 1245
    :cond_7
    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    xor-int/lit8 p1, v6, 0x1

    .line 1246
    aget-object p1, v1, p1

    return-object p1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1250
    :cond_9
    check-cast v0, [I

    .line 1251
    array-length v2, v0

    sub-int/2addr v2, v4

    .line 1252
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lcom/google/common/collect/s;->a(I)I

    move-result v5

    :goto_2
    and-int/2addr v5, v2

    .line 1254
    aget v6, v0, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_a

    return-object v3

    .line 1257
    :cond_a
    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    xor-int/lit8 p1, v6, 0x1

    .line 1258
    aget-object p1, v1, p1

    return-object p1

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method final h()Lcom/google/common/collect/t;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/t<",
            "TV;>;"
        }
    .end annotation

    .line 418
    new-instance v0, Lcom/google/common/collect/ap$c;

    iget-object v1, p0, Lcom/google/common/collect/ap;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/ap;->e:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/collect/ap$c;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/google/common/collect/ap;->e:I

    return v0
.end method

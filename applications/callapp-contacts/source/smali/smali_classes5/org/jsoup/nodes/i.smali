.class public final Lorg/jsoup/nodes/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/i$b;,
        Lorg/jsoup/nodes/i$a;
    }
.end annotation


# static fields
.field private static final a:[C

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lorg/jsoup/nodes/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 25
    fill-array-data v0, :array_0

    sput-object v0, Lorg/jsoup/nodes/i;->a:[C

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jsoup/nodes/i;->b:Ljava/util/HashMap;

    .line 27
    new-instance v0, Lorg/jsoup/nodes/f$a;

    invoke-direct {v0}, Lorg/jsoup/nodes/f$a;-><init>()V

    sput-object v0, Lorg/jsoup/nodes/i;->c:Lorg/jsoup/nodes/f$a;

    return-void

    nop

    :array_0
    .array-data 2
        0x2cs
        0x3bs
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;[I)I
    .locals 3

    .line 117
    sget-object v0, Lorg/jsoup/nodes/i;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    aput p0, p1, v2

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    aput p0, p1, v1

    const/4 p0, 0x2

    return p0

    .line 123
    :cond_0
    sget-object v0, Lorg/jsoup/nodes/i$b;->extended:Lorg/jsoup/nodes/i$b;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/i$b;->codepointForName(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 125
    aput p0, p1, v2

    return v1

    :cond_1
    return v2
.end method

.method static a(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/f$a;ZZZ)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    .line 1413
    iget-object v2, v1, Lorg/jsoup/nodes/f$a;->a:Lorg/jsoup/nodes/i$b;

    .line 1468
    iget-object v3, v1, Lorg/jsoup/nodes/f$a;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/charset/CharsetEncoder;

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1469
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/jsoup/nodes/f$a;->a()Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    .line 169
    :goto_0
    iget v1, v1, Lorg/jsoup/nodes/f$a;->d:I

    .line 170
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v6, v4, :cond_15

    move-object/from16 v9, p1

    .line 174
    invoke-virtual {v9, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    const/4 v11, 0x1

    if-eqz p4, :cond_3

    .line 177
    invoke-static {v10}, Lorg/jsoup/b/c;->b(I)Z

    move-result v12

    if-eqz v12, :cond_2

    if-eqz p5, :cond_1

    if-eqz v7, :cond_14

    :cond_1
    if-nez v8, :cond_14

    const/16 v8, 0x20

    .line 180
    invoke-interface {p0, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 v8, 0x1

    goto/16 :goto_4

    :cond_2
    const/4 v7, 0x1

    const/4 v8, 0x0

    :cond_3
    const/high16 v12, 0x10000

    if-ge v10, v12, :cond_12

    int-to-char v12, v10

    const/16 v13, 0x22

    if-eq v12, v13, :cond_10

    const/16 v13, 0x26

    if-eq v12, v13, :cond_f

    const/16 v13, 0x3c

    if-eq v12, v13, :cond_c

    const/16 v13, 0x3e

    if-eq v12, v13, :cond_a

    const/16 v13, 0xa0

    if-eq v12, v13, :cond_8

    .line 2281
    sget-object v13, Lorg/jsoup/nodes/i$1;->a:[I

    add-int/lit8 v14, v1, -0x1

    aget v13, v13, v14

    if-eq v13, v11, :cond_4

    const/4 v14, 0x2

    if-eq v13, v14, :cond_6

    .line 2287
    invoke-virtual {v3, v12}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    move-result v11

    goto :goto_2

    :cond_4
    const/16 v13, 0x80

    if-ge v12, v13, :cond_5

    goto :goto_2

    :cond_5
    const/4 v11, 0x0

    :cond_6
    :goto_2
    if-eqz v11, :cond_7

    .line 223
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_4

    .line 225
    :cond_7
    invoke-static {p0, v2, v10}, Lorg/jsoup/nodes/i;->a(Ljava/lang/Appendable;Lorg/jsoup/nodes/i$b;I)V

    goto :goto_4

    .line 197
    :cond_8
    sget-object v11, Lorg/jsoup/nodes/i$b;->xhtml:Lorg/jsoup/nodes/i$b;

    if-eq v2, v11, :cond_9

    const-string v11, "&nbsp;"

    .line 198
    invoke-interface {p0, v11}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_4

    :cond_9
    const-string v11, "&#xa0;"

    .line 200
    invoke-interface {p0, v11}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_4

    :cond_a
    if-nez p3, :cond_b

    const-string v11, "&gt;"

    .line 211
    invoke-interface {p0, v11}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_4

    .line 213
    :cond_b
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_4

    :cond_c
    if-eqz p3, :cond_e

    .line 204
    sget-object v11, Lorg/jsoup/nodes/i$b;->xhtml:Lorg/jsoup/nodes/i$b;

    if-ne v2, v11, :cond_d

    goto :goto_3

    .line 207
    :cond_d
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_4

    :cond_e
    :goto_3
    const-string v11, "&lt;"

    .line 205
    invoke-interface {p0, v11}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_4

    :cond_f
    const-string v11, "&amp;"

    .line 194
    invoke-interface {p0, v11}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_4

    :cond_10
    if-eqz p3, :cond_11

    const-string v11, "&quot;"

    .line 217
    invoke-interface {p0, v11}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_4

    .line 219
    :cond_11
    invoke-interface {p0, v12}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_4

    .line 228
    :cond_12
    new-instance v11, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([C)V

    .line 229
    invoke-virtual {v3, v11}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 230
    invoke-interface {p0, v11}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_4

    .line 232
    :cond_13
    invoke-static {p0, v2, v10}, Lorg/jsoup/nodes/i;->a(Ljava/lang/Appendable;Lorg/jsoup/nodes/i$b;I)V

    .line 173
    :cond_14
    :goto_4
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v6, v10

    goto/16 :goto_1

    :cond_15
    return-void
.end method

.method private static a(Ljava/lang/Appendable;Lorg/jsoup/nodes/i$b;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/i$b;->nameForCodepoint(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 239
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x3b

    if-nez v0, :cond_0

    const/16 p2, 0x26

    .line 240
    invoke-interface {p0, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void

    :cond_0
    const-string p1, "&#x"

    .line 242
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method static synthetic a(Lorg/jsoup/nodes/i$b;Ljava/lang/String;I)V
    .locals 10

    .line 2304
    new-array v0, p2, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/jsoup/nodes/i$b;->access$102(Lorg/jsoup/nodes/i$b;[Ljava/lang/String;)[Ljava/lang/String;

    .line 2305
    new-array v0, p2, [I

    invoke-static {p0, v0}, Lorg/jsoup/nodes/i$b;->access$202(Lorg/jsoup/nodes/i$b;[I)[I

    .line 2306
    new-array v0, p2, [I

    invoke-static {p0, v0}, Lorg/jsoup/nodes/i$b;->access$302(Lorg/jsoup/nodes/i$b;[I)[I

    .line 2307
    new-array v0, p2, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/jsoup/nodes/i$b;->access$402(Lorg/jsoup/nodes/i$b;[Ljava/lang/String;)[Ljava/lang/String;

    .line 2310
    new-instance v0, Lorg/jsoup/c/a;

    invoke-direct {v0, p1}, Lorg/jsoup/c/a;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 2312
    :goto_0
    invoke-virtual {v0}, Lorg/jsoup/c/a;->c()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    const/16 v2, 0x3d

    .line 2315
    invoke-virtual {v0, v2}, Lorg/jsoup/c/a;->a(C)Ljava/lang/String;

    move-result-object v2

    .line 2316
    invoke-virtual {v0}, Lorg/jsoup/c/a;->g()V

    .line 2317
    sget-object v4, Lorg/jsoup/nodes/i;->a:[C

    invoke-virtual {v0, v4}, Lorg/jsoup/c/a;->a([C)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 2318
    invoke-virtual {v0}, Lorg/jsoup/c/a;->d()C

    move-result v6

    .line 2319
    invoke-virtual {v0}, Lorg/jsoup/c/a;->g()V

    const/16 v7, 0x2c

    const/4 v8, -0x1

    if-ne v6, v7, :cond_0

    const/16 v6, 0x3b

    .line 2322
    invoke-virtual {v0, v6}, Lorg/jsoup/c/a;->a(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 2323
    invoke-virtual {v0}, Lorg/jsoup/c/a;->g()V

    goto :goto_1

    :cond_0
    const/4 v6, -0x1

    :goto_1
    const/16 v7, 0x26

    .line 2327
    invoke-virtual {v0, v7}, Lorg/jsoup/c/a;->a(C)Ljava/lang/String;

    move-result-object v7

    .line 2328
    invoke-static {v7, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 2329
    invoke-virtual {v0}, Lorg/jsoup/c/a;->g()V

    .line 2331
    invoke-static {p0}, Lorg/jsoup/nodes/i$b;->access$100(Lorg/jsoup/nodes/i$b;)[Ljava/lang/String;

    move-result-object v7

    aput-object v2, v7, v1

    .line 2332
    invoke-static {p0}, Lorg/jsoup/nodes/i$b;->access$200(Lorg/jsoup/nodes/i$b;)[I

    move-result-object v7

    aput v4, v7, v1

    .line 2333
    invoke-static {p0}, Lorg/jsoup/nodes/i$b;->access$300(Lorg/jsoup/nodes/i$b;)[I

    move-result-object v7

    aput v4, v7, v5

    .line 2334
    invoke-static {p0}, Lorg/jsoup/nodes/i$b;->access$400(Lorg/jsoup/nodes/i$b;)[Ljava/lang/String;

    move-result-object v7

    aput-object v2, v7, v5

    if-eq v6, v8, :cond_1

    .line 2337
    sget-object v5, Lorg/jsoup/nodes/i;->b:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x2

    new-array v9, v8, [I

    aput v4, v9, p1

    aput v6, v9, v3

    invoke-direct {v7, v9, p1, v8}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {v5, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ne v1, p2, :cond_3

    const/4 p1, 0x1

    :cond_3
    const-string p0, "Unexpected count of entities loaded"

    .line 2342
    invoke-static {p1, p0}, Lorg/jsoup/a/c;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 86
    sget-object v0, Lorg/jsoup/nodes/i$b;->extended:Lorg/jsoup/nodes/i$b;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/i$b;->codepointForName(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .line 97
    sget-object v0, Lorg/jsoup/nodes/i$b;->base:Lorg/jsoup/nodes/i$b;

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/i$b;->codepointForName(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

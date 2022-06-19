.class public final Lcom/google/android/exoplayer2/text/i/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/i/f$a;,
        Lcom/google/android/exoplayer2/text/i/f$b;,
        Lcom/google/android/exoplayer2/text/i/f$c;,
        Lcom/google/android/exoplayer2/text/i/f$d;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "^(\\S+)\\s+-->\\s+(\\S+)(.*)?$"

    .line 115
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/i/f;->a:Ljava/util/regex/Pattern;

    const-string v0, "(\\S+?):(\\S+)"

    .line 116
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/i/f;->b:Ljava/util/regex/Pattern;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0xff

    .line 154
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "white"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 155
    invoke-static {v2, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "lime"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {v2, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cyan"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-static {v1, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "red"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {v1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "yellow"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {v1, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "magenta"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {v2, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "blue"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "black"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/i/f;->c:Ljava/util/Map;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_white"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-static {v2, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_lime"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-static {v2, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_cyan"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-static {v1, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_red"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {v1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_yellow"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static {v1, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_magenta"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-static {v2, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "bg_blue"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bg_black"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/i/f;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/text/i/f$b;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/i/d;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/i/f$b;",
            ")I"
        }
    .end annotation

    .line 614
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/text/i/f;->b(Ljava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/text/i/f$b;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    .line 615
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, -0x1

    if-ge p1, p2, :cond_1

    .line 616
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/text/i/f$c;

    iget-object p2, p2, Lcom/google/android/exoplayer2/text/i/f$c;->b:Lcom/google/android/exoplayer2/text/i/d;

    .line 13282
    iget v1, p2, Lcom/google/android/exoplayer2/text/i/d;->p:I

    if-eq v1, v0, :cond_0

    .line 14282
    iget p0, p2, Lcom/google/android/exoplayer2/text/i/d;->p:I

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/i/d;",
            ">;)",
            "Landroid/text/SpannedString;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 244
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 245
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 247
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 248
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_1c

    .line 249
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3e

    const/16 v11, 0x3c

    const/16 v12, 0x26

    const/4 v14, -0x1

    const/4 v15, 0x1

    if-eq v8, v12, :cond_13

    if-eq v8, v11, :cond_0

    .line 308
    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v8, v7, 0x1

    .line 252
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v8, v11, :cond_2

    :cond_1
    :goto_1
    move v7, v8

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2f

    if-ne v11, v12, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    .line 1489
    :goto_2
    invoke-virtual {v1, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-ne v8, v14, :cond_4

    .line 1490
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    goto :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    :goto_3
    add-int/lit8 v9, v8, -0x2

    .line 259
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v12, :cond_5

    const/4 v10, 0x1

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    :goto_4
    if-eqz v11, :cond_6

    const/4 v12, 0x2

    goto :goto_5

    :cond_6
    const/4 v12, 0x1

    :goto_5
    add-int/2addr v7, v12

    if-eqz v10, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v9, v8, -0x1

    .line 260
    :goto_6
    invoke-virtual {v1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 262
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1746
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 1747
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    xor-int/2addr v12, v15

    invoke-static {v12}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    const-string v12, "[ \\.]"

    .line 1748
    invoke-static {v9, v12}, Lcom/google/android/exoplayer2/util/af;->b(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v6

    .line 2514
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    goto/16 :goto_7

    :sswitch_0
    const-string v12, "ruby"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    goto :goto_7

    :cond_8
    const/4 v12, 0x7

    const/4 v14, 0x7

    goto :goto_7

    :sswitch_1
    const-string v12, "lang"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    goto :goto_7

    :cond_9
    const/4 v12, 0x6

    const/4 v14, 0x6

    goto :goto_7

    :sswitch_2
    const-string v12, "rt"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    goto :goto_7

    :cond_a
    const/4 v12, 0x5

    const/4 v14, 0x5

    goto :goto_7

    :sswitch_3
    const-string v12, "v"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    goto :goto_7

    :cond_b
    const/4 v12, 0x4

    const/4 v14, 0x4

    goto :goto_7

    :sswitch_4
    const-string v12, "u"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    goto :goto_7

    :cond_c
    const/4 v14, 0x3

    goto :goto_7

    :sswitch_5
    const-string v12, "i"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    goto :goto_7

    :cond_d
    const/4 v14, 0x2

    goto :goto_7

    :sswitch_6
    const-string v12, "c"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e

    goto :goto_7

    :cond_e
    const/4 v14, 0x1

    goto :goto_7

    :sswitch_7
    const-string v12, "b"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    goto :goto_7

    :cond_f
    const/4 v14, 0x0

    :goto_7
    packed-switch v14, :pswitch_data_0

    const/4 v15, 0x0

    :pswitch_0
    if-eqz v15, :cond_1

    if-eqz v11, :cond_12

    .line 272
    :cond_10
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 275
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/text/i/f$b;

    .line 276
    invoke-static {v0, v7, v5, v3, v2}, Lcom/google/android/exoplayer2/text/i/f;->a(Ljava/lang/String;Lcom/google/android/exoplayer2/text/i/f$b;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 277
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_11

    .line 278
    new-instance v10, Lcom/google/android/exoplayer2/text/i/f$a;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/4 v12, 0x0

    invoke-direct {v10, v7, v11, v12}, Lcom/google/android/exoplayer2/text/i/f$a;-><init>(Lcom/google/android/exoplayer2/text/i/f$b;ILcom/google/android/exoplayer2/text/i/f$1;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 280
    :cond_11
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 282
    :goto_8
    iget-object v7, v7, Lcom/google/android/exoplayer2/text/i/f$b;->a:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    goto/16 :goto_1

    :cond_12
    if-nez v10, :cond_1

    .line 284
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-static {v7, v9}, Lcom/google/android/exoplayer2/text/i/f$b;->a(Ljava/lang/String;I)Lcom/google/android/exoplayer2/text/i/f$b;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_13
    const/16 v10, 0x3b

    add-int/lit8 v7, v7, 0x1

    .line 288
    invoke-virtual {v1, v10, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    const/16 v13, 0x20

    .line 289
    invoke-virtual {v1, v13, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    if-ne v10, v14, :cond_14

    move v10, v15

    goto :goto_9

    :cond_14
    if-ne v15, v14, :cond_15

    goto :goto_9

    .line 295
    :cond_15
    invoke-static {v10, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    :goto_9
    if-eq v10, v14, :cond_1b

    .line 297
    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 3494
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    goto :goto_a

    :sswitch_8
    const-string v8, "nbsp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    goto :goto_a

    :cond_16
    const/4 v14, 0x3

    goto :goto_a

    :sswitch_9
    const-string v8, "amp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    goto :goto_a

    :cond_17
    const/4 v14, 0x2

    goto :goto_a

    :sswitch_a
    const-string v8, "lt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    goto :goto_a

    :cond_18
    const/4 v14, 0x1

    goto :goto_a

    :sswitch_b
    const-string v8, "gt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    goto :goto_a

    :cond_19
    const/4 v14, 0x0

    :goto_a
    packed-switch v14, :pswitch_data_1

    .line 3508
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ignoring unsupported entity: \'&"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";\'"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "WebvttCueParser"

    invoke-static {v8, v7}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 3502
    :pswitch_1
    invoke-virtual {v3, v13}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_b

    .line 3505
    :pswitch_2
    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_b

    .line 3496
    :pswitch_3
    invoke-virtual {v3, v11}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_b

    .line 3499
    :pswitch_4
    invoke-virtual {v3, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :goto_b
    if-ne v10, v15, :cond_1a

    const-string v7, " "

    .line 299
    invoke-virtual {v3, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1a
    add-int/lit8 v7, v10, 0x1

    goto/16 :goto_0

    .line 303
    :cond_1b
    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    .line 314
    :cond_1c
    :goto_c
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 315
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/i/f$b;

    invoke-static {v0, v1, v5, v3, v2}, Lcom/google/android/exoplayer2/text/i/f;->a(Ljava/lang/String;Lcom/google/android/exoplayer2/text/i/f$b;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    goto :goto_c

    .line 3965
    :cond_1d
    new-instance v1, Lcom/google/android/exoplayer2/text/i/f$b;

    .line 3969
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v1, v5, v6, v5, v4}, Lcom/google/android/exoplayer2/text/i/f$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    .line 320
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 317
    invoke-static {v0, v1, v4, v3, v2}, Lcom/google/android/exoplayer2/text/i/f;->a(Ljava/lang/String;Lcom/google/android/exoplayer2/text/i/f$b;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 323
    invoke-static {v3}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_7
        0x63 -> :sswitch_6
        0x69 -> :sswitch_5
        0x75 -> :sswitch_4
        0x76 -> :sswitch_3
        0xe42 -> :sswitch_2
        0x3291ee -> :sswitch_1
        0x3595da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0xced -> :sswitch_b
        0xd88 -> :sswitch_a
        0x179c4 -> :sswitch_9
        0x337f11 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static a(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/b$a;
    .locals 1

    .line 222
    new-instance v0, Lcom/google/android/exoplayer2/text/i/f$d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/i/f$d;-><init>()V

    .line 223
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/text/i/f;->a(Ljava/lang/String;Lcom/google/android/exoplayer2/text/i/f$d;)V

    .line 224
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/i/f$d;->a()Lcom/google/android/exoplayer2/text/b$a;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/b;
    .locals 1

    .line 229
    new-instance v0, Lcom/google/android/exoplayer2/text/i/f$d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/i/f$d;-><init>()V

    .line 230
    iput-object p0, v0, Lcom/google/android/exoplayer2/text/i/f$d;->c:Ljava/lang/CharSequence;

    .line 231
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/i/f$d;->a()Lcom/google/android/exoplayer2/text/b$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/b$a;->a()Lcom/google/android/exoplayer2/text/b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/android/exoplayer2/util/u;Ljava/util/List;)Lcom/google/android/exoplayer2/text/i/e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/u;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/i/d;",
            ">;)",
            "Lcom/google/android/exoplayer2/text/i/e;"
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->t()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 197
    :cond_0
    sget-object v2, Lcom/google/android/exoplayer2/text/i/f;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 198
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 200
    invoke-static {v1, v3, p0, p1}, Lcom/google/android/exoplayer2/text/i/f;->a(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/google/android/exoplayer2/util/u;Ljava/util/List;)Lcom/google/android/exoplayer2/text/i/e;

    move-result-object p0

    return-object p0

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->t()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v1

    .line 207
    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 208
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 210
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, p0, p1}, Lcom/google/android/exoplayer2/text/i/f;->a(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/google/android/exoplayer2/util/u;Ljava/util/List;)Lcom/google/android/exoplayer2/text/i/e;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method private static a(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/google/android/exoplayer2/util/u;Ljava/util/List;)Lcom/google/android/exoplayer2/text/i/e;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Matcher;",
            "Lcom/google/android/exoplayer2/util/u;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/i/d;",
            ">;)",
            "Lcom/google/android/exoplayer2/text/i/e;"
        }
    .end annotation

    .line 334
    new-instance v0, Lcom/google/android/exoplayer2/text/i/f$d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/i/f$d;-><init>()V

    const/4 v1, 0x1

    .line 338
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/text/i/h;->a(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/text/i/f$d;->a:J

    const/4 v1, 0x2

    .line 340
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplayer2/text/i/h;->a(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/exoplayer2/text/i/f$d;->b:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    .line 346
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/text/i/f;->a(Ljava/lang/String;Lcom/google/android/exoplayer2/text/i/f$d;)V

    .line 349
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/u;->t()Ljava/lang/String;

    move-result-object v1

    .line 351
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 353
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "\n"

    .line 354
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/u;->t()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 358
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/google/android/exoplayer2/text/i/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/exoplayer2/text/i/f$d;->c:Ljava/lang/CharSequence;

    .line 4799
    new-instance p0, Lcom/google/android/exoplayer2/text/i/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/i/f$d;->a()Lcom/google/android/exoplayer2/text/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/b$a;->a()Lcom/google/android/exoplayer2/text/b;

    move-result-object v2

    iget-wide v3, v0, Lcom/google/android/exoplayer2/text/i/f$d;->a:J

    iget-wide v5, v0, Lcom/google/android/exoplayer2/text/i/f$d;->b:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/text/i/e;-><init>(Lcom/google/android/exoplayer2/text/b;JJ)V

    return-object p0

    .line 342
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Skipping cue with bad header: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WebvttCueParser"

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/google/android/exoplayer2/text/i/f$b;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/i/f$b;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/i/f$a;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/i/d;",
            ">;)V"
        }
    .end annotation

    .line 576
    invoke-static {p4, p1, p2}, Lcom/google/android/exoplayer2/text/i/f;->a(Ljava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/text/i/f$b;)I

    move-result v0

    .line 577
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 578
    invoke-interface {v1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 579
    invoke-static {}, Lcom/google/android/exoplayer2/text/i/f$a;->a()Ljava/util/Comparator;

    move-result-object p3

    invoke-static {v1, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 581
    iget p2, p2, Lcom/google/android/exoplayer2/text/i/f$b;->b:I

    const/4 p3, 0x0

    const/4 v2, 0x0

    .line 582
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge p3, v3, :cond_3

    .line 583
    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/text/i/f$a;

    invoke-static {v3}, Lcom/google/android/exoplayer2/text/i/f$a;->a(Lcom/google/android/exoplayer2/text/i/f$a;)Lcom/google/android/exoplayer2/text/i/f$b;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer2/text/i/f$b;->a:Ljava/lang/String;

    const-string v4, "rt"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 586
    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/text/i/f$a;

    .line 592
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/i/f$a;->a(Lcom/google/android/exoplayer2/text/i/f$a;)Lcom/google/android/exoplayer2/text/i/f$b;

    move-result-object v4

    invoke-static {p4, p1, v4}, Lcom/google/android/exoplayer2/text/i/f;->a(Ljava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/text/i/f$b;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    if-eq v0, v5, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    .line 596
    :goto_1
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/i/f$a;->a(Lcom/google/android/exoplayer2/text/i/f$a;)Lcom/google/android/exoplayer2/text/i/f$b;

    move-result-object v5

    iget v5, v5, Lcom/google/android/exoplayer2/text/i/f$b;->b:I

    sub-int/2addr v5, v2

    .line 597
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/i/f$a;->b(Lcom/google/android/exoplayer2/text/i/f$a;)I

    move-result v3

    sub-int/2addr v3, v2

    .line 598
    invoke-virtual {p0, v5, v3}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 599
    invoke-virtual {p0, v5, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 600
    new-instance v3, Lcom/google/android/exoplayer2/text/d/b;

    .line 601
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v4}, Lcom/google/android/exoplayer2/text/d/b;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0x21

    .line 600
    invoke-virtual {p0, v3, p2, v5, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 605
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result p2

    add-int/2addr v2, p2

    move p2, v5

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Ljava/util/Set;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 650
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 651
    sget-object v1, Lcom/google/android/exoplayer2/text/i/f;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x21

    if-eqz v2, :cond_1

    .line 652
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 653
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v1, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 654
    :cond_1
    sget-object v1, Lcom/google/android/exoplayer2/text/i/f;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 655
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 656
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v1, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/google/android/exoplayer2/text/i/f$b;Ljava/util/List;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/i/f$b;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/i/f$a;",
            ">;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/i/d;",
            ">;)V"
        }
    .end annotation

    .line 535
    iget v0, p1, Lcom/google/android/exoplayer2/text/i/f$b;->b:I

    .line 536
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 538
    iget-object v2, p1, Lcom/google/android/exoplayer2/text/i/f$b;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "ruby"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_1
    const-string v3, "lang"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_2
    const-string v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_3
    const-string v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_4
    const-string v3, "i"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_5
    const-string v3, "c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_6
    const-string v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_7
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x21

    packed-switch v2, :pswitch_data_0

    return-void

    .line 548
    :pswitch_0
    invoke-static {p3, p0, p1, p2, p4}, Lcom/google/android/exoplayer2/text/i/f;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/google/android/exoplayer2/text/i/f$b;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    .line 551
    :pswitch_1
    new-instance p2, Landroid/text/style/UnderlineSpan;

    invoke-direct {p2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p3, p2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 544
    :pswitch_2
    new-instance p2, Landroid/text/style/StyleSpan;

    invoke-direct {p2, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p3, p2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 554
    :pswitch_3
    iget-object p2, p1, Lcom/google/android/exoplayer2/text/i/f$b;->d:Ljava/util/Set;

    invoke-static {p3, p2, v0, v1}, Lcom/google/android/exoplayer2/text/i/f;->a(Landroid/text/SpannableStringBuilder;Ljava/util/Set;II)V

    goto :goto_2

    .line 540
    :pswitch_4
    new-instance p2, Landroid/text/style/StyleSpan;

    invoke-direct {p2, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p3, p2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 564
    :goto_2
    :pswitch_5
    invoke-static {p4, p0, p1}, Lcom/google/android/exoplayer2/text/i/f;->b(Ljava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/text/i/f$b;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    .line 565
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_16

    .line 566
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/text/i/f$c;

    iget-object p2, p2, Lcom/google/android/exoplayer2/text/i/f$c;->b:Lcom/google/android/exoplayer2/text/i/d;

    if-eqz p2, :cond_15

    .line 5666
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/text/i/d;->a()I

    move-result p4

    if-eq p4, v5, :cond_8

    .line 5667
    new-instance p4, Landroid/text/style/StyleSpan;

    .line 5669
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/text/i/d;->a()I

    move-result v2

    invoke-direct {p4, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 5667
    invoke-static {p3, p4, v0, v1}, Lcom/google/android/exoplayer2/text/d/c;->a(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 6187
    :cond_8
    iget p4, p2, Lcom/google/android/exoplayer2/text/i/d;->j:I

    if-ne p4, v8, :cond_9

    const/4 p4, 0x1

    goto :goto_4

    :cond_9
    const/4 p4, 0x0

    :goto_4
    if-eqz p4, :cond_a

    .line 5675
    new-instance p4, Landroid/text/style/StrikethroughSpan;

    invoke-direct {p4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p3, p4, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6196
    :cond_a
    iget p4, p2, Lcom/google/android/exoplayer2/text/i/d;->k:I

    if-ne p4, v8, :cond_b

    const/4 p4, 0x1

    goto :goto_5

    :cond_b
    const/4 p4, 0x0

    :goto_5
    if-eqz p4, :cond_c

    .line 5678
    new-instance p4, Landroid/text/style/UnderlineSpan;

    invoke-direct {p4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p3, p4, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6237
    :cond_c
    iget-boolean p4, p2, Lcom/google/android/exoplayer2/text/i/d;->g:Z

    if-eqz p4, :cond_e

    .line 5681
    new-instance p4, Landroid/text/style/ForegroundColorSpan;

    .line 7224
    iget-boolean v2, p2, Lcom/google/android/exoplayer2/text/i/d;->g:Z

    if-eqz v2, :cond_d

    .line 7227
    iget v2, p2, Lcom/google/android/exoplayer2/text/i/d;->f:I

    .line 5683
    invoke-direct {p4, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 5681
    invoke-static {p3, p4, v0, v1}, Lcom/google/android/exoplayer2/text/d/c;->a(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto :goto_6

    .line 7225
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Font color not defined"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7254
    :cond_e
    :goto_6
    iget-boolean p4, p2, Lcom/google/android/exoplayer2/text/i/d;->i:Z

    if-eqz p4, :cond_10

    .line 5689
    new-instance p4, Landroid/text/style/BackgroundColorSpan;

    .line 8241
    iget-boolean v2, p2, Lcom/google/android/exoplayer2/text/i/d;->i:Z

    if-eqz v2, :cond_f

    .line 8244
    iget v2, p2, Lcom/google/android/exoplayer2/text/i/d;->h:I

    .line 5691
    invoke-direct {p4, v2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 5689
    invoke-static {p3, p4, v0, v1}, Lcom/google/android/exoplayer2/text/d/c;->a(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto :goto_7

    .line 8242
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Background color not defined."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9215
    :cond_10
    :goto_7
    iget-object p4, p2, Lcom/google/android/exoplayer2/text/i/d;->e:Ljava/lang/String;

    if-eqz p4, :cond_11

    .line 5697
    new-instance p4, Landroid/text/style/TypefaceSpan;

    .line 10215
    iget-object v2, p2, Lcom/google/android/exoplayer2/text/i/d;->e:Ljava/lang/String;

    .line 5699
    invoke-direct {p4, v2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 5697
    invoke-static {p3, p4, v0, v1}, Lcom/google/android/exoplayer2/text/d/c;->a(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 10268
    :cond_11
    iget p4, p2, Lcom/google/android/exoplayer2/text/i/d;->n:I

    if-eq p4, v8, :cond_14

    if-eq p4, v6, :cond_13

    if-eq p4, v4, :cond_12

    goto :goto_8

    .line 5722
    :cond_12
    new-instance p4, Landroid/text/style/RelativeSizeSpan;

    .line 12272
    iget v2, p2, Lcom/google/android/exoplayer2/text/i/d;->o:F

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v2, v9

    .line 5724
    invoke-direct {p4, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 5722
    invoke-static {p3, p4, v0, v1}, Lcom/google/android/exoplayer2/text/d/c;->a(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto :goto_8

    .line 5714
    :cond_13
    new-instance p4, Landroid/text/style/RelativeSizeSpan;

    .line 11272
    iget v2, p2, Lcom/google/android/exoplayer2/text/i/d;->o:F

    .line 5716
    invoke-direct {p4, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 5714
    invoke-static {p3, p4, v0, v1}, Lcom/google/android/exoplayer2/text/d/c;->a(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto :goto_8

    .line 5706
    :cond_14
    new-instance p4, Landroid/text/style/AbsoluteSizeSpan;

    .line 10272
    iget v2, p2, Lcom/google/android/exoplayer2/text/i/d;->o:F

    float-to-int v2, v2

    .line 5708
    invoke-direct {p4, v2, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 5706
    invoke-static {p3, p4, v0, v1}, Lcom/google/android/exoplayer2/text/d/c;->a(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 12291
    :goto_8
    iget-boolean p2, p2, Lcom/google/android/exoplayer2/text/i/d;->q:Z

    if-eqz p2, :cond_15

    .line 5734
    new-instance p2, Lcom/google/android/exoplayer2/text/d/a;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/text/d/a;-><init>()V

    invoke-virtual {p3, p2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_15
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_3

    :cond_16
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x62 -> :sswitch_6
        0x63 -> :sswitch_5
        0x69 -> :sswitch_4
        0x75 -> :sswitch_3
        0x76 -> :sswitch_2
        0x3291ee -> :sswitch_1
        0x3595da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Lcom/google/android/exoplayer2/text/i/f$d;)V
    .locals 5

    const-string v0, "WebvttCueParser"

    .line 364
    sget-object v1, Lcom/google/android/exoplayer2/text/i/f;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 366
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    .line 367
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    .line 368
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    const-string v3, "line"

    .line 370
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/text/i/f;->b(Ljava/lang/String;Lcom/google/android/exoplayer2/text/i/f$d;)V

    goto :goto_0

    :cond_0
    const-string v3, "align"

    .line 372
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 373
    invoke-static {v2}, Lcom/google/android/exoplayer2/text/i/f;->e(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/google/android/exoplayer2/text/i/f$d;->d:I

    goto :goto_0

    :cond_1
    const-string v3, "position"

    .line 374
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 375
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/text/i/f;->c(Ljava/lang/String;Lcom/google/android/exoplayer2/text/i/f$d;)V

    goto :goto_0

    :cond_2
    const-string v3, "size"

    .line 376
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 377
    invoke-static {v2}, Lcom/google/android/exoplayer2/text/i/h;->b(Ljava/lang/String;)F

    move-result v1

    iput v1, p1, Lcom/google/android/exoplayer2/text/i/f$d;->j:F

    goto :goto_0

    :cond_3
    const-string v3, "vertical"

    .line 378
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 379
    invoke-static {v2}, Lcom/google/android/exoplayer2/text/i/f;->d(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/google/android/exoplayer2/text/i/f$d;->k:I

    goto :goto_0

    .line 381
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown cue setting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 384
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Skipping bad cue setting: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private static b(Ljava/lang/String;)I
    .locals 5

    .line 406
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 415
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid anchor value: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebvttCueParser"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, -0x80000000

    return p0

    :pswitch_0
    return v3

    :pswitch_1
    return v1

    :pswitch_2
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_3
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Ljava/util/List;Ljava/lang/String;Lcom/google/android/exoplayer2/text/i/f$b;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/i/d;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/i/f$b;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/i/f$c;",
            ">;"
        }
    .end annotation

    .line 753
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 754
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 755
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/i/d;

    .line 756
    iget-object v3, p2, Lcom/google/android/exoplayer2/text/i/f$b;->a:Ljava/lang/String;

    iget-object v4, p2, Lcom/google/android/exoplayer2/text/i/f$b;->d:Ljava/util/Set;

    iget-object v5, p2, Lcom/google/android/exoplayer2/text/i/f$b;->c:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/google/android/exoplayer2/text/i/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    .line 758
    new-instance v4, Lcom/google/android/exoplayer2/text/i/f$c;

    invoke-direct {v4, v3, v2}, Lcom/google/android/exoplayer2/text/i/f$c;-><init>(ILcom/google/android/exoplayer2/text/i/d;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 761
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method private static b(Ljava/lang/String;Lcom/google/android/exoplayer2/text/i/f$d;)V
    .locals 3

    const/16 v0, 0x2c

    .line 390
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    .line 392
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/text/i/f;->b(Ljava/lang/String;)I

    move-result v2

    iput v2, p1, Lcom/google/android/exoplayer2/text/i/f$d;->g:I

    .line 393
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "%"

    .line 395
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/i/h;->b(Ljava/lang/String;)F

    move-result p0

    iput p0, p1, Lcom/google/android/exoplayer2/text/i/f$d;->e:F

    .line 397
    iput v1, p1, Lcom/google/android/exoplayer2/text/i/f$d;->f:I

    return-void

    .line 399
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    iput p0, p1, Lcom/google/android/exoplayer2/text/i/f$d;->e:F

    const/4 p0, 0x1

    .line 400
    iput p0, p1, Lcom/google/android/exoplayer2/text/i/f$d;->f:I

    return-void
.end method

.method private static c(Ljava/lang/String;)I
    .locals 5

    .line 431
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "line-right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "line-left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 442
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid anchor value: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebvttCueParser"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, -0x80000000

    return p0

    :pswitch_0
    return v1

    :pswitch_1
    return v2

    :pswitch_2
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x6dd215c0 -> :sswitch_5
        -0x514d33ab -> :sswitch_4
        -0x4c1a40fd -> :sswitch_3
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static c(Ljava/lang/String;Lcom/google/android/exoplayer2/text/i/f$d;)V
    .locals 2

    const/16 v0, 0x2c

    .line 421
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 423
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/text/i/f;->c(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/google/android/exoplayer2/text/i/f$d;->i:I

    const/4 v1, 0x0

    .line 424
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 426
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/i/h;->b(Ljava/lang/String;)F

    move-result p0

    iput p0, p1, Lcom/google/android/exoplayer2/text/i/f$d;->h:F

    return-void
.end method

.method private static d(Ljava/lang/String;)I
    .locals 1

    .line 449
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "lr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "rl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid \'vertical\' value: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebvttCueParser"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, -0x80000000

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method private static e(Ljava/lang/String;)I
    .locals 7

    .line 462
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 475
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid alignment value: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebvttCueParser"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :pswitch_0
    return v4

    :pswitch_1
    return v1

    :pswitch_2
    return v2

    :pswitch_3
    return v3

    :pswitch_4
    return v5

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x4009266b -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final Lcom/google/zxing/c/d;
.super Lcom/google/zxing/c/n;
.source "Code128Writer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/c/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/zxing/c/n;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;II)I
    .locals 5

    .prologue
    const/16 v2, 0x65

    const/16 v3, 0x63

    const/16 v1, 0x64

    .line 234
    invoke-static {p0, p1}, Lcom/google/zxing/c/d;->a(Ljava/lang/CharSequence;I)Lcom/google/zxing/c/d$a;

    move-result-object v0

    .line 235
    sget-object v4, Lcom/google/zxing/c/d$a;->b:Lcom/google/zxing/c/d$a;

    if-ne v0, v4, :cond_0

    move v0, v1

    .line 286
    :goto_0
    return v0

    .line 238
    :cond_0
    sget-object v4, Lcom/google/zxing/c/d$a;->a:Lcom/google/zxing/c/d$a;

    if-ne v0, v4, :cond_3

    .line 239
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 240
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 241
    const/16 v3, 0x20

    if-lt v0, v3, :cond_1

    if-ne p2, v2, :cond_2

    const/16 v3, 0x60

    if-ge v0, v3, :cond_2

    :cond_1
    move v0, v2

    .line 243
    goto :goto_0

    :cond_2
    move v0, v1

    .line 246
    goto :goto_0

    .line 248
    :cond_3
    if-ne p2, v3, :cond_4

    move v0, v3

    .line 249
    goto :goto_0

    .line 251
    :cond_4
    if-ne p2, v1, :cond_c

    .line 252
    sget-object v2, Lcom/google/zxing/c/d$a;->d:Lcom/google/zxing/c/d$a;

    if-ne v0, v2, :cond_5

    move v0, v1

    .line 253
    goto :goto_0

    .line 256
    :cond_5
    add-int/lit8 v0, p1, 0x2

    invoke-static {p0, v0}, Lcom/google/zxing/c/d;->a(Ljava/lang/CharSequence;I)Lcom/google/zxing/c/d$a;

    move-result-object v0

    .line 257
    sget-object v2, Lcom/google/zxing/c/d$a;->a:Lcom/google/zxing/c/d$a;

    if-eq v0, v2, :cond_6

    sget-object v2, Lcom/google/zxing/c/d$a;->b:Lcom/google/zxing/c/d$a;

    if-ne v0, v2, :cond_7

    :cond_6
    move v0, v1

    .line 258
    goto :goto_0

    .line 260
    :cond_7
    sget-object v2, Lcom/google/zxing/c/d$a;->d:Lcom/google/zxing/c/d$a;

    if-ne v0, v2, :cond_9

    .line 261
    add-int/lit8 v0, p1, 0x3

    invoke-static {p0, v0}, Lcom/google/zxing/c/d;->a(Ljava/lang/CharSequence;I)Lcom/google/zxing/c/d$a;

    move-result-object v0

    .line 262
    sget-object v2, Lcom/google/zxing/c/d$a;->c:Lcom/google/zxing/c/d$a;

    if-ne v0, v2, :cond_8

    move v0, v3

    .line 263
    goto :goto_0

    :cond_8
    move v0, v1

    .line 265
    goto :goto_0

    .line 270
    :cond_9
    add-int/lit8 v0, p1, 0x4

    .line 271
    :goto_1
    invoke-static {p0, v0}, Lcom/google/zxing/c/d;->a(Ljava/lang/CharSequence;I)Lcom/google/zxing/c/d$a;

    move-result-object v2

    sget-object v4, Lcom/google/zxing/c/d$a;->c:Lcom/google/zxing/c/d$a;

    if-ne v2, v4, :cond_a

    .line 272
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 274
    :cond_a
    sget-object v0, Lcom/google/zxing/c/d$a;->b:Lcom/google/zxing/c/d$a;

    if-ne v2, v0, :cond_b

    move v0, v1

    .line 275
    goto :goto_0

    :cond_b
    move v0, v3

    .line 277
    goto :goto_0

    .line 280
    :cond_c
    sget-object v2, Lcom/google/zxing/c/d$a;->d:Lcom/google/zxing/c/d$a;

    if-ne v0, v2, :cond_d

    .line 281
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0}, Lcom/google/zxing/c/d;->a(Ljava/lang/CharSequence;I)Lcom/google/zxing/c/d$a;

    move-result-object v0

    .line 283
    :cond_d
    sget-object v2, Lcom/google/zxing/c/d$a;->c:Lcom/google/zxing/c/d$a;

    if-ne v0, v2, :cond_e

    move v0, v3

    .line 284
    goto :goto_0

    :cond_e
    move v0, v1

    .line 286
    goto :goto_0
.end method

.method private static a(Ljava/lang/CharSequence;I)Lcom/google/zxing/c/d$a;
    .locals 5

    .prologue
    const/16 v4, 0x39

    const/16 v3, 0x30

    .line 212
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 213
    if-lt p1, v0, :cond_0

    .line 214
    sget-object v0, Lcom/google/zxing/c/d$a;->a:Lcom/google/zxing/c/d$a;

    .line 230
    :goto_0
    return-object v0

    .line 216
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 217
    const/16 v2, 0xf1

    if-ne v1, v2, :cond_1

    .line 218
    sget-object v0, Lcom/google/zxing/c/d$a;->d:Lcom/google/zxing/c/d$a;

    goto :goto_0

    .line 220
    :cond_1
    if-lt v1, v3, :cond_2

    if-le v1, v4, :cond_3

    .line 221
    :cond_2
    sget-object v0, Lcom/google/zxing/c/d$a;->a:Lcom/google/zxing/c/d$a;

    goto :goto_0

    .line 223
    :cond_3
    add-int/lit8 v1, p1, 0x1

    if-lt v1, v0, :cond_4

    .line 224
    sget-object v0, Lcom/google/zxing/c/d$a;->b:Lcom/google/zxing/c/d$a;

    goto :goto_0

    .line 226
    :cond_4
    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 227
    if-lt v0, v3, :cond_5

    if-le v0, v4, :cond_6

    .line 228
    :cond_5
    sget-object v0, Lcom/google/zxing/c/d$a;->b:Lcom/google/zxing/c/d$a;

    goto :goto_0

    .line 230
    :cond_6
    sget-object v0, Lcom/google/zxing/c/d$a;->c:Lcom/google/zxing/c/d$a;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/util/Map;)Lcom/google/zxing/common/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/a;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/c;",
            "*>;)",
            "Lcom/google/zxing/common/b;"
        }
    .end annotation

    .prologue
    .line 69
    sget-object v0, Lcom/google/zxing/a;->e:Lcom/google/zxing/a;

    if-eq p2, v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can only encode CODE_128, but got "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/c/n;->a(Ljava/lang/String;Lcom/google/zxing/a;IILjava/util/Map;)Lcom/google/zxing/common/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)[Z
    .locals 11

    .prologue
    const/16 v1, 0x65

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 79
    if-lez v9, :cond_0

    const/16 v0, 0x50

    if-le v9, v0, :cond_1

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Contents length should be between 1 and 80 characters, but got "

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v6

    .line 84
    :goto_0
    if-ge v0, v9, :cond_3

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 86
    packed-switch v2, :pswitch_data_0

    .line 93
    const/16 v3, 0x7f

    if-le v2, v3, :cond_2

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad character in input: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_2
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v2, v6

    move v4, v6

    move v5, v7

    move v8, v6

    .line 106
    :goto_1
    if-ge v2, v9, :cond_8

    .line 108
    invoke-static {p1, v2, v4}, Lcom/google/zxing/c/d;->a(Ljava/lang/CharSequence;II)I

    move-result v3

    .line 112
    if-ne v3, v4, :cond_6

    .line 115
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 134
    packed-switch v4, :pswitch_data_2

    .line 147
    add-int/lit8 v0, v2, 0x2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 148
    add-int/lit8 v2, v2, 0x1

    .line 152
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    .line 177
    :goto_3
    sget-object v4, Lcom/google/zxing/c/c;->a:[[I

    aget-object v4, v4, v0

    invoke-interface {v10, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 180
    mul-int/2addr v0, v5

    add-int/2addr v8, v0

    .line 181
    if-eqz v2, :cond_c

    .line 182
    add-int/lit8 v0, v5, 0x1

    :goto_4
    move v4, v3

    move v5, v0

    .line 184
    goto :goto_1

    .line 117
    :pswitch_1
    const/16 v0, 0x66

    .line 118
    goto :goto_2

    .line 120
    :pswitch_2
    const/16 v0, 0x61

    .line 121
    goto :goto_2

    .line 123
    :pswitch_3
    const/16 v0, 0x60

    .line 124
    goto :goto_2

    .line 126
    :pswitch_4
    if-ne v4, v1, :cond_5

    move v0, v1

    .line 127
    goto :goto_2

    .line 129
    :cond_5
    const/16 v0, 0x64

    .line 131
    goto :goto_2

    .line 136
    :pswitch_5
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x20

    .line 137
    if-gez v0, :cond_4

    .line 139
    add-int/lit8 v0, v0, 0x60

    goto :goto_2

    .line 143
    :pswitch_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x20

    .line 144
    goto :goto_2

    .line 156
    :cond_6
    if-nez v4, :cond_7

    .line 158
    packed-switch v3, :pswitch_data_3

    .line 166
    const/16 v0, 0x69

    .line 167
    goto :goto_3

    .line 160
    :pswitch_7
    const/16 v0, 0x67

    .line 161
    goto :goto_3

    .line 163
    :pswitch_8
    const/16 v0, 0x68

    .line 164
    goto :goto_3

    :cond_7
    move v0, v3

    .line 171
    goto :goto_3

    .line 187
    :cond_8
    rem-int/lit8 v0, v8, 0x67

    .line 188
    sget-object v1, Lcom/google/zxing/c/c;->a:[[I

    aget-object v0, v1, v0

    invoke-interface {v10, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lcom/google/zxing/c/c;->a:[[I

    const/16 v1, 0x6a

    aget-object v0, v0, v1

    invoke-interface {v10, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v6

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 196
    array-length v4, v0

    move v2, v6

    :goto_5
    if-ge v2, v4, :cond_9

    aget v5, v0, v2

    .line 197
    add-int/2addr v1, v5

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 202
    :cond_a
    new-array v1, v1, [Z

    .line 204
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 205
    invoke-static {v1, v6, v0, v7}, Lcom/google/zxing/c/d;->a([ZI[IZ)I

    move-result v0

    add-int/2addr v6, v0

    .line 206
    goto :goto_6

    .line 208
    :cond_b
    return-object v1

    :cond_c
    move v0, v5

    goto :goto_4

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 115
    :pswitch_data_1
    .packed-switch 0xf1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 134
    :pswitch_data_2
    .packed-switch 0x64
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 158
    :pswitch_data_3
    .packed-switch 0x64
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

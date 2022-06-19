.class public final Lcom/google/android/exoplayer2/text/h/a;
.super Lcom/google/android/exoplayer2/text/c;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/u;

.field private final b:Z

.field private final c:I

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:F

.field private final g:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "Tx3gDecoder"

    .line 88
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/c;-><init>(Ljava/lang/String;)V

    .line 89
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/h/a;->a:Lcom/google/android/exoplayer2/util/u;

    .line 91
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x3f59999a    # 0.85f

    const-string v2, "sans-serif"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_4

    .line 92
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    const/16 v5, 0x30

    if-eq v0, v5, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    const/16 v5, 0x35

    if-ne v0, v5, :cond_4

    .line 93
    :cond_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/16 v0, 0x18

    .line 94
    aget-byte v5, p1, v0

    iput v5, p0, Lcom/google/android/exoplayer2/text/h/a;->c:I

    const/16 v5, 0x1a

    .line 95
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v0, v5, 0x18

    const/16 v5, 0x1b

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v0, v5

    const/16 v5, 0x1c

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    const/16 v5, 0x1d

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    iput v0, p0, Lcom/google/android/exoplayer2/text/h/a;->d:I

    .line 99
    array-length v0, p1

    const/16 v5, 0x2b

    sub-int/2addr v0, v5

    .line 100
    invoke-static {p1, v5, v0}, Lcom/google/android/exoplayer2/util/af;->a([BII)Ljava/lang/String;

    move-result-object v0

    const-string v5, "Serif"

    .line 101
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "serif"

    :cond_1
    iput-object v2, p0, Lcom/google/android/exoplayer2/text/h/a;->e:Ljava/lang/String;

    const/16 v0, 0x19

    .line 103
    aget-byte v0, p1, v0

    mul-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/google/android/exoplayer2/text/h/a;->g:I

    .line 104
    aget-byte v2, p1, v4

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/text/h/a;->b:Z

    if-eqz v3, :cond_3

    const/16 v1, 0xa

    .line 106
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/16 v2, 0xb

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    const v1, 0x3f733333    # 0.95f

    .line 109
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/af;->a(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/text/h/a;->f:F

    return-void

    .line 112
    :cond_3
    iput v1, p0, Lcom/google/android/exoplayer2/text/h/a;->f:F

    return-void

    .line 115
    :cond_4
    iput v4, p0, Lcom/google/android/exoplayer2/text/h/a;->c:I

    const/4 p1, -0x1

    .line 116
    iput p1, p0, Lcom/google/android/exoplayer2/text/h/a;->d:I

    .line 117
    iput-object v2, p0, Lcom/google/android/exoplayer2/text/h/a;->e:Ljava/lang/String;

    .line 118
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/text/h/a;->b:Z

    .line 119
    iput v1, p0, Lcom/google/android/exoplayer2/text/h/a;->f:F

    .line 120
    iput p1, p0, Lcom/google/android/exoplayer2/text/h/a;->g:I

    return-void
.end method

.method private static a(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 5

    if-eq p1, p2, :cond_7

    or-int/lit8 p2, p5, 0x21

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz p5, :cond_3

    if-eqz v2, :cond_2

    .line 214
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 216
    :cond_2
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    .line 219
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    :goto_2
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_6

    .line 223
    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    if-nez v1, :cond_7

    if-nez p5, :cond_7

    if-nez v2, :cond_7

    .line 226
    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    return-void
.end method

.method private static a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-void

    .line 254
    :cond_0
    new-instance p0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v0, "Unexpected subtitle format."

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 0

    if-eq p1, p2, :cond_0

    and-int/lit16 p2, p1, 0xff

    shl-int/lit8 p2, p2, 0x18

    ushr-int/lit8 p1, p1, 0x8

    or-int/2addr p1, p2

    .line 235
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    or-int/lit8 p1, p5, 0x21

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a([BIZ)Lcom/google/android/exoplayer2/text/e;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 127
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/h/a;->a:Lcom/google/android/exoplayer2/util/u;

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/util/u;->a([BI)V

    .line 128
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/h/a;->a:Lcom/google/android/exoplayer2/util/u;

    .line 1169
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/text/h/a;->a(Z)V

    .line 1170
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v2

    const/16 v6, 0x8

    if-nez v2, :cond_1

    const-string v1, ""

    goto :goto_1

    .line 1174
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v7

    if-lt v7, v3, :cond_3

    .line 1236
    iget-object v7, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v8, v1, Lcom/google/android/exoplayer2/util/u;->b:I

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v6

    iget-object v8, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    iget v9, v1, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/2addr v9, v4

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    int-to-char v7, v7

    const v8, 0xfeff

    if-eq v7, v8, :cond_2

    const v8, 0xfffe

    if-ne v7, v8, :cond_3

    .line 1177
    :cond_2
    sget-object v7, Lcom/google/common/base/d;->f:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2, v7}, Lcom/google/android/exoplayer2/util/u;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1180
    :cond_3
    sget-object v7, Lcom/google/common/base/d;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2, v7}, Lcom/google/android/exoplayer2/util/u;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 129
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 130
    sget-object v1, Lcom/google/android/exoplayer2/text/h/b;->a:Lcom/google/android/exoplayer2/text/h/b;

    return-object v1

    .line 133
    :cond_4
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 134
    iget v8, v0, Lcom/google/android/exoplayer2/text/h/a;->c:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/high16 v12, 0xff0000

    move-object v7, v2

    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/text/h/a;->a(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 136
    iget v8, v0, Lcom/google/android/exoplayer2/text/h/a;->d:I

    const/4 v9, -0x1

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/text/h/a;->b(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 138
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/h/a;->e:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const-string v8, "sans-serif"

    if-eq v1, v8, :cond_5

    .line 1244
    new-instance v8, Landroid/text/style/TypefaceSpan;

    invoke-direct {v8, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const v1, 0xff0021

    invoke-virtual {v2, v8, v5, v7, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 139
    :cond_5
    iget v1, v0, Lcom/google/android/exoplayer2/text/h/a;->f:F

    .line 141
    :goto_2
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/h/a;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v7

    if-lt v7, v6, :cond_d

    .line 142
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/h/a;->a:Lcom/google/android/exoplayer2/util/u;

    .line 2144
    iget v13, v7, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 143
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/h/a;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v14

    .line 144
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/h/a;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v7

    const v8, 0x7374796c

    if-ne v7, v8, :cond_a

    .line 146
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/h/a;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v7

    if-lt v7, v3, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :goto_3
    invoke-static {v7}, Lcom/google/android/exoplayer2/text/h/a;->a(Z)V

    .line 147
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/h/a;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v15

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v15, :cond_c

    .line 149
    iget-object v7, v0, Lcom/google/android/exoplayer2/text/h/a;->a:Lcom/google/android/exoplayer2/util/u;

    .line 2185
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v8

    const/16 v9, 0xc

    if-lt v8, v9, :cond_7

    const/4 v8, 0x1

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    :goto_5
    invoke-static {v8}, Lcom/google/android/exoplayer2/text/h/a;->a(Z)V

    .line 2186
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v11

    .line 2187
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v8

    .line 2188
    invoke-virtual {v7, v3}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 2189
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v9

    .line 2190
    invoke-virtual {v7, v4}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 2191
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v16

    .line 2193
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const-string v10, ")."

    const-string v4, "Tx3gDecoder"

    if-le v8, v7, :cond_8

    .line 2194
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v6, "Truncating styl end ("

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") to cueText.length() ("

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2195
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2194
    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    goto :goto_6

    :cond_8
    move v6, v8

    :goto_6
    if-lt v11, v6, :cond_9

    .line 2199
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Ignoring styl with start ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") >= end ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v18, v12

    goto :goto_7

    .line 2202
    :cond_9
    iget v4, v0, Lcom/google/android/exoplayer2/text/h/a;->c:I

    const/16 v17, 0x0

    move-object v7, v2

    move v8, v9

    move v9, v4

    move v10, v11

    move v4, v11

    move v11, v6

    move/from16 v18, v12

    move/from16 v12, v17

    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/text/h/a;->a(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 2203
    iget v9, v0, Lcom/google/android/exoplayer2/text/h/a;->d:I

    const/4 v12, 0x0

    move/from16 v8, v16

    move v10, v4

    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/text/h/a;->b(Landroid/text/SpannableStringBuilder;IIIII)V

    :goto_7
    add-int/lit8 v12, v18, 0x1

    const/4 v4, 0x1

    const/16 v6, 0x8

    goto/16 :goto_4

    :cond_a
    const v4, 0x74626f78

    if-ne v7, v4, :cond_c

    .line 151
    iget-boolean v4, v0, Lcom/google/android/exoplayer2/text/h/a;->b:Z

    if-eqz v4, :cond_c

    .line 152
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/h/a;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v1

    if-lt v1, v3, :cond_b

    const/4 v1, 0x1

    goto :goto_8

    :cond_b
    const/4 v1, 0x0

    :goto_8
    invoke-static {v1}, Lcom/google/android/exoplayer2/text/h/a;->a(Z)V

    .line 153
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/h/a;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v1

    int-to-float v1, v1

    .line 154
    iget v4, v0, Lcom/google/android/exoplayer2/text/h/a;->g:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    const/4 v4, 0x0

    const v6, 0x3f733333    # 0.95f

    .line 155
    invoke-static {v1, v4, v6}, Lcom/google/android/exoplayer2/util/af;->a(FFF)F

    move-result v1

    .line 157
    :cond_c
    iget-object v4, v0, Lcom/google/android/exoplayer2/text/h/a;->a:Lcom/google/android/exoplayer2/util/u;

    add-int/2addr v13, v14

    invoke-virtual {v4, v13}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    const/4 v4, 0x1

    const/16 v6, 0x8

    goto/16 :goto_2

    .line 159
    :cond_d
    new-instance v3, Lcom/google/android/exoplayer2/text/h/b;

    new-instance v4, Lcom/google/android/exoplayer2/text/b$a;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/text/b$a;-><init>()V

    .line 2539
    iput-object v2, v4, Lcom/google/android/exoplayer2/text/b$a;->a:Ljava/lang/CharSequence;

    .line 162
    invoke-virtual {v4, v1, v5}, Lcom/google/android/exoplayer2/text/b$a;->a(FI)Lcom/google/android/exoplayer2/text/b$a;

    move-result-object v1

    .line 2634
    iput v5, v1, Lcom/google/android/exoplayer2/text/b$a;->d:I

    .line 164
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/b$a;->a()Lcom/google/android/exoplayer2/text/b;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/text/h/b;-><init>(Lcom/google/android/exoplayer2/text/b;)V

    return-object v3
.end method

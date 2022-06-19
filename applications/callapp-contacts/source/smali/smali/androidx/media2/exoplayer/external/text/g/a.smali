.class public final Landroidx/media2/exoplayer/external/text/g/a;
.super Landroidx/media2/exoplayer/external/text/b;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/util/p;

.field private b:Z

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:F

.field private g:I


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
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/b;-><init>(Ljava/lang/String;)V

    .line 89
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/g/a;->a:Landroidx/media2/exoplayer/external/util/p;

    const v0, 0x3f59999a    # 0.85f

    const-string v1, "sans-serif"

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 91
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 92
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    const/16 v5, 0x30

    if-eq v3, v5, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    const/16 v5, 0x35

    if-ne v3, v5, :cond_4

    .line 93
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/16 v3, 0x18

    .line 94
    aget-byte v5, p1, v3

    iput v5, p0, Landroidx/media2/exoplayer/external/text/g/a;->c:I

    const/16 v5, 0x1a

    .line 95
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v3, v5, 0x18

    const/16 v5, 0x1b

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v3, v5

    const/16 v5, 0x1c

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    const/16 v5, 0x1d

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    iput v3, p0, Landroidx/media2/exoplayer/external/text/g/a;->d:I

    .line 99
    array-length v3, p1

    const/16 v5, 0x2b

    sub-int/2addr v3, v5

    .line 100
    invoke-static {p1, v5, v3}, Landroidx/media2/exoplayer/external/util/ac;->a([BII)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Serif"

    .line 101
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "serif"

    :cond_1
    iput-object v1, p0, Landroidx/media2/exoplayer/external/text/g/a;->e:Ljava/lang/String;

    const/16 v1, 0x19

    .line 103
    aget-byte v1, p1, v1

    mul-int/lit8 v1, v1, 0x14

    iput v1, p0, Landroidx/media2/exoplayer/external/text/g/a;->g:I

    .line 104
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/text/g/a;->b:Z

    if-eqz v2, :cond_3

    const/16 v0, 0xa

    .line 106
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/16 v2, 0xb

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    int-to-float p1, p1

    int-to-float v0, v1

    div-float/2addr p1, v0

    .line 108
    iput p1, p0, Landroidx/media2/exoplayer/external/text/g/a;->f:F

    const/4 v0, 0x0

    const v1, 0x3f733333    # 0.95f

    .line 109
    invoke-static {p1, v0, v1}, Landroidx/media2/exoplayer/external/util/ac;->a(FFF)F

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/text/g/a;->f:F

    return-void

    .line 111
    :cond_3
    iput v0, p0, Landroidx/media2/exoplayer/external/text/g/a;->f:F

    return-void

    .line 114
    :cond_4
    iput v2, p0, Landroidx/media2/exoplayer/external/text/g/a;->c:I

    const/4 p1, -0x1

    .line 115
    iput p1, p0, Landroidx/media2/exoplayer/external/text/g/a;->d:I

    .line 116
    iput-object v1, p0, Landroidx/media2/exoplayer/external/text/g/a;->e:Ljava/lang/String;

    .line 117
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/text/g/a;->b:Z

    .line 118
    iput v0, p0, Landroidx/media2/exoplayer/external/text/g/a;->f:F

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

    .line 207
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 209
    :cond_2
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    .line 212
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

    .line 216
    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    if-nez v1, :cond_7

    if-nez p5, :cond_7

    if-nez v2, :cond_7

    .line 219
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
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-void

    .line 244
    :cond_0
    new-instance p0, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    const-string v0, "Unexpected subtitle format."

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 0

    if-eq p1, p2, :cond_0

    and-int/lit16 p2, p1, 0xff

    shl-int/lit8 p2, p2, 0x18

    ushr-int/lit8 p1, p1, 0x8

    or-int/2addr p1, p2

    .line 228
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    or-int/lit8 p1, p5, 0x21

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a([BIZ)Landroidx/media2/exoplayer/external/text/d;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 125
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/g/a;->a:Landroidx/media2/exoplayer/external/util/p;

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v1, v2, v3}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    .line 126
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/g/a;->a:Landroidx/media2/exoplayer/external/util/p;

    .line 1172
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Landroidx/media2/exoplayer/external/text/g/a;->a(Z)V

    .line 1173
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v2

    const/16 v6, 0x8

    if-nez v2, :cond_1

    const-string v1, ""

    goto :goto_1

    .line 1177
    :cond_1
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v7

    if-lt v7, v3, :cond_3

    .line 1224
    iget-object v7, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v8, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v6

    iget-object v8, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v9, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/2addr v9, v5

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    int-to-char v7, v7

    const v8, 0xfeff

    if-eq v7, v8, :cond_2

    const v8, 0xfffe

    if-ne v7, v8, :cond_3

    :cond_2
    const-string v7, "UTF-16"

    .line 1180
    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Landroidx/media2/exoplayer/external/util/p;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v7, "UTF-8"

    .line 1183
    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Landroidx/media2/exoplayer/external/util/p;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 127
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 128
    sget-object v1, Landroidx/media2/exoplayer/external/text/g/b;->a:Landroidx/media2/exoplayer/external/text/g/b;

    return-object v1

    .line 131
    :cond_4
    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 132
    iget v8, v0, Landroidx/media2/exoplayer/external/text/g/a;->c:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/high16 v12, 0xff0000

    move-object v7, v13

    invoke-static/range {v7 .. v12}, Landroidx/media2/exoplayer/external/text/g/a;->a(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 134
    iget v8, v0, Landroidx/media2/exoplayer/external/text/g/a;->d:I

    const/4 v9, -0x1

    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    invoke-static/range {v7 .. v12}, Landroidx/media2/exoplayer/external/text/g/a;->b(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 136
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/g/a;->e:Ljava/lang/String;

    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string v7, "sans-serif"

    if-eq v1, v7, :cond_5

    .line 1237
    new-instance v7, Landroid/text/style/TypefaceSpan;

    invoke-direct {v7, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const v1, 0xff0021

    invoke-virtual {v13, v7, v4, v2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 138
    :cond_5
    iget v1, v0, Landroidx/media2/exoplayer/external/text/g/a;->f:F

    .line 140
    :goto_2
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/g/a;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v2

    if-lt v2, v6, :cond_b

    .line 141
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/g/a;->a:Landroidx/media2/exoplayer/external/util/p;

    .line 2142
    iget v2, v2, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 142
    iget-object v7, v0, Landroidx/media2/exoplayer/external/text/g/a;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v14

    .line 143
    iget-object v7, v0, Landroidx/media2/exoplayer/external/text/g/a;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v7

    const v8, 0x7374796c

    if-ne v7, v8, :cond_8

    .line 145
    iget-object v7, v0, Landroidx/media2/exoplayer/external/text/g/a;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v7

    if-lt v7, v3, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    :goto_3
    invoke-static {v7}, Landroidx/media2/exoplayer/external/text/g/a;->a(Z)V

    .line 146
    iget-object v7, v0, Landroidx/media2/exoplayer/external/text/g/a;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v15

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v15, :cond_a

    .line 148
    iget-object v7, v0, Landroidx/media2/exoplayer/external/text/g/a;->a:Landroidx/media2/exoplayer/external/util/p;

    .line 2188
    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v8

    const/16 v9, 0xc

    if-lt v8, v9, :cond_7

    const/4 v8, 0x1

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    :goto_5
    invoke-static {v8}, Landroidx/media2/exoplayer/external/text/g/a;->a(Z)V

    .line 2189
    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v16

    .line 2190
    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v17

    .line 2191
    invoke-virtual {v7, v3}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 2192
    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v8

    .line 2193
    invoke-virtual {v7, v5}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 2194
    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v18

    .line 2195
    iget v9, v0, Landroidx/media2/exoplayer/external/text/g/a;->c:I

    const/16 v19, 0x0

    move-object v7, v13

    move/from16 v10, v16

    move/from16 v11, v17

    move/from16 v20, v12

    move/from16 v12, v19

    invoke-static/range {v7 .. v12}, Landroidx/media2/exoplayer/external/text/g/a;->a(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 2196
    iget v9, v0, Landroidx/media2/exoplayer/external/text/g/a;->d:I

    const/4 v12, 0x0

    move/from16 v8, v18

    invoke-static/range {v7 .. v12}, Landroidx/media2/exoplayer/external/text/g/a;->b(Landroid/text/SpannableStringBuilder;IIIII)V

    add-int/lit8 v12, v20, 0x1

    goto :goto_4

    :cond_8
    const v8, 0x74626f78

    if-ne v7, v8, :cond_a

    .line 150
    iget-boolean v7, v0, Landroidx/media2/exoplayer/external/text/g/a;->b:Z

    if-eqz v7, :cond_a

    .line 151
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/g/a;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v1

    if-lt v1, v3, :cond_9

    const/4 v1, 0x1

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    :goto_6
    invoke-static {v1}, Landroidx/media2/exoplayer/external/text/g/a;->a(Z)V

    .line 152
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/g/a;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v1

    int-to-float v1, v1

    .line 153
    iget v7, v0, Landroidx/media2/exoplayer/external/text/g/a;->g:I

    int-to-float v7, v7

    div-float/2addr v1, v7

    const/4 v7, 0x0

    const v8, 0x3f733333    # 0.95f

    .line 154
    invoke-static {v1, v7, v8}, Landroidx/media2/exoplayer/external/util/ac;->a(FFF)F

    move-result v1

    .line 156
    :cond_a
    iget-object v7, v0, Landroidx/media2/exoplayer/external/text/g/a;->a:Landroidx/media2/exoplayer/external/util/p;

    add-int/2addr v2, v14

    invoke-virtual {v7, v2}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    goto/16 :goto_2

    .line 158
    :cond_b
    new-instance v11, Landroidx/media2/exoplayer/external/text/g/b;

    new-instance v12, Landroidx/media2/exoplayer/external/text/a;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, -0x80000000

    const/4 v10, 0x1

    move-object v2, v12

    move-object v3, v13

    move v5, v1

    invoke-direct/range {v2 .. v10}, Landroidx/media2/exoplayer/external/text/a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    invoke-direct {v11, v12}, Landroidx/media2/exoplayer/external/text/g/b;-><init>(Landroidx/media2/exoplayer/external/text/a;)V

    return-object v11
.end method

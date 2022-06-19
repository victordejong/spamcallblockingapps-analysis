.class public final Lcom/google/android/gms/internal/ads/dus;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 5
    :goto_0
    array-length v1, v0

    invoke-static {v0, v2, v1, v2}, Lcom/google/android/gms/common/util/l;->a([BIII)I

    move-result v0

    return v0

    .line 4
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    .line 8
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    move v2, v3

    move v0, v3

    move v1, v3

    .line 14
    :goto_1
    if-ge v1, v8, :cond_10

    .line 15
    invoke-static {v7, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v9

    .line 16
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    .line 18
    invoke-static {v9}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 19
    invoke-static {v9}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v5

    .line 21
    sget-object v11, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v11, :cond_1

    sget-object v11, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO_EXTENDED:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v11, :cond_1

    sget-object v11, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v11, :cond_1

    sget-object v11, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v11, :cond_1

    sget-object v11, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v11, :cond_1

    sget-object v11, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v11, :cond_1

    sget-object v11, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v11, :cond_1

    sget-object v11, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v11, :cond_1

    sget-object v11, Ljava/lang/Character$UnicodeBlock;->ENCLOSED_CJK_LETTERS_AND_MONTHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v11, :cond_1

    sget-object v11, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v11, :cond_1

    sget-object v11, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v11, :cond_1

    sget-object v11, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v11, :cond_1

    sget-object v11, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v11, :cond_1

    sget-object v11, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    if-ne v5, v11, :cond_7

    :cond_1
    move v5, v4

    .line 22
    :goto_2
    if-nez v5, :cond_4

    .line 23
    const v5, 0xff66

    if-lt v9, v5, :cond_2

    const v5, 0xff9d

    if-le v9, v5, :cond_3

    :cond_2
    const v5, 0xffa1

    if-lt v9, v5, :cond_8

    const v5, 0xffdc

    if-gt v9, v5, :cond_8

    :cond_3
    move v5, v4

    .line 24
    :goto_3
    if-eqz v5, :cond_9

    :cond_4
    move v5, v4

    .line 27
    :goto_4
    if-eqz v5, :cond_a

    .line 28
    if-eqz v2, :cond_5

    .line 29
    new-instance v2, Ljava/lang/String;

    sub-int v5, v1, v0

    invoke-direct {v2, v7, v0, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v7, v1, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    .line 47
    :cond_6
    :goto_5
    add-int/2addr v1, v10

    .line 48
    goto :goto_1

    :cond_7
    move v5, v3

    .line 21
    goto :goto_2

    :cond_8
    move v5, v3

    .line 23
    goto :goto_3

    :cond_9
    move v5, v3

    .line 26
    goto :goto_4

    .line 32
    :cond_a
    invoke-static {v9}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v5

    if-nez v5, :cond_b

    .line 33
    invoke-static {v9}, Ljava/lang/Character;->getType(I)I

    move-result v5

    const/4 v11, 0x6

    if-eq v5, v11, :cond_b

    .line 34
    invoke-static {v9}, Ljava/lang/Character;->getType(I)I

    move-result v5

    const/16 v11, 0x8

    if-ne v5, v11, :cond_d

    .line 35
    :cond_b
    if-nez v2, :cond_c

    move v0, v1

    :cond_c
    move v2, v4

    .line 37
    goto :goto_5

    .line 38
    :cond_d
    if-eqz p1, :cond_f

    .line 39
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    if-ne v5, v4, :cond_f

    .line 40
    invoke-static {v9}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v5

    aget-char v5, v5, v3

    const/16 v9, 0x27

    if-ne v5, v9, :cond_f

    .line 41
    if-nez v2, :cond_e

    move v0, v1

    :cond_e
    move v2, v4

    .line 43
    goto :goto_5

    .line 44
    :cond_f
    if-eqz v2, :cond_6

    .line 45
    new-instance v2, Ljava/lang/String;

    sub-int v5, v1, v0

    invoke-direct {v2, v7, v0, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    .line 46
    goto :goto_5

    .line 49
    :cond_10
    if-eqz v2, :cond_11

    .line 50
    new-instance v2, Ljava/lang/String;

    sub-int/2addr v1, v0

    invoke-direct {v2, v7, v0, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_11
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 52
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto/16 :goto_0
.end method

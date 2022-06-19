.class public final Lcom/google/android/exoplayer2/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/i;


# instance fields
.field private final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Resources;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/a;->a:Landroid/content/res/Resources;

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 131
    array-length v0, p1

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    .line 132
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 133
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v2, v4

    goto :goto_1

    .line 136
    :cond_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/a;->a:Landroid/content/res/Resources;

    sget v6, Lcom/google/android/exoplayer2/ui/c$j;->exo_item_list:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v1

    const/4 v2, 0x1

    aput-object v4, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private b(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .locals 5

    .line 66
    iget p1, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->a:Landroid/content/res/Resources;

    sget v1, Lcom/google/android/exoplayer2/ui/c$j;->exo_track_bitrate:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-float p1, p1

    const v4, 0x49742400    # 1000000.0f

    div-float/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 94
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/a;->e(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/a;->f(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/a;->d(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method private static d(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    return-object p0
.end method

.method private static e(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .locals 2

    .line 103
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 104
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "und"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 107
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    .line 108
    :goto_0
    invoke-virtual {p0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method private f(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .locals 6

    .line 113
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->a:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/exoplayer2/ui/c$j;->exo_track_role_alternate:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 116
    :goto_0
    iget v2, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    new-array v2, v1, [Ljava/lang/String;

    aput-object v0, v2, v4

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->a:Landroid/content/res/Resources;

    sget v5, Lcom/google/android/exoplayer2/ui/c$j;->exo_track_role_supplementary:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_1
    iget v2, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    new-array v2, v1, [Ljava/lang/String;

    aput-object v0, v2, v4

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->a:Landroid/content/res/Resources;

    sget v5, Lcom/google/android/exoplayer2/ui/c$j;->exo_track_role_commentary:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/ui/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_2
    iget p1, p1, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 p1, p1, 0x440

    if-eqz p1, :cond_3

    new-array p1, v1, [Ljava/lang/String;

    aput-object v0, p1, v4

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/a;->a:Landroid/content/res/Resources;

    sget v1, Lcom/google/android/exoplayer2/ui/c$j;->exo_track_role_closed_captions:I

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .locals 9

    .line 1144
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/q;->g(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    goto :goto_2

    .line 1148
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    const/4 v0, 0x2

    goto :goto_2

    .line 1151
    :cond_2
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/q;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    .line 1154
    :cond_4
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->width:I

    if-ne v0, v3, :cond_1

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq v0, v3, :cond_5

    goto :goto_0

    .line 1157
    :cond_5
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ne v0, v3, :cond_3

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-eq v0, v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, -0x1

    :goto_2
    const-string v4, ""

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ne v0, v2, :cond_9

    new-array v0, v5, [Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/a;->f(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v6

    .line 2058
    iget v5, p1, Lcom/google/android/exoplayer2/Format;->width:I

    .line 2059
    iget v7, p1, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq v5, v3, :cond_8

    if-ne v7, v3, :cond_7

    goto :goto_3

    .line 2062
    :cond_7
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/a;->a:Landroid/content/res/Resources;

    sget v4, Lcom/google/android/exoplayer2/ui/c$j;->exo_track_resolution:I

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v1

    invoke-virtual {v3, v4, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_8
    :goto_3
    aput-object v4, v0, v1

    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/a;->b(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    .line 43
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_9
    if-ne v0, v1, :cond_10

    new-array v0, v5, [Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/a;->c(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v6

    .line 2073
    iget v5, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-eq v5, v3, :cond_f

    if-gtz v5, :cond_a

    goto :goto_4

    :cond_a
    if-eq v5, v1, :cond_e

    if-eq v5, v2, :cond_d

    const/4 v3, 0x6

    if-eq v5, v3, :cond_c

    const/4 v3, 0x7

    if-eq v5, v3, :cond_c

    const/16 v3, 0x8

    if-eq v5, v3, :cond_b

    .line 2088
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/a;->a:Landroid/content/res/Resources;

    sget v4, Lcom/google/android/exoplayer2/ui/c$j;->exo_track_surround:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 2086
    :cond_b
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/a;->a:Landroid/content/res/Resources;

    sget v4, Lcom/google/android/exoplayer2/ui/c$j;->exo_track_surround_7_point_1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 2084
    :cond_c
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/a;->a:Landroid/content/res/Resources;

    sget v4, Lcom/google/android/exoplayer2/ui/c$j;->exo_track_surround_5_point_1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 2081
    :cond_d
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/a;->a:Landroid/content/res/Resources;

    sget v4, Lcom/google/android/exoplayer2/ui/c$j;->exo_track_stereo:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 2079
    :cond_e
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/a;->a:Landroid/content/res/Resources;

    sget v4, Lcom/google/android/exoplayer2/ui/c$j;->exo_track_mono:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_f
    :goto_4
    aput-object v4, v0, v1

    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/a;->b(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    .line 47
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 52
    :cond_10
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/a;->c(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object p1

    .line 54
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_11

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/a;->a:Landroid/content/res/Resources;

    sget v0, Lcom/google/android/exoplayer2/ui/c$j;->exo_track_unknown:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_11
    return-object p1
.end method

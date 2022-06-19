.class public Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private final b:[D

.field private final c:I

.field private final d:I

.field private final e:D

.field private final f:D

.field private final g:D

.field private final h:D

.field private final i:D

.field private final j:[D

.field private k:I

.field private l:D

.field private m:D

.field private n:D


# direct methods
.method public constructor <init>(IIDDDDD)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->c:I

    .line 55
    iput p2, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->d:I

    .line 56
    iput-wide p3, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->e:D

    .line 57
    iput-wide p5, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->f:D

    .line 58
    iput-wide p7, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->g:D

    .line 59
    iput-wide p9, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->h:D

    .line 60
    iput-wide p11, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->i:D

    mul-int p1, p1, p2

    .line 62
    new-array p1, p1, [D

    iput-object p1, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->b:[D

    .line 63
    new-array p1, p2, [D

    iput-object p1, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->j:[D

    return-void
.end method


# virtual methods
.method public final a(D)D
    .locals 13

    .line 1105
    iget-wide v0, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget v4, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->c:I

    int-to-long v4, v4

    rem-long/2addr v0, v4

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v2

    if-nez v7, :cond_1

    .line 1108
    iget v7, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->k:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->k:I

    .line 1109
    iget v9, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->d:I

    if-le v7, v9, :cond_0

    .line 1110
    iput v9, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->k:I

    .line 1111
    iget-object v7, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->j:[D

    sub-int/2addr v9, v8

    invoke-static {v7, v8, v7, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1113
    :cond_0
    iput-wide v5, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->l:D

    .line 1115
    :cond_1
    iget-wide v7, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->l:D

    mul-double v9, p1, p1

    add-double/2addr v7, v9

    iput-wide v7, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->l:D

    const-wide/16 v9, 0x0

    cmp-long v11, v0, v9

    if-nez v11, :cond_2

    .line 1116
    iget v0, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->c:I

    int-to-long v0, v0

    .line 1117
    :cond_2
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    long-to-double v0, v0

    div-double/2addr v7, v0

    .line 1118
    iget-object v0, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->j:[D

    iget v1, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->k:I

    add-int/lit8 v9, v1, -0x1

    aput-wide v7, v0, v9

    .line 1122
    invoke-static {v0, v4, v1}, Ljava/util/Arrays;->copyOfRange([DII)[D

    move-result-object v0

    .line 1123
    invoke-static {v0}, Ljava/util/Arrays;->sort([D)V

    .line 1124
    iget v1, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->k:I

    div-int/lit8 v4, v1, 0x2

    aget-wide v7, v0, v4

    .line 1125
    iget-object v0, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->j:[D

    div-int/lit8 v1, v1, 0x2

    aget-wide v9, v0, v1

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->m:D

    .line 1130
    iget-wide v7, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->e:D

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v7

    if-gez v4, :cond_3

    .line 1131
    iget-wide v7, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->f:D

    iget-wide v11, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->g:D

    invoke-static {v0, v1, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    div-double/2addr v7, v0

    goto :goto_0

    :cond_3
    move-wide v7, v9

    .line 1133
    :goto_0
    iget-wide v0, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->n:D

    cmpg-double v4, v0, v7

    if-gez v4, :cond_4

    .line 1134
    iget-wide v11, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->h:D

    add-double/2addr v0, v11

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->n:D

    goto :goto_1

    :cond_4
    cmpl-double v4, v0, v7

    if-lez v4, :cond_5

    .line 1136
    iget-wide v11, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->i:D

    sub-double/2addr v0, v11

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->n:D

    .line 77
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->b:[D

    iget-wide v7, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->a:J

    add-long/2addr v2, v7

    iput-wide v2, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->a:J

    array-length v1, v0

    int-to-long v11, v1

    rem-long/2addr v7, v11

    long-to-int v1, v7

    aput-wide p1, v0, v1

    .line 78
    array-length p1, v0

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long v1, v2, p1

    if-gez v1, :cond_6

    return-wide v5

    .line 80
    :cond_6
    array-length p1, v0

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    add-long/2addr v2, p1

    array-length p1, v0

    int-to-long p1, p1

    rem-long/2addr v2, p1

    long-to-int p1, v2

    aget-wide p1, v0, p1

    .line 81
    iget-wide v0, p0, Lcom/callapp/contacts/recorder/encoder/DynamicNormalizer;->n:D

    mul-double v0, v0, p1

    cmpl-double p1, v0, v9

    if-lez p1, :cond_7

    return-wide v9

    :cond_7
    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    cmpg-double v2, v0, p1

    if-gez v2, :cond_8

    return-wide p1

    :cond_8
    return-wide v0
.end method

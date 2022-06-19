.class public final Lcom/google/android/exoplayer2/metadata/dvbsi/a;
.super Lcom/google/android/exoplayer2/metadata/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/metadata/c;Ljava/nio/ByteBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 16

    .line 51
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x74

    if-ne v0, v2, :cond_6

    .line 53
    new-instance v0, Lcom/google/android/exoplayer2/util/t;

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/util/t;-><init>([BI)V

    const/16 v2, 0xc

    .line 1060
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 1061
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v3

    .line 1062
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->c()I

    move-result v4

    add-int/2addr v4, v3

    const/4 v3, 0x4

    sub-int/2addr v4, v3

    const/16 v5, 0x2c

    .line 1066
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 1068
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v5

    .line 1072
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/t;->d(I)V

    const/16 v5, 0x10

    .line 1075
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 1077
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1078
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->c()I

    move-result v7

    if-ge v7, v4, :cond_5

    const/16 v7, 0x30

    .line 1083
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    const/16 v7, 0x8

    .line 1085
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v8

    .line 1088
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 1090
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v9

    .line 1092
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->c()I

    move-result v10

    add-int/2addr v10, v9

    move-object v9, v1

    move-object v11, v9

    .line 1093
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->c()I

    move-result v12

    if-ge v12, v10, :cond_4

    .line 1094
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v12

    .line 1095
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v13

    .line 1096
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->c()I

    move-result v14

    add-int/2addr v14, v13

    const/4 v15, 0x2

    if-ne v12, v15, :cond_2

    .line 1100
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v12

    .line 1102
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    const/4 v13, 0x3

    if-ne v12, v13, :cond_3

    .line 1106
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/t;->c()I

    move-result v12

    if-ge v12, v14, :cond_3

    .line 1107
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v9

    .line 1108
    sget-object v12, Lcom/google/common/base/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v9, v12}, Lcom/google/android/exoplayer2/util/t;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    .line 1110
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v12

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_1

    .line 1114
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v15

    .line 1115
    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/t;->d(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_2
    const/16 v15, 0x15

    if-ne v12, v15, :cond_3

    .line 1121
    sget-object v11, Lcom/google/common/base/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v13, v11}, Lcom/google/android/exoplayer2/util/t;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    :cond_3
    mul-int/lit8 v14, v14, 0x8

    .line 1124
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/t;->a(I)V

    goto :goto_1

    :cond_4
    mul-int/lit8 v10, v10, 0x8

    .line 1127
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/util/t;->a(I)V

    if-eqz v9, :cond_0

    if-eqz v11, :cond_0

    .line 1130
    new-instance v7, Lcom/google/android/exoplayer2/metadata/dvbsi/AppInfoTable;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/google/android/exoplayer2/metadata/dvbsi/AppInfoTable;-><init>(ILjava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1134
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v0, v6}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_6
    return-object v1
.end method

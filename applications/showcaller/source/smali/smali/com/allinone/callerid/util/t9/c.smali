.class public final Lcom/allinone/callerid/util/t9/c;
.super Ljava/lang/Object;
.source "T9Matcher.java"


# direct methods
.method private static a(Lcom/allinone/callerid/util/t9/T9MatchInfo;)Lcom/allinone/callerid/util/t9/T9MatchInfo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/allinone/callerid/util/t9/T9MatchInfo;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/util/t9/T9MatchInfo;

    invoke-direct {v0}, Lcom/allinone/callerid/util/t9/T9MatchInfo;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lcom/allinone/callerid/util/t9/T9MatchInfo;->e(Lcom/allinone/callerid/util/t9/T9MatchInfo;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public static b(Ljava/lang/String;C)Lcom/allinone/callerid/util/t9/T9MatchInfo;
    .locals 3

    .line 1
    new-instance v0, Lcom/allinone/callerid/util/t9/T9MatchInfo;

    invoke-direct {v0}, Lcom/allinone/callerid/util/t9/T9MatchInfo;-><init>()V

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {p1}, Lcom/allinone/callerid/util/t9/e;->b(C)C

    move-result p1

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 6
    invoke-static {p0, v1, p1}, Lcom/allinone/callerid/util/t9/e;->g(Ljava/lang/String;II)I

    move-result p0

    .line 7
    invoke-virtual {v0, p0, v2}, Lcom/allinone/callerid/util/t9/T9MatchInfo;->d(II)V

    :cond_0
    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Lcom/allinone/callerid/util/t9/T9MatchInfo;
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p0, p1}, Lcom/allinone/callerid/util/t9/c;->b(Ljava/lang/String;C)Lcom/allinone/callerid/util/t9/T9MatchInfo;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    new-instance v0, Lcom/allinone/callerid/util/t9/T9MatchInfo;

    invoke-direct {v0}, Lcom/allinone/callerid/util/t9/T9MatchInfo;-><init>()V

    :cond_2
    const/16 v2, 0x3b

    .line 5
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gez v2, :cond_3

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :cond_3
    if-ge v1, v2, :cond_4

    .line 7
    invoke-static {v0, p0, v1, v2, p1}, Lcom/allinone/callerid/util/t9/c;->e(Lcom/allinone/callerid/util/t9/T9MatchInfo;Ljava/lang/String;IILjava/lang/String;)V

    :cond_4
    add-int/lit8 v1, v2, 0x1

    .line 8
    invoke-virtual {v0}, Lcom/allinone/callerid/util/t9/T9MatchInfo;->a()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_2

    :cond_5
    return-object v0

    .line 9
    :cond_6
    :goto_0
    new-instance p0, Lcom/allinone/callerid/util/t9/T9MatchInfo;

    invoke-direct {p0}, Lcom/allinone/callerid/util/t9/T9MatchInfo;-><init>()V

    return-object p0
.end method

.method private static d(Ljava/lang/String;IIILjava/lang/String;ILjava/util/BitSet;)I
    .locals 17

    move-object/from16 v7, p0

    move/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    add-int/lit8 v11, p3, 0x1

    move v12, v11

    :goto_0
    if-ge v12, v8, :cond_1

    .line 1
    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/allinone/callerid/util/t9/e;->i(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v12, v8, :cond_3

    add-int/lit8 v0, p5, 0x1

    .line 2
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, v1, p5

    add-int/lit8 v1, v1, -0x1

    .line 3
    invoke-virtual {v7, v11, v9, v0, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    sub-int v0, p3, p1

    .line 4
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    sub-int v1, v1, p5

    .line 5
    invoke-virtual {v10, v0, v1}, Ljava/util/BitSet;->set(II)V

    return v14

    :cond_2
    return v13

    :cond_3
    add-int/lit8 v15, p5, 0x1

    .line 6
    invoke-virtual {v9, v15}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/allinone/callerid/util/t9/e;->b(C)C

    move-result v0

    .line 7
    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v16, 0x2

    if-ne v0, v1, :cond_5

    .line 8
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p5, 0x2

    if-ne v0, v1, :cond_4

    sub-int v0, p3, p1

    .line 9
    invoke-virtual {v10, v0}, Ljava/util/BitSet;->set(I)V

    sub-int v12, v12, p1

    .line 10
    invoke-virtual {v10, v12}, Ljava/util/BitSet;->set(I)V

    return v16

    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v12

    move-object/from16 v4, p4

    move v5, v15

    move-object/from16 v6, p6

    .line 11
    invoke-static/range {v0 .. v6}, Lcom/allinone/callerid/util/t9/c;->d(Ljava/lang/String;IIILjava/lang/String;ILjava/util/BitSet;)I

    move-result v0

    if-lez v0, :cond_5

    sub-int v1, p3, p1

    .line 12
    invoke-virtual {v10, v1}, Ljava/util/BitSet;->set(I)V

    :goto_2
    add-int/2addr v0, v14

    return v0

    :cond_5
    sub-int v0, v12, p3

    add-int/lit8 v1, v12, -0x1

    .line 13
    :goto_3
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 14
    :cond_6
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, v1, p5

    if-gt v1, v0, :cond_8

    .line 15
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, v0, p5

    add-int/lit8 v0, v0, -0x1

    .line 16
    invoke-virtual {v7, v11, v9, v15, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_7

    sub-int v0, p3, p1

    .line 17
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    sub-int v1, v1, p5

    invoke-virtual {v10, v0, v1}, Ljava/util/BitSet;->set(II)V

    return v14

    :cond_7
    return v13

    :cond_8
    add-int v5, p5, v0

    .line 18
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/allinone/callerid/util/t9/e;->b(C)C

    move-result v1

    .line 19
    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_a

    sub-int/2addr v0, v14

    .line 20
    invoke-virtual {v7, v11, v9, v15, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_a

    add-int/lit8 v0, v5, 0x1

    .line 21
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_9

    sub-int v0, p3, p1

    sub-int v12, v12, p1

    add-int/2addr v12, v14

    .line 22
    invoke-virtual {v10, v0, v12}, Ljava/util/BitSet;->set(II)V

    return v16

    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v12

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    .line 23
    invoke-static/range {v0 .. v6}, Lcom/allinone/callerid/util/t9/c;->d(Ljava/lang/String;IIILjava/lang/String;ILjava/util/BitSet;)I

    move-result v0

    if-lez v0, :cond_a

    sub-int v1, p3, p1

    sub-int v12, v12, p1

    .line 24
    invoke-virtual {v10, v1, v12}, Ljava/util/BitSet;->set(II)V

    goto :goto_2

    :cond_a
    return v13
.end method

.method private static e(Lcom/allinone/callerid/util/t9/T9MatchInfo;Ljava/lang/String;IILjava/lang/String;)V
    .locals 11

    sub-int v0, p3, p2

    .line 1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p3, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/allinone/callerid/util/t9/e;->b(C)C

    move-result v1

    const/4 v2, 0x0

    move v3, p2

    :goto_0
    if-lt v3, v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_5

    if-lt v3, v0, :cond_2

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/t9/e;->e()Ljava/util/BitSet;

    move-result-object v2

    .line 6
    :cond_3
    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    const/4 v9, 0x0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, v3

    move-object v8, p4

    move-object v10, v2

    .line 7
    invoke-static/range {v4 .. v10}, Lcom/allinone/callerid/util/t9/c;->d(Ljava/lang/String;IIILjava/lang/String;ILjava/util/BitSet;)I

    move-result v4

    if-lez v4, :cond_4

    .line 8
    invoke-static {p1, p0, v2, p2}, Lcom/allinone/callerid/util/t9/c;->g(Ljava/lang/String;Lcom/allinone/callerid/util/t9/T9MatchInfo;Ljava/util/BitSet;I)V

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    .line 9
    invoke-static {v2}, Lcom/allinone/callerid/util/t9/e;->k(Ljava/util/BitSet;)V

    :cond_6
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Lcom/allinone/callerid/util/t9/T9MatchInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/allinone/callerid/util/t9/T9MatchInfo;

    invoke-direct {v0}, Lcom/allinone/callerid/util/t9/T9MatchInfo;-><init>()V

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/allinone/callerid/util/t9/T9MatchInfo;->d(II)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static g(Ljava/lang/String;Lcom/allinone/callerid/util/t9/T9MatchInfo;Ljava/util/BitSet;I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, p3

    const/4 v4, -0x1

    :goto_0
    if-ge v3, v0, :cond_4

    .line 2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-eq v3, p3, :cond_0

    if-eq v5, v6, :cond_0

    .line 3
    invoke-static {v5}, Lcom/allinone/callerid/util/t9/e;->i(C)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    sub-int v7, v3, p3

    .line 4
    invoke-virtual {p2, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eq v5, v6, :cond_1

    if-ne v4, v1, :cond_2

    move v4, v2

    goto :goto_1

    :cond_1
    if-le v4, v1, :cond_2

    .line 5
    invoke-static {p1}, Lcom/allinone/callerid/util/t9/c;->a(Lcom/allinone/callerid/util/t9/T9MatchInfo;)Lcom/allinone/callerid/util/t9/T9MatchInfo;

    move-result-object p1

    sub-int v5, v2, v4

    .line 6
    invoke-virtual {p1, v4, v5}, Lcom/allinone/callerid/util/t9/T9MatchInfo;->d(II)V

    const/4 v4, -0x1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-le v4, v1, :cond_5

    .line 7
    invoke-static {p1}, Lcom/allinone/callerid/util/t9/c;->a(Lcom/allinone/callerid/util/t9/T9MatchInfo;)Lcom/allinone/callerid/util/t9/T9MatchInfo;

    move-result-object p0

    sub-int/2addr v2, v4

    .line 8
    invoke-virtual {p0, v4, v2}, Lcom/allinone/callerid/util/t9/T9MatchInfo;->d(II)V

    :cond_5
    return-void
.end method

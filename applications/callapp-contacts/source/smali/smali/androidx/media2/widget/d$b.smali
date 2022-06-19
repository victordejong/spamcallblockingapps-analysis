.class final Landroidx/media2/widget/d$b;
.super Landroidx/media2/widget/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final g:Landroidx/media2/widget/c;

.field private final h:Landroidx/media2/widget/d$a;


# direct methods
.method constructor <init>(Landroidx/media2/widget/d$a;Landroid/media/MediaFormat;)V
    .locals 0

    .line 79
    invoke-direct {p0, p2}, Landroidx/media2/widget/p;-><init>(Landroid/media/MediaFormat;)V

    .line 81
    iput-object p1, p0, Landroidx/media2/widget/d$b;->h:Landroidx/media2/widget/d$a;

    .line 82
    new-instance p2, Landroidx/media2/widget/c;

    invoke-direct {p2, p1}, Landroidx/media2/widget/c;-><init>(Landroidx/media2/widget/c$d;)V

    iput-object p2, p0, Landroidx/media2/widget/d$b;->g:Landroidx/media2/widget/c;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media2/widget/p$c;
    .locals 1

    .line 92
    iget-object v0, p0, Landroidx/media2/widget/d$b;->h:Landroidx/media2/widget/d$a;

    return-object v0
.end method

.method public final a([B)V
    .locals 16

    move-object/from16 v0, p0

    .line 87
    iget-object v1, v0, Landroidx/media2/widget/d$b;->g:Landroidx/media2/widget/c;

    .line 1090
    invoke-static/range {p1 .. p1}, Landroidx/media2/widget/c$a;->a([B)[Landroidx/media2/widget/c$a;

    move-result-object v2

    const/4 v4, 0x0

    .line 1092
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_19

    .line 1097
    aget-object v5, v2, v4

    .line 1185
    invoke-virtual {v5}, Landroidx/media2/widget/c$a;->a()I

    move-result v5

    .line 1187
    iget v6, v1, Landroidx/media2/widget/c;->c:I

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v6, v7, :cond_0

    iget v6, v1, Landroidx/media2/widget/c;->c:I

    if-ne v6, v5, :cond_0

    .line 1189
    iput v7, v1, Landroidx/media2/widget/c;->c:I

    :goto_1
    const/4 v5, 0x1

    goto/16 :goto_9

    :cond_0
    const/4 v6, 0x4

    const/4 v11, 0x3

    packed-switch v5, :pswitch_data_0

    .line 1258
    :pswitch_0
    iput v7, v1, Landroidx/media2/widget/c;->c:I

    const/4 v5, 0x0

    goto/16 :goto_9

    .line 4276
    :pswitch_1
    iget-object v6, v1, Landroidx/media2/widget/c;->d:Landroidx/media2/widget/c$c;

    .line 4277
    iget-object v7, v1, Landroidx/media2/widget/c;->e:Landroidx/media2/widget/c$c;

    iput-object v7, v1, Landroidx/media2/widget/c;->d:Landroidx/media2/widget/c$c;

    .line 4278
    iput-object v6, v1, Landroidx/media2/widget/c;->e:Landroidx/media2/widget/c$c;

    .line 1253
    iput v11, v1, Landroidx/media2/widget/c;->a:I

    .line 1254
    invoke-virtual {v1}, Landroidx/media2/widget/c;->b()V

    goto/16 :goto_8

    .line 1247
    :pswitch_2
    iget-object v6, v1, Landroidx/media2/widget/c;->e:Landroidx/media2/widget/c$c;

    invoke-virtual {v6}, Landroidx/media2/widget/c$c;->a()V

    goto/16 :goto_8

    .line 1236
    :pswitch_3
    iget v6, v1, Landroidx/media2/widget/c;->a:I

    if-ne v6, v9, :cond_5

    .line 1237
    invoke-virtual {v1}, Landroidx/media2/widget/c;->a()Landroidx/media2/widget/c$c;

    move-result-object v6

    iget v7, v1, Landroidx/media2/widget/c;->b:I

    const/4 v11, 0x0

    .line 2591
    :goto_2
    iget v12, v6, Landroidx/media2/widget/c$c;->b:I

    sub-int/2addr v12, v7

    if-gt v11, v12, :cond_1

    .line 2592
    iget-object v12, v6, Landroidx/media2/widget/c$c;->a:[Landroidx/media2/widget/c$b;

    aput-object v8, v12, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2594
    :cond_1
    iget v11, v6, Landroidx/media2/widget/c$c;->b:I

    sub-int/2addr v11, v7

    add-int/2addr v11, v10

    if-gtz v11, :cond_2

    const/4 v11, 0x1

    .line 2598
    :cond_2
    :goto_3
    iget v7, v6, Landroidx/media2/widget/c$c;->b:I

    if-ge v11, v7, :cond_3

    .line 2599
    iget-object v7, v6, Landroidx/media2/widget/c$c;->a:[Landroidx/media2/widget/c$b;

    add-int/lit8 v12, v11, 0x1

    aget-object v13, v7, v12

    aput-object v13, v7, v11

    move v11, v12

    goto :goto_3

    .line 2601
    :cond_3
    iget v7, v6, Landroidx/media2/widget/c$c;->b:I

    :goto_4
    iget-object v11, v6, Landroidx/media2/widget/c$c;->a:[Landroidx/media2/widget/c$b;

    array-length v11, v11

    if-ge v7, v11, :cond_4

    .line 2603
    iget-object v11, v6, Landroidx/media2/widget/c$c;->a:[Landroidx/media2/widget/c$b;

    aput-object v8, v11, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2606
    :cond_4
    iput v10, v6, Landroidx/media2/widget/c$c;->c:I

    goto :goto_5

    .line 1239
    :cond_5
    invoke-virtual {v1}, Landroidx/media2/widget/c;->a()Landroidx/media2/widget/c$c;

    move-result-object v6

    .line 3586
    iget v7, v6, Landroidx/media2/widget/c$c;->b:I

    add-int/2addr v7, v10

    invoke-virtual {v6, v7, v10}, Landroidx/media2/widget/c$c;->a(II)V

    .line 1241
    :goto_5
    iget v6, v1, Landroidx/media2/widget/c;->a:I

    if-ne v6, v9, :cond_9

    .line 1242
    invoke-virtual {v1}, Landroidx/media2/widget/c;->b()V

    goto/16 :goto_8

    .line 1232
    :pswitch_4
    iget-object v6, v1, Landroidx/media2/widget/c;->d:Landroidx/media2/widget/c$c;

    invoke-virtual {v6}, Landroidx/media2/widget/c$c;->a()V

    .line 1233
    invoke-virtual {v1}, Landroidx/media2/widget/c;->b()V

    goto/16 :goto_8

    .line 1228
    :pswitch_5
    iput v6, v1, Landroidx/media2/widget/c;->a:I

    goto/16 :goto_8

    .line 1224
    :pswitch_6
    iput v6, v1, Landroidx/media2/widget/c;->a:I

    .line 1225
    iget-object v6, v1, Landroidx/media2/widget/c;->f:Landroidx/media2/widget/c$c;

    invoke-virtual {v6}, Landroidx/media2/widget/c$c;->a()V

    goto :goto_8

    .line 1221
    :pswitch_7
    iput v10, v1, Landroidx/media2/widget/c;->a:I

    goto :goto_8

    :pswitch_8
    add-int/lit8 v6, v5, -0x23

    .line 1207
    iput v6, v1, Landroidx/media2/widget/c;->b:I

    .line 1209
    iget v6, v1, Landroidx/media2/widget/c;->a:I

    if-eq v6, v9, :cond_6

    .line 1210
    iget-object v6, v1, Landroidx/media2/widget/c;->d:Landroidx/media2/widget/c$c;

    invoke-virtual {v6}, Landroidx/media2/widget/c$c;->a()V

    .line 1211
    iget-object v6, v1, Landroidx/media2/widget/c;->e:Landroidx/media2/widget/c$c;

    invoke-virtual {v6}, Landroidx/media2/widget/c$c;->a()V

    .line 1214
    :cond_6
    iput v9, v1, Landroidx/media2/widget/c;->a:I

    goto :goto_8

    .line 1202
    :pswitch_9
    invoke-virtual {v1}, Landroidx/media2/widget/c;->a()Landroidx/media2/widget/c$c;

    move-result-object v6

    .line 1555
    iget-object v7, v6, Landroidx/media2/widget/c$c;->a:[Landroidx/media2/widget/c$b;

    iget v11, v6, Landroidx/media2/widget/c$c;->b:I

    aget-object v7, v7, v11

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    .line 1556
    :goto_6
    iget v11, v6, Landroidx/media2/widget/c$c;->c:I

    if-ge v7, v11, :cond_8

    .line 1557
    iget-object v11, v6, Landroidx/media2/widget/c$c;->a:[Landroidx/media2/widget/c$b;

    iget v12, v6, Landroidx/media2/widget/c$c;->b:I

    aget-object v11, v11, v12

    .line 2461
    iget-object v11, v11, Landroidx/media2/widget/c$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    const/16 v12, 0xa0

    if-eq v11, v12, :cond_7

    .line 1558
    iget v7, v6, Landroidx/media2/widget/c$c;->c:I

    :goto_7
    iget-object v11, v6, Landroidx/media2/widget/c$c;->a:[Landroidx/media2/widget/c$b;

    iget v13, v6, Landroidx/media2/widget/c$c;->b:I

    aget-object v11, v11, v13

    .line 2465
    iget-object v11, v11, Landroidx/media2/widget/c$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-ge v7, v11, :cond_9

    .line 1559
    iget-object v11, v6, Landroidx/media2/widget/c$c;->a:[Landroidx/media2/widget/c$b;

    aget-object v11, v11, v7

    invoke-virtual {v11, v7, v12}, Landroidx/media2/widget/c$b;->a(IC)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 1564
    :cond_8
    iget-object v7, v6, Landroidx/media2/widget/c$c;->a:[Landroidx/media2/widget/c$b;

    iget v6, v6, Landroidx/media2/widget/c$c;->b:I

    aput-object v8, v7, v6

    goto :goto_8

    .line 1199
    :pswitch_a
    invoke-virtual {v1}, Landroidx/media2/widget/c;->a()Landroidx/media2/widget/c$c;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media2/widget/c$c;->b()V

    goto :goto_8

    .line 1196
    :pswitch_b
    iput v11, v1, Landroidx/media2/widget/c;->a:I

    .line 1262
    :cond_9
    :goto_8
    :pswitch_c
    iput v5, v1, Landroidx/media2/widget/c;->c:I

    goto/16 :goto_1

    :goto_9
    if-nez v5, :cond_18

    .line 1097
    aget-object v5, v2, v4

    .line 5174
    invoke-virtual {v5}, Landroidx/media2/widget/c$a;->d()I

    move-result v5

    if-lez v5, :cond_a

    .line 5177
    invoke-virtual {v1}, Landroidx/media2/widget/c;->a()Landroidx/media2/widget/c$c;

    move-result-object v6

    .line 5569
    invoke-virtual {v6, v5}, Landroidx/media2/widget/c$c;->a(I)V

    const/4 v5, 0x1

    goto :goto_a

    :cond_a
    const/4 v5, 0x0

    :goto_a
    if-nez v5, :cond_18

    .line 1098
    aget-object v5, v2, v4

    .line 6160
    invoke-virtual {v5}, Landroidx/media2/widget/c$a;->c()Landroidx/media2/widget/c$f;

    move-result-object v5

    if-eqz v5, :cond_13

    .line 6163
    iget v6, v1, Landroidx/media2/widget/c;->a:I

    if-ne v6, v9, :cond_10

    .line 6164
    invoke-virtual {v1}, Landroidx/media2/widget/c;->a()Landroidx/media2/widget/c$c;

    move-result-object v6

    .line 6391
    iget v7, v5, Landroidx/media2/widget/c$f;->a:I

    .line 6164
    iget v11, v1, Landroidx/media2/widget/c;->b:I

    .line 6652
    iget v12, v6, Landroidx/media2/widget/c$c;->b:I

    if-eq v12, v7, :cond_10

    if-ge v7, v11, :cond_b

    move v12, v7

    goto :goto_b

    :cond_b
    move v12, v11

    .line 6659
    :goto_b
    iget v13, v6, Landroidx/media2/widget/c$c;->b:I

    if-ge v13, v12, :cond_c

    .line 6660
    iget v12, v6, Landroidx/media2/widget/c$c;->b:I

    .line 6664
    :cond_c
    iget v13, v6, Landroidx/media2/widget/c$c;->b:I

    if-ge v7, v13, :cond_d

    add-int/lit8 v12, v12, -0x1

    :goto_c
    if-ltz v12, :cond_e

    .line 6667
    iget-object v13, v6, Landroidx/media2/widget/c$c;->a:[Landroidx/media2/widget/c$b;

    sub-int v14, v7, v12

    iget-object v15, v6, Landroidx/media2/widget/c$c;->a:[Landroidx/media2/widget/c$b;

    iget v3, v6, Landroidx/media2/widget/c$c;->b:I

    sub-int/2addr v3, v12

    aget-object v3, v15, v3

    aput-object v3, v13, v14

    add-int/lit8 v12, v12, -0x1

    goto :goto_c

    :cond_d
    const/4 v3, 0x0

    :goto_d
    if-ge v3, v12, :cond_e

    .line 6672
    iget-object v13, v6, Landroidx/media2/widget/c$c;->a:[Landroidx/media2/widget/c$b;

    sub-int v14, v7, v3

    iget-object v15, v6, Landroidx/media2/widget/c$c;->a:[Landroidx/media2/widget/c$b;

    iget v9, v6, Landroidx/media2/widget/c$c;->b:I

    sub-int/2addr v9, v3

    aget-object v9, v15, v9

    aput-object v9, v13, v14

    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x2

    goto :goto_d

    :cond_e
    const/4 v3, 0x0

    :goto_e
    sub-int v9, v7, v11

    if-gt v3, v9, :cond_f

    .line 6677
    iget-object v9, v6, Landroidx/media2/widget/c$c;->a:[Landroidx/media2/widget/c$b;

    aput-object v8, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_f
    :goto_f
    add-int/lit8 v7, v7, 0x1

    .line 6679
    iget-object v3, v6, Landroidx/media2/widget/c$c;->a:[Landroidx/media2/widget/c$b;

    array-length v3, v3

    if-ge v7, v3, :cond_10

    .line 6680
    iget-object v3, v6, Landroidx/media2/widget/c$c;->a:[Landroidx/media2/widget/c$b;

    aput-object v8, v3, v7

    goto :goto_f

    .line 6166
    :cond_10
    invoke-virtual {v1}, Landroidx/media2/widget/c;->a()Landroidx/media2/widget/c$c;

    move-result-object v3

    .line 8387
    iget v6, v5, Landroidx/media2/widget/c$f;->b:I

    if-ltz v6, :cond_11

    const/4 v6, 0x1

    goto :goto_10

    :cond_11
    const/4 v6, 0x0

    :goto_10
    if-eqz v6, :cond_12

    .line 8391
    iget v6, v5, Landroidx/media2/widget/c$f;->a:I

    .line 8395
    iget v7, v5, Landroidx/media2/widget/c$f;->b:I

    .line 7623
    invoke-virtual {v3, v6, v7}, Landroidx/media2/widget/c$c;->a(II)V

    goto :goto_11

    .line 9391
    :cond_12
    iget v6, v5, Landroidx/media2/widget/c$f;->a:I

    .line 7625
    invoke-virtual {v3, v6, v10}, Landroidx/media2/widget/c$c;->a(II)V

    .line 7627
    :goto_11
    iget v6, v3, Landroidx/media2/widget/c$c;->b:I

    invoke-virtual {v3, v6}, Landroidx/media2/widget/c$c;->b(I)Landroidx/media2/widget/c$b;

    move-result-object v6

    iget v3, v3, Landroidx/media2/widget/c$c;->c:I

    .line 9457
    iget-object v6, v6, Landroidx/media2/widget/c$b;->c:[Landroidx/media2/widget/c$g;

    aput-object v5, v6, v3

    const/4 v3, 0x1

    goto :goto_12

    :cond_13
    const/4 v3, 0x0

    :goto_12
    if-nez v3, :cond_18

    .line 1099
    aget-object v3, v2, v4

    .line 10151
    invoke-virtual {v3}, Landroidx/media2/widget/c$a;->b()Landroidx/media2/widget/c$g;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 10153
    invoke-virtual {v1}, Landroidx/media2/widget/c;->a()Landroidx/media2/widget/c$c;

    move-result-object v5

    .line 10617
    iget v6, v5, Landroidx/media2/widget/c$c;->b:I

    invoke-virtual {v5, v6}, Landroidx/media2/widget/c$c;->b(I)Landroidx/media2/widget/c$b;

    move-result-object v6

    iget v7, v5, Landroidx/media2/widget/c$c;->c:I

    .line 11452
    iget-object v8, v6, Landroidx/media2/widget/c$b;->a:Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v8, v7, v9}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 11453
    iget-object v6, v6, Landroidx/media2/widget/c$b;->b:[Landroidx/media2/widget/c$g;

    aput-object v3, v6, v7

    .line 10618
    invoke-virtual {v5, v10}, Landroidx/media2/widget/c$c;->a(I)V

    const/4 v3, 0x1

    goto :goto_13

    :cond_14
    const/4 v3, 0x0

    :goto_13
    if-nez v3, :cond_18

    .line 1104
    aget-object v3, v2, v4

    .line 12132
    invoke-virtual {v3}, Landroidx/media2/widget/c$a;->e()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 12137
    invoke-virtual {v3}, Landroidx/media2/widget/c$a;->g()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 12138
    invoke-virtual {v1}, Landroidx/media2/widget/c;->a()Landroidx/media2/widget/c$c;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media2/widget/c$c;->b()V

    .line 12141
    :cond_15
    invoke-virtual {v1}, Landroidx/media2/widget/c;->a()Landroidx/media2/widget/c$c;

    move-result-object v5

    invoke-virtual {v3}, Landroidx/media2/widget/c$a;->f()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    .line 12610
    :goto_14
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_16

    .line 12611
    iget v7, v5, Landroidx/media2/widget/c$c;->b:I

    invoke-virtual {v5, v7}, Landroidx/media2/widget/c$c;->b(I)Landroidx/media2/widget/c$b;

    move-result-object v7

    iget v8, v5, Landroidx/media2/widget/c$c;->c:I

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroidx/media2/widget/c$b;->a(IC)V

    .line 12612
    invoke-virtual {v5, v10}, Landroidx/media2/widget/c$c;->a(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 12143
    :cond_16
    iget v3, v1, Landroidx/media2/widget/c;->a:I

    if-eq v3, v10, :cond_17

    iget v3, v1, Landroidx/media2/widget/c;->a:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_18

    .line 12144
    :cond_17
    invoke-virtual {v1}, Landroidx/media2/widget/c;->b()V

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_19
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_c
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

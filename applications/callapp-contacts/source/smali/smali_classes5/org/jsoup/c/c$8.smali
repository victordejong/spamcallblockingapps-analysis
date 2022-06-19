.class final enum Lorg/jsoup/c/c$8;
.super Lorg/jsoup/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1294
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/c/c;-><init>(Ljava/lang/String;ILorg/jsoup/c/c$1;)V

    return-void
.end method

.method private anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 0

    .line 1384
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method final process(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z
    .locals 8

    .line 1296
    sget-object v0, Lorg/jsoup/c/c$17;->a:[I

    iget-object v1, p1, Lorg/jsoup/c/i;->a:Lorg/jsoup/c/i$i;

    invoke-virtual {v1}, Lorg/jsoup/c/i$i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "html"

    const-string v3, "select"

    const/4 v4, 0x0

    const-string v5, "optgroup"

    const-string v6, "option"

    packed-switch v0, :pswitch_data_0

    .line 1378
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$8;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1

    .line 1374
    :pswitch_0
    invoke-virtual {p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object p1

    .line 12152
    iget-object p1, p1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 13046
    iget-object p1, p1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 1374
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 1375
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    goto/16 :goto_1

    .line 1405
    :pswitch_1
    check-cast p1, Lorg/jsoup/c/i$b;

    .line 2331
    iget-object v0, p1, Lorg/jsoup/c/i$b;->b:Ljava/lang/String;

    .line 1299
    invoke-static {}, Lorg/jsoup/c/c;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1300
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v4

    .line 1303
    :cond_0
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$b;)V

    goto/16 :goto_1

    .line 7385
    :pswitch_2
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$f;

    .line 1344
    invoke-virtual {v0}, Lorg/jsoup/c/i$f;->k()Ljava/lang/String;

    move-result-object v0

    .line 1345
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_1

    .line 1370
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$8;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1

    .line 1347
    :pswitch_3
    invoke-virtual {p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object p1

    .line 8152
    iget-object p1, p1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 9046
    iget-object p1, p1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 1347
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->e(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/h;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->e(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/h;

    move-result-object p1

    .line 9152
    iget-object p1, p1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 10046
    iget-object p1, p1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 1347
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1348
    invoke-virtual {p2, v6}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    .line 1349
    :cond_4
    invoke-virtual {p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object p1

    .line 10152
    iget-object p1, p1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 11046
    iget-object p1, p1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 1349
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1350
    invoke-virtual {p2}, Lorg/jsoup/c/b;->e()Lorg/jsoup/nodes/h;

    goto/16 :goto_1

    .line 1352
    :cond_5
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    goto/16 :goto_1

    .line 1361
    :pswitch_4
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->i(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1362
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v4

    .line 1365
    :cond_6
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->c(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    .line 1366
    invoke-virtual {p2}, Lorg/jsoup/c/b;->j()V

    goto/16 :goto_1

    .line 1355
    :pswitch_5
    invoke-virtual {p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object p1

    .line 11152
    iget-object p1, p1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 12046
    iget-object p1, p1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 1355
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1356
    invoke-virtual {p2}, Lorg/jsoup/c/b;->e()Lorg/jsoup/nodes/h;

    goto/16 :goto_1

    .line 1358
    :cond_7
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    goto/16 :goto_1

    .line 3377
    :pswitch_6
    move-object v0, p1

    check-cast v0, Lorg/jsoup/c/i$g;

    .line 1314
    invoke-virtual {v0}, Lorg/jsoup/c/i$g;->k()Ljava/lang/String;

    move-result-object v7

    .line 1315
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1316
    sget-object p1, Lorg/jsoup/c/c$8;->InBody:Lorg/jsoup/c/c;

    invoke-virtual {p2, v0, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;Lorg/jsoup/c/c;)Z

    move-result p1

    return p1

    .line 1317
    :cond_8
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1318
    invoke-virtual {p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object p1

    .line 4152
    iget-object p1, p1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 5046
    iget-object p1, p1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 1318
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1319
    invoke-virtual {p2, v6}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    .line 1320
    :cond_9
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    goto :goto_1

    .line 1321
    :cond_a
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1322
    invoke-virtual {p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object p1

    .line 5152
    iget-object p1, p1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 6046
    iget-object p1, p1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 1322
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1323
    invoke-virtual {p2, v6}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    .line 1324
    :cond_b
    invoke-virtual {p2}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object p1

    .line 6152
    iget-object p1, p1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 7046
    iget-object p1, p1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 1324
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1325
    invoke-virtual {p2, v5}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    .line 1326
    :cond_c
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    goto :goto_1

    .line 1327
    :cond_d
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1328
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 1329
    invoke-virtual {p2, v3}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1330
    :cond_e
    sget-object v1, Lorg/jsoup/c/c$a;->H:[Ljava/lang/String;

    invoke-static {v7, v1}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1331
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    .line 1332
    invoke-virtual {p2, v3}, Lorg/jsoup/c/b;->i(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_f

    return v4

    .line 1334
    :cond_f
    invoke-virtual {p2, v3}, Lorg/jsoup/c/b;->m(Ljava/lang/String;)Z

    .line 1335
    invoke-virtual {p2, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1

    :cond_10
    const-string v0, "script"

    .line 1336
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1337
    sget-object v0, Lorg/jsoup/c/c$8;->InHead:Lorg/jsoup/c/c;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i;Lorg/jsoup/c/c;)Z

    move-result p1

    return p1

    .line 1339
    :cond_11
    invoke-direct {p0, p1, p2}, Lorg/jsoup/c/c$8;->anythingElse(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1

    .line 1310
    :pswitch_7
    invoke-virtual {p2, p0}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/c;)V

    return v4

    .line 2393
    :pswitch_8
    check-cast p1, Lorg/jsoup/c/i$c;

    .line 1307
    invoke-virtual {p2, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/c/i$c;)V

    :cond_12
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x3c35778b -> :sswitch_2
        -0x3600cb04 -> :sswitch_1
        -0x4d08054 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

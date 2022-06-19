.class public Ld2/w1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld2/w1$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ld2/w1$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILd2/v1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Ld2/w1;->b:Ljava/util/Map;

    .line 3
    iput p1, p0, Ld2/w1;->a:I

    return-void
.end method


# virtual methods
.method public a()Ld2/f4;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ld2/f4;

    invoke-direct {v1}, Ld2/f4;-><init>()V

    .line 2
    iget v2, v0, Ld2/w1;->a:I

    const-string v3, "version"

    .line 3
    invoke-static {v1, v3, v2}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 4
    iget-object v2, v0, Ld2/w1;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5
    new-instance v4, Ld2/f4;

    invoke-direct {v4}, Ld2/f4;-><init>()V

    .line 6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld2/w1$a;

    .line 7
    new-instance v7, Ld2/d4;

    invoke-direct {v7}, Ld2/d4;-><init>()V

    .line 8
    iget-object v8, v6, Ld2/w1$a;->b:Ld2/x1;

    const/16 v9, 0x2c

    .line 9
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    .line 11
    :goto_2
    iget-object v13, v8, Ld2/x1;->b:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_6

    if-ltz v12, :cond_5

    .line 12
    iget-object v13, v8, Ld2/x1;->b:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lt v12, v13, :cond_0

    goto :goto_7

    .line 13
    :cond_0
    iget-object v13, v8, Ld2/x1;->b:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ContentValues;

    .line 14
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    .line 15
    :goto_3
    iget-object v11, v8, Ld2/x1;->a:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v15, v11, :cond_4

    if-ltz v15, :cond_1

    .line 16
    iget-object v11, v8, Ld2/x1;->a:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v15, v11, :cond_1

    iget-object v11, v8, Ld2/x1;->a:Ljava/util/List;

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ld2/x1$a;

    .line 17
    iget v11, v11, Ld2/x1$a;->c:I

    goto :goto_4

    :cond_1
    const/4 v11, -0x1

    :goto_4
    const/4 v0, 0x3

    if-ne v11, v0, :cond_2

    const-string v0, "\""

    .line 18
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v8, v15}, Ld2/x1;->a(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 21
    :cond_2
    invoke-virtual {v8, v15}, Ld2/x1;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :goto_5
    iget-object v0, v8, Ld2/x1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v11, -0x1

    add-int/2addr v0, v11

    if-ne v15, v0, :cond_3

    const-string v0, ""

    goto :goto_6

    :cond_3
    move-object v0, v9

    :goto_6
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_3

    .line 23
    :cond_4
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_5
    :goto_7
    const/4 v0, 0x0

    .line 24
    :goto_8
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_2

    .line 25
    :cond_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 26
    invoke-virtual {v7, v8}, Ld2/d4;->b(Ljava/lang/String;)Ld2/d4;

    goto :goto_9

    .line 27
    :cond_7
    iget-object v0, v6, Ld2/w1$a;->a:Ljava/lang/String;

    .line 28
    invoke-static {v4, v0, v7}, Ld2/e4;->g(Ld2/f4;Ljava/lang/String;Ld2/d4;)Z

    move-object/from16 v0, p0

    goto/16 :goto_1

    .line 29
    :cond_8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0, v4}, Ld2/e4;->h(Ld2/f4;Ljava/lang/String;Ld2/f4;)Z

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_9
    return-object v1
.end method

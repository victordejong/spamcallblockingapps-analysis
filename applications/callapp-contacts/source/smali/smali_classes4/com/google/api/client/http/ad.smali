.class public final Lcom/google/api/client/http/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/ad$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lcom/google/api/client/http/ad$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/api/client/http/ad;->a:Ljava/util/Map;

    .line 62
    invoke-static {}, Lcom/google/api/client/http/ad$a;->values()[Lcom/google/api/client/http/ad$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 11

    .line 245
    invoke-static {p1}, Lcom/google/api/client/http/ad;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 246
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_d

    const/16 v3, 0x7b

    .line 250
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 256
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 259
    :cond_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    add-int/lit8 v4, v3, 0x2

    .line 260
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    .line 263
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2171
    sget-object v3, Lcom/google/api/client/http/ad;->a:Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/client/http/ad$a;

    if-nez v3, :cond_1

    .line 2172
    sget-object v3, Lcom/google/api/client/http/ad$a;->SIMPLE:Lcom/google/api/client/http/ad$a;

    :cond_1
    const/16 v5, 0x2c

    .line 3125
    invoke-static {v5}, Lcom/google/common/base/c;->a(C)Lcom/google/common/base/c;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/o;->a(Lcom/google/common/base/c;)Lcom/google/common/base/o;

    move-result-object v5

    .line 266
    invoke-virtual {v5, v2}, Lcom/google/common/base/o;->a(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 268
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 269
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "*"

    .line 270
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    .line 273
    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v9

    if-ne v9, v5, :cond_3

    invoke-virtual {v3}, Lcom/google/api/client/http/ad$a;->getVarNameStartIndex()I

    move-result v9

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 274
    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v8, :cond_4

    add-int/lit8 v10, v10, -0x1

    .line 280
    :cond_4
    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 282
    invoke-interface {p1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2

    if-nez v6, :cond_5

    .line 288
    invoke-virtual {v3}, Lcom/google/api/client/http/ad$a;->getExplodeJoiner()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 290
    :cond_5
    invoke-virtual {v3}, Lcom/google/api/client/http/ad$a;->getOutputPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    .line 293
    :goto_3
    instance-of v10, v9, Ljava/util/Iterator;

    if-eqz v10, :cond_6

    .line 295
    check-cast v9, Ljava/util/Iterator;

    .line 296
    invoke-static {v7, v9, v8, v3}, Lcom/google/api/client/http/ad;->a(Ljava/lang/String;Ljava/util/Iterator;ZLcom/google/api/client/http/ad$a;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 297
    :cond_6
    instance-of v10, v9, Ljava/lang/Iterable;

    if-nez v10, :cond_b

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_5

    .line 301
    :cond_7
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->isEnum()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 302
    move-object v8, v9

    check-cast v8, Ljava/lang/Enum;

    invoke-static {v8}, Lcom/google/api/client/a/m;->a(Ljava/lang/Enum;)Lcom/google/api/client/a/m;

    move-result-object v8

    .line 3167
    iget-object v8, v8, Lcom/google/api/client/a/m;->c:Ljava/lang/String;

    if-eqz v8, :cond_8

    goto :goto_4

    .line 303
    :cond_8
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-static {v7, v8, v3}, Lcom/google/api/client/http/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/ad$a;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 304
    :cond_9
    invoke-static {v9}, Lcom/google/api/client/a/j;->d(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 306
    invoke-static {v9}, Lcom/google/api/client/http/ad;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    .line 307
    invoke-static {v7, v9, v8, v3}, Lcom/google/api/client/http/ad;->a(Ljava/lang/String;Ljava/util/Map;ZLcom/google/api/client/http/ad$a;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 310
    :cond_a
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Lcom/google/api/client/http/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/ad$a;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 299
    :cond_b
    :goto_5
    invoke-static {v9}, Lcom/google/api/client/a/ag;->a(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 300
    invoke-static {v7, v9, v8, v3}, Lcom/google/api/client/http/ad;->a(Ljava/lang/String;Ljava/util/Iterator;ZLcom/google/api/client/http/ad$a;)Ljava/lang/String;

    move-result-object v7

    .line 312
    :goto_6
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_c
    move v2, v4

    goto/16 :goto_0

    .line 317
    :cond_d
    :goto_7
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, p2, v1}, Lcom/google/api/client/http/i;->a(Ljava/util/Set;Ljava/lang/StringBuilder;Z)V

    .line 319
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/ad$a;)Ljava/lang/String;
    .locals 2

    .line 323
    invoke-virtual {p2}, Lcom/google/api/client/http/ad$a;->requiresVarAssignment()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    .line 324
    invoke-static {p2, p1}, Lcom/google/api/client/http/ad$a;->access$100(Lcom/google/api/client/http/ad$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    const-string p0, "%s=%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 326
    :cond_0
    invoke-static {p2, p1}, Lcom/google/api/client/http/ad$a;->access$100(Lcom/google/api/client/http/ad$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    .line 215
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Lcom/google/api/client/http/i;

    invoke-direct {v0, p0}, Lcom/google/api/client/http/i;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 1526
    iget-boolean v1, v0, Lcom/google/api/client/http/i;->d:Z

    invoke-static {p0, v1}, Lcom/google/api/client/http/i;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Lcom/google/api/client/http/i;->b:Ljava/util/List;

    .line 219
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/api/client/http/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "http://"

    .line 220
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 223
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 225
    invoke-static {p1, p2, p0}, Lcom/google/api/client/http/ad;->a(Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Iterator;ZLcom/google/api/client/http/ad$a;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Iterator<",
            "*>;Z",
            "Lcom/google/api/client/http/ad$a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 346
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 349
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "="

    if-eqz p2, :cond_1

    .line 352
    invoke-virtual {p3}, Lcom/google/api/client/http/ad$a;->getExplodeJoiner()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 355
    :cond_1
    invoke-virtual {p3}, Lcom/google/api/client/http/ad$a;->requiresVarAssignment()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    invoke-static {p0}, Lcom/google/api/client/a/a/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v2, ","

    .line 360
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz p2, :cond_4

    .line 361
    invoke-virtual {p3}, Lcom/google/api/client/http/ad$a;->requiresVarAssignment()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 362
    invoke-static {p0}, Lcom/google/api/client/a/a/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Lcom/google/api/client/http/ad$a;->access$100(Lcom/google/api/client/http/ad$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 367
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 370
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;ZLcom/google/api/client/http/ad$a;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/google/api/client/http/ad$a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 389
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 392
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "="

    const-string v2, ","

    if-eqz p2, :cond_1

    .line 396
    invoke-virtual {p3}, Lcom/google/api/client/http/ad$a;->getExplodeJoiner()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 401
    :cond_1
    invoke-virtual {p3}, Lcom/google/api/client/http/ad$a;->requiresVarAssignment()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 402
    invoke-static {p0}, Lcom/google/api/client/a/a/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    move-object v1, v2

    .line 406
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 407
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 408
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 409
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p3, p2}, Lcom/google/api/client/http/ad$a;->access$100(Lcom/google/api/client/http/ad$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 410
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/google/api/client/http/ad$a;->access$100(Lcom/google/api/client/http/ad$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 411
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 415
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 418
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .line 56
    sget-object v0, Lcom/google/api/client/http/ad;->a:Ljava/util/Map;

    return-object v0
.end method

.method private static a(Ljava/lang/Object;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 184
    invoke-static {p0}, Lcom/google/api/client/a/j;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 185
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 186
    invoke-static {v2}, Lcom/google/api/client/a/j;->a(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

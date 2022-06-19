.class public abstract Lkotlin/reflect/jvm/internal/impl/protobuf/h;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/h$b;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/a;-><init>()V

    return-void
.end method

.method static varargs a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 746
    :try_start_0
    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 752
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 753
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 755
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 756
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 758
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 754
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 748
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4

    .line 735
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    .line 737
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Generated message class \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" missing method \""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/protobuf/p;ILkotlin/reflect/jvm/internal/impl/protobuf/x$a;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/p;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/p;",
            "I",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;",
            "Ljava/lang/Class;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$e<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 639
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/j$b;ILkotlin/reflect/jvm/internal/impl/protobuf/x$a;ZZ)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v7

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/p;Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;Ljava/lang/Class;)V

    return-object v6
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/protobuf/p;ILkotlin/reflect/jvm/internal/impl/protobuf/x$a;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/p;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/p;",
            "I",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;",
            "Ljava/lang/Class;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/h$e<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 661
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 662
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v7, v4

    move v9, p2

    move-object/from16 v10, p3

    invoke-direct/range {v7 .. v12}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/j$b;ILkotlin/reflect/jvm/internal/impl/protobuf/x$a;ZZ)V

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/p;Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;Ljava/lang/Class;)V

    return-object v6
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/g;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1514
    invoke-static {p5}, Lkotlin/reflect/jvm/internal/impl/protobuf/x;->a(I)I

    move-result v0

    .line 1515
    invoke-static {p5}, Lkotlin/reflect/jvm/internal/impl/protobuf/x;->b(I)I

    move-result v1

    .line 2117
    iget-object v2, p4, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->a:Ljava/util/Map;

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/protobuf/f$a;

    invoke-direct {v3, p1, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/f$a;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 1525
    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    .line 2698
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    .line 1525
    invoke-static {v3, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;Z)I

    move-result v3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1529
    :cond_0
    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    iget-boolean v3, v3, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->d:Z

    if-eqz v3, :cond_1

    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->isPackable()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    .line 3698
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    .line 1529
    invoke-static {v3, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;Z)I

    move-result v3

    if-ne v0, v3, :cond_1

    const/4 v0, 0x0

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 1540
    invoke-virtual {p2, p5, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)Z

    move-result p0

    return p0

    :cond_2
    if-eqz v3, :cond_5

    .line 1544
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result p3

    .line 1545
    invoke-virtual {p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b(I)I

    move-result p3

    .line 1546
    iget-object p4, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    .line 4698
    iget-object p4, p4, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    .line 1546
    sget-object p5, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->ENUM:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    if-ne p4, p5, :cond_3

    .line 1547
    :goto_2
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h()I

    move-result p4

    if-lez p4, :cond_4

    .line 5570
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result p4

    .line 1549
    iget-object p5, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    .line 5714
    iget-object p5, p5, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/j$b;

    .line 1549
    invoke-interface {p5, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/j$b;->a(I)Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;

    move-result-object p4

    if-eqz p4, :cond_e

    .line 1556
    iget-object p5, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    invoke-virtual {p1, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p0, p5, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;Ljava/lang/Object;)V

    goto :goto_2

    .line 1560
    :cond_3
    :goto_3
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->h()I

    move-result p4

    if-lez p4, :cond_4

    .line 1561
    iget-object p4, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    .line 6698
    iget-object p4, p4, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    .line 1561
    invoke-static {p2, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;)Ljava/lang/Object;

    move-result-object p4

    .line 1565
    iget-object p5, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    invoke-virtual {p0, p5, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;Ljava/lang/Object;)V

    goto :goto_3

    .line 1568
    :cond_4
    invoke-virtual {p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c(I)V

    goto/16 :goto_6

    .line 1571
    :cond_5
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$1;->a:[I

    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    .line 6702
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->getJavaType()Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    move-result-object v3

    .line 1571
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_8

    const/4 p4, 0x2

    if-eq v0, p4, :cond_6

    .line 1608
    iget-object p3, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    .line 10698
    iget-object p3, p3, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    .line 1608
    invoke-static {p2, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_5

    .line 9570
    :cond_6
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result p2

    .line 1597
    iget-object p4, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    .line 9714
    iget-object p4, p4, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/j$b;

    .line 1597
    invoke-interface {p4, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/j$b;->a(I)Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;

    move-result-object p4

    if-nez p4, :cond_7

    .line 1602
    invoke-virtual {p3, p5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 10489
    invoke-virtual {p3, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    goto/16 :goto_6

    :cond_7
    move-object p2, p4

    goto :goto_5

    :cond_8
    const/4 p3, 0x0

    .line 1574
    iget-object p5, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    .line 6706
    iget-boolean p5, p5, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->d:Z

    if-nez p5, :cond_9

    .line 1575
    iget-object p5, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    invoke-virtual {p0, p5}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    if-eqz p5, :cond_9

    .line 1578
    invoke-interface {p5}, Lkotlin/reflect/jvm/internal/impl/protobuf/p;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;

    move-result-object p3

    :cond_9
    if-nez p3, :cond_a

    .line 6839
    iget-object p3, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 1582
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/p;->i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;

    move-result-object p3

    .line 1585
    :cond_a
    iget-object p5, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    .line 7698
    iget-object p5, p5, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    .line 1585
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->GROUP:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    if-ne p5, v0, :cond_c

    .line 7830
    iget-object p5, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    .line 8694
    iget p5, p5, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->b:I

    .line 9420
    iget v0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d:I

    iget v1, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->e:I

    if-ge v0, v1, :cond_b

    .line 9423
    iget v0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d:I

    add-int/2addr v0, v2

    iput v0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d:I

    .line 9424
    invoke-interface {p3, p2, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;

    const/4 p4, 0x4

    .line 9425
    invoke-static {p5, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/x;->a(II)I

    move-result p4

    invoke-virtual {p2, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(I)V

    .line 9427
    iget p4, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d:I

    sub-int/2addr p4, v2

    iput p4, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d:I

    goto :goto_4

    .line 9421
    :cond_b
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->g()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 9471
    :cond_c
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result p5

    .line 9472
    iget v0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d:I

    iget v3, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->e:I

    if-ge v0, v3, :cond_f

    .line 9475
    invoke-virtual {p2, p5}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b(I)I

    move-result p5

    .line 9476
    iget v0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d:I

    add-int/2addr v0, v2

    iput v0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d:I

    .line 9477
    invoke-interface {p3, p2, p4}, Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;

    .line 9478
    invoke-virtual {p2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(I)V

    .line 9479
    iget p4, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d:I

    sub-int/2addr p4, v2

    iput p4, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d:I

    .line 9480
    invoke-virtual {p2, p5}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c(I)V

    .line 1592
    :goto_4
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;->d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object p2

    .line 1614
    :goto_5
    iget-object p3, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    .line 10706
    iget-boolean p3, p3, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->d:Z

    if-eqz p3, :cond_d

    .line 1615
    iget-object p3, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;Ljava/lang/Object;)V

    goto :goto_6

    .line 1618
    :cond_d
    iget-object p3, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;Ljava/lang/Object;)V

    :cond_e
    :goto_6
    return v2

    .line 9473
    :cond_f
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->g()Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method protected a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-virtual {p1, p4, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)Z

    move-result p1

    return p1
.end method

.method public b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/p;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected w()V
    .locals 0

    return-void
.end method

.class final Lkotlin/reflect/jvm/internal/impl/protobuf/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/g$a<",
        "TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:Lkotlin/reflect/jvm/internal/impl/protobuf/g;


# instance fields
.field final a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/u<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 102
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;-><init>(Z)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->b:Z

    const/16 v0, 0x10

    .line 77
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->a(I)Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->b:Z

    .line 85
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->a(I)Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    .line 86
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->c()V

    return-void
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;ILjava/lang/Object;)I
    .locals 1

    .line 814
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(I)I

    move-result p1

    .line 815
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->GROUP:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    if-ne p0, v0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    .line 820
    :cond_0
    invoke-static {p0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method static a(Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    return p0

    .line 472
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->getWireType()I

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 491
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 492
    check-cast p0, [B

    .line 493
    array-length v0, p0

    new-array v0, v0, [B

    .line 494
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/g$1;->b:[I

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 590
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 586
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle enums."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 581
    :pswitch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 578
    :pswitch_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3590
    :pswitch_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->e()J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(J)J

    move-result-wide p0

    .line 575
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 2585
    :pswitch_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result p0

    ushr-int/lit8 p1, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, p1

    .line 574
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 2580
    :pswitch_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->g()J

    move-result-wide p0

    .line 573
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 2575
    :pswitch_6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->f()I

    move-result p0

    .line 572
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 2562
    :pswitch_7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result p0

    .line 571
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 570
    :pswitch_8
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p0

    return-object p0

    .line 2372
    :pswitch_9
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result p1

    .line 2373
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b:I

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    sub-int/2addr v0, v1

    const-string v1, "UTF-8"

    if-gt p1, v0, :cond_0

    if-lez p1, :cond_0

    .line 2376
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a:[B

    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    invoke-direct {v0, v2, v3, p1, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 2377
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    add-int/2addr v1, p1

    iput v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->c:I

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const-string p0, ""

    return-object p0

    .line 2383
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d(I)[B

    move-result-object p0

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 564
    :pswitch_a
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 2358
    :pswitch_b
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->f()I

    move-result p0

    .line 563
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 2353
    :pswitch_c
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->g()J

    move-result-wide p0

    .line 562
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 2348
    :pswitch_d
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result p0

    .line 561
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 2338
    :pswitch_e
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->e()J

    move-result-wide p0

    .line 560
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 1343
    :pswitch_f
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->e()J

    move-result-wide p0

    .line 559
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 1333
    :pswitch_10
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->f()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 558
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 1328
    :pswitch_11
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->g()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    .line 557
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/protobuf/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/g$a<",
            "TT;>;>()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/g<",
            "TT;>;"
        }
    .end annotation

    .line 92
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;-><init>()V

    return-object v0
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 657
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->GROUP:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    if-ne p1, v0, :cond_0

    .line 658
    check-cast p3, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    const/4 p1, 0x3

    .line 4233
    invoke-virtual {p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(II)V

    .line 4430
    invoke-interface {p3, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/p;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V

    const/4 p1, 0x4

    .line 4235
    invoke-virtual {p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 660
    invoke-static {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;Z)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(II)V

    .line 661
    invoke-static {p0, p1, p3}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 679
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/g$1;->b:[I

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 705
    :pswitch_0
    instance-of p1, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;

    if-eqz p1, :cond_0

    .line 706
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;->getNumber()I

    move-result p1

    .line 7497
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(I)V

    return-void

    .line 708
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 8497
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(I)V

    goto/16 :goto_0

    .line 690
    :pswitch_1
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    return-void

    .line 689
    :pswitch_2
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 6430
    invoke-interface {p2, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/p;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V

    return-void

    .line 702
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(J)V

    return-void

    .line 701
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->b(I)V

    return-void

    .line 700
    :pswitch_5
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 6507
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(J)V

    return-void

    .line 699
    :pswitch_6
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 6502
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->g(I)V

    return-void

    .line 698
    :pswitch_7
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 6489
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    return-void

    .line 692
    :pswitch_8
    instance-of p1, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    if-eqz p1, :cond_1

    .line 693
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void

    .line 695
    :cond_1
    check-cast p2, [B

    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a([B)V

    return-void

    .line 688
    :pswitch_9
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/lang/String;)V

    return-void

    .line 687
    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->b(Z)V

    return-void

    .line 686
    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 6410
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->g(I)V

    return-void

    .line 685
    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 6405
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(J)V

    return-void

    .line 684
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(I)V

    return-void

    .line 683
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 6385
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(J)V

    return-void

    .line 682
    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 5390
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(J)V

    return-void

    .line 681
    :pswitch_10
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(F)V

    return-void

    .line 680
    :pswitch_11
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(D)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/g$a<",
            "*>;",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 719
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;->b()Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    move-result-object v0

    .line 720
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;->a()I

    move-result v1

    .line 721
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 722
    check-cast p1, Ljava/util/List;

    .line 723
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;->e()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    .line 724
    invoke-virtual {p2, v1, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(II)V

    const/4 p0, 0x0

    .line 727
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 728
    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr p0, v2

    goto :goto_0

    .line 730
    :cond_0
    invoke-virtual {p2, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 732
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 733
    invoke-static {p2, v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void

    .line 736
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 737
    invoke-static {p2, v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    return-void

    .line 741
    :cond_4
    instance-of p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/k;

    if-eqz p0, :cond_5

    .line 742
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/k;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/k;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object p0

    invoke-static {p2, v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;ILjava/lang/Object;)V

    return-void

    .line 744
    :cond_5
    invoke-static {p2, v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;ILjava/lang/Object;)V

    return-void
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;Ljava/lang/Object;)V
    .locals 2

    .line 369
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/g$1;->a:[I

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->getJavaType()Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    .line 390
    :pswitch_0
    instance-of p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    if-nez p0, :cond_1

    instance-of p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/k;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 385
    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_1

    instance-of p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 381
    :pswitch_2
    instance-of p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    if-nez p0, :cond_1

    instance-of p0, p1, [B

    if-eqz p0, :cond_0

    goto :goto_0

    .line 379
    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    .line 378
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    .line 377
    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    .line 376
    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    .line 375
    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    .line 374
    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    return-void

    .line 403
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;Ljava/lang/Object;)I
    .locals 2

    .line 835
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/g$1;->b:[I

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x4

    const/16 v1, 0x8

    packed-switch p0, :pswitch_data_0

    .line 876
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 868
    :pswitch_0
    instance-of p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;

    if-eqz p0, :cond_0

    .line 869
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;->getNumber()I

    move-result p0

    .line 10916
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(I)I

    move-result p0

    return p0

    .line 872
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 11916
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(I)I

    move-result p0

    return p0

    .line 861
    :pswitch_1
    instance-of p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/k;

    if-eqz p0, :cond_1

    .line 862
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/k;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/l;)I

    move-result p0

    return p0

    .line 864
    :cond_1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result p0

    return p0

    .line 847
    :pswitch_2
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 9844
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/p;->f()I

    move-result p0

    return p0

    .line 858
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 9948
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->f(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(J)I

    move-result p0

    return p0

    .line 857
    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 9940
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->h(I)I

    move-result p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->f(I)I

    move-result p0

    return p0

    .line 856
    :pswitch_5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    return v1

    .line 855
    :pswitch_6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    return v0

    .line 854
    :pswitch_7
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 9908
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->f(I)I

    move-result p0

    return p0

    .line 849
    :pswitch_8
    instance-of p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    if-eqz p0, :cond_2

    .line 850
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)I

    move-result p0

    return p0

    .line 852
    :cond_2
    check-cast p1, [B

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->b([B)I

    move-result p0

    return p0

    .line 846
    :pswitch_9
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->b(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 845
    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 p0, 0x1

    return p0

    .line 844
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    return v0

    .line 843
    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    return v1

    .line 842
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(I)I

    move-result p0

    return p0

    .line 841
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 9777
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(J)I

    move-result p0

    return p0

    .line 840
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 8785
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(J)I

    move-result p0

    return p0

    .line 839
    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    return v0

    .line 838
    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b()Lkotlin/reflect/jvm/internal/impl/protobuf/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/g$a<",
            "TT;>;>()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/g<",
            "TT;>;"
        }
    .end annotation

    .line 99
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    return-object v0
.end method

.method private static b(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 435
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;

    .line 436
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;->c()Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;->MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    .line 437
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 439
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 440
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/p;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 445
    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 446
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    if-eqz v0, :cond_2

    .line 447
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/p;->e()Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    .line 450
    :cond_2
    instance-of p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/k;

    if-eqz p0, :cond_3

    return v3

    .line 453
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return v3
.end method

.method public static c(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/g$a<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 885
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;->b()Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    move-result-object v0

    .line 886
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;->a()I

    move-result v1

    .line 887
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 888
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;->e()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 890
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 891
    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_0

    .line 893
    :cond_0
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(I)I

    move-result p0

    add-int/2addr p0, v2

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->f(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 898
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 899
    invoke-static {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1

    :cond_2
    return v2

    .line 904
    :cond_3
    invoke-static {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 297
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 307
    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 305
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 298
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final a(Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 504
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;

    .line 505
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 506
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/k;

    if-eqz v1, :cond_0

    .line 507
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/k;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/k;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object p1

    .line 510
    :cond_0
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 511
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 513
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 515
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 516
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 518
    :cond_2
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-virtual {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 519
    :cond_3
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;->c()Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;->MESSAGE:Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    if-ne v1, v2, :cond_5

    .line 520
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 522
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 525
    :cond_4
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/p;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;

    move-result-object v1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    invoke-interface {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;->d()Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object p1

    .line 529
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-virtual {v1, v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 532
    :cond_5
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 238
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 249
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;->b()Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    .line 240
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 253
    :cond_2
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;->b()Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;Ljava/lang/Object;)V

    .line 256
    :goto_1
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/k;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 257
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->b:Z

    .line 259
    :cond_3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-virtual {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)Z"
        }
    .end annotation

    .line 209
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 210
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hasField() can only be called on non-repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 225
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/k;

    if-eqz v0, :cond_0

    .line 226
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/k;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/k;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final b(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 340
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;->b()Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;Ljava/lang/Object;)V

    .line 347
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 351
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-virtual {v1, p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 353
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 356
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 341
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)I"
        }
    .end annotation

    .line 278
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->b(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 287
    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 279
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()V
    .locals 1

    .line 107
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->a()V

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->c:Z

    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->d()Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lkotlin/reflect/jvm/internal/impl/protobuf/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/g<",
            "TFieldDescriptorType;>;"
        }
    .end annotation

    .line 1092
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;-><init>()V

    const/4 v1, 0x0

    .line 135
    :goto_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->c()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 136
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 137
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;

    .line 138
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->d()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 142
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;

    .line 143
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;Ljava/lang/Object;)V

    goto :goto_1

    .line 145
    :cond_1
    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->b:Z

    iput-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->b:Z

    return-object v0
.end method

.method public final e()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 418
    :goto_0
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->c()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 419
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->b(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    :cond_1
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/u;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->d()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 425
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/g;->b(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.class public final Lscala/collection/mutable/ArrayBuilder$;
.super Ljava/lang/Object;
.source "ArrayBuilder.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/collection/mutable/ArrayBuilder$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/ArrayBuilder$;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayBuilder$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/mutable/ArrayBuilder$;->MODULE$:Lscala/collection/mutable/ArrayBuilder$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 28
    sget-object v0, Lscala/collection/mutable/ArrayBuilder$;->MODULE$:Lscala/collection/mutable/ArrayBuilder$;

    return-object v0
.end method


# virtual methods
.method public make(Lscala/reflect/ClassTag;)Lscala/collection/mutable/ArrayBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TT;>;)",
            "Lscala/collection/mutable/ArrayBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 36
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    check-cast p1, Lscala/reflect/ClassTag;

    .line 37
    invoke-interface {p1}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    .line 38
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance p1, Lscala/collection/mutable/ArrayBuilder$ofByte;

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofByte;-><init>()V

    goto/16 :goto_9

    .line 39
    :cond_2
    :goto_0
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_3

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    new-instance p1, Lscala/collection/mutable/ArrayBuilder$ofShort;

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofShort;-><init>()V

    goto/16 :goto_9

    .line 40
    :cond_5
    :goto_1
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_6

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    new-instance p1, Lscala/collection/mutable/ArrayBuilder$ofChar;

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofChar;-><init>()V

    goto/16 :goto_9

    .line 41
    :cond_8
    :goto_2
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_9

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    new-instance p1, Lscala/collection/mutable/ArrayBuilder$ofInt;

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofInt;-><init>()V

    goto/16 :goto_9

    .line 42
    :cond_b
    :goto_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_c

    if-eqz v0, :cond_d

    goto :goto_4

    :cond_c
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    new-instance p1, Lscala/collection/mutable/ArrayBuilder$ofLong;

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofLong;-><init>()V

    goto :goto_9

    .line 43
    :cond_e
    :goto_4
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_f

    if-eqz v0, :cond_10

    goto :goto_5

    :cond_f
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    new-instance p1, Lscala/collection/mutable/ArrayBuilder$ofFloat;

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofFloat;-><init>()V

    goto :goto_9

    .line 44
    :cond_11
    :goto_5
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_12

    if-eqz v0, :cond_13

    goto :goto_6

    :cond_12
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_13
    new-instance p1, Lscala/collection/mutable/ArrayBuilder$ofDouble;

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofDouble;-><init>()V

    goto :goto_9

    .line 45
    :cond_14
    :goto_6
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_15

    if-eqz v0, :cond_16

    goto :goto_7

    :cond_15
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    new-instance p1, Lscala/collection/mutable/ArrayBuilder$ofBoolean;

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofBoolean;-><init>()V

    goto :goto_9

    .line 46
    :cond_17
    :goto_7
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_18

    if-eqz v0, :cond_19

    goto :goto_8

    :cond_18
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    new-instance p1, Lscala/collection/mutable/ArrayBuilder$ofUnit;

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofUnit;-><init>()V

    goto :goto_9

    .line 47
    :cond_1a
    :goto_8
    new-instance v0, Lscala/collection/mutable/ArrayBuilder$ofRef;

    invoke-direct {v0, p1}, Lscala/collection/mutable/ArrayBuilder$ofRef;-><init>(Lscala/reflect/ClassTag;)V

    move-object p1, v0

    :goto_9
    return-object p1
.end method

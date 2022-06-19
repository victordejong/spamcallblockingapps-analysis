.class public final Lkotlinx/serialization/b/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u001a\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0000\u001a\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u0008H\u0002\u001a$\u0010\u0010\u001a\n\u0012\u0004\u0012\u0002H\u0011\u0018\u00010\u0004\"\u0008\u0008\u0000\u0010\u0011*\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00110\u0002H\u0000\"2\u0010\u0000\u001a\u001e\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u0002\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00030\u00040\u00018\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0005\u0010\u0006\"\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "BUILTIN_SERIALIZERS",
        "",
        "Lkotlin/reflect/KClass;",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "BUILTIN_SERIALIZERS$annotations",
        "()V",
        "message",
        "",
        "PrimitiveDescriptorSafe",
        "Lkotlinx/serialization/SerialDescriptor;",
        "serialName",
        "kind",
        "Lkotlinx/serialization/PrimitiveKind;",
        "checkName",
        "",
        "builtinSerializerOrNull",
        "T",
        "kotlinx-serialization-runtime"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/c<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/serialization/KSerializer<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x12

    new-array v0, v0, [Lkotlin/n;

    .line 14
    const-class v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/ag;->a:Lkotlin/jvm/internal/ag;

    invoke-static {v2}, Lkotlinx/serialization/a/e;->a(Lkotlin/jvm/internal/ag;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 15
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/f;->a:Lkotlin/jvm/internal/f;

    invoke-static {v2}, Lkotlinx/serialization/a/e;->a(Lkotlin/jvm/internal/f;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 16
    const-class v1, [C

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    .line 2022
    sget-object v2, Lkotlinx/serialization/b/n;->a:Lkotlinx/serialization/b/n;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 16
    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 17
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/j;->a:Lkotlin/jvm/internal/j;

    invoke-static {v2}, Lkotlinx/serialization/a/e;->a(Lkotlin/jvm/internal/j;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 18
    const-class v1, [D

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    .line 2088
    sget-object v2, Lkotlinx/serialization/b/q;->a:Lkotlinx/serialization/b/q;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 18
    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 19
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/k;->a:Lkotlin/jvm/internal/k;

    invoke-static {v2}, Lkotlinx/serialization/a/e;->a(Lkotlin/jvm/internal/k;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 20
    const-class v1, [F

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    .line 3077
    sget-object v2, Lkotlinx/serialization/b/u;->a:Lkotlinx/serialization/b/u;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 20
    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 21
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/LongCompanionObject;->a:Lkotlin/jvm/internal/LongCompanionObject;

    invoke-static {v2}, Lkotlinx/serialization/a/e;->a(Lkotlin/jvm/internal/LongCompanionObject;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 22
    const-class v1, [J

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    .line 4066
    sget-object v2, Lkotlinx/serialization/b/am;->a:Lkotlinx/serialization/b/am;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 22
    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 23
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/o;->a:Lkotlin/jvm/internal/o;

    invoke-static {v2}, Lkotlinx/serialization/a/e;->a(Lkotlin/jvm/internal/o;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 24
    const-class v1, [I

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    .line 5055
    sget-object v2, Lkotlinx/serialization/b/ac;->a:Lkotlinx/serialization/b/ac;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 24
    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 25
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/ae;->a:Lkotlin/jvm/internal/ae;

    invoke-static {v2}, Lkotlinx/serialization/a/e;->a(Lkotlin/jvm/internal/ae;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 26
    const-class v1, [S

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    .line 6044
    sget-object v2, Lkotlinx/serialization/b/bi;->a:Lkotlinx/serialization/b/bi;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 26
    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 27
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/d;->a:Lkotlin/jvm/internal/d;

    invoke-static {v2}, Lkotlinx/serialization/a/e;->a(Lkotlin/jvm/internal/d;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 28
    const-class v1, [B

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    .line 7033
    sget-object v2, Lkotlinx/serialization/b/k;->a:Lkotlinx/serialization/b/k;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 28
    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 29
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/c;->a:Lkotlin/jvm/internal/c;

    invoke-static {v2}, Lkotlinx/serialization/a/e;->a(Lkotlin/jvm/internal/c;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 30
    const-class v1, [Z

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    .line 7099
    sget-object v2, Lkotlinx/serialization/b/h;->a:Lkotlinx/serialization/b/h;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 30
    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 31
    const-class v1, Lkotlin/v;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    .line 7104
    sget-object v2, Lkotlinx/serialization/b/bo;->a:Lkotlinx/serialization/b/bo;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 31
    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 13
    invoke-static {v0}, Lkotlin/a/ai;->a([Lkotlin/n;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/b/bd;->a:Ljava/util/Map;

    return-void
.end method

.method public static final a(Lkotlin/reflect/c;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/c<",
            "TT;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$builtinSerializerOrNull"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lkotlinx/serialization/b/bd;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/KSerializer;

    return-object p0
.end method

.method public static final a(Ljava/lang/String;Lkotlinx/serialization/j;)Lkotlinx/serialization/SerialDescriptor;
    .locals 4

    const-string v0, "serialName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1054
    sget-object v0, Lkotlinx/serialization/b/bd;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1055
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/c;

    .line 1056
    invoke-interface {v1}, Lkotlin/reflect/c;->an_()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/p;->a()V

    :cond_0
    invoke-static {v1}, Lkotlin/h/p;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1057
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kotlin."

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1058
    invoke-static {p0, v2}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0, v1}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1059
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\n                The name of serial descriptor should uniquely identify associated serializer.\n                For serial name "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " there already exist "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lkotlin/h/p;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Serializer.\n                Please refer to SerialDescriptor documentation for additional information.\n            "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1063
    invoke-static {p0}, Lkotlin/h/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1059
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 50
    :cond_2
    new-instance v0, Lkotlinx/serialization/b/bc;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/b/bc;-><init>(Ljava/lang/String;Lkotlinx/serialization/j;)V

    check-cast v0, Lkotlinx/serialization/SerialDescriptor;

    return-object v0
.end method

.class public final enum Lkotlin/reflect/jvm/internal/impl/builtins/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/builtins/m;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/builtins/m;

.field public static final enum UBYTE:Lkotlin/reflect/jvm/internal/impl/builtins/m;

.field public static final enum UINT:Lkotlin/reflect/jvm/internal/impl/builtins/m;

.field public static final enum ULONG:Lkotlin/reflect/jvm/internal/impl/builtins/m;

.field public static final enum USHORT:Lkotlin/reflect/jvm/internal/impl/builtins/m;


# instance fields
.field private final arrayClassId:Lkotlin/reflect/jvm/internal/impl/c/a;

.field private final classId:Lkotlin/reflect/jvm/internal/impl/c/a;

.field private final typeName:Lkotlin/reflect/jvm/internal/impl/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 17
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/m;

    const-string v1, "kotlin/UByte"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    const-string v2, "fromString(\"kotlin/UByte\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "UBYTE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/m;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/c/a;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/m;->UBYTE:Lkotlin/reflect/jvm/internal/impl/builtins/m;

    .line 18
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/builtins/m;

    const-string v2, "kotlin/UShort"

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v2

    const-string v4, "fromString(\"kotlin/UShort\")"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "USHORT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/m;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/c/a;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/m;->USHORT:Lkotlin/reflect/jvm/internal/impl/builtins/m;

    .line 19
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/builtins/m;

    const-string v4, "kotlin/UInt"

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v4

    const-string v6, "fromString(\"kotlin/UInt\")"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "UINT"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lkotlin/reflect/jvm/internal/impl/builtins/m;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/c/a;)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/m;->UINT:Lkotlin/reflect/jvm/internal/impl/builtins/m;

    .line 20
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/builtins/m;

    const-string v6, "kotlin/ULong"

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v6

    const-string v8, "fromString(\"kotlin/ULong\")"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "ULONG"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lkotlin/reflect/jvm/internal/impl/builtins/m;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/c/a;)V

    sput-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/m;->ULONG:Lkotlin/reflect/jvm/internal/impl/builtins/m;

    const/4 v6, 0x4

    new-array v6, v6, [Lkotlin/reflect/jvm/internal/impl/builtins/m;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lkotlin/reflect/jvm/internal/impl/builtins/m;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/builtins/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/c/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/a;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/builtins/m;->classId:Lkotlin/reflect/jvm/internal/impl/c/a;

    .line 22
    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/c/a;->c()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p1

    const-string p2, "classId.shortClassName"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/m;->typeName:Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 23
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/c/a;

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p3

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lkotlin/reflect/jvm/internal/impl/c/a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/m;->arrayClassId:Lkotlin/reflect/jvm/internal/impl/c/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/builtins/m;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lkotlin/reflect/jvm/internal/impl/builtins/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 24
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/builtins/m;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/builtins/m;
    .locals 4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/m;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/builtins/m;

    array-length v1, v0

    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/builtins/m;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public final getArrayClassId()Lkotlin/reflect/jvm/internal/impl/c/a;
    .locals 1

    .line 23
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/m;->arrayClassId:Lkotlin/reflect/jvm/internal/impl/c/a;

    return-object v0
.end method

.method public final getClassId()Lkotlin/reflect/jvm/internal/impl/c/a;
    .locals 1

    .line 16
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/m;->classId:Lkotlin/reflect/jvm/internal/impl/c/a;

    return-object v0
.end method

.method public final getTypeName()Lkotlin/reflect/jvm/internal/impl/c/e;
    .locals 1

    .line 22
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/m;->typeName:Lkotlin/reflect/jvm/internal/impl/c/e;

    return-object v0
.end method

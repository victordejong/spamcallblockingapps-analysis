.class public final enum Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

.field public static final enum COMPATIBLE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

.field public static final enum INCOMPATIBLE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

.field public static final enum NEEDS_WRAPPER:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 41
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    const-string v1, "COMPATIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;->COMPATIBLE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    .line 42
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    const-string v3, "NEEDS_WRAPPER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;->NEEDS_WRAPPER:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    .line 43
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    const-string v5, "INCOMPATIBLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;->INCOMPATIBLE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 44
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;
    .locals 4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    array-length v1, v0

    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.class public final enum Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

.field public static final enum FUNCTION:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

.field public static final enum PROPERTY:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

.field public static final enum PROPERTY_GETTER:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

.field public static final enum PROPERTY_SETTER:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 20
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    const-string v1, "FUNCTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->FUNCTION:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    .line 21
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    const-string v3, "PROPERTY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->PROPERTY:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    .line 22
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    const-string v5, "PROPERTY_GETTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->PROPERTY_GETTER:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    .line 23
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    const-string v7, "PROPERTY_SETTER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->PROPERTY_SETTER:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    const/4 v7, 0x4

    new-array v7, v7, [Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 19
    sput-object v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;
    .locals 1

    .line 19
    const-class v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;
    .locals 1

    .line 19
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    return-object v0
.end method

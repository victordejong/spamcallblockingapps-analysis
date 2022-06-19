.class public final enum Lkotlin/reflect/jvm/internal/impl/load/java/y$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/load/java/y$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/load/java/y$b;

.field public static final enum OBJECT_PARAMETER_GENERIC:Lkotlin/reflect/jvm/internal/impl/load/java/y$b;

.field public static final enum OBJECT_PARAMETER_NON_GENERIC:Lkotlin/reflect/jvm/internal/impl/load/java/y$b;

.field public static final enum ONE_COLLECTION_PARAMETER:Lkotlin/reflect/jvm/internal/impl/load/java/y$b;


# instance fields
.field private final isObjectReplacedWithTypeParameter:Z

.field private final valueParametersSignature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 26
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/y$b;

    const-string v1, "ONE_COLLECTION_PARAMETER"

    const/4 v2, 0x0

    const-string v3, "Ljava/util/Collection<+Ljava/lang/Object;>;"

    invoke-direct {v0, v1, v2, v3, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/y$b;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/y$b;->ONE_COLLECTION_PARAMETER:Lkotlin/reflect/jvm/internal/impl/load/java/y$b;

    .line 27
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/y$b;

    const-string v3, "OBJECT_PARAMETER_NON_GENERIC"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/y$b;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/y$b;->OBJECT_PARAMETER_NON_GENERIC:Lkotlin/reflect/jvm/internal/impl/load/java/y$b;

    .line 28
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/load/java/y$b;

    const-string v5, "OBJECT_PARAMETER_GENERIC"

    const/4 v6, 0x2

    const-string v7, "Ljava/lang/Object;"

    invoke-direct {v3, v5, v6, v7, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/y$b;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/y$b;->OBJECT_PARAMETER_GENERIC:Lkotlin/reflect/jvm/internal/impl/load/java/y$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lkotlin/reflect/jvm/internal/impl/load/java/y$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/load/java/y$b;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/load/java/y$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/y$b;->valueParametersSignature:Ljava/lang/String;

    iput-boolean p4, p0, Lkotlin/reflect/jvm/internal/impl/load/java/y$b;->isObjectReplacedWithTypeParameter:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/java/y$b;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lkotlin/reflect/jvm/internal/impl/load/java/y$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 29
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/y$b;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/load/java/y$b;
    .locals 4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/y$b;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/load/java/y$b;

    array-length v1, v0

    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/load/java/y$b;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

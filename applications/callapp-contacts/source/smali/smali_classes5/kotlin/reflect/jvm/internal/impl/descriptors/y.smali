.class public final enum Lkotlin/reflect/jvm/internal/impl/descriptors/y;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/y$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/y;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/descriptors/y;

.field public static final enum ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/descriptors/y$a;

.field public static final enum FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

.field public static final enum OPEN:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

.field public static final enum SEALED:Lkotlin/reflect/jvm/internal/impl/descriptors/y;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 11
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    const-string v1, "FINAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    .line 13
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    const-string v3, "SEALED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/y;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->SEALED:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    .line 14
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    const-string v5, "OPEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/y;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->OPEN:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    .line 15
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    const-string v7, "ABSTRACT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/y;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    const/4 v7, 0x4

    new-array v7, v7, [Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/y$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/y$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->Companion:Lkotlin/reflect/jvm/internal/impl/descriptors/y$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/descriptors/y;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 27
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/descriptors/y;
    .locals 4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    array-length v1, v0

    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

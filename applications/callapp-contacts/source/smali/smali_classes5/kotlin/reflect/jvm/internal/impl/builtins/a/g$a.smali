.class final enum Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

.field public static final enum DROP:Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

.field public static final enum HIDDEN:Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

.field public static final enum NOT_CONSIDERED:Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

.field public static final enum VISIBLE:Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 256
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

    const-string v1, "HIDDEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;->HIDDEN:Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

    const-string v3, "VISIBLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;->VISIBLE:Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

    const-string v5, "NOT_CONSIDERED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;->NOT_CONSIDERED:Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

    const-string v7, "DROP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;->DROP:Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 255
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 257
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;
    .locals 4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

    array-length v1, v0

    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

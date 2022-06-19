.class public final enum Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;

.field public static final enum FALLBACK:Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;

.field public static final enum FROM_CLASS_LOADER:Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;

.field public static final enum FROM_DEPENDENCIES:Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 33
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;

    const-string v1, "FROM_DEPENDENCIES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;->FROM_DEPENDENCIES:Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;

    .line 42
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;

    const-string v3, "FROM_CLASS_LOADER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;->FROM_CLASS_LOADER:Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;

    .line 53
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;

    const-string v5, "FALLBACK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;->FALLBACK:Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 54
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;
    .locals 4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;

    array-length v1, v0

    new-array v1, v1, [Lkotlin/reflect/jvm/internal/impl/builtins/a/f$a;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

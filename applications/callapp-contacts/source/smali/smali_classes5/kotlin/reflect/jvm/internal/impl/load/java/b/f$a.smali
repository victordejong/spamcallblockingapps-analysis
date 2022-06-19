.class final enum Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

.field public static final enum NON_STABLE_DECLARED:Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

.field public static final enum NON_STABLE_SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

.field public static final enum STABLE_DECLARED:Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

.field public static final enum STABLE_SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;


# instance fields
.field public final isStable:Z

.field public final isSynthesized:Z


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor$ParameterNamesStatus"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v1, "get"

    aput-object v1, p0, v0

    const-string v0, "@NotNull method %s.%s must not return null"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 41
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

    const-string v1, "NON_STABLE_DECLARED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;->NON_STABLE_DECLARED:Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

    .line 42
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

    const-string v3, "STABLE_DECLARED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;->STABLE_DECLARED:Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

    .line 43
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

    const-string v5, "NON_STABLE_SYNTHESIZED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;-><init>(Ljava/lang/String;IZZ)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;->NON_STABLE_SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

    .line 44
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

    const-string v7, "STABLE_SYNTHESIZED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v4, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;-><init>(Ljava/lang/String;IZZ)V

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;->STABLE_SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 40
    sput-object v7, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-boolean p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;->isStable:Z

    .line 52
    iput-boolean p4, p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;->isSynthesized:Z

    return-void
.end method

.method public static get(ZZ)Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 57
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;->STABLE_SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;->STABLE_DECLARED:Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;->NON_STABLE_SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

    goto :goto_0

    :cond_2
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;->NON_STABLE_DECLARED:Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

    :goto_0
    if-nez p0, :cond_3

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;->$$$reportNull$$$0(I)V

    :cond_3
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;
    .locals 1

    .line 40
    const-class v0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;
    .locals 1

    .line 40
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/load/java/b/f$a;

    return-object v0
.end method

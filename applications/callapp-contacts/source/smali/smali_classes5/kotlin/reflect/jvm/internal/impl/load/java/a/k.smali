.class public final enum Lkotlin/reflect/jvm/internal/impl/load/java/a/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/load/java/a/k;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/load/java/a/k;

.field public static final enum COMMON:Lkotlin/reflect/jvm/internal/impl/load/java/a/k;

.field public static final enum SUPERTYPE:Lkotlin/reflect/jvm/internal/impl/load/java/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 24
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/k;

    const-string v1, "SUPERTYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/k;->SUPERTYPE:Lkotlin/reflect/jvm/internal/impl/load/java/a/k;

    .line 25
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/a/k;

    const-string v3, "COMMON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/a/k;->COMMON:Lkotlin/reflect/jvm/internal/impl/load/java/a/k;

    const/4 v3, 0x2

    new-array v3, v3, [Lkotlin/reflect/jvm/internal/impl/load/java/a/k;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 23
    sput-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/a/k;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/load/java/a/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/java/a/k;
    .locals 1

    .line 23
    const-class v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/a/k;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/load/java/a/k;
    .locals 1

    .line 23
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/k;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/load/java/a/k;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/load/java/a/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/load/java/a/k;

    return-object v0
.end method

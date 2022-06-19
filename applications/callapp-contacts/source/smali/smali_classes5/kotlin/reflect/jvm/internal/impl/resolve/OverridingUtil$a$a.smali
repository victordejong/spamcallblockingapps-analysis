.class public final enum Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

.field public static final enum CONFLICT:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

.field public static final enum INCOMPATIBLE:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

.field public static final enum OVERRIDABLE:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1010
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    const-string v1, "OVERRIDABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;->OVERRIDABLE:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    .line 1011
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    const-string v3, "INCOMPATIBLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;->INCOMPATIBLE:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    .line 1012
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    const-string v5, "CONFLICT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;->CONFLICT:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 1009
    sput-object v5, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1009
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;
    .locals 1

    .line 1009
    const-class v0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;
    .locals 1

    .line 1009
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    return-object v0
.end method

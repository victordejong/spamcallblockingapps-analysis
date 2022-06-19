.class public final enum Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

.field public static final enum DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

.field public static final enum DELEGATION:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

.field public static final enum FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

.field public static final enum SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 40
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    const-string v1, "DECLARATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    .line 41
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    const-string v3, "FAKE_OVERRIDE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    .line 42
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    const-string v5, "DELEGATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->DELEGATION:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    .line 43
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    const-string v7, "SYNTHESIZED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 39
    sput-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;
    .locals 1

    .line 39
    const-class v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;
    .locals 1

    .line 39
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    return-object v0
.end method


# virtual methods
.method public final isReal()Z
    .locals 1

    .line 47
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

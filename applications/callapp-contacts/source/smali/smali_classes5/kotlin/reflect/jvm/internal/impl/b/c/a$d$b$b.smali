.class public final enum Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

.field public static final enum DESC_TO_CLASS_ID:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

.field public static final enum INTERNAL_TO_CLASS_ID:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

.field public static final enum NONE:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

.field private static internalValueMap:Lkotlin/reflect/jvm/internal/impl/protobuf/j$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/j$b<",
            "Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 493
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;->NONE:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    .line 502
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    const-string v3, "INTERNAL_TO_CLASS_ID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v4}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;->INTERNAL_TO_CLASS_ID:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    .line 511
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    const-string v5, "DESC_TO_CLASS_ID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6, v6}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;->DESC_TO_CLASS_ID:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 488
    sput-object v5, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    .line 554
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;->internalValueMap:Lkotlin/reflect/jvm/internal/impl/protobuf/j$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 563
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 564
    iput p4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;->value:I

    return-void
.end method

.method public static valueOf(I)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 544
    :cond_0
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;->DESC_TO_CLASS_ID:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    return-object p0

    .line 543
    :cond_1
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;->INTERNAL_TO_CLASS_ID:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    return-object p0

    .line 542
    :cond_2
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;->NONE:Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;
    .locals 1

    .line 488
    const-class v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;
    .locals 1

    .line 488
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 538
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$d$b$b;->value:I

    return v0
.end method

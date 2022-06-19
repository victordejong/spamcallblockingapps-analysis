.class public final enum Lkotlin/reflect/jvm/internal/impl/b/a$w;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "w"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$w;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/b/a$w;

.field public static final enum INTERNAL:Lkotlin/reflect/jvm/internal/impl/b/a$w;

.field public static final enum LOCAL:Lkotlin/reflect/jvm/internal/impl/b/a$w;

.field public static final enum PRIVATE:Lkotlin/reflect/jvm/internal/impl/b/a$w;

.field public static final enum PRIVATE_TO_THIS:Lkotlin/reflect/jvm/internal/impl/b/a$w;

.field public static final enum PROTECTED:Lkotlin/reflect/jvm/internal/impl/b/a$w;

.field public static final enum PUBLIC:Lkotlin/reflect/jvm/internal/impl/b/a$w;

.field private static internalValueMap:Lkotlin/reflect/jvm/internal/impl/protobuf/j$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/j$b<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$w;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 105
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$w;

    const-string v1, "INTERNAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$w;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$w;->INTERNAL:Lkotlin/reflect/jvm/internal/impl/b/a$w;

    .line 109
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/b/a$w;

    const-string v3, "PRIVATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v4}, Lkotlin/reflect/jvm/internal/impl/b/a$w;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$w;->PRIVATE:Lkotlin/reflect/jvm/internal/impl/b/a$w;

    .line 113
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/b/a$w;

    const-string v5, "PROTECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6, v6}, Lkotlin/reflect/jvm/internal/impl/b/a$w;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/b/a$w;->PROTECTED:Lkotlin/reflect/jvm/internal/impl/b/a$w;

    .line 117
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/b/a$w;

    const-string v7, "PUBLIC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8, v8}, Lkotlin/reflect/jvm/internal/impl/b/a$w;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/b/a$w;->PUBLIC:Lkotlin/reflect/jvm/internal/impl/b/a$w;

    .line 121
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/b/a$w;

    const-string v9, "PRIVATE_TO_THIS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10, v10}, Lkotlin/reflect/jvm/internal/impl/b/a$w;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lkotlin/reflect/jvm/internal/impl/b/a$w;->PRIVATE_TO_THIS:Lkotlin/reflect/jvm/internal/impl/b/a$w;

    .line 125
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/b/a$w;

    const-string v11, "LOCAL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12, v12}, Lkotlin/reflect/jvm/internal/impl/b/a$w;-><init>(Ljava/lang/String;III)V

    sput-object v9, Lkotlin/reflect/jvm/internal/impl/b/a$w;->LOCAL:Lkotlin/reflect/jvm/internal/impl/b/a$w;

    const/4 v11, 0x6

    new-array v11, v11, [Lkotlin/reflect/jvm/internal/impl/b/a$w;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 96
    sput-object v11, Lkotlin/reflect/jvm/internal/impl/b/a$w;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/b/a$w;

    .line 177
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$w$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$w$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$w;->internalValueMap:Lkotlin/reflect/jvm/internal/impl/protobuf/j$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 187
    iput p4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$w;->value:I

    return-void
.end method

.method public static valueOf(I)Lkotlin/reflect/jvm/internal/impl/b/a$w;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 167
    :cond_0
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/b/a$w;->LOCAL:Lkotlin/reflect/jvm/internal/impl/b/a$w;

    return-object p0

    .line 166
    :cond_1
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/b/a$w;->PRIVATE_TO_THIS:Lkotlin/reflect/jvm/internal/impl/b/a$w;

    return-object p0

    .line 165
    :cond_2
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/b/a$w;->PUBLIC:Lkotlin/reflect/jvm/internal/impl/b/a$w;

    return-object p0

    .line 164
    :cond_3
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/b/a$w;->PROTECTED:Lkotlin/reflect/jvm/internal/impl/b/a$w;

    return-object p0

    .line 163
    :cond_4
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/b/a$w;->PRIVATE:Lkotlin/reflect/jvm/internal/impl/b/a$w;

    return-object p0

    .line 162
    :cond_5
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/b/a$w;->INTERNAL:Lkotlin/reflect/jvm/internal/impl/b/a$w;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/b/a$w;
    .locals 1

    .line 96
    const-class v0, Lkotlin/reflect/jvm/internal/impl/b/a$w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/b/a$w;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/b/a$w;
    .locals 1

    .line 96
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$w;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/b/a$w;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/b/a$w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/b/a$w;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 158
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$w;->value:I

    return v0
.end method

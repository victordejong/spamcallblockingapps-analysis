.class public final enum Lkotlin/reflect/jvm/internal/impl/b/a$b$b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/b/a$b$b;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

.field public static final enum ANNOTATION_CLASS:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

.field public static final enum CLASS:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

.field public static final enum COMPANION_OBJECT:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

.field public static final enum ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

.field public static final enum ENUM_ENTRY:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

.field public static final enum INTERFACE:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

.field public static final enum OBJECT:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

.field private static internalValueMap:Lkotlin/reflect/jvm/internal/impl/protobuf/j$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/j$b<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$b$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 8806
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    const-string v1, "CLASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->CLASS:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    .line 8810
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    const-string v3, "INTERFACE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4, v4}, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    .line 8814
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    const-string v5, "ENUM_CLASS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6, v6}, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    .line 8818
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    const-string v7, "ENUM_ENTRY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8, v8}, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->ENUM_ENTRY:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    .line 8822
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    const-string v9, "ANNOTATION_CLASS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10, v10}, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->ANNOTATION_CLASS:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    .line 8826
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    const-string v11, "OBJECT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12, v12}, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;-><init>(Ljava/lang/String;III)V

    sput-object v9, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->OBJECT:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    .line 8830
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    const-string v13, "COMPANION_OBJECT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14, v14}, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;-><init>(Ljava/lang/String;III)V

    sput-object v11, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->COMPANION_OBJECT:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    const/4 v13, 0x7

    new-array v13, v13, [Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8797
    sput-object v13, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    .line 8887
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$b$b$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$b$b$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->internalValueMap:Lkotlin/reflect/jvm/internal/impl/protobuf/j$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 8896
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8897
    iput p4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->value:I

    return-void
.end method

.method public static valueOf(I)Lkotlin/reflect/jvm/internal/impl/b/a$b$b;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 8877
    :pswitch_0
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->COMPANION_OBJECT:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    return-object p0

    .line 8876
    :pswitch_1
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->OBJECT:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    return-object p0

    .line 8875
    :pswitch_2
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->ANNOTATION_CLASS:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    return-object p0

    .line 8874
    :pswitch_3
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->ENUM_ENTRY:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    return-object p0

    .line 8873
    :pswitch_4
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    return-object p0

    .line 8872
    :pswitch_5
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    return-object p0

    .line 8871
    :pswitch_6
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->CLASS:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/b/a$b$b;
    .locals 1

    .line 8797
    const-class v0, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/b/a$b$b;
    .locals 1

    .line 8797
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 8867
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->value:I

    return v0
.end method

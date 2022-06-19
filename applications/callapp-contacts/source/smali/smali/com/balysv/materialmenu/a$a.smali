.class public final enum Lcom/balysv/materialmenu/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/balysv/materialmenu/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/balysv/materialmenu/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/balysv/materialmenu/a$a;

.field public static final enum ARROW_CHECK:Lcom/balysv/materialmenu/a$a;

.field public static final enum ARROW_X:Lcom/balysv/materialmenu/a$a;

.field public static final enum BURGER_ARROW:Lcom/balysv/materialmenu/a$a;

.field public static final enum BURGER_CHECK:Lcom/balysv/materialmenu/a$a;

.field public static final enum BURGER_X:Lcom/balysv/materialmenu/a$a;

.field public static final enum X_CHECK:Lcom/balysv/materialmenu/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 47
    new-instance v0, Lcom/balysv/materialmenu/a$a;

    const-string v1, "BURGER_ARROW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/balysv/materialmenu/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/balysv/materialmenu/a$a;->BURGER_ARROW:Lcom/balysv/materialmenu/a$a;

    new-instance v1, Lcom/balysv/materialmenu/a$a;

    const-string v3, "BURGER_X"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/balysv/materialmenu/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/balysv/materialmenu/a$a;->BURGER_X:Lcom/balysv/materialmenu/a$a;

    new-instance v3, Lcom/balysv/materialmenu/a$a;

    const-string v5, "ARROW_X"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/balysv/materialmenu/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/balysv/materialmenu/a$a;->ARROW_X:Lcom/balysv/materialmenu/a$a;

    new-instance v5, Lcom/balysv/materialmenu/a$a;

    const-string v7, "ARROW_CHECK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/balysv/materialmenu/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/balysv/materialmenu/a$a;->ARROW_CHECK:Lcom/balysv/materialmenu/a$a;

    new-instance v7, Lcom/balysv/materialmenu/a$a;

    const-string v9, "BURGER_CHECK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/balysv/materialmenu/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/balysv/materialmenu/a$a;->BURGER_CHECK:Lcom/balysv/materialmenu/a$a;

    new-instance v9, Lcom/balysv/materialmenu/a$a;

    const-string v11, "X_CHECK"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/balysv/materialmenu/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/balysv/materialmenu/a$a;->X_CHECK:Lcom/balysv/materialmenu/a$a;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/balysv/materialmenu/a$a;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 46
    sput-object v11, Lcom/balysv/materialmenu/a$a;->$VALUES:[Lcom/balysv/materialmenu/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/balysv/materialmenu/a$a;
    .locals 1

    .line 46
    const-class v0, Lcom/balysv/materialmenu/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/balysv/materialmenu/a$a;

    return-object p0
.end method

.method public static values()[Lcom/balysv/materialmenu/a$a;
    .locals 1

    .line 46
    sget-object v0, Lcom/balysv/materialmenu/a$a;->$VALUES:[Lcom/balysv/materialmenu/a$a;

    invoke-virtual {v0}, [Lcom/balysv/materialmenu/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/balysv/materialmenu/a$a;

    return-object v0
.end method


# virtual methods
.method public final getFirstState()Lcom/balysv/materialmenu/a$b;
    .locals 2

    .line 50
    sget-object v0, Lcom/balysv/materialmenu/a$3;->a:[I

    invoke-virtual {p0}, Lcom/balysv/materialmenu/a$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    .line 62
    :pswitch_0
    sget-object v0, Lcom/balysv/materialmenu/a$b;->X:Lcom/balysv/materialmenu/a$b;

    return-object v0

    .line 60
    :pswitch_1
    sget-object v0, Lcom/balysv/materialmenu/a$b;->BURGER:Lcom/balysv/materialmenu/a$b;

    return-object v0

    .line 58
    :pswitch_2
    sget-object v0, Lcom/balysv/materialmenu/a$b;->ARROW:Lcom/balysv/materialmenu/a$b;

    return-object v0

    .line 56
    :pswitch_3
    sget-object v0, Lcom/balysv/materialmenu/a$b;->ARROW:Lcom/balysv/materialmenu/a$b;

    return-object v0

    .line 54
    :pswitch_4
    sget-object v0, Lcom/balysv/materialmenu/a$b;->BURGER:Lcom/balysv/materialmenu/a$b;

    return-object v0

    .line 52
    :pswitch_5
    sget-object v0, Lcom/balysv/materialmenu/a$b;->BURGER:Lcom/balysv/materialmenu/a$b;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getSecondState()Lcom/balysv/materialmenu/a$b;
    .locals 2

    .line 69
    sget-object v0, Lcom/balysv/materialmenu/a$3;->a:[I

    invoke-virtual {p0}, Lcom/balysv/materialmenu/a$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    .line 81
    :pswitch_0
    sget-object v0, Lcom/balysv/materialmenu/a$b;->CHECK:Lcom/balysv/materialmenu/a$b;

    return-object v0

    .line 79
    :pswitch_1
    sget-object v0, Lcom/balysv/materialmenu/a$b;->CHECK:Lcom/balysv/materialmenu/a$b;

    return-object v0

    .line 77
    :pswitch_2
    sget-object v0, Lcom/balysv/materialmenu/a$b;->CHECK:Lcom/balysv/materialmenu/a$b;

    return-object v0

    .line 75
    :pswitch_3
    sget-object v0, Lcom/balysv/materialmenu/a$b;->X:Lcom/balysv/materialmenu/a$b;

    return-object v0

    .line 73
    :pswitch_4
    sget-object v0, Lcom/balysv/materialmenu/a$b;->X:Lcom/balysv/materialmenu/a$b;

    return-object v0

    .line 71
    :pswitch_5
    sget-object v0, Lcom/balysv/materialmenu/a$b;->ARROW:Lcom/balysv/materialmenu/a$b;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

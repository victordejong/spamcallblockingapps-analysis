.class public final enum Lcom/balysv/materialmenu/a$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/balysv/materialmenu/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/balysv/materialmenu/a$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/balysv/materialmenu/a$d;

.field public static final enum EXTRA_THIN:Lcom/balysv/materialmenu/a$d;

.field public static final enum REGULAR:Lcom/balysv/materialmenu/a$d;

.field public static final enum THIN:Lcom/balysv/materialmenu/a$d;


# instance fields
.field private final strokeWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 92
    new-instance v0, Lcom/balysv/materialmenu/a$d;

    const-string v1, "REGULAR"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/balysv/materialmenu/a$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/balysv/materialmenu/a$d;->REGULAR:Lcom/balysv/materialmenu/a$d;

    .line 96
    new-instance v1, Lcom/balysv/materialmenu/a$d;

    const-string v4, "THIN"

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-direct {v1, v4, v5, v6}, Lcom/balysv/materialmenu/a$d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/balysv/materialmenu/a$d;->THIN:Lcom/balysv/materialmenu/a$d;

    .line 100
    new-instance v4, Lcom/balysv/materialmenu/a$d;

    const-string v7, "EXTRA_THIN"

    invoke-direct {v4, v7, v6, v5}, Lcom/balysv/materialmenu/a$d;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/balysv/materialmenu/a$d;->EXTRA_THIN:Lcom/balysv/materialmenu/a$d;

    new-array v3, v3, [Lcom/balysv/materialmenu/a$d;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v6

    .line 88
    sput-object v3, Lcom/balysv/materialmenu/a$d;->$VALUES:[Lcom/balysv/materialmenu/a$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput p3, p0, Lcom/balysv/materialmenu/a$d;->strokeWidth:I

    return-void
.end method

.method static synthetic access$000(Lcom/balysv/materialmenu/a$d;)I
    .locals 0

    .line 88
    iget p0, p0, Lcom/balysv/materialmenu/a$d;->strokeWidth:I

    return p0
.end method

.method protected static valueOf(I)Lcom/balysv/materialmenu/a$d;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 117
    sget-object p0, Lcom/balysv/materialmenu/a$d;->THIN:Lcom/balysv/materialmenu/a$d;

    return-object p0

    .line 111
    :cond_0
    sget-object p0, Lcom/balysv/materialmenu/a$d;->REGULAR:Lcom/balysv/materialmenu/a$d;

    return-object p0

    .line 113
    :cond_1
    sget-object p0, Lcom/balysv/materialmenu/a$d;->THIN:Lcom/balysv/materialmenu/a$d;

    return-object p0

    .line 115
    :cond_2
    sget-object p0, Lcom/balysv/materialmenu/a$d;->EXTRA_THIN:Lcom/balysv/materialmenu/a$d;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/balysv/materialmenu/a$d;
    .locals 1

    .line 88
    const-class v0, Lcom/balysv/materialmenu/a$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/balysv/materialmenu/a$d;

    return-object p0
.end method

.method public static values()[Lcom/balysv/materialmenu/a$d;
    .locals 1

    .line 88
    sget-object v0, Lcom/balysv/materialmenu/a$d;->$VALUES:[Lcom/balysv/materialmenu/a$d;

    invoke-virtual {v0}, [Lcom/balysv/materialmenu/a$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/balysv/materialmenu/a$d;

    return-object v0
.end method

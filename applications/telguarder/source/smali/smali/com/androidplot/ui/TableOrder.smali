.class public final enum Lcom/androidplot/ui/TableOrder;
.super Ljava/lang/Enum;
.source "TableOrder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/ui/TableOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/ui/TableOrder;

.field public static final enum COLUMN_MAJOR:Lcom/androidplot/ui/TableOrder;

.field public static final enum ROW_MAJOR:Lcom/androidplot/ui/TableOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 20
    new-instance v0, Lcom/androidplot/ui/TableOrder;

    const-string v1, "ROW_MAJOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/ui/TableOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/TableOrder;->ROW_MAJOR:Lcom/androidplot/ui/TableOrder;

    .line 21
    new-instance v1, Lcom/androidplot/ui/TableOrder;

    const-string v3, "COLUMN_MAJOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/ui/TableOrder;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/ui/TableOrder;->COLUMN_MAJOR:Lcom/androidplot/ui/TableOrder;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/androidplot/ui/TableOrder;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 19
    sput-object v3, Lcom/androidplot/ui/TableOrder;->$VALUES:[Lcom/androidplot/ui/TableOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/ui/TableOrder;
    .locals 1

    .line 19
    const-class v0, Lcom/androidplot/ui/TableOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/ui/TableOrder;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/ui/TableOrder;
    .locals 1

    .line 19
    sget-object v0, Lcom/androidplot/ui/TableOrder;->$VALUES:[Lcom/androidplot/ui/TableOrder;

    invoke-virtual {v0}, [Lcom/androidplot/ui/TableOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/ui/TableOrder;

    return-object v0
.end method

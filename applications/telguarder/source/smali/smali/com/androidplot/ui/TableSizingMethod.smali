.class public final enum Lcom/androidplot/ui/TableSizingMethod;
.super Ljava/lang/Enum;
.source "TableSizingMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/ui/TableSizingMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/ui/TableSizingMethod;

.field public static final enum AUTO:Lcom/androidplot/ui/TableSizingMethod;

.field public static final enum FIXED:Lcom/androidplot/ui/TableSizingMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Lcom/androidplot/ui/TableSizingMethod;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/ui/TableSizingMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/TableSizingMethod;->AUTO:Lcom/androidplot/ui/TableSizingMethod;

    .line 27
    new-instance v1, Lcom/androidplot/ui/TableSizingMethod;

    const-string v3, "FIXED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/ui/TableSizingMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/ui/TableSizingMethod;->FIXED:Lcom/androidplot/ui/TableSizingMethod;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/androidplot/ui/TableSizingMethod;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 25
    sput-object v3, Lcom/androidplot/ui/TableSizingMethod;->$VALUES:[Lcom/androidplot/ui/TableSizingMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/ui/TableSizingMethod;
    .locals 1

    .line 25
    const-class v0, Lcom/androidplot/ui/TableSizingMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/ui/TableSizingMethod;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/ui/TableSizingMethod;
    .locals 1

    .line 25
    sget-object v0, Lcom/androidplot/ui/TableSizingMethod;->$VALUES:[Lcom/androidplot/ui/TableSizingMethod;

    invoke-virtual {v0}, [Lcom/androidplot/ui/TableSizingMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/ui/TableSizingMethod;

    return-object v0
.end method

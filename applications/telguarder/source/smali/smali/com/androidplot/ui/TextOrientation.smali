.class public final enum Lcom/androidplot/ui/TextOrientation;
.super Ljava/lang/Enum;
.source "TextOrientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/ui/TextOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/ui/TextOrientation;

.field public static final enum HORIZONTAL:Lcom/androidplot/ui/TextOrientation;

.field public static final enum VERTICAL_ASCENDING:Lcom/androidplot/ui/TextOrientation;

.field public static final enum VERTICAL_DESCENDING:Lcom/androidplot/ui/TextOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 20
    new-instance v0, Lcom/androidplot/ui/TextOrientation;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/ui/TextOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/TextOrientation;->HORIZONTAL:Lcom/androidplot/ui/TextOrientation;

    .line 21
    new-instance v1, Lcom/androidplot/ui/TextOrientation;

    const-string v3, "VERTICAL_ASCENDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/ui/TextOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/ui/TextOrientation;->VERTICAL_ASCENDING:Lcom/androidplot/ui/TextOrientation;

    .line 22
    new-instance v3, Lcom/androidplot/ui/TextOrientation;

    const-string v5, "VERTICAL_DESCENDING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/androidplot/ui/TextOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/androidplot/ui/TextOrientation;->VERTICAL_DESCENDING:Lcom/androidplot/ui/TextOrientation;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/androidplot/ui/TextOrientation;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 19
    sput-object v5, Lcom/androidplot/ui/TextOrientation;->$VALUES:[Lcom/androidplot/ui/TextOrientation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/ui/TextOrientation;
    .locals 1

    .line 19
    const-class v0, Lcom/androidplot/ui/TextOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/ui/TextOrientation;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/ui/TextOrientation;
    .locals 1

    .line 19
    sget-object v0, Lcom/androidplot/ui/TextOrientation;->$VALUES:[Lcom/androidplot/ui/TextOrientation;

    invoke-virtual {v0}, [Lcom/androidplot/ui/TextOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/ui/TextOrientation;

    return-object v0
.end method

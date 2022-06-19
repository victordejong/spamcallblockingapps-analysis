.class public final enum Lcom/androidplot/xy/XYGraphWidget$Edge;
.super Ljava/lang/Enum;
.source "XYGraphWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/XYGraphWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Edge"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/xy/XYGraphWidget$Edge;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/xy/XYGraphWidget$Edge;

.field public static final enum BOTTOM:Lcom/androidplot/xy/XYGraphWidget$Edge;

.field public static final enum LEFT:Lcom/androidplot/xy/XYGraphWidget$Edge;

.field public static final enum NONE:Lcom/androidplot/xy/XYGraphWidget$Edge;

.field public static final enum RIGHT:Lcom/androidplot/xy/XYGraphWidget$Edge;

.field public static final enum TOP:Lcom/androidplot/xy/XYGraphWidget$Edge;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 228
    new-instance v0, Lcom/androidplot/xy/XYGraphWidget$Edge;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/androidplot/xy/XYGraphWidget$Edge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/androidplot/xy/XYGraphWidget$Edge;->NONE:Lcom/androidplot/xy/XYGraphWidget$Edge;

    .line 229
    new-instance v1, Lcom/androidplot/xy/XYGraphWidget$Edge;

    const-string v3, "LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/androidplot/xy/XYGraphWidget$Edge;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/androidplot/xy/XYGraphWidget$Edge;->LEFT:Lcom/androidplot/xy/XYGraphWidget$Edge;

    .line 230
    new-instance v3, Lcom/androidplot/xy/XYGraphWidget$Edge;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/androidplot/xy/XYGraphWidget$Edge;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/androidplot/xy/XYGraphWidget$Edge;->RIGHT:Lcom/androidplot/xy/XYGraphWidget$Edge;

    .line 231
    new-instance v5, Lcom/androidplot/xy/XYGraphWidget$Edge;

    const-string v7, "TOP"

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-direct {v5, v7, v8, v9}, Lcom/androidplot/xy/XYGraphWidget$Edge;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/androidplot/xy/XYGraphWidget$Edge;->TOP:Lcom/androidplot/xy/XYGraphWidget$Edge;

    .line 232
    new-instance v7, Lcom/androidplot/xy/XYGraphWidget$Edge;

    const-string v10, "BOTTOM"

    const/16 v11, 0x8

    invoke-direct {v7, v10, v9, v11}, Lcom/androidplot/xy/XYGraphWidget$Edge;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/androidplot/xy/XYGraphWidget$Edge;->BOTTOM:Lcom/androidplot/xy/XYGraphWidget$Edge;

    const/4 v10, 0x5

    new-array v10, v10, [Lcom/androidplot/xy/XYGraphWidget$Edge;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    aput-object v7, v10, v9

    .line 227
    sput-object v10, Lcom/androidplot/xy/XYGraphWidget$Edge;->$VALUES:[Lcom/androidplot/xy/XYGraphWidget$Edge;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 236
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 237
    iput p3, p0, Lcom/androidplot/xy/XYGraphWidget$Edge;->value:I

    return-void
.end method

.method static synthetic access$200(Lcom/androidplot/xy/XYGraphWidget$Edge;)I
    .locals 0

    .line 227
    iget p0, p0, Lcom/androidplot/xy/XYGraphWidget$Edge;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/XYGraphWidget$Edge;
    .locals 1

    .line 227
    const-class v0, Lcom/androidplot/xy/XYGraphWidget$Edge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/xy/XYGraphWidget$Edge;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/xy/XYGraphWidget$Edge;
    .locals 1

    .line 227
    sget-object v0, Lcom/androidplot/xy/XYGraphWidget$Edge;->$VALUES:[Lcom/androidplot/xy/XYGraphWidget$Edge;

    invoke-virtual {v0}, [Lcom/androidplot/xy/XYGraphWidget$Edge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/XYGraphWidget$Edge;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget$Edge;->value:I

    return v0
.end method

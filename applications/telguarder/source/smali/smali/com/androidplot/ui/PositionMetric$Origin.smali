.class public final enum Lcom/androidplot/ui/PositionMetric$Origin;
.super Ljava/lang/Enum;
.source "PositionMetric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/ui/PositionMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Origin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/ui/PositionMetric$Origin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/ui/PositionMetric$Origin;

.field public static final enum FROM_BEGINING:Lcom/androidplot/ui/PositionMetric$Origin;

.field public static final enum FROM_CENTER:Lcom/androidplot/ui/PositionMetric$Origin;

.field public static final enum FROM_END:Lcom/androidplot/ui/PositionMetric$Origin;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 22
    new-instance v0, Lcom/androidplot/ui/PositionMetric$Origin;

    const-string v1, "FROM_BEGINING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/ui/PositionMetric$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_BEGINING:Lcom/androidplot/ui/PositionMetric$Origin;

    .line 23
    new-instance v1, Lcom/androidplot/ui/PositionMetric$Origin;

    const-string v3, "FROM_CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/ui/PositionMetric$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_CENTER:Lcom/androidplot/ui/PositionMetric$Origin;

    .line 24
    new-instance v3, Lcom/androidplot/ui/PositionMetric$Origin;

    const-string v5, "FROM_END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/androidplot/ui/PositionMetric$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/androidplot/ui/PositionMetric$Origin;->FROM_END:Lcom/androidplot/ui/PositionMetric$Origin;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/androidplot/ui/PositionMetric$Origin;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 21
    sput-object v5, Lcom/androidplot/ui/PositionMetric$Origin;->$VALUES:[Lcom/androidplot/ui/PositionMetric$Origin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/ui/PositionMetric$Origin;
    .locals 1

    .line 21
    const-class v0, Lcom/androidplot/ui/PositionMetric$Origin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/ui/PositionMetric$Origin;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/ui/PositionMetric$Origin;
    .locals 1

    .line 21
    sget-object v0, Lcom/androidplot/ui/PositionMetric$Origin;->$VALUES:[Lcom/androidplot/ui/PositionMetric$Origin;

    invoke-virtual {v0}, [Lcom/androidplot/ui/PositionMetric$Origin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/ui/PositionMetric$Origin;

    return-object v0
.end method

.class public final enum Lio/bidmachine/ViewAdObject$MeasureMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ViewAdObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "MeasureMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/ViewAdObject$MeasureMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/ViewAdObject$MeasureMode;

.field public static final enum Direct:Lio/bidmachine/ViewAdObject$MeasureMode;

.field public static final enum Match:Lio/bidmachine/ViewAdObject$MeasureMode;

.field public static final enum Wrap:Lio/bidmachine/ViewAdObject$MeasureMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 132
    new-instance v0, Lio/bidmachine/ViewAdObject$MeasureMode;

    const-string v1, "Match"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/ViewAdObject$MeasureMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/ViewAdObject$MeasureMode;->Match:Lio/bidmachine/ViewAdObject$MeasureMode;

    new-instance v1, Lio/bidmachine/ViewAdObject$MeasureMode;

    const-string v3, "Wrap"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/bidmachine/ViewAdObject$MeasureMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/bidmachine/ViewAdObject$MeasureMode;->Wrap:Lio/bidmachine/ViewAdObject$MeasureMode;

    new-instance v3, Lio/bidmachine/ViewAdObject$MeasureMode;

    const-string v5, "Direct"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/bidmachine/ViewAdObject$MeasureMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/bidmachine/ViewAdObject$MeasureMode;->Direct:Lio/bidmachine/ViewAdObject$MeasureMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/bidmachine/ViewAdObject$MeasureMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 131
    sput-object v5, Lio/bidmachine/ViewAdObject$MeasureMode;->$VALUES:[Lio/bidmachine/ViewAdObject$MeasureMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/ViewAdObject$MeasureMode;
    .locals 1

    .line 131
    const-class v0, Lio/bidmachine/ViewAdObject$MeasureMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/ViewAdObject$MeasureMode;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/ViewAdObject$MeasureMode;
    .locals 1

    .line 131
    sget-object v0, Lio/bidmachine/ViewAdObject$MeasureMode;->$VALUES:[Lio/bidmachine/ViewAdObject$MeasureMode;

    invoke-virtual {v0}, [Lio/bidmachine/ViewAdObject$MeasureMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/ViewAdObject$MeasureMode;

    return-object v0
.end method


# virtual methods
.method final getSize(Landroid/content/Context;I)I
    .locals 2

    .line 135
    sget-object v0, Lio/bidmachine/ViewAdObject$2;->$SwitchMap$io$bidmachine$ViewAdObject$MeasureMode:[I

    invoke-virtual {p0}, Lio/bidmachine/ViewAdObject$MeasureMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, -0x2

    return p1

    :cond_1
    int-to-float p2, p2

    .line 137
    invoke-static {p1}, Lio/bidmachine/core/Utils;->getScreenDensity(Landroid/content/Context;)F

    move-result p1

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

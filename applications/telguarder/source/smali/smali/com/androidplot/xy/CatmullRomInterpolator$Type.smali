.class public final enum Lcom/androidplot/xy/CatmullRomInterpolator$Type;
.super Ljava/lang/Enum;
.source "CatmullRomInterpolator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/CatmullRomInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/xy/CatmullRomInterpolator$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/xy/CatmullRomInterpolator$Type;

.field public static final enum Centripetal:Lcom/androidplot/xy/CatmullRomInterpolator$Type;

.field public static final enum Uniform:Lcom/androidplot/xy/CatmullRomInterpolator$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    new-instance v0, Lcom/androidplot/xy/CatmullRomInterpolator$Type;

    const-string v1, "Uniform"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/CatmullRomInterpolator$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/CatmullRomInterpolator$Type;->Uniform:Lcom/androidplot/xy/CatmullRomInterpolator$Type;

    .line 30
    new-instance v1, Lcom/androidplot/xy/CatmullRomInterpolator$Type;

    const-string v3, "Centripetal"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/xy/CatmullRomInterpolator$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/xy/CatmullRomInterpolator$Type;->Centripetal:Lcom/androidplot/xy/CatmullRomInterpolator$Type;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/androidplot/xy/CatmullRomInterpolator$Type;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 28
    sput-object v3, Lcom/androidplot/xy/CatmullRomInterpolator$Type;->$VALUES:[Lcom/androidplot/xy/CatmullRomInterpolator$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/CatmullRomInterpolator$Type;
    .locals 1

    .line 28
    const-class v0, Lcom/androidplot/xy/CatmullRomInterpolator$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/xy/CatmullRomInterpolator$Type;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/xy/CatmullRomInterpolator$Type;
    .locals 1

    .line 28
    sget-object v0, Lcom/androidplot/xy/CatmullRomInterpolator$Type;->$VALUES:[Lcom/androidplot/xy/CatmullRomInterpolator$Type;

    invoke-virtual {v0}, [Lcom/androidplot/xy/CatmullRomInterpolator$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/CatmullRomInterpolator$Type;

    return-object v0
.end method

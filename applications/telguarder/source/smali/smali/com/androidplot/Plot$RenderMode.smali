.class public final enum Lcom/androidplot/Plot$RenderMode;
.super Ljava/lang/Enum;
.source "Plot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/Plot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/Plot$RenderMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/Plot$RenderMode;

.field public static final enum USE_BACKGROUND_THREAD:Lcom/androidplot/Plot$RenderMode;

.field public static final enum USE_MAIN_THREAD:Lcom/androidplot/Plot$RenderMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 155
    new-instance v0, Lcom/androidplot/Plot$RenderMode;

    const-string v1, "USE_BACKGROUND_THREAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/Plot$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/Plot$RenderMode;->USE_BACKGROUND_THREAD:Lcom/androidplot/Plot$RenderMode;

    .line 165
    new-instance v1, Lcom/androidplot/Plot$RenderMode;

    const-string v3, "USE_MAIN_THREAD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/Plot$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/Plot$RenderMode;->USE_MAIN_THREAD:Lcom/androidplot/Plot$RenderMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/androidplot/Plot$RenderMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 145
    sput-object v3, Lcom/androidplot/Plot$RenderMode;->$VALUES:[Lcom/androidplot/Plot$RenderMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/Plot$RenderMode;
    .locals 1

    .line 145
    const-class v0, Lcom/androidplot/Plot$RenderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/Plot$RenderMode;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/Plot$RenderMode;
    .locals 1

    .line 145
    sget-object v0, Lcom/androidplot/Plot$RenderMode;->$VALUES:[Lcom/androidplot/Plot$RenderMode;

    invoke-virtual {v0}, [Lcom/androidplot/Plot$RenderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/Plot$RenderMode;

    return-object v0
.end method

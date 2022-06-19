.class public final enum Lcom/androidplot/ui/widget/Widget$Rotation;
.super Ljava/lang/Enum;
.source "Widget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/ui/widget/Widget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Rotation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/ui/widget/Widget$Rotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/ui/widget/Widget$Rotation;

.field public static final enum NEGATIVE_NINETY_DEGREES:Lcom/androidplot/ui/widget/Widget$Rotation;

.field public static final enum NINETY_DEGREES:Lcom/androidplot/ui/widget/Widget$Rotation;

.field public static final enum NONE:Lcom/androidplot/ui/widget/Widget$Rotation;

.field public static final enum ONE_HUNDRED_EIGHTY_DEGREES:Lcom/androidplot/ui/widget/Widget$Rotation;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 50
    new-instance v0, Lcom/androidplot/ui/widget/Widget$Rotation;

    const-string v1, "NINETY_DEGREES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/ui/widget/Widget$Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/widget/Widget$Rotation;->NINETY_DEGREES:Lcom/androidplot/ui/widget/Widget$Rotation;

    .line 51
    new-instance v1, Lcom/androidplot/ui/widget/Widget$Rotation;

    const-string v3, "NEGATIVE_NINETY_DEGREES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/ui/widget/Widget$Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/ui/widget/Widget$Rotation;->NEGATIVE_NINETY_DEGREES:Lcom/androidplot/ui/widget/Widget$Rotation;

    .line 52
    new-instance v3, Lcom/androidplot/ui/widget/Widget$Rotation;

    const-string v5, "ONE_HUNDRED_EIGHTY_DEGREES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/androidplot/ui/widget/Widget$Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/androidplot/ui/widget/Widget$Rotation;->ONE_HUNDRED_EIGHTY_DEGREES:Lcom/androidplot/ui/widget/Widget$Rotation;

    .line 53
    new-instance v5, Lcom/androidplot/ui/widget/Widget$Rotation;

    const-string v7, "NONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/androidplot/ui/widget/Widget$Rotation;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/androidplot/ui/widget/Widget$Rotation;->NONE:Lcom/androidplot/ui/widget/Widget$Rotation;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/androidplot/ui/widget/Widget$Rotation;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 49
    sput-object v7, Lcom/androidplot/ui/widget/Widget$Rotation;->$VALUES:[Lcom/androidplot/ui/widget/Widget$Rotation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/ui/widget/Widget$Rotation;
    .locals 1

    .line 49
    const-class v0, Lcom/androidplot/ui/widget/Widget$Rotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/ui/widget/Widget$Rotation;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/ui/widget/Widget$Rotation;
    .locals 1

    .line 49
    sget-object v0, Lcom/androidplot/ui/widget/Widget$Rotation;->$VALUES:[Lcom/androidplot/ui/widget/Widget$Rotation;

    invoke-virtual {v0}, [Lcom/androidplot/ui/widget/Widget$Rotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/ui/widget/Widget$Rotation;

    return-object v0
.end method

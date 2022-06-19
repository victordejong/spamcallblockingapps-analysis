.class public final enum Lcom/androidplot/ui/VerticalPositioning;
.super Ljava/lang/Enum;
.source "VerticalPositioning.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/ui/VerticalPositioning;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/ui/VerticalPositioning;

.field public static final enum ABSOLUTE_FROM_BOTTOM:Lcom/androidplot/ui/VerticalPositioning;

.field public static final enum ABSOLUTE_FROM_CENTER:Lcom/androidplot/ui/VerticalPositioning;

.field public static final enum ABSOLUTE_FROM_TOP:Lcom/androidplot/ui/VerticalPositioning;

.field public static final enum RELATIVE_TO_BOTTOM:Lcom/androidplot/ui/VerticalPositioning;

.field public static final enum RELATIVE_TO_CENTER:Lcom/androidplot/ui/VerticalPositioning;

.field public static final enum RELATIVE_TO_TOP:Lcom/androidplot/ui/VerticalPositioning;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 20
    new-instance v0, Lcom/androidplot/ui/VerticalPositioning;

    const-string v1, "ABSOLUTE_FROM_TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/ui/VerticalPositioning;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/VerticalPositioning;->ABSOLUTE_FROM_TOP:Lcom/androidplot/ui/VerticalPositioning;

    .line 21
    new-instance v1, Lcom/androidplot/ui/VerticalPositioning;

    const-string v3, "ABSOLUTE_FROM_BOTTOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/ui/VerticalPositioning;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/ui/VerticalPositioning;->ABSOLUTE_FROM_BOTTOM:Lcom/androidplot/ui/VerticalPositioning;

    .line 22
    new-instance v3, Lcom/androidplot/ui/VerticalPositioning;

    const-string v5, "ABSOLUTE_FROM_CENTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/androidplot/ui/VerticalPositioning;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/androidplot/ui/VerticalPositioning;->ABSOLUTE_FROM_CENTER:Lcom/androidplot/ui/VerticalPositioning;

    .line 23
    new-instance v5, Lcom/androidplot/ui/VerticalPositioning;

    const-string v7, "RELATIVE_TO_TOP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/androidplot/ui/VerticalPositioning;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/androidplot/ui/VerticalPositioning;->RELATIVE_TO_TOP:Lcom/androidplot/ui/VerticalPositioning;

    .line 24
    new-instance v7, Lcom/androidplot/ui/VerticalPositioning;

    const-string v9, "RELATIVE_TO_BOTTOM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/androidplot/ui/VerticalPositioning;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/androidplot/ui/VerticalPositioning;->RELATIVE_TO_BOTTOM:Lcom/androidplot/ui/VerticalPositioning;

    .line 25
    new-instance v9, Lcom/androidplot/ui/VerticalPositioning;

    const-string v11, "RELATIVE_TO_CENTER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/androidplot/ui/VerticalPositioning;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/androidplot/ui/VerticalPositioning;->RELATIVE_TO_CENTER:Lcom/androidplot/ui/VerticalPositioning;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/androidplot/ui/VerticalPositioning;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 19
    sput-object v11, Lcom/androidplot/ui/VerticalPositioning;->$VALUES:[Lcom/androidplot/ui/VerticalPositioning;

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

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/ui/VerticalPositioning;
    .locals 1

    .line 19
    const-class v0, Lcom/androidplot/ui/VerticalPositioning;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/ui/VerticalPositioning;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/ui/VerticalPositioning;
    .locals 1

    .line 19
    sget-object v0, Lcom/androidplot/ui/VerticalPositioning;->$VALUES:[Lcom/androidplot/ui/VerticalPositioning;

    invoke-virtual {v0}, [Lcom/androidplot/ui/VerticalPositioning;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/ui/VerticalPositioning;

    return-object v0
.end method

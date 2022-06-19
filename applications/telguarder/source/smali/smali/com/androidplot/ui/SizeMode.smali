.class public final enum Lcom/androidplot/ui/SizeMode;
.super Ljava/lang/Enum;
.source "SizeMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/ui/SizeMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/ui/SizeMode;

.field public static final enum ABSOLUTE:Lcom/androidplot/ui/SizeMode;

.field public static final enum FILL:Lcom/androidplot/ui/SizeMode;

.field public static final enum RELATIVE:Lcom/androidplot/ui/SizeMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 31
    new-instance v0, Lcom/androidplot/ui/SizeMode;

    const-string v1, "ABSOLUTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/ui/SizeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/ui/SizeMode;->ABSOLUTE:Lcom/androidplot/ui/SizeMode;

    .line 32
    new-instance v1, Lcom/androidplot/ui/SizeMode;

    const-string v3, "RELATIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/ui/SizeMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/ui/SizeMode;->RELATIVE:Lcom/androidplot/ui/SizeMode;

    .line 33
    new-instance v3, Lcom/androidplot/ui/SizeMode;

    const-string v5, "FILL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/androidplot/ui/SizeMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/androidplot/ui/SizeMode;->FILL:Lcom/androidplot/ui/SizeMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/androidplot/ui/SizeMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 30
    sput-object v5, Lcom/androidplot/ui/SizeMode;->$VALUES:[Lcom/androidplot/ui/SizeMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/ui/SizeMode;
    .locals 1

    .line 30
    const-class v0, Lcom/androidplot/ui/SizeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/ui/SizeMode;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/ui/SizeMode;
    .locals 1

    .line 30
    sget-object v0, Lcom/androidplot/ui/SizeMode;->$VALUES:[Lcom/androidplot/ui/SizeMode;

    invoke-virtual {v0}, [Lcom/androidplot/ui/SizeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/ui/SizeMode;

    return-object v0
.end method

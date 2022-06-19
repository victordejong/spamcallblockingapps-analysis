.class public final enum Lcom/jjoe64/graphview/j$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjoe64/graphview/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jjoe64/graphview/j$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jjoe64/graphview/j$a;

.field public static final enum AUTO_ADJUSTED:Lcom/jjoe64/graphview/j$a;

.field public static final enum FIX:Lcom/jjoe64/graphview/j$a;

.field public static final enum INITIAL:Lcom/jjoe64/graphview/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 466
    new-instance v0, Lcom/jjoe64/graphview/j$a;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jjoe64/graphview/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jjoe64/graphview/j$a;->INITIAL:Lcom/jjoe64/graphview/j$a;

    .line 472
    new-instance v1, Lcom/jjoe64/graphview/j$a;

    const-string v3, "AUTO_ADJUSTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/jjoe64/graphview/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/jjoe64/graphview/j$a;->AUTO_ADJUSTED:Lcom/jjoe64/graphview/j$a;

    .line 478
    new-instance v3, Lcom/jjoe64/graphview/j$a;

    const-string v5, "FIX"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/jjoe64/graphview/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/jjoe64/graphview/j$a;->FIX:Lcom/jjoe64/graphview/j$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/jjoe64/graphview/j$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 459
    sput-object v5, Lcom/jjoe64/graphview/j$a;->$VALUES:[Lcom/jjoe64/graphview/j$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 459
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jjoe64/graphview/j$a;
    .locals 1

    .line 459
    const-class v0, Lcom/jjoe64/graphview/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jjoe64/graphview/j$a;

    return-object p0
.end method

.method public static values()[Lcom/jjoe64/graphview/j$a;
    .locals 1

    .line 459
    sget-object v0, Lcom/jjoe64/graphview/j$a;->$VALUES:[Lcom/jjoe64/graphview/j$a;

    invoke-virtual {v0}, [Lcom/jjoe64/graphview/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jjoe64/graphview/j$a;

    return-object v0
.end method

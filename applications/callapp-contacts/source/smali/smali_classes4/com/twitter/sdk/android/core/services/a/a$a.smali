.class public final enum Lcom/twitter/sdk/android/core/services/a/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/services/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/twitter/sdk/android/core/services/a/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/twitter/sdk/android/core/services/a/a$a;

.field public static final enum KILOMETERS:Lcom/twitter/sdk/android/core/services/a/a$a;

.field public static final enum MILES:Lcom/twitter/sdk/android/core/services/a/a$a;


# instance fields
.field public final identifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 34
    new-instance v0, Lcom/twitter/sdk/android/core/services/a/a$a;

    const-string v1, "MILES"

    const/4 v2, 0x0

    const-string v3, "mi"

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/sdk/android/core/services/a/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/twitter/sdk/android/core/services/a/a$a;->MILES:Lcom/twitter/sdk/android/core/services/a/a$a;

    .line 35
    new-instance v1, Lcom/twitter/sdk/android/core/services/a/a$a;

    const-string v3, "KILOMETERS"

    const/4 v4, 0x1

    const-string v5, "km"

    invoke-direct {v1, v3, v4, v5}, Lcom/twitter/sdk/android/core/services/a/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/twitter/sdk/android/core/services/a/a$a;->KILOMETERS:Lcom/twitter/sdk/android/core/services/a/a$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/twitter/sdk/android/core/services/a/a$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 33
    sput-object v3, Lcom/twitter/sdk/android/core/services/a/a$a;->$VALUES:[Lcom/twitter/sdk/android/core/services/a/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lcom/twitter/sdk/android/core/services/a/a$a;->identifier:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/twitter/sdk/android/core/services/a/a$a;
    .locals 1

    .line 33
    const-class v0, Lcom/twitter/sdk/android/core/services/a/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/twitter/sdk/android/core/services/a/a$a;

    return-object p0
.end method

.method public static values()[Lcom/twitter/sdk/android/core/services/a/a$a;
    .locals 1

    .line 33
    sget-object v0, Lcom/twitter/sdk/android/core/services/a/a$a;->$VALUES:[Lcom/twitter/sdk/android/core/services/a/a$a;

    invoke-virtual {v0}, [Lcom/twitter/sdk/android/core/services/a/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/sdk/android/core/services/a/a$a;

    return-object v0
.end method

.class public final enum Lio/fabric/sdk/android/services/b/l;
.super Ljava/lang/Enum;
.source "DeliveryMechanism.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/fabric/sdk/android/services/b/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/fabric/sdk/android/services/b/l;

.field public static final enum b:Lio/fabric/sdk/android/services/b/l;

.field public static final enum c:Lio/fabric/sdk/android/services/b/l;

.field public static final enum d:Lio/fabric/sdk/android/services/b/l;

.field private static final synthetic f:[Lio/fabric/sdk/android/services/b/l;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 27
    new-instance v0, Lio/fabric/sdk/android/services/b/l;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "DEVELOPER"

    invoke-direct {v0, v3, v1, v2}, Lio/fabric/sdk/android/services/b/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/fabric/sdk/android/services/b/l;->a:Lio/fabric/sdk/android/services/b/l;

    new-instance v0, Lio/fabric/sdk/android/services/b/l;

    const/4 v3, 0x2

    const-string v4, "USER_SIDELOAD"

    invoke-direct {v0, v4, v2, v3}, Lio/fabric/sdk/android/services/b/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/fabric/sdk/android/services/b/l;->b:Lio/fabric/sdk/android/services/b/l;

    new-instance v0, Lio/fabric/sdk/android/services/b/l;

    const/4 v4, 0x3

    const-string v5, "TEST_DISTRIBUTION"

    invoke-direct {v0, v5, v3, v4}, Lio/fabric/sdk/android/services/b/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/fabric/sdk/android/services/b/l;->c:Lio/fabric/sdk/android/services/b/l;

    new-instance v0, Lio/fabric/sdk/android/services/b/l;

    const/4 v5, 0x4

    const-string v6, "APP_STORE"

    invoke-direct {v0, v6, v4, v5}, Lio/fabric/sdk/android/services/b/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/fabric/sdk/android/services/b/l;->d:Lio/fabric/sdk/android/services/b/l;

    new-array v0, v5, [Lio/fabric/sdk/android/services/b/l;

    .line 25
    sget-object v5, Lio/fabric/sdk/android/services/b/l;->a:Lio/fabric/sdk/android/services/b/l;

    aput-object v5, v0, v1

    sget-object v1, Lio/fabric/sdk/android/services/b/l;->b:Lio/fabric/sdk/android/services/b/l;

    aput-object v1, v0, v2

    sget-object v1, Lio/fabric/sdk/android/services/b/l;->c:Lio/fabric/sdk/android/services/b/l;

    aput-object v1, v0, v3

    sget-object v1, Lio/fabric/sdk/android/services/b/l;->d:Lio/fabric/sdk/android/services/b/l;

    aput-object v1, v0, v4

    sput-object v0, Lio/fabric/sdk/android/services/b/l;->f:[Lio/fabric/sdk/android/services/b/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lio/fabric/sdk/android/services/b/l;->e:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lio/fabric/sdk/android/services/b/l;
    .locals 1

    const-string v0, "io.crash.air"

    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object p0, Lio/fabric/sdk/android/services/b/l;->c:Lio/fabric/sdk/android/services/b/l;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 54
    sget-object p0, Lio/fabric/sdk/android/services/b/l;->d:Lio/fabric/sdk/android/services/b/l;

    return-object p0

    .line 56
    :cond_1
    sget-object p0, Lio/fabric/sdk/android/services/b/l;->a:Lio/fabric/sdk/android/services/b/l;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/fabric/sdk/android/services/b/l;
    .locals 1

    .line 25
    const-class v0, Lio/fabric/sdk/android/services/b/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/fabric/sdk/android/services/b/l;

    return-object p0
.end method

.method public static values()[Lio/fabric/sdk/android/services/b/l;
    .locals 1

    .line 25
    sget-object v0, Lio/fabric/sdk/android/services/b/l;->f:[Lio/fabric/sdk/android/services/b/l;

    invoke-virtual {v0}, [Lio/fabric/sdk/android/services/b/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/fabric/sdk/android/services/b/l;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 38
    iget v0, p0, Lio/fabric/sdk/android/services/b/l;->e:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 43
    iget v0, p0, Lio/fabric/sdk/android/services/b/l;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

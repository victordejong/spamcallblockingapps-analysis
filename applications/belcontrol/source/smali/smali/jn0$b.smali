.class public final enum Ljn0$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljn0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljn0$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ljn0$b;

.field public static final enum b:Ljn0$b;

.field public static final enum c:Ljn0$b;

.field public static final synthetic d:[Ljn0$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljn0$b;

    const-string v1, "CrashReport"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljn0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljn0$b;->a:Ljn0$b;

    new-instance v1, Ljn0$b;

    const-string v3, "CrashShield"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljn0$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljn0$b;->b:Ljn0$b;

    new-instance v3, Ljn0$b;

    const-string v5, "ThreadCheck"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljn0$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ljn0$b;->c:Ljn0$b;

    const/4 v5, 0x3

    new-array v5, v5, [Ljn0$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Ljn0$b;->d:[Ljn0$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljn0$b;
    .locals 1

    const-class v0, Ljn0$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljn0$b;

    return-object p0
.end method

.method public static values()[Ljn0$b;
    .locals 1

    sget-object v0, Ljn0$b;->d:[Ljn0$b;

    invoke-virtual {v0}, [Ljn0$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljn0$b;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Ljn0$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string v0, "Unknown"

    goto :goto_0

    :cond_0
    const-string v0, "ThreadCheck"

    goto :goto_0

    :cond_1
    const-string v0, "CrashShield"

    goto :goto_0

    :cond_2
    const-string v0, "CrashReport"

    :goto_0
    return-object v0
.end method

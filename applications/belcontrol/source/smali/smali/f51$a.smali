.class public final enum Lf51$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf51;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf51$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lf51$a;

.field public static final enum b:Lf51$a;

.field public static final enum c:Lf51$a;

.field public static final synthetic d:[Lf51$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lf51$a;

    const-string v1, "AD_STATE_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf51$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf51$a;->a:Lf51$a;

    new-instance v1, Lf51$a;

    const-string v3, "AD_STATE_VISIBLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lf51$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lf51$a;->b:Lf51$a;

    new-instance v3, Lf51$a;

    const-string v5, "AD_STATE_NOTVISIBLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lf51$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lf51$a;->c:Lf51$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lf51$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lf51$a;->d:[Lf51$a;

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

.method public static valueOf(Ljava/lang/String;)Lf51$a;
    .locals 1

    const-class v0, Lf51$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf51$a;

    return-object p0
.end method

.method public static values()[Lf51$a;
    .locals 1

    sget-object v0, Lf51$a;->d:[Lf51$a;

    invoke-virtual {v0}, [Lf51$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf51$a;

    return-object v0
.end method

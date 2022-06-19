.class public final enum Lgh0;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgh0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lgh0;

.field public static final enum b:Lgh0;

.field public static final synthetic c:[Lgh0;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lgh0;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgh0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgh0;->a:Lgh0;

    new-instance v1, Lgh0;

    const-string v3, "Uniform"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lgh0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lgh0;->b:Lgh0;

    const/4 v3, 0x2

    new-array v3, v3, [Lgh0;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lgh0;->c:[Lgh0;

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

.method public static valueOf(Ljava/lang/String;)Lgh0;
    .locals 1

    const-class v0, Lgh0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgh0;

    return-object p0
.end method

.method public static values()[Lgh0;
    .locals 1

    sget-object v0, Lgh0;->c:[Lgh0;

    invoke-virtual {v0}, [Lgh0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgh0;

    return-object v0
.end method

.class public final enum Lqb0$c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqb0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lqb0$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lqb0$c;

.field public static final enum b:Lqb0$c;

.field public static final enum c:Lqb0$c;

.field public static final synthetic d:[Lqb0$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lqb0$c;

    const-string v1, "UNCHECKED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lqb0$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqb0$c;->a:Lqb0$c;

    new-instance v1, Lqb0$c;

    const-string v3, "CHECKED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lqb0$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lqb0$c;->b:Lqb0$c;

    new-instance v3, Lqb0$c;

    const-string v5, "INDETERMINATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lqb0$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lqb0$c;->c:Lqb0$c;

    const/4 v5, 0x3

    new-array v5, v5, [Lqb0$c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lqb0$c;->d:[Lqb0$c;

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

.method public static valueOf(Ljava/lang/String;)Lqb0$c;
    .locals 1

    const-class v0, Lqb0$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lqb0$c;

    return-object p0
.end method

.method public static values()[Lqb0$c;
    .locals 1

    sget-object v0, Lqb0$c;->d:[Lqb0$c;

    invoke-virtual {v0}, [Lqb0$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqb0$c;

    return-object v0
.end method

.class public final enum Ltw$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltw$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ltw$a;

.field public static final enum b:Ltw$a;

.field public static final enum c:Ltw$a;

.field public static final synthetic d:[Ltw$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Ltw$a;

    const-string v1, "WITH_TITLE_LANDSCAPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltw$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltw$a;->a:Ltw$a;

    new-instance v1, Ltw$a;

    const-string v3, "WITH_TITLE_PORTRAIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ltw$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ltw$a;->b:Ltw$a;

    new-instance v3, Ltw$a;

    const-string v5, "WITHOUT_TITLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ltw$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ltw$a;->c:Ltw$a;

    const/4 v5, 0x3

    new-array v5, v5, [Ltw$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Ltw$a;->d:[Ltw$a;

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

.method public static valueOf(Ljava/lang/String;)Ltw$a;
    .locals 1

    const-class v0, Ltw$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltw$a;

    return-object p0
.end method

.method public static values()[Ltw$a;
    .locals 1

    sget-object v0, Ltw$a;->d:[Ltw$a;

    invoke-virtual {v0}, [Ltw$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltw$a;

    return-object v0
.end method

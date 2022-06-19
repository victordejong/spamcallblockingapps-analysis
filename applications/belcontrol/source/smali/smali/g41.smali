.class public final enum Lg41;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg41;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lg41;

.field public static final enum c:Lg41;

.field public static final synthetic d:[Lg41;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lg41;

    const-string v1, "CLICK"

    const/4 v2, 0x0

    const-string v3, "click"

    invoke-direct {v0, v1, v2, v3}, Lg41;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lg41;->b:Lg41;

    new-instance v1, Lg41;

    const-string v3, "INVITATION_ACCEPTED"

    const/4 v4, 0x1

    const-string v5, "invitationAccept"

    invoke-direct {v1, v3, v4, v5}, Lg41;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lg41;->c:Lg41;

    const/4 v3, 0x2

    new-array v3, v3, [Lg41;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lg41;->d:[Lg41;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lg41;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg41;
    .locals 1

    const-class v0, Lg41;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg41;

    return-object p0
.end method

.method public static values()[Lg41;
    .locals 1

    sget-object v0, Lg41;->d:[Lg41;

    invoke-virtual {v0}, [Lg41;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg41;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg41;->a:Ljava/lang/String;

    return-object v0
.end method

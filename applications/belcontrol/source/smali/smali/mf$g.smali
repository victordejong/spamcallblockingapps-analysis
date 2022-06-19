.class public final enum Lmf$g;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmf$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lmf$g;

.field public static final enum b:Lmf$g;

.field public static final enum c:Lmf$g;

.field public static final synthetic d:[Lmf$g;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lmf$g;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmf$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmf$g;->a:Lmf$g;

    new-instance v1, Lmf$g;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lmf$g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmf$g;->b:Lmf$g;

    new-instance v3, Lmf$g;

    const-string v5, "FINISHED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lmf$g;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lmf$g;->c:Lmf$g;

    const/4 v5, 0x3

    new-array v5, v5, [Lmf$g;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lmf$g;->d:[Lmf$g;

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

.method public static valueOf(Ljava/lang/String;)Lmf$g;
    .locals 1

    const-class v0, Lmf$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmf$g;

    return-object p0
.end method

.method public static values()[Lmf$g;
    .locals 1

    sget-object v0, Lmf$g;->d:[Lmf$g;

    invoke-virtual {v0}, [Lmf$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmf$g;

    return-object v0
.end method

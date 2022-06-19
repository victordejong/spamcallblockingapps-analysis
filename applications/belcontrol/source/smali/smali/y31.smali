.class public final enum Ly31;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ly31;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Ly31;

.field public static final enum c:Ly31;

.field public static final enum d:Ly31;

.field public static final synthetic f:[Ly31;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Ly31;

    const-string v1, "HTML"

    const/4 v2, 0x0

    const-string v3, "html"

    invoke-direct {v0, v1, v2, v3}, Ly31;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ly31;->b:Ly31;

    new-instance v1, Ly31;

    const-string v3, "NATIVE"

    const/4 v4, 0x1

    const-string v5, "native"

    invoke-direct {v1, v3, v4, v5}, Ly31;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Ly31;->c:Ly31;

    new-instance v3, Ly31;

    const-string v5, "JAVASCRIPT"

    const/4 v6, 0x2

    const-string v7, "javascript"

    invoke-direct {v3, v5, v6, v7}, Ly31;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Ly31;->d:Ly31;

    const/4 v5, 0x3

    new-array v5, v5, [Ly31;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Ly31;->f:[Ly31;

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

    iput-object p3, p0, Ly31;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ly31;
    .locals 1

    const-class v0, Ly31;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly31;

    return-object p0
.end method

.method public static values()[Ly31;
    .locals 1

    sget-object v0, Ly31;->f:[Ly31;

    invoke-virtual {v0}, [Ly31;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly31;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly31;->a:Ljava/lang/String;

    return-object v0
.end method

.class public final enum La7/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La7/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:La7/g;

.field public static final enum c:La7/g;

.field public static final synthetic d:[La7/g;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, La7/g;

    const-string v1, "NATIVE"

    const/4 v2, 0x0

    const-string v3, "native"

    invoke-direct {v0, v1, v2, v3}, La7/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, La7/g;->b:La7/g;

    new-instance v1, La7/g;

    const-string v3, "JAVASCRIPT"

    const/4 v4, 0x1

    const-string v5, "javascript"

    invoke-direct {v1, v3, v4, v5}, La7/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, La7/g;

    const-string v5, "NONE"

    const/4 v6, 0x2

    const-string v7, "none"

    invoke-direct {v3, v5, v6, v7}, La7/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, La7/g;->c:La7/g;

    const/4 v5, 0x3

    new-array v5, v5, [La7/g;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, La7/g;->d:[La7/g;

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

    iput-object p3, p0, La7/g;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La7/g;
    .locals 1

    const-class v0, La7/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La7/g;

    return-object p0
.end method

.method public static values()[La7/g;
    .locals 1

    sget-object v0, La7/g;->d:[La7/g;

    invoke-virtual {v0}, [La7/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La7/g;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La7/g;->a:Ljava/lang/String;

    return-object v0
.end method

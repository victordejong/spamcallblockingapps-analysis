.class public final enum Lq71$h;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq71;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq71$h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lq71$h;

.field public static final enum c:Lq71$h;

.field public static final enum d:Lq71$h;

.field public static final synthetic f:[Lq71$h;


# instance fields
.field public a:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lq71$h;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "UNDEFINED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lq71$h;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lq71$h;->b:Lq71$h;

    new-instance v1, Lq71$h;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "NUMBER"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lq71$h;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v1, Lq71$h;->c:Lq71$h;

    new-instance v2, Lq71$h;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "CONTACT"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lq71$h;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v2, Lq71$h;->d:Lq71$h;

    const/4 v4, 0x3

    new-array v4, v4, [Lq71$h;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lq71$h;->f:[Lq71$h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lq71$h;->a:Ljava/lang/Integer;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq71$h;
    .locals 1

    const-class v0, Lq71$h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq71$h;

    return-object p0
.end method

.method public static values()[Lq71$h;
    .locals 1

    sget-object v0, Lq71$h;->f:[Lq71$h;

    invoke-virtual {v0}, [Lq71$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq71$h;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lq71$h;->a:Ljava/lang/Integer;

    return-object v0
.end method

.class public final enum Lnh1;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnh1;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ASSETURI:Lnh1;

.field public static final enum CACHEBUSTING:Lnh1;

.field public static final enum CONTENTPLAYHEAD:Lnh1;

.field public static final enum ERRORCODE:Lnh1;

.field public static final synthetic a:[Lnh1;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lnh1;

    const-string v1, "ERRORCODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnh1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnh1;->ERRORCODE:Lnh1;

    new-instance v1, Lnh1;

    const-string v3, "CONTENTPLAYHEAD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnh1;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnh1;->CONTENTPLAYHEAD:Lnh1;

    new-instance v3, Lnh1;

    const-string v5, "CACHEBUSTING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnh1;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnh1;->CACHEBUSTING:Lnh1;

    new-instance v5, Lnh1;

    const-string v7, "ASSETURI"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnh1;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnh1;->ASSETURI:Lnh1;

    const/4 v7, 0x4

    new-array v7, v7, [Lnh1;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lnh1;->a:[Lnh1;

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

.method public static valueOf(Ljava/lang/String;)Lnh1;
    .locals 1

    const-class v0, Lnh1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnh1;

    return-object p0
.end method

.method public static values()[Lnh1;
    .locals 1

    sget-object v0, Lnh1;->a:[Lnh1;

    invoke-virtual {v0}, [Lnh1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnh1;

    return-object v0
.end method

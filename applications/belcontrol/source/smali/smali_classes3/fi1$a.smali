.class public final enum Lfi1$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfi1$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD_LOADED:Lfi1$a;

.field public static final enum INVALID_DATA:Lfi1$a;

.field public static final enum MISSING_ADAPTER:Lfi1$a;

.field public static final enum TIMEOUT:Lfi1$a;

.field public static final synthetic b:[Lfi1$a;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lfi1$a;

    const-string v1, "AD_LOADED"

    const/4 v2, 0x0

    const-string v3, "ad_loaded"

    invoke-direct {v0, v1, v2, v3}, Lfi1$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfi1$a;->AD_LOADED:Lfi1$a;

    new-instance v1, Lfi1$a;

    const-string v3, "MISSING_ADAPTER"

    const/4 v4, 0x1

    const-string v5, "missing_adapter"

    invoke-direct {v1, v3, v4, v5}, Lfi1$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lfi1$a;->MISSING_ADAPTER:Lfi1$a;

    new-instance v3, Lfi1$a;

    const-string v5, "TIMEOUT"

    const/4 v6, 0x2

    const-string v7, "timeout"

    invoke-direct {v3, v5, v6, v7}, Lfi1$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lfi1$a;->TIMEOUT:Lfi1$a;

    new-instance v5, Lfi1$a;

    const-string v7, "INVALID_DATA"

    const/4 v8, 0x3

    const-string v9, "invalid_data"

    invoke-direct {v5, v7, v8, v9}, Lfi1$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lfi1$a;->INVALID_DATA:Lfi1$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lfi1$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lfi1$a;->b:[Lfi1$a;

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

    iput-object p3, p0, Lfi1$a;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lfi1$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfi1$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lfi1$a;
    .locals 1

    const-class v0, Lfi1$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfi1$a;

    return-object p0
.end method

.method public static values()[Lfi1$a;
    .locals 1

    sget-object v0, Lfi1$a;->b:[Lfi1$a;

    invoke-virtual {v0}, [Lfi1$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfi1$a;

    return-object v0
.end method

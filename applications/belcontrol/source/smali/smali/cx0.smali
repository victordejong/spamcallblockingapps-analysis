.class public final enum Lcx0;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcx0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcx0;

.field public static final enum b:Lcx0;

.field public static final enum c:Lcx0;

.field public static final enum d:Lcx0;

.field public static final synthetic f:[Lcx0;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcx0;

    const-string v1, "PHOHE_NUMBER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcx0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcx0;->a:Lcx0;

    new-instance v1, Lcx0;

    const-string v3, "SIMILAR_NUMBER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcx0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcx0;->b:Lcx0;

    new-instance v3, Lcx0;

    const-string v5, "WILD_CARD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcx0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcx0;->c:Lcx0;

    new-instance v5, Lcx0;

    const-string v7, "AREA_CODE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcx0;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcx0;->d:Lcx0;

    const/4 v7, 0x4

    new-array v7, v7, [Lcx0;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcx0;->f:[Lcx0;

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

.method public static valueOf(Ljava/lang/String;)Lcx0;
    .locals 1

    const-class v0, Lcx0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcx0;

    return-object p0
.end method

.method public static values()[Lcx0;
    .locals 1

    sget-object v0, Lcx0;->f:[Lcx0;

    invoke-virtual {v0}, [Lcx0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcx0;

    return-object v0
.end method

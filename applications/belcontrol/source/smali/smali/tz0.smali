.class public final enum Ltz0;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltz0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ltz0;

.field public static final enum b:Ltz0;

.field public static final enum c:Ltz0;

.field public static final enum d:Ltz0;

.field public static final enum f:Ltz0;

.field public static final enum g:Ltz0;

.field public static final synthetic h:[Ltz0;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Ltz0;

    const-string v1, "AD_FREE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltz0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltz0;->a:Ltz0;

    new-instance v1, Ltz0;

    const-string v3, "UNLIMITED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ltz0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ltz0;->b:Ltz0;

    new-instance v3, Ltz0;

    const-string v5, "COMMUNITY_PROTECTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ltz0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ltz0;->c:Ltz0;

    new-instance v5, Ltz0;

    const-string v7, "LOOKUPS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ltz0;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ltz0;->d:Ltz0;

    new-instance v7, Ltz0;

    const-string v9, "HP_SUPPORT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ltz0;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ltz0;->f:Ltz0;

    new-instance v9, Ltz0;

    const-string v11, "PREMIUM_CREDITS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ltz0;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ltz0;->g:Ltz0;

    const/4 v11, 0x6

    new-array v11, v11, [Ltz0;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Ltz0;->h:[Ltz0;

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

.method public static valueOf(Ljava/lang/String;)Ltz0;
    .locals 1

    const-class v0, Ltz0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltz0;

    return-object p0
.end method

.method public static values()[Ltz0;
    .locals 1

    sget-object v0, Ltz0;->h:[Ltz0;

    invoke-virtual {v0}, [Ltz0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltz0;

    return-object v0
.end method

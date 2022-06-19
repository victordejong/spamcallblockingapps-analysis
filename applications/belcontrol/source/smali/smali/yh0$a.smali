.class public final enum Lyh0$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lyh0$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lyh0$a;

.field public static final enum b:Lyh0$a;

.field public static final enum c:Lyh0$a;

.field public static final enum d:Lyh0$a;

.field public static final enum f:Lyh0$a;

.field public static final enum g:Lyh0$a;

.field public static final enum h:Lyh0$a;

.field public static final enum j:Lyh0$a;

.field public static final enum k:Lyh0$a;

.field public static final enum l:Lyh0$a;

.field public static final synthetic m:[Lyh0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lyh0$a;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyh0$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyh0$a;->a:Lyh0$a;

    new-instance v1, Lyh0$a;

    const-string v3, "XMinYMin"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lyh0$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyh0$a;->b:Lyh0$a;

    new-instance v3, Lyh0$a;

    const-string v5, "XMidYMin"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lyh0$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lyh0$a;->c:Lyh0$a;

    new-instance v5, Lyh0$a;

    const-string v7, "XMaxYMin"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lyh0$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lyh0$a;->d:Lyh0$a;

    new-instance v7, Lyh0$a;

    const-string v9, "XMinYMid"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lyh0$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lyh0$a;->f:Lyh0$a;

    new-instance v9, Lyh0$a;

    const-string v11, "XMidYMid"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lyh0$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lyh0$a;->g:Lyh0$a;

    new-instance v11, Lyh0$a;

    const-string v13, "XMaxYMid"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lyh0$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lyh0$a;->h:Lyh0$a;

    new-instance v13, Lyh0$a;

    const-string v15, "XMinYMax"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lyh0$a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lyh0$a;->j:Lyh0$a;

    new-instance v15, Lyh0$a;

    const-string v14, "XMidYMax"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lyh0$a;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lyh0$a;->k:Lyh0$a;

    new-instance v14, Lyh0$a;

    const-string v12, "XMaxYMax"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lyh0$a;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lyh0$a;->l:Lyh0$a;

    const/16 v12, 0xa

    new-array v12, v12, [Lyh0$a;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lyh0$a;->m:[Lyh0$a;

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

.method public static valueOf(Ljava/lang/String;)Lyh0$a;
    .locals 1

    const-class v0, Lyh0$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyh0$a;

    return-object p0
.end method

.method public static values()[Lyh0$a;
    .locals 1

    sget-object v0, Lyh0$a;->m:[Lyh0$a;

    invoke-virtual {v0}, [Lyh0$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyh0$a;

    return-object v0
.end method

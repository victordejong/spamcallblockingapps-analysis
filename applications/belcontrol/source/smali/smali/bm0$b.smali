.class public final enum Lbm0$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbm0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbm0$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lbm0$b;

.field public static final enum c:Lbm0$b;

.field public static final enum d:Lbm0$b;

.field public static final enum f:Lbm0$b;

.field public static final enum g:Lbm0$b;

.field public static final enum h:Lbm0$b;

.field public static final enum j:Lbm0$b;

.field public static final enum k:Lbm0$b;

.field public static final enum l:Lbm0$b;

.field public static final synthetic m:[Lbm0$b;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lbm0$b;

    const-string v1, "Login"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbm0$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbm0$b;->b:Lbm0$b;

    new-instance v1, Lbm0$b;

    const-string v3, "Share"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lbm0$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbm0$b;->c:Lbm0$b;

    new-instance v3, Lbm0$b;

    const-string v5, "Message"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lbm0$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lbm0$b;->d:Lbm0$b;

    new-instance v5, Lbm0$b;

    const-string v7, "Like"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lbm0$b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lbm0$b;->f:Lbm0$b;

    new-instance v7, Lbm0$b;

    const-string v9, "GameRequest"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lbm0$b;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lbm0$b;->g:Lbm0$b;

    new-instance v9, Lbm0$b;

    const-string v11, "AppGroupCreate"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lbm0$b;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lbm0$b;->h:Lbm0$b;

    new-instance v11, Lbm0$b;

    const-string v13, "AppGroupJoin"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lbm0$b;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lbm0$b;->j:Lbm0$b;

    new-instance v13, Lbm0$b;

    const-string v15, "AppInvite"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lbm0$b;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lbm0$b;->k:Lbm0$b;

    new-instance v15, Lbm0$b;

    const-string v14, "DeviceShare"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lbm0$b;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lbm0$b;->l:Lbm0$b;

    const/16 v14, 0x9

    new-array v14, v14, [Lbm0$b;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lbm0$b;->m:[Lbm0$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lbm0$b;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbm0$b;
    .locals 1

    const-class v0, Lbm0$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbm0$b;

    return-object p0
.end method

.method public static values()[Lbm0$b;
    .locals 1

    sget-object v0, Lbm0$b;->m:[Lbm0$b;

    invoke-virtual {v0}, [Lbm0$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbm0$b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    invoke-static {}, Lui0;->l()I

    move-result v0

    iget v1, p0, Lbm0$b;->a:I

    add-int/2addr v0, v1

    return v0
.end method

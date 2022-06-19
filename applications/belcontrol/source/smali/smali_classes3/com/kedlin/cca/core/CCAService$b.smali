.class public final enum Lcom/kedlin/cca/core/CCAService$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kedlin/cca/core/CCAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kedlin/cca/core/CCAService$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/kedlin/cca/core/CCAService$b;

.field public static final enum d:Lcom/kedlin/cca/core/CCAService$b;

.field public static final enum f:Lcom/kedlin/cca/core/CCAService$b;

.field public static final enum g:Lcom/kedlin/cca/core/CCAService$b;

.field public static final enum h:Lcom/kedlin/cca/core/CCAService$b;

.field public static final synthetic j:[Lcom/kedlin/cca/core/CCAService$b;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/kedlin/cca/core/CCAService$b;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    const v3, 0x7f08037b

    const v4, 0x7f1100cb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kedlin/cca/core/CCAService$b;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/kedlin/cca/core/CCAService$b;->c:Lcom/kedlin/cca/core/CCAService$b;

    new-instance v1, Lcom/kedlin/cca/core/CCAService$b;

    const-string v3, "NOT_RUNNING"

    const/4 v4, 0x1

    const v5, 0x7f080379

    const v6, 0x7f1100c7

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/kedlin/cca/core/CCAService$b;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/kedlin/cca/core/CCAService$b;->d:Lcom/kedlin/cca/core/CCAService$b;

    new-instance v3, Lcom/kedlin/cca/core/CCAService$b;

    const-string v5, "BLOCKED"

    const/4 v6, 0x2

    const v7, 0x7f080378

    const v8, 0x7f1100bd

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/kedlin/cca/core/CCAService$b;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/kedlin/cca/core/CCAService$b;->f:Lcom/kedlin/cca/core/CCAService$b;

    new-instance v5, Lcom/kedlin/cca/core/CCAService$b;

    const-string v9, "MISSED"

    const/4 v10, 0x3

    invoke-direct {v5, v9, v10, v7, v8}, Lcom/kedlin/cca/core/CCAService$b;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lcom/kedlin/cca/core/CCAService$b;->g:Lcom/kedlin/cca/core/CCAService$b;

    new-instance v7, Lcom/kedlin/cca/core/CCAService$b;

    const-string v8, "EMERGENCY"

    const/4 v9, 0x4

    const v11, 0x7f08037a

    const v12, 0x7f1100ca

    invoke-direct {v7, v8, v9, v11, v12}, Lcom/kedlin/cca/core/CCAService$b;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lcom/kedlin/cca/core/CCAService$b;->h:Lcom/kedlin/cca/core/CCAService$b;

    const/4 v8, 0x5

    new-array v8, v8, [Lcom/kedlin/cca/core/CCAService$b;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    aput-object v5, v8, v10

    aput-object v7, v8, v9

    sput-object v8, Lcom/kedlin/cca/core/CCAService$b;->j:[Lcom/kedlin/cca/core/CCAService$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p4, p0, Lcom/kedlin/cca/core/CCAService$b;->a:I

    iput p3, p0, Lcom/kedlin/cca/core/CCAService$b;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kedlin/cca/core/CCAService$b;
    .locals 1

    const-class v0, Lcom/kedlin/cca/core/CCAService$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kedlin/cca/core/CCAService$b;

    return-object p0
.end method

.method public static values()[Lcom/kedlin/cca/core/CCAService$b;
    .locals 1

    sget-object v0, Lcom/kedlin/cca/core/CCAService$b;->j:[Lcom/kedlin/cca/core/CCAService$b;

    invoke-virtual {v0}, [Lcom/kedlin/cca/core/CCAService$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kedlin/cca/core/CCAService$b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/kedlin/cca/core/CCAService$b;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/kedlin/cca/core/CCAService$b;->a:I

    return v0
.end method

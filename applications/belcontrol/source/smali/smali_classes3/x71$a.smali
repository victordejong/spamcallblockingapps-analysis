.class public final enum Lx71$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx71;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lx71$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lx71$a;

.field public static final enum b:Lx71$a;

.field public static final enum c:Lx71$a;

.field public static final enum d:Lx71$a;

.field public static final enum f:Lx71$a;

.field public static final enum g:Lx71$a;

.field public static final enum h:Lx71$a;

.field public static final enum j:Lx71$a;

.field public static final enum k:Lx71$a;

.field public static final synthetic l:[Lx71$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lx71$a;

    const-string v1, "RecordType"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lx71$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx71$a;->a:Lx71$a;

    new-instance v1, Lx71$a;

    const-string v3, "Name"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lx71$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lx71$a;->b:Lx71$a;

    new-instance v3, Lx71$a;

    const-string v5, "Number"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lx71$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lx71$a;->c:Lx71$a;

    new-instance v5, Lx71$a;

    const-string v7, "Type"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lx71$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lx71$a;->d:Lx71$a;

    new-instance v7, Lx71$a;

    const-string v9, "ContactId"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lx71$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lx71$a;->f:Lx71$a;

    new-instance v9, Lx71$a;

    const-string v11, "Data"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lx71$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lx71$a;->g:Lx71$a;

    new-instance v11, Lx71$a;

    const-string v13, "FilterReason"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lx71$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lx71$a;->h:Lx71$a;

    new-instance v13, Lx71$a;

    const-string v15, "RefId"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lx71$a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lx71$a;->j:Lx71$a;

    new-instance v15, Lx71$a;

    const-string v14, "ModifiedAt"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lx71$a;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lx71$a;->k:Lx71$a;

    const/16 v14, 0x9

    new-array v14, v14, [Lx71$a;

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

    sput-object v14, Lx71$a;->l:[Lx71$a;

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

.method public static valueOf(Ljava/lang/String;)Lx71$a;
    .locals 1

    const-class v0, Lx71$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lx71$a;

    return-object p0
.end method

.method public static values()[Lx71$a;
    .locals 1

    sget-object v0, Lx71$a;->l:[Lx71$a;

    invoke-virtual {v0}, [Lx71$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx71$a;

    return-object v0
.end method

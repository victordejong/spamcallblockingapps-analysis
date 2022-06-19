.class public final enum Lcom/bytedance/sdk/a/b/a/e/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/a/b/a/e/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/sdk/a/b/a/e/b;

.field public static final enum b:Lcom/bytedance/sdk/a/b/a/e/b;

.field public static final enum c:Lcom/bytedance/sdk/a/b/a/e/b;

.field public static final enum d:Lcom/bytedance/sdk/a/b/a/e/b;

.field public static final enum e:Lcom/bytedance/sdk/a/b/a/e/b;

.field public static final enum f:Lcom/bytedance/sdk/a/b/a/e/b;

.field private static final synthetic h:[Lcom/bytedance/sdk/a/b/a/e/b;


# instance fields
.field public final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 23
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/b;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/sdk/a/b/a/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/sdk/a/b/a/e/b;->a:Lcom/bytedance/sdk/a/b/a/e/b;

    .line 25
    new-instance v1, Lcom/bytedance/sdk/a/b/a/e/b;

    const-string v3, "PROTOCOL_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/bytedance/sdk/a/b/a/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/sdk/a/b/a/e/b;->b:Lcom/bytedance/sdk/a/b/a/e/b;

    .line 27
    new-instance v3, Lcom/bytedance/sdk/a/b/a/e/b;

    const-string v5, "INTERNAL_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/bytedance/sdk/a/b/a/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/sdk/a/b/a/e/b;->c:Lcom/bytedance/sdk/a/b/a/e/b;

    .line 29
    new-instance v5, Lcom/bytedance/sdk/a/b/a/e/b;

    const-string v7, "FLOW_CONTROL_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/bytedance/sdk/a/b/a/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/bytedance/sdk/a/b/a/e/b;->d:Lcom/bytedance/sdk/a/b/a/e/b;

    .line 31
    new-instance v7, Lcom/bytedance/sdk/a/b/a/e/b;

    const-string v9, "REFUSED_STREAM"

    const/4 v10, 0x4

    const/4 v11, 0x7

    invoke-direct {v7, v9, v10, v11}, Lcom/bytedance/sdk/a/b/a/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/bytedance/sdk/a/b/a/e/b;->e:Lcom/bytedance/sdk/a/b/a/e/b;

    .line 33
    new-instance v9, Lcom/bytedance/sdk/a/b/a/e/b;

    const-string v11, "CANCEL"

    const/4 v12, 0x5

    const/16 v13, 0x8

    invoke-direct {v9, v11, v12, v13}, Lcom/bytedance/sdk/a/b/a/e/b;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/bytedance/sdk/a/b/a/e/b;->f:Lcom/bytedance/sdk/a/b/a/e/b;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/bytedance/sdk/a/b/a/e/b;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 19
    sput-object v11, Lcom/bytedance/sdk/a/b/a/e/b;->h:[Lcom/bytedance/sdk/a/b/a/e/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/bytedance/sdk/a/b/a/e/b;->g:I

    return-void
.end method

.method public static a(I)Lcom/bytedance/sdk/a/b/a/e/b;
    .locals 5

    .line 42
    invoke-static {}, Lcom/bytedance/sdk/a/b/a/e/b;->values()[Lcom/bytedance/sdk/a/b/a/e/b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 43
    iget v4, v3, Lcom/bytedance/sdk/a/b/a/e/b;->g:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/a/e/b;
    .locals 1

    .line 19
    const-class v0, Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/a/b/a/e/b;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/a/b/a/e/b;
    .locals 1

    .line 19
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/b;->h:[Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/a/b/a/e/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/a/b/a/e/b;

    return-object v0
.end method

.class public final enum Lo1/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo1/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lo1/m;

.field public static final enum b:Lo1/m;

.field public static final enum c:Lo1/m;

.field public static final enum d:Lo1/m;

.field public static final enum e:Lo1/m;

.field public static final enum f:Lo1/m;

.field public static final synthetic g:[Lo1/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lo1/m;

    const-string v1, "ENQUEUED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo1/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo1/m;->a:Lo1/m;

    .line 2
    new-instance v1, Lo1/m;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lo1/m;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo1/m;->b:Lo1/m;

    .line 3
    new-instance v3, Lo1/m;

    const-string v5, "SUCCEEDED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lo1/m;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lo1/m;->c:Lo1/m;

    .line 4
    new-instance v5, Lo1/m;

    const-string v7, "FAILED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lo1/m;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lo1/m;->d:Lo1/m;

    .line 5
    new-instance v7, Lo1/m;

    const-string v9, "BLOCKED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lo1/m;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lo1/m;->e:Lo1/m;

    .line 6
    new-instance v9, Lo1/m;

    const-string v11, "CANCELLED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lo1/m;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lo1/m;->f:Lo1/m;

    const/4 v11, 0x6

    new-array v11, v11, [Lo1/m;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lo1/m;->g:[Lo1/m;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo1/m;
    .locals 1

    .line 1
    const-class v0, Lo1/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo1/m;

    return-object p0
.end method

.method public static values()[Lo1/m;
    .locals 1

    .line 1
    sget-object v0, Lo1/m;->g:[Lo1/m;

    invoke-virtual {v0}, [Lo1/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo1/m;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    sget-object v0, Lo1/m;->c:Lo1/m;

    if-eq p0, v0, :cond_1

    sget-object v0, Lo1/m;->d:Lo1/m;

    if-eq p0, v0, :cond_1

    sget-object v0, Lo1/m;->f:Lo1/m;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

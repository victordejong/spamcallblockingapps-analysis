.class public final enum Ld50;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ld50;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ld50;

.field public static final enum b:Ld50;

.field public static final enum c:Ld50;

.field public static final enum d:Ld50;

.field public static final enum f:Ld50;

.field public static final enum g:Ld50;

.field public static final synthetic h:[Ld50;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Ld50;

    const-string v1, "ENQUEUED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld50;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld50;->a:Ld50;

    new-instance v1, Ld50;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ld50;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ld50;->b:Ld50;

    new-instance v3, Ld50;

    const-string v5, "SUCCEEDED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ld50;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ld50;->c:Ld50;

    new-instance v5, Ld50;

    const-string v7, "FAILED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ld50;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ld50;->d:Ld50;

    new-instance v7, Ld50;

    const-string v9, "BLOCKED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ld50;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ld50;->f:Ld50;

    new-instance v9, Ld50;

    const-string v11, "CANCELLED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ld50;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ld50;->g:Ld50;

    const/4 v11, 0x6

    new-array v11, v11, [Ld50;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Ld50;->h:[Ld50;

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

.method public static valueOf(Ljava/lang/String;)Ld50;
    .locals 1

    const-class v0, Ld50;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld50;

    return-object p0
.end method

.method public static values()[Ld50;
    .locals 1

    sget-object v0, Ld50;->h:[Ld50;

    invoke-virtual {v0}, [Ld50;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld50;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    sget-object v0, Ld50;->c:Ld50;

    if-eq p0, v0, :cond_1

    sget-object v0, Ld50;->d:Ld50;

    if-eq p0, v0, :cond_1

    sget-object v0, Ld50;->g:Ld50;

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

.class public final enum Luj0;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Luj0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Luj0;

.field public static final enum b:Luj0;

.field public static final enum c:Luj0;

.field public static final enum d:Luj0;

.field public static final enum f:Luj0;

.field public static final enum g:Luj0;

.field public static final synthetic h:[Luj0;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Luj0;

    const-string v1, "EXPLICIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Luj0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luj0;->a:Luj0;

    new-instance v1, Luj0;

    const-string v3, "TIMER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Luj0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Luj0;->b:Luj0;

    new-instance v3, Luj0;

    const-string v5, "SESSION_CHANGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Luj0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Luj0;->c:Luj0;

    new-instance v5, Luj0;

    const-string v7, "PERSISTED_EVENTS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Luj0;-><init>(Ljava/lang/String;I)V

    sput-object v5, Luj0;->d:Luj0;

    new-instance v7, Luj0;

    const-string v9, "EVENT_THRESHOLD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Luj0;-><init>(Ljava/lang/String;I)V

    sput-object v7, Luj0;->f:Luj0;

    new-instance v9, Luj0;

    const-string v11, "EAGER_FLUSHING_EVENT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Luj0;-><init>(Ljava/lang/String;I)V

    sput-object v9, Luj0;->g:Luj0;

    const/4 v11, 0x6

    new-array v11, v11, [Luj0;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Luj0;->h:[Luj0;

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

.method public static valueOf(Ljava/lang/String;)Luj0;
    .locals 1

    const-class v0, Luj0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luj0;

    return-object p0
.end method

.method public static values()[Luj0;
    .locals 1

    sget-object v0, Luj0;->h:[Luj0;

    invoke-virtual {v0}, [Luj0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luj0;

    return-object v0
.end method

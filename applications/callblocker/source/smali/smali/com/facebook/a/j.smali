.class final enum Lcom/facebook/a/j;
.super Ljava/lang/Enum;
.source "FlushReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/a/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/a/j;

.field public static final enum b:Lcom/facebook/a/j;

.field public static final enum c:Lcom/facebook/a/j;

.field public static final enum d:Lcom/facebook/a/j;

.field public static final enum e:Lcom/facebook/a/j;

.field public static final enum f:Lcom/facebook/a/j;

.field private static final synthetic g:[Lcom/facebook/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/facebook/a/j;

    const-string/jumbo v1, "EXPLICIT"

    invoke-direct {v0, v1, v3}, Lcom/facebook/a/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/j;->a:Lcom/facebook/a/j;

    .line 25
    new-instance v0, Lcom/facebook/a/j;

    const-string/jumbo v1, "TIMER"

    invoke-direct {v0, v1, v4}, Lcom/facebook/a/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/j;->b:Lcom/facebook/a/j;

    .line 26
    new-instance v0, Lcom/facebook/a/j;

    const-string/jumbo v1, "SESSION_CHANGE"

    invoke-direct {v0, v1, v5}, Lcom/facebook/a/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/j;->c:Lcom/facebook/a/j;

    .line 27
    new-instance v0, Lcom/facebook/a/j;

    const-string/jumbo v1, "PERSISTED_EVENTS"

    invoke-direct {v0, v1, v6}, Lcom/facebook/a/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/j;->d:Lcom/facebook/a/j;

    .line 28
    new-instance v0, Lcom/facebook/a/j;

    const-string/jumbo v1, "EVENT_THRESHOLD"

    invoke-direct {v0, v1, v7}, Lcom/facebook/a/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/j;->e:Lcom/facebook/a/j;

    .line 29
    new-instance v0, Lcom/facebook/a/j;

    const-string/jumbo v1, "EAGER_FLUSHING_EVENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/a/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/j;->f:Lcom/facebook/a/j;

    .line 23
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/facebook/a/j;

    sget-object v1, Lcom/facebook/a/j;->a:Lcom/facebook/a/j;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/a/j;->b:Lcom/facebook/a/j;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/a/j;->c:Lcom/facebook/a/j;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/a/j;->d:Lcom/facebook/a/j;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/a/j;->e:Lcom/facebook/a/j;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/a/j;->f:Lcom/facebook/a/j;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/a/j;->g:[Lcom/facebook/a/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/a/j;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/facebook/a/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/j;

    return-object v0
.end method

.method public static values()[Lcom/facebook/a/j;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/facebook/a/j;->g:[Lcom/facebook/a/j;

    invoke-virtual {v0}, [Lcom/facebook/a/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/a/j;

    return-object v0
.end method

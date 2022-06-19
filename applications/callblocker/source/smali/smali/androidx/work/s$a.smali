.class public final enum Landroidx/work/s$a;
.super Ljava/lang/Enum;
.source "WorkInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/work/s$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroidx/work/s$a;

.field public static final enum b:Landroidx/work/s$a;

.field public static final enum c:Landroidx/work/s$a;

.field public static final enum d:Landroidx/work/s$a;

.field public static final enum e:Landroidx/work/s$a;

.field public static final enum f:Landroidx/work/s$a;

.field private static final synthetic g:[Landroidx/work/s$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 165
    new-instance v0, Landroidx/work/s$a;

    const-string/jumbo v1, "ENQUEUED"

    invoke-direct {v0, v1, v3}, Landroidx/work/s$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/s$a;->a:Landroidx/work/s$a;

    .line 170
    new-instance v0, Landroidx/work/s$a;

    const-string/jumbo v1, "RUNNING"

    invoke-direct {v0, v1, v4}, Landroidx/work/s$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/s$a;->b:Landroidx/work/s$a;

    .line 177
    new-instance v0, Landroidx/work/s$a;

    const-string/jumbo v1, "SUCCEEDED"

    invoke-direct {v0, v1, v5}, Landroidx/work/s$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/s$a;->c:Landroidx/work/s$a;

    .line 183
    new-instance v0, Landroidx/work/s$a;

    const-string/jumbo v1, "FAILED"

    invoke-direct {v0, v1, v6}, Landroidx/work/s$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/s$a;->d:Landroidx/work/s$a;

    .line 189
    new-instance v0, Landroidx/work/s$a;

    const-string/jumbo v1, "BLOCKED"

    invoke-direct {v0, v1, v7}, Landroidx/work/s$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/s$a;->e:Landroidx/work/s$a;

    .line 195
    new-instance v0, Landroidx/work/s$a;

    const-string/jumbo v1, "CANCELLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/work/s$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/s$a;->f:Landroidx/work/s$a;

    .line 159
    const/4 v0, 0x6

    new-array v0, v0, [Landroidx/work/s$a;

    sget-object v1, Landroidx/work/s$a;->a:Landroidx/work/s$a;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/work/s$a;->b:Landroidx/work/s$a;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/work/s$a;->c:Landroidx/work/s$a;

    aput-object v1, v0, v5

    sget-object v1, Landroidx/work/s$a;->d:Landroidx/work/s$a;

    aput-object v1, v0, v6

    sget-object v1, Landroidx/work/s$a;->e:Landroidx/work/s$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroidx/work/s$a;->f:Landroidx/work/s$a;

    aput-object v2, v0, v1

    sput-object v0, Landroidx/work/s$a;->g:[Landroidx/work/s$a;

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
    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/work/s$a;
    .locals 1

    .prologue
    .line 159
    const-class v0, Landroidx/work/s$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/work/s$a;

    return-object v0
.end method

.method public static values()[Landroidx/work/s$a;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Landroidx/work/s$a;->g:[Landroidx/work/s$a;

    invoke-virtual {v0}, [Landroidx/work/s$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/work/s$a;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 204
    sget-object v0, Landroidx/work/s$a;->c:Landroidx/work/s$a;

    if-eq p0, v0, :cond_0

    sget-object v0, Landroidx/work/s$a;->d:Landroidx/work/s$a;

    if-eq p0, v0, :cond_0

    sget-object v0, Landroidx/work/s$a;->f:Landroidx/work/s$a;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

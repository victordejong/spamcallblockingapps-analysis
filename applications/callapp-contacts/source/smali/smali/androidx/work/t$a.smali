.class public final enum Landroidx/work/t$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/work/t$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/work/t$a;

.field public static final enum BLOCKED:Landroidx/work/t$a;

.field public static final enum CANCELLED:Landroidx/work/t$a;

.field public static final enum ENQUEUED:Landroidx/work/t$a;

.field public static final enum FAILED:Landroidx/work/t$a;

.field public static final enum RUNNING:Landroidx/work/t$a;

.field public static final enum SUCCEEDED:Landroidx/work/t$a;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 165
    new-instance v0, Landroidx/work/t$a;

    const-string v1, "ENQUEUED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/work/t$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/work/t$a;->ENQUEUED:Landroidx/work/t$a;

    .line 170
    new-instance v1, Landroidx/work/t$a;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroidx/work/t$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/work/t$a;->RUNNING:Landroidx/work/t$a;

    .line 177
    new-instance v3, Landroidx/work/t$a;

    const-string v5, "SUCCEEDED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroidx/work/t$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/work/t$a;->SUCCEEDED:Landroidx/work/t$a;

    .line 183
    new-instance v5, Landroidx/work/t$a;

    const-string v7, "FAILED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroidx/work/t$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/work/t$a;->FAILED:Landroidx/work/t$a;

    .line 189
    new-instance v7, Landroidx/work/t$a;

    const-string v9, "BLOCKED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroidx/work/t$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroidx/work/t$a;->BLOCKED:Landroidx/work/t$a;

    .line 195
    new-instance v9, Landroidx/work/t$a;

    const-string v11, "CANCELLED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroidx/work/t$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroidx/work/t$a;->CANCELLED:Landroidx/work/t$a;

    const/4 v11, 0x6

    new-array v11, v11, [Landroidx/work/t$a;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 159
    sput-object v11, Landroidx/work/t$a;->$VALUES:[Landroidx/work/t$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/work/t$a;
    .locals 1

    .line 159
    const-class v0, Landroidx/work/t$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/work/t$a;

    return-object p0
.end method

.method public static values()[Landroidx/work/t$a;
    .locals 1

    .line 159
    sget-object v0, Landroidx/work/t$a;->$VALUES:[Landroidx/work/t$a;

    invoke-virtual {v0}, [Landroidx/work/t$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/work/t$a;

    return-object v0
.end method


# virtual methods
.method public final isFinished()Z
    .locals 1

    .line 204
    sget-object v0, Landroidx/work/t$a;->SUCCEEDED:Landroidx/work/t$a;

    if-eq p0, v0, :cond_1

    sget-object v0, Landroidx/work/t$a;->FAILED:Landroidx/work/t$a;

    if-eq p0, v0, :cond_1

    sget-object v0, Landroidx/work/t$a;->CANCELLED:Landroidx/work/t$a;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

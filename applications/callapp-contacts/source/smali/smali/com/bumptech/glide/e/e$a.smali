.class public final enum Lcom/bumptech/glide/e/e$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/e/e$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/e/e$a;

.field public static final enum CLEARED:Lcom/bumptech/glide/e/e$a;

.field public static final enum FAILED:Lcom/bumptech/glide/e/e$a;

.field public static final enum PAUSED:Lcom/bumptech/glide/e/e$a;

.field public static final enum RUNNING:Lcom/bumptech/glide/e/e$a;

.field public static final enum SUCCESS:Lcom/bumptech/glide/e/e$a;


# instance fields
.field private final isComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 52
    new-instance v0, Lcom/bumptech/glide/e/e$a;

    const-string v1, "RUNNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bumptech/glide/e/e$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/e/e$a;->RUNNING:Lcom/bumptech/glide/e/e$a;

    .line 53
    new-instance v1, Lcom/bumptech/glide/e/e$a;

    const-string v3, "PAUSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/bumptech/glide/e/e$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/bumptech/glide/e/e$a;->PAUSED:Lcom/bumptech/glide/e/e$a;

    .line 54
    new-instance v3, Lcom/bumptech/glide/e/e$a;

    const-string v5, "CLEARED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lcom/bumptech/glide/e/e$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/bumptech/glide/e/e$a;->CLEARED:Lcom/bumptech/glide/e/e$a;

    .line 55
    new-instance v5, Lcom/bumptech/glide/e/e$a;

    const-string v7, "SUCCESS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v4}, Lcom/bumptech/glide/e/e$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/bumptech/glide/e/e$a;->SUCCESS:Lcom/bumptech/glide/e/e$a;

    .line 56
    new-instance v7, Lcom/bumptech/glide/e/e$a;

    const-string v9, "FAILED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v4}, Lcom/bumptech/glide/e/e$a;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lcom/bumptech/glide/e/e$a;->FAILED:Lcom/bumptech/glide/e/e$a;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/bumptech/glide/e/e$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 51
    sput-object v9, Lcom/bumptech/glide/e/e$a;->$VALUES:[Lcom/bumptech/glide/e/e$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput-boolean p3, p0, Lcom/bumptech/glide/e/e$a;->isComplete:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/e/e$a;
    .locals 1

    .line 51
    const-class v0, Lcom/bumptech/glide/e/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/e/e$a;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/e/e$a;
    .locals 1

    .line 51
    sget-object v0, Lcom/bumptech/glide/e/e$a;->$VALUES:[Lcom/bumptech/glide/e/e$a;

    invoke-virtual {v0}, [Lcom/bumptech/glide/e/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/e/e$a;

    return-object v0
.end method


# virtual methods
.method final isComplete()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/bumptech/glide/e/e$a;->isComplete:Z

    return v0
.end method

.class public final enum Lcom/bumptech/glide/load/c;
.super Ljava/lang/Enum;
.source "EncodeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bumptech/glide/load/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bumptech/glide/load/c;

.field public static final enum b:Lcom/bumptech/glide/load/c;

.field public static final enum c:Lcom/bumptech/glide/load/c;

.field private static final synthetic d:[Lcom/bumptech/glide/load/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/bumptech/glide/load/c;

    const-string/jumbo v1, "SOURCE"

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/c;->a:Lcom/bumptech/glide/load/c;

    .line 16
    new-instance v0, Lcom/bumptech/glide/load/c;

    const-string/jumbo v1, "TRANSFORMED"

    invoke-direct {v0, v1, v3}, Lcom/bumptech/glide/load/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/c;->b:Lcom/bumptech/glide/load/c;

    .line 21
    new-instance v0, Lcom/bumptech/glide/load/c;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/bumptech/glide/load/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/c;->c:Lcom/bumptech/glide/load/c;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bumptech/glide/load/c;

    sget-object v1, Lcom/bumptech/glide/load/c;->a:Lcom/bumptech/glide/load/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/c;->b:Lcom/bumptech/glide/load/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bumptech/glide/load/c;->c:Lcom/bumptech/glide/load/c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bumptech/glide/load/c;->d:[Lcom/bumptech/glide/load/c;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/c;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/bumptech/glide/load/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/c;

    return-object v0
.end method

.method public static values()[Lcom/bumptech/glide/load/c;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/bumptech/glide/load/c;->d:[Lcom/bumptech/glide/load/c;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/c;

    return-object v0
.end method

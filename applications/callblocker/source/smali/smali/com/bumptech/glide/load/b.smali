.class public final enum Lcom/bumptech/glide/load/b;
.super Ljava/lang/Enum;
.source "DecodeFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bumptech/glide/load/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bumptech/glide/load/b;

.field public static final enum b:Lcom/bumptech/glide/load/b;

.field public static final c:Lcom/bumptech/glide/load/b;

.field private static final synthetic d:[Lcom/bumptech/glide/load/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/bumptech/glide/load/b;

    const-string/jumbo v1, "PREFER_ARGB_8888"

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/b;->a:Lcom/bumptech/glide/load/b;

    .line 40
    new-instance v0, Lcom/bumptech/glide/load/b;

    const-string/jumbo v1, "PREFER_RGB_565"

    invoke-direct {v0, v1, v3}, Lcom/bumptech/glide/load/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/b;->b:Lcom/bumptech/glide/load/b;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/bumptech/glide/load/b;

    sget-object v1, Lcom/bumptech/glide/load/b;->a:Lcom/bumptech/glide/load/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/b;->b:Lcom/bumptech/glide/load/b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/bumptech/glide/load/b;->d:[Lcom/bumptech/glide/load/b;

    .line 45
    sget-object v0, Lcom/bumptech/glide/load/b;->a:Lcom/bumptech/glide/load/b;

    sput-object v0, Lcom/bumptech/glide/load/b;->c:Lcom/bumptech/glide/load/b;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/b;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/bumptech/glide/load/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b;

    return-object v0
.end method

.method public static values()[Lcom/bumptech/glide/load/b;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/bumptech/glide/load/b;->d:[Lcom/bumptech/glide/load/b;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/b;

    return-object v0
.end method

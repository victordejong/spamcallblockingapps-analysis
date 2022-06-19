.class public final Lcom/bumptech/glide/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/f;


# static fields
.field private static final b:Lcom/bumptech/glide/f/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/bumptech/glide/f/c;

    invoke-direct {v0}, Lcom/bumptech/glide/f/c;-><init>()V

    sput-object v0, Lcom/bumptech/glide/f/c;->b:Lcom/bumptech/glide/f/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bumptech/glide/f/c;
    .locals 1

    .line 13
    sget-object v0, Lcom/bumptech/glide/f/c;->b:Lcom/bumptech/glide/f/c;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptySignature"

    return-object v0
.end method

.method public final updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 0

    return-void
.end method

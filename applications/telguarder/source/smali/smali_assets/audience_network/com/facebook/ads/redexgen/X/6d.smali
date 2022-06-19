.class public final Lcom/facebook/ads/redexgen/X/6d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/6c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6d;->A00()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 15519
    .local p0, "this":Lcom/facebook/ads/redexgen/X/6d;, "Lcom/facebook/ads/internal/botdetection/signals/model/BundledSignalMetadata<TT;>;"
    .local p1, "bundledSignalMetadataKey":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15520
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6d;->A02:Ljava/lang/Object;

    .line 15521
    iput p2, p0, Lcom/facebook/ads/redexgen/X/6d;->A00:I

    .line 15522
    iput p3, p0, Lcom/facebook/ads/redexgen/X/6d;->A01:I

    .line 15523
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YmEQA7kNFOkczRWG4gHvBDSEonSUVaJd"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "4fxt1kAwlgxIkaJvSyohT2xF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "lbafAT8lU8E5sdklLzrNxhNApawPMHR1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "71"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "r8RkplVVOKfO7qWJIOKiR7RjQ8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1jrcdqqYLBjB0OpL22ZsROV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iC12h2mwrRCc4iTkc3MUEnj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Z8QdiiGHO4DcyRJ7MOrZMi7vfp"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6d;->A03:[Ljava/lang/String;

    return-void
.end method

.method private A01()Z
    .locals 3

    .line 15524
    .local v1, "this":Lcom/facebook/ads/redexgen/X/6d;, "Lcom/facebook/ads/internal/botdetection/signals/model/BundledSignalMetadata<TT;>;"
    iget v2, p0, Lcom/facebook/ads/redexgen/X/6d;->A00:I

    if-lez v2, :cond_0

    const/16 v0, 0x270f

    if-ge v2, v0, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/6d;->A01:I

    if-lez v1, :cond_0

    const/16 v0, 0x2710

    if-ge v1, v0, :cond_0

    if-ge v2, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A02()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 15525
    .local v0, "this":Lcom/facebook/ads/redexgen/X/6d;, "Lcom/facebook/ads/internal/botdetection/signals/model/BundledSignalMetadata<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6d;->A02:Ljava/lang/Object;

    return-object v0
.end method

.method public final A03()Z
    .locals 4

    .line 15526
    .local v1, "this":Lcom/facebook/ads/redexgen/X/6d;, "Lcom/facebook/ads/internal/botdetection/signals/model/BundledSignalMetadata<TT;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/6d;->A01()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/6d;->A00:I

    if-lt v1, v0, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/6d;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/6d;->A03:[Ljava/lang/String;

    const-string v1, "GZcWSbH8wDadzfF4FPIRLvhBrpDHbsrm"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/6d;->A01:I

    if-ge v3, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

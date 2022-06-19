.class public final Lcom/facebook/ads/redexgen/X/Dm;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodecKey"
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Dm;->A00()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 28852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28853
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dm;->A00:Ljava/lang/String;

    .line 28854
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Dm;->A01:Z

    .line 28855
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "L3hDCa4"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "uwaaOr5XjqsUQKl8jYb25XsrXiGMncQ4"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "JK5bSUH7zlDz22ag2FoUpVNMGD1nlt6j"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "USv4Se"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1A2"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "E9m7Vcy7xCnW99ce5RNQJDEv3008Cvxl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "guw4HQkbsMuJdq5O"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "TSxwF8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Dm;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 28856
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 28857
    return v5

    .line 28858
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v0, Lcom/facebook/ads/redexgen/X/Dm;

    if-eq v1, v0, :cond_2

    .line 28859
    .end local v5
    :cond_1
    return v2

    .line 28860
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/Dm;

    .line 28861
    .local v5, "other":Lcom/facebook/ads/redexgen/X/Dm;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Dm;->A00:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/Dm;->A00:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Dm;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Dm;->A02:[Ljava/lang/String;

    const-string v1, "gwwHcoyePoM69ag8NFTFPH2TXf0rwfXl"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Dm;->A01:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Dm;->A01:Z

    if-ne v1, v0, :cond_3

    :goto_0
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    .line 28862
    .local p0, "prime":I
    const/4 v0, 0x1

    .line 28863
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A00:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    .line 28864
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dm;->A01:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v1, v0

    .line 28865
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v1

    .line 28866
    :cond_0
    const/16 v0, 0x4d5

    goto :goto_1

    .line 28867
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

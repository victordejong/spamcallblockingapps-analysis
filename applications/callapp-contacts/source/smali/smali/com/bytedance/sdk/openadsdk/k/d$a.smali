.class final Lcom/bytedance/sdk/openadsdk/k/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/k/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Z

.field final b:Z

.field final c:I

.field final d:Ljava/lang/String;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final f:[Ljava/lang/String;


# direct methods
.method constructor <init>(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZI",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/k/d$a;->a:Z

    .line 444
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/k/d$a;->b:Z

    .line 445
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/k/d$a;->c:I

    .line 446
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/k/d$a;->d:Ljava/lang/String;

    .line 447
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/k/d$a;->e:Ljava/util/Map;

    .line 448
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/k/d$a;->f:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 454
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 456
    :cond_1
    check-cast p1, Lcom/bytedance/sdk/openadsdk/k/d$a;

    .line 458
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/k/d$a;->a:Z

    iget-boolean v2, p1, Lcom/bytedance/sdk/openadsdk/k/d$a;->a:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 459
    :cond_2
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/k/d$a;->b:Z

    iget-boolean v2, p1, Lcom/bytedance/sdk/openadsdk/k/d$a;->b:Z

    if-eq v1, v2, :cond_3

    return v0

    .line 460
    :cond_3
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/k/d$a;->c:I

    iget v2, p1, Lcom/bytedance/sdk/openadsdk/k/d$a;->c:I

    if-eq v1, v2, :cond_4

    return v0

    .line 461
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/d$a;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/k/d$a;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 466
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/k/d$a;->a:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 467
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/k/d$a;->b:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 468
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/k/d$a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 469
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/d$a;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.class public Ll0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/rewarded/RewardItem;
.implements Lj4/a1;


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    .line 3
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Ll0/c;->b:Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The max pool size must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll0/c;->b:Ljava/lang/Object;

    iput p2, p0, Ll0/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Ll0/c;->a:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 2
    iget-object v3, p0, Ll0/c;->b:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    aget-object v4, v4, v2

    .line 3
    check-cast v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    add-int/lit8 v0, v0, -0x1

    .line 4
    iput v0, p0, Ll0/c;->a:I

    return-object v4

    :cond_0
    return-object v1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Ll0/c;->a:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v4, p0, Ll0/c;->b:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    aget-object v4, v4, v1

    if-ne v4, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_3

    .line 3
    iget-object v1, p0, Ll0/c;->b:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, [Ljava/lang/Object;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 4
    check-cast v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    add-int/2addr v2, v3

    .line 5
    iput v2, p0, Ll0/c;->a:I

    return v3

    :cond_2
    return v0

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already in the pool!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAmount()I
    .locals 1

    .line 1
    iget v0, p0, Ll0/c;->a:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ll0/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ll0/c;->b:Ljava/lang/Object;

    check-cast v0, Lj4/b1;

    iget v1, p0, Ll0/c;->a:I

    .line 1
    invoke-virtual {v0, v1}, Lj4/b1;->a(I)Lj4/y0;

    move-result-object v0

    iget-object v0, v0, Lj4/y0;->c:Lj4/x0;

    const/4 v1, 0x5

    iput v1, v0, Lj4/x0;->d:I

    const/4 v0, 0x0

    return-object v0
.end method

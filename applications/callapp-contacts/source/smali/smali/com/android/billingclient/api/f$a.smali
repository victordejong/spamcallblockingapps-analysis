.class public final Lcom/android/billingclient/api/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/billingclient/api/k;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/billingclient/api/f$a;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/billingclient/api/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/f$a;->f:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/billingclient/api/f;
    .locals 10

    iget-object v0, p0, Lcom/android/billingclient/api/f$a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/f$a;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 3
    check-cast v3, Lcom/android/billingclient/api/k;

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SKU cannot be null."

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/billingclient/api/f$a;->a:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/billingclient/api/f$a;->a:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/k;

    .line 7
    invoke-virtual {v0}, Lcom/android/billingclient/api/k;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/billingclient/api/f$a;->a:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    const-string v7, "play_pass_subs"

    if-ge v6, v5, :cond_4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 8
    check-cast v8, Lcom/android/billingclient/api/k;

    .line 9
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 10
    invoke-virtual {v8}, Lcom/android/billingclient/api/k;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 11
    invoke-virtual {v8}, Lcom/android/billingclient/api/k;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SKUs should have the same type."

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {v0}, Lcom/android/billingclient/api/k;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/billingclient/api/f$a;->a:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_7

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 14
    check-cast v8, Lcom/android/billingclient/api/k;

    .line 15
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 16
    invoke-virtual {v8}, Lcom/android/billingclient/api/k;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 17
    invoke-virtual {v8}, Lcom/android/billingclient/api/k;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All SKUs must have the same package name."

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 12
    :cond_7
    new-instance v0, Lcom/android/billingclient/api/f;

    const/4 v3, 0x0

    .line 18
    invoke-direct {v0, v3}, Lcom/android/billingclient/api/f;-><init>(Lcom/android/billingclient/api/w;)V

    iget-object v3, p0, Lcom/android/billingclient/api/f$a;->a:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/k;

    invoke-virtual {v2}, Lcom/android/billingclient/api/k;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    .line 1000
    iput-boolean v1, v0, Lcom/android/billingclient/api/f;->a:Z

    .line 19
    iget-object v1, p0, Lcom/android/billingclient/api/f$a;->b:Ljava/lang/String;

    .line 2000
    iput-object v1, v0, Lcom/android/billingclient/api/f;->b:Ljava/lang/String;

    .line 20
    iget-object v1, p0, Lcom/android/billingclient/api/f$a;->e:Ljava/lang/String;

    .line 3000
    iput-object v1, v0, Lcom/android/billingclient/api/f;->e:Ljava/lang/String;

    .line 21
    iget-object v1, p0, Lcom/android/billingclient/api/f$a;->c:Ljava/lang/String;

    .line 4000
    iput-object v1, v0, Lcom/android/billingclient/api/f;->c:Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lcom/android/billingclient/api/f$a;->d:Ljava/lang/String;

    .line 5000
    iput-object v1, v0, Lcom/android/billingclient/api/f;->d:Ljava/lang/String;

    .line 23
    iget v1, p0, Lcom/android/billingclient/api/f$a;->f:I

    .line 6000
    iput v1, v0, Lcom/android/billingclient/api/f;->f:I

    .line 24
    iget-object v1, p0, Lcom/android/billingclient/api/f$a;->a:Ljava/util/ArrayList;

    .line 7000
    iput-object v1, v0, Lcom/android/billingclient/api/f;->g:Ljava/util/ArrayList;

    .line 25
    iget-boolean v1, p0, Lcom/android/billingclient/api/f$a;->g:Z

    .line 8000
    iput-boolean v1, v0, Lcom/android/billingclient/api/f;->h:Z

    return-object v0

    .line 1
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SkuDetails must be provided."

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

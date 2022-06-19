.class public abstract Lcom/google/common/collect/b;
.super Lcom/google/common/collect/ay;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ay<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/google/common/collect/ay;-><init>()V

    .line 65
    sget v0, Lcom/google/common/collect/b$a;->b:I

    iput v0, p0, Lcom/google/common/collect/b;->a:I

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 121
    sget v0, Lcom/google/common/collect/b$a;->c:I

    iput v0, p0, Lcom/google/common/collect/b;->a:I

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 4

    .line 128
    iget v0, p0, Lcom/google/common/collect/b;->a:I

    sget v1, Lcom/google/common/collect/b$a;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->b(Z)V

    .line 129
    sget-object v0, Lcom/google/common/collect/b$1;->a:[I

    iget v1, p0, Lcom/google/common/collect/b;->a:I

    sub-int/2addr v1, v3

    aget v0, v0, v1

    if-eq v0, v3, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 1140
    sget v0, Lcom/google/common/collect/b$a;->d:I

    iput v0, p0, Lcom/google/common/collect/b;->a:I

    .line 1141
    invoke-virtual {p0}, Lcom/google/common/collect/b;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/b;->b:Ljava/lang/Object;

    .line 1142
    iget v0, p0, Lcom/google/common/collect/b;->a:I

    sget v1, Lcom/google/common/collect/b$a;->c:I

    if-eq v0, v1, :cond_1

    .line 1143
    sget v0, Lcom/google/common/collect/b$a;->a:I

    iput v0, p0, Lcom/google/common/collect/b;->a:I

    return v3

    :cond_1
    return v2

    :cond_2
    return v3

    :cond_3
    return v2
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lcom/google/common/collect/b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    sget v0, Lcom/google/common/collect/b$a;->b:I

    iput v0, p0, Lcom/google/common/collect/b;->a:I

    .line 156
    iget-object v0, p0, Lcom/google/common/collect/b;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 157
    iput-object v1, p0, Lcom/google/common/collect/b;->b:Ljava/lang/Object;

    return-object v0

    .line 153
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

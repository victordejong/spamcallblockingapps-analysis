.class abstract Landroidx/lifecycle/LiveData$a;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field final c:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o",
            "<-TT;>;"
        }
    .end annotation
.end field

.field d:Z

.field e:I

.field final synthetic f:Landroidx/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/o",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 413
    iput-object p1, p0, Landroidx/lifecycle/LiveData$a;->f:Landroidx/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    const/4 v0, -0x1

    iput v0, p0, Landroidx/lifecycle/LiveData$a;->e:I

    .line 414
    iput-object p2, p0, Landroidx/lifecycle/LiveData$a;->c:Landroidx/lifecycle/o;

    .line 415
    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 427
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData$a;->d:Z

    if-ne p1, v0, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iput-boolean p1, p0, Landroidx/lifecycle/LiveData$a;->d:Z

    .line 433
    iget-object v0, p0, Landroidx/lifecycle/LiveData$a;->f:Landroidx/lifecycle/LiveData;

    iget v0, v0, Landroidx/lifecycle/LiveData;->c:I

    if-nez v0, :cond_4

    move v0, v1

    .line 434
    :goto_1
    iget-object v2, p0, Landroidx/lifecycle/LiveData$a;->f:Landroidx/lifecycle/LiveData;

    iget v3, v2, Landroidx/lifecycle/LiveData;->c:I

    iget-boolean v4, p0, Landroidx/lifecycle/LiveData$a;->d:Z

    if-eqz v4, :cond_5

    :goto_2
    add-int/2addr v1, v3

    iput v1, v2, Landroidx/lifecycle/LiveData;->c:I

    .line 435
    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/lifecycle/LiveData$a;->d:Z

    if-eqz v0, :cond_2

    .line 436
    iget-object v0, p0, Landroidx/lifecycle/LiveData$a;->f:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->b()V

    .line 438
    :cond_2
    iget-object v0, p0, Landroidx/lifecycle/LiveData$a;->f:Landroidx/lifecycle/LiveData;

    iget v0, v0, Landroidx/lifecycle/LiveData;->c:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroidx/lifecycle/LiveData$a;->d:Z

    if-nez v0, :cond_3

    .line 439
    iget-object v0, p0, Landroidx/lifecycle/LiveData$a;->f:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->c()V

    .line 441
    :cond_3
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData$a;->d:Z

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Landroidx/lifecycle/LiveData$a;->f:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/LiveData$a;)V

    goto :goto_0

    .line 433
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 434
    :cond_5
    const/4 v1, -0x1

    goto :goto_2
.end method

.method abstract a()Z
.end method

.method a(Landroidx/lifecycle/h;)Z
    .locals 1

    .prologue
    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method b()V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.class public abstract Landroidx/lifecycle/LiveData$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field final c:Landroidx/lifecycle/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/u<",
            "-TT;>;"
        }
    .end annotation
.end field

.field d:Z

.field e:I

.field final synthetic f:Landroidx/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/u<",
            "-TT;>;)V"
        }
    .end annotation

    .line 446
    iput-object p1, p0, Landroidx/lifecycle/LiveData$b;->f:Landroidx/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 444
    iput p1, p0, Landroidx/lifecycle/LiveData$b;->e:I

    .line 447
    iput-object p2, p0, Landroidx/lifecycle/LiveData$b;->c:Landroidx/lifecycle/u;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 460
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData$b;->d:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 465
    :cond_0
    iput-boolean p1, p0, Landroidx/lifecycle/LiveData$b;->d:Z

    .line 466
    iget-object v0, p0, Landroidx/lifecycle/LiveData$b;->f:Landroidx/lifecycle/LiveData;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->a(I)V

    .line 467
    iget-boolean p1, p0, Landroidx/lifecycle/LiveData$b;->d:Z

    if-eqz p1, :cond_2

    .line 468
    iget-object p1, p0, Landroidx/lifecycle/LiveData$b;->f:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/LiveData$b;)V

    :cond_2
    return-void
.end method

.method abstract a()Z
.end method

.method a(Landroidx/lifecycle/p;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method b()V
    .locals 0

    return-void
.end method

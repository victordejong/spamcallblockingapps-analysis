.class public final Landroidx/work/ListenableWorker$a$c;
.super Landroidx/work/ListenableWorker$a;
.source "ListenableWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/ListenableWorker$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Landroidx/work/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 410
    sget-object v0, Landroidx/work/e;->a:Landroidx/work/e;

    invoke-direct {p0, v0}, Landroidx/work/ListenableWorker$a$c;-><init>(Landroidx/work/e;)V

    .line 411
    return-void
.end method

.method public constructor <init>(Landroidx/work/e;)V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Landroidx/work/ListenableWorker$a;-><init>()V

    .line 419
    iput-object p1, p0, Landroidx/work/ListenableWorker$a$c;->a:Landroidx/work/e;

    .line 420
    return-void
.end method


# virtual methods
.method public d()Landroidx/work/e;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Landroidx/work/ListenableWorker$a$c;->a:Landroidx/work/e;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 432
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 437
    :goto_0
    return v0

    .line 433
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 435
    :cond_2
    check-cast p1, Landroidx/work/ListenableWorker$a$c;

    .line 437
    iget-object v0, p0, Landroidx/work/ListenableWorker$a$c;->a:Landroidx/work/e;

    iget-object v1, p1, Landroidx/work/ListenableWorker$a$c;->a:Landroidx/work/e;

    invoke-virtual {v0, v1}, Landroidx/work/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 442
    const-class v0, Landroidx/work/ListenableWorker$a$c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/work/ListenableWorker$a$c;->a:Landroidx/work/e;

    invoke-virtual {v1}, Landroidx/work/e;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Success {mOutputData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/ListenableWorker$a$c;->a:Landroidx/work/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

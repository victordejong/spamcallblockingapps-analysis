.class public Landroidx/work/impl/b/p$a;
.super Ljava/lang/Object;
.source "WorkSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroidx/work/s$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 372
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 378
    :cond_0
    :goto_0
    return v0

    .line 373
    :cond_1
    instance-of v1, p1, Landroidx/work/impl/b/p$a;

    if-eqz v1, :cond_0

    .line 375
    check-cast p1, Landroidx/work/impl/b/p$a;

    .line 377
    iget-object v1, p0, Landroidx/work/impl/b/p$a;->b:Landroidx/work/s$a;

    iget-object v2, p1, Landroidx/work/impl/b/p$a;->b:Landroidx/work/s$a;

    if-ne v1, v2, :cond_0

    .line 378
    iget-object v0, p0, Landroidx/work/impl/b/p$a;->a:Ljava/lang/String;

    iget-object v1, p1, Landroidx/work/impl/b/p$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Landroidx/work/impl/b/p$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 384
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/work/impl/b/p$a;->b:Landroidx/work/s$a;

    invoke-virtual {v1}, Landroidx/work/s$a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 385
    return v0
.end method

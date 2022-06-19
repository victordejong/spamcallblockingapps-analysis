.class public Landroidx/work/impl/b/g;
.super Ljava/lang/Object;
.source "SystemIdInfo.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroidx/work/impl/b/g;->a:Ljava/lang/String;

    .line 50
    iput p2, p0, Landroidx/work/impl/b/g;->b:I

    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 55
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 56
    :cond_1
    instance-of v1, p1, Landroidx/work/impl/b/g;

    if-eqz v1, :cond_0

    .line 58
    check-cast p1, Landroidx/work/impl/b/g;

    .line 60
    iget v1, p0, Landroidx/work/impl/b/g;->b:I

    iget v2, p1, Landroidx/work/impl/b/g;->b:I

    if-ne v1, v2, :cond_0

    .line 61
    iget-object v0, p0, Landroidx/work/impl/b/g;->a:Ljava/lang/String;

    iget-object v1, p1, Landroidx/work/impl/b/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Landroidx/work/impl/b/g;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 67
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/work/impl/b/g;->b:I

    add-int/2addr v0, v1

    .line 68
    return v0
.end method

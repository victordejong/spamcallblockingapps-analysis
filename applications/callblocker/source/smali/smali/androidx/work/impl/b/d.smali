.class public Landroidx/work/impl/b/d;
.super Ljava/lang/Object;
.source "Preference.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/work/impl/b/d;->a:Ljava/lang/String;

    .line 47
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/b/d;->b:Ljava/lang/Long;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 42
    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0, v1}, Landroidx/work/impl/b/d;-><init>(Ljava/lang/String;J)V

    .line 43
    return-void

    .line 42
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    if-ne p0, p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    instance-of v2, p1, Landroidx/work/impl/b/d;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 55
    :cond_2
    check-cast p1, Landroidx/work/impl/b/d;

    .line 57
    iget-object v2, p0, Landroidx/work/impl/b/d;->a:Ljava/lang/String;

    iget-object v3, p1, Landroidx/work/impl/b/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 58
    :cond_3
    iget-object v2, p0, Landroidx/work/impl/b/d;->b:Ljava/lang/Long;

    if-eqz v2, :cond_4

    iget-object v0, p0, Landroidx/work/impl/b/d;->b:Ljava/lang/Long;

    iget-object v1, p1, Landroidx/work/impl/b/d;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v2, p1, Landroidx/work/impl/b/d;->b:Ljava/lang/Long;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Landroidx/work/impl/b/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 64
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Landroidx/work/impl/b/d;->b:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/b/d;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 65
    return v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

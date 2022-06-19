.class public final Landroidx/work/d;
.super Ljava/lang/Object;
.source "ContentUriTriggers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/d$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroidx/work/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/work/d;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroidx/work/d$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Landroidx/work/d;->a:Ljava/util/Set;

    return-object v0
.end method

.method public a(Landroid/net/Uri;Z)V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Landroidx/work/d$a;

    invoke-direct {v0, p1, p2}, Landroidx/work/d$a;-><init>(Landroid/net/Uri;Z)V

    .line 52
    iget-object v1, p0, Landroidx/work/d;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroidx/work/d;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 68
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    .line 69
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

    .line 71
    :cond_2
    check-cast p1, Landroidx/work/d;

    .line 73
    iget-object v0, p0, Landroidx/work/d;->a:Ljava/util/Set;

    iget-object v1, p1, Landroidx/work/d;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroidx/work/d;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

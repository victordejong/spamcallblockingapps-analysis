.class public final Landroidx/work/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Z)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Landroidx/work/c$a;->a:Landroid/net/Uri;

    .line 90
    iput-boolean p2, p0, Landroidx/work/c$a;->b:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 112
    :cond_1
    check-cast p1, Landroidx/work/c$a;

    .line 114
    iget-boolean v2, p0, Landroidx/work/c$a;->b:Z

    iget-boolean v3, p1, Landroidx/work/c$a;->b:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/work/c$a;->a:Landroid/net/Uri;

    iget-object p1, p1, Landroidx/work/c$a;->a:Landroid/net/Uri;

    .line 115
    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 120
    iget-object v0, p0, Landroidx/work/c$a;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 121
    iget-boolean v1, p0, Landroidx/work/c$a;->b:Z

    add-int/2addr v0, v1

    return v0
.end method

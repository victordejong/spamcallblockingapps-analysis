.class abstract Landroidx/core/h/u$b;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/h/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(ILjava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 3965
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/core/h/u$b;-><init>(ILjava/lang/Class;II)V

    .line 3967
    return-void
.end method

.method constructor <init>(ILjava/lang/Class;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 3970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3971
    iput p1, p0, Landroidx/core/h/u$b;->a:I

    .line 3972
    iput-object p2, p0, Landroidx/core/h/u$b;->b:Ljava/lang/Class;

    .line 3973
    iput p3, p0, Landroidx/core/h/u$b;->d:I

    .line 3974
    iput p4, p0, Landroidx/core/h/u$b;->c:I

    .line 3975
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 4003
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Landroidx/core/h/u$b;->c:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 4007
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method abstract a(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation
.end method

.method a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 4011
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract b(Landroid/view/View;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation
.end method

.method b(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 3978
    invoke-direct {p0}, Landroidx/core/h/u$b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3979
    invoke-virtual {p0, p1, p2}, Landroidx/core/h/u$b;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 3989
    :cond_0
    :goto_0
    return-void

    .line 3980
    :cond_1
    invoke-direct {p0}, Landroidx/core/h/u$b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/core/h/u$b;->c(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/core/h/u$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3981
    invoke-static {p1}, Landroidx/core/h/u;->c(Landroid/view/View;)Landroidx/core/h/a;

    .line 3982
    iget v0, p0, Landroidx/core/h/u$b;->a:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 3986
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/h/u;->g(Landroid/view/View;I)V

    goto :goto_0
.end method

.method b(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4018
    if-nez p1, :cond_1

    move v2, v0

    .line 4019
    :goto_0
    if-nez p2, :cond_2

    move v1, v0

    .line 4020
    :goto_1
    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 4018
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v2, v1

    goto :goto_0

    .line 4019
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1
.end method

.method c(Landroid/view/View;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 3992
    invoke-direct {p0}, Landroidx/core/h/u$b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3993
    invoke-virtual {p0, p1}, Landroidx/core/h/u$b;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    .line 4000
    :cond_0
    :goto_0
    return-object v0

    .line 3994
    :cond_1
    invoke-direct {p0}, Landroidx/core/h/u$b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3995
    iget v0, p0, Landroidx/core/h/u$b;->a:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 3996
    iget-object v1, p0, Landroidx/core/h/u$b;->b:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4000
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public final Lg9/u$a;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg9/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lg9/c;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lg9/u$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg9/c;


# direct methods
.method public constructor <init>(Lg9/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lg9/u$a;->a:Lg9/c;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lg9/u$a;

    .line 2
    iget-object v0, p0, Lg9/u$a;->a:Lg9/c;

    .line 3
    iget v1, v0, Lg9/c;->s:I

    .line 4
    iget-object p1, p1, Lg9/u$a;->a:Lg9/c;

    .line 5
    iget v2, p1, Lg9/c;->s:I

    if-ne v1, v2, :cond_0

    .line 6
    iget v0, v0, Lg9/c;->a:I

    iget p1, p1, Lg9/c;->a:I

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lt/g;->c(I)I

    move-result p1

    invoke-static {v1}, Lt/g;->c(I)I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0
.end method

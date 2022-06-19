.class public Lcom/cocosw/bottomsheet/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/cocosw/bottomsheet/j$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/cocosw/bottomsheet/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/cocosw/bottomsheet/j$b;

    check-cast p2, Lcom/cocosw/bottomsheet/j$b;

    .line 2
    iget p1, p1, Lcom/cocosw/bottomsheet/j$b;->a:I

    iget p2, p2, Lcom/cocosw/bottomsheet/j$b;->a:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

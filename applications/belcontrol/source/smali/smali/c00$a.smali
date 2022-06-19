.class public final Lc00$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lc00$f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc00$f;Lc00$f;)I
    .locals 2

    iget v0, p1, Lc00$f;->a:I

    iget v1, p2, Lc00$f;->a:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget p1, p1, Lc00$f;->b:I

    iget p2, p2, Lc00$f;->b:I

    sub-int v0, p1, p2

    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lc00$f;

    check-cast p2, Lc00$f;

    invoke-virtual {p0, p1, p2}, Lc00$a;->a(Lc00$f;Lc00$f;)I

    move-result p1

    return p1
.end method

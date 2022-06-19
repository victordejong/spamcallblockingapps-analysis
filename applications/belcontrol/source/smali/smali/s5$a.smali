.class public Ls5$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls5;->F(Lt5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lt5;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ls5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lt5;Lt5;)I
    .locals 0

    iget p1, p1, Lt5;->c:I

    iget p2, p2, Lt5;->c:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lt5;

    check-cast p2, Lt5;

    invoke-virtual {p0, p1, p2}, Ls5$a;->a(Lt5;Lt5;)I

    move-result p1

    return p1
.end method

.class public Lx4$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx4;->h(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lx4$p;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lx4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx4$p;Lx4$p;)I
    .locals 0

    iget p1, p1, Lx4$p;->a:I

    iget p2, p2, Lx4$p;->a:I

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lx4$p;

    check-cast p2, Lx4$p;

    invoke-virtual {p0, p1, p2}, Lx4$a;->a(Lx4$p;Lx4$p;)I

    move-result p1

    return p1
.end method

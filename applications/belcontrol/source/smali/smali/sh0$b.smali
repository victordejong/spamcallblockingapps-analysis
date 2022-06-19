.class public Lsh0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lsh0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsh0$a;)V
    .locals 0

    invoke-direct {p0}, Lsh0$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lsh0;Lsh0;)I
    .locals 2

    invoke-static {p2}, Lsh0;->a(Lsh0;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lsh0$b;->b(Z)I

    invoke-static {p1}, Lsh0;->a(Lsh0;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lsh0$b;->b(Z)I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {p2}, Lsh0;->b(Lsh0;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lsh0$b;->b(Z)I

    invoke-static {p1}, Lsh0;->b(Lsh0;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lsh0$b;->b(Z)I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-static {p1}, Lsh0;->c(Lsh0;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lsh0;->c(Lsh0;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final b(Z)I
    .locals 0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lsh0;

    check-cast p2, Lsh0;

    invoke-virtual {p0, p1, p2}, Lsh0$b;->a(Lsh0;Lsh0;)I

    move-result p1

    return p1
.end method

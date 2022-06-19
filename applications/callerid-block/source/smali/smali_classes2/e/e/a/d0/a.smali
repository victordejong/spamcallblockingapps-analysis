.class public Le/e/a/d0/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/e/a/h0/c$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;J)I
    .locals 0

    const-wide/32 p1, 0x100000

    cmp-long p3, p4, p1

    if-gez p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-wide/32 p1, 0x500000

    cmp-long p3, p4, p1

    if-gez p3, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const-wide/32 p1, 0x3200000

    cmp-long p3, p4, p1

    if-gez p3, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const-wide/32 p1, 0x6400000

    cmp-long p3, p4, p1

    if-gez p3, :cond_3

    const/4 p1, 0x4

    return p1

    :cond_3
    const/4 p1, 0x5

    return p1
.end method

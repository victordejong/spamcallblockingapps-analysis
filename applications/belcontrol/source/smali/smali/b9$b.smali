.class public Lb9$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb9$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb9;->f(Lk8$b;I)Lk8$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb9$c<",
        "Lk8$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lb9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lk8$c;

    invoke-virtual {p0, p1}, Lb9$b;->d(Lk8$c;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lk8$c;

    invoke-virtual {p0, p1}, Lb9$b;->c(Lk8$c;)I

    move-result p1

    return p1
.end method

.method public c(Lk8$c;)I
    .locals 0

    invoke-virtual {p1}, Lk8$c;->e()I

    move-result p1

    return p1
.end method

.method public d(Lk8$c;)Z
    .locals 0

    invoke-virtual {p1}, Lk8$c;->f()Z

    move-result p1

    return p1
.end method

.class public Lb9$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb9$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb9;->h([Lz9$f;I)Lz9$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb9$c<",
        "Lz9$f;",
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

    check-cast p1, Lz9$f;

    invoke-virtual {p0, p1}, Lb9$a;->d(Lz9$f;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lz9$f;

    invoke-virtual {p0, p1}, Lb9$a;->c(Lz9$f;)I

    move-result p1

    return p1
.end method

.method public c(Lz9$f;)I
    .locals 0

    invoke-virtual {p1}, Lz9$f;->d()I

    move-result p1

    return p1
.end method

.method public d(Lz9$f;)Z
    .locals 0

    invoke-virtual {p1}, Lz9$f;->e()Z

    move-result p1

    return p1
.end method

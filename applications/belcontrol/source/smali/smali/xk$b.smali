.class public final Lxk$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Luk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lxk;


# direct methods
.method public constructor <init>(Lxk;)V
    .locals 0

    iput-object p1, p0, Lxk$b;->a:Lxk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lxk;Lxk$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lxk$b;-><init>(Lxk;)V

    return-void
.end method


# virtual methods
.method public a(IILbk;)V
    .locals 1

    iget-object v0, p0, Lxk$b;->a:Lxk;

    invoke-virtual {v0, p1, p2, p3}, Lxk;->f(IILbk;)V

    return-void
.end method

.method public endMasterElement(I)V
    .locals 1

    iget-object v0, p0, Lxk$b;->a:Lxk;

    invoke-virtual {v0, p1}, Lxk;->j(I)V

    return-void
.end method

.method public floatElement(ID)V
    .locals 1

    iget-object v0, p0, Lxk$b;->a:Lxk;

    invoke-virtual {v0, p1, p2, p3}, Lxk;->l(ID)V

    return-void
.end method

.method public getElementType(I)I
    .locals 1

    iget-object v0, p0, Lxk$b;->a:Lxk;

    invoke-virtual {v0, p1}, Lxk;->m(I)I

    move-result p1

    return p1
.end method

.method public integerElement(IJ)V
    .locals 1

    iget-object v0, p0, Lxk$b;->a:Lxk;

    invoke-virtual {v0, p1, p2, p3}, Lxk;->n(IJ)V

    return-void
.end method

.method public isLevel1Element(I)Z
    .locals 1

    iget-object v0, p0, Lxk$b;->a:Lxk;

    invoke-virtual {v0, p1}, Lxk;->p(I)Z

    move-result p1

    return p1
.end method

.method public startMasterElement(IJJ)V
    .locals 6

    iget-object v0, p0, Lxk$b;->a:Lxk;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lxk;->y(IJJ)V

    return-void
.end method

.method public stringElement(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lxk$b;->a:Lxk;

    invoke-virtual {v0, p1, p2}, Lxk;->z(ILjava/lang/String;)V

    return-void
.end method

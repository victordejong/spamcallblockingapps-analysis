.class public Ll1/a;
.super Ll1/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ll1/l;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ll1/l;->J(I)Ll1/l;

    .line 3
    new-instance v1, Ll1/c;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ll1/c;-><init>(I)V

    invoke-virtual {p0, v1}, Ll1/l;->H(Ll1/g;)Ll1/l;

    new-instance v1, Ll1/b;

    invoke-direct {v1}, Ll1/b;-><init>()V

    .line 4
    invoke-virtual {p0, v1}, Ll1/l;->H(Ll1/g;)Ll1/l;

    new-instance v1, Ll1/c;

    invoke-direct {v1, v0}, Ll1/c;-><init>(I)V

    .line 5
    invoke-virtual {p0, v1}, Ll1/l;->H(Ll1/g;)Ll1/l;

    return-void
.end method

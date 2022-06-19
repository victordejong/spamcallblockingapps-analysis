.class public Ll1/l$b;
.super Ll1/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll1/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ll1/l;


# direct methods
.method public constructor <init>(Ll1/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ll1/j;-><init>()V

    .line 2
    iput-object p1, p0, Ll1/l$b;->a:Ll1/l;

    return-void
.end method


# virtual methods
.method public b(Ll1/g;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ll1/l$b;->a:Ll1/l;

    iget-boolean v0, p1, Ll1/l;->A:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ll1/g;->F()V

    .line 3
    iget-object p1, p0, Ll1/l$b;->a:Ll1/l;

    const/4 v0, 0x1

    iput-boolean v0, p1, Ll1/l;->A:Z

    :cond_0
    return-void
.end method

.method public d(Ll1/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll1/l$b;->a:Ll1/l;

    iget v1, v0, Ll1/l;->z:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Ll1/l;->z:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Ll1/l;->A:Z

    .line 3
    invoke-virtual {v0}, Ll1/g;->m()V

    .line 4
    :cond_0
    invoke-virtual {p1, p0}, Ll1/g;->v(Ll1/g$d;)Ll1/g;

    return-void
.end method

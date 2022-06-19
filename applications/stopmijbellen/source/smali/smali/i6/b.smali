.class public final Li6/b;
.super Li6/e;
.source "SourceFile"


# instance fields
.field public final a:Lo6/g;


# direct methods
.method public constructor <init>(Lo6/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li6/e;-><init>()V

    .line 2
    iput-object p1, p0, Li6/b;->a:Lo6/g;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li6/b;->a:Lo6/g;

    invoke-virtual {v0}, Lo6/g;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Li6/b;->a:Lo6/g;

    .line 2
    invoke-virtual {v0}, Lo6/g;->E()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Li6/b;->a:Lo6/g;

    .line 3
    invoke-virtual {v0}, Lo6/g;->D()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Li6/b;->a:Lo6/g;

    .line 4
    invoke-virtual {v0}, Lo6/g;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Li6/b;->a:Lo6/g;

    .line 5
    invoke-virtual {v0}, Lo6/g;->G()Lo6/f;

    move-result-object v0

    invoke-virtual {v0}, Lo6/f;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.class public Landroidx/fragment/app/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/savedstate/a$b;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/o;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/o;

    .line 3
    :cond_0
    invoke-virtual {v1}, Landroidx/fragment/app/o;->o()Landroidx/fragment/app/a0;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/f$c;->c:Landroidx/lifecycle/f$c;

    invoke-static {v2, v3}, Landroidx/fragment/app/o;->p(Landroidx/fragment/app/a0;Landroidx/lifecycle/f$c;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/o;

    iget-object v1, v1, Landroidx/fragment/app/o;->i:Landroidx/lifecycle/k;

    sget-object v2, Landroidx/lifecycle/f$b;->ON_STOP:Landroidx/lifecycle/f$b;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/k;->e(Landroidx/lifecycle/f$b;)V

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/o;

    iget-object v1, v1, Landroidx/fragment/app/o;->h:Landroidx/fragment/app/v;

    .line 6
    iget-object v1, v1, Landroidx/fragment/app/v;->a:Landroidx/fragment/app/x;

    iget-object v1, v1, Landroidx/fragment/app/x;->d:Landroidx/fragment/app/a0;

    invoke-virtual {v1}, Landroidx/fragment/app/a0;->c0()Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "android:support:fragments"

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-object v0
.end method

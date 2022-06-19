.class public Lf/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/savedstate/a$b;


# instance fields
.field public final synthetic a:Lf/j;


# direct methods
.method public constructor <init>(Lf/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/h;->a:Lf/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lf/h;->a:Lf/j;

    invoke-virtual {v1}, Lf/j;->r()Lf/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lf/l;->q(Landroid/os/Bundle;)V

    return-object v0
.end method

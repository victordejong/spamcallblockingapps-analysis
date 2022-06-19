.class public Landroidx/lifecycle/v;
.super Ljava/lang/Object;
.source "ViewModelProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/v$a;,
        Landroidx/lifecycle/v$d;,
        Landroidx/lifecycle/v$c;,
        Landroidx/lifecycle/v$b;
    }
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/v$b;

.field private final b:Landroidx/lifecycle/x;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/x;Landroidx/lifecycle/v$b;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p2, p0, Landroidx/lifecycle/v;->a:Landroidx/lifecycle/v$b;

    .line 107
    iput-object p1, p0, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/x;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/u;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/v;->a(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/u;

    move-result-object p1

    return-object p1

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/u;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/x;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/x;->a(Ljava/lang/String;)Landroidx/lifecycle/u;

    move-result-object v0

    .line 152
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 161
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/v;->a:Landroidx/lifecycle/v$b;

    instance-of v1, v0, Landroidx/lifecycle/v$c;

    if-eqz v1, :cond_1

    .line 162
    check-cast v0, Landroidx/lifecycle/v$c;

    check-cast v0, Landroidx/lifecycle/v$c;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/v$c;->a(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/u;

    move-result-object p2

    goto :goto_0

    .line 164
    :cond_1
    invoke-interface {v0, p2}, Landroidx/lifecycle/v$b;->a(Ljava/lang/Class;)Landroidx/lifecycle/u;

    move-result-object p2

    .line 166
    :goto_0
    iget-object v0, p0, Landroidx/lifecycle/v;->b:Landroidx/lifecycle/x;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/x;->a(Ljava/lang/String;Landroidx/lifecycle/u;)V

    return-object p2
.end method

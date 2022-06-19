.class public final Landroidx/lifecycle/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/ab$a;,
        Landroidx/lifecycle/ab$d;,
        Landroidx/lifecycle/ab$c;,
        Landroidx/lifecycle/ab$e;,
        Landroidx/lifecycle/ab$b;
    }
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/ab$b;

.field private final b:Landroidx/lifecycle/ac;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/ac;Landroidx/lifecycle/ab$b;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p2, p0, Landroidx/lifecycle/ab;->a:Landroidx/lifecycle/ab$b;

    .line 127
    iput-object p1, p0, Landroidx/lifecycle/ab;->b:Landroidx/lifecycle/ac;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/ad;)V
    .locals 2

    .line 99
    invoke-interface {p1}, Landroidx/lifecycle/ad;->getViewModelStore()Landroidx/lifecycle/ac;

    move-result-object v0

    instance-of v1, p1, Landroidx/lifecycle/i;

    if-eqz v1, :cond_0

    .line 100
    check-cast p1, Landroidx/lifecycle/i;

    invoke-interface {p1}, Landroidx/lifecycle/i;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ab$b;

    move-result-object p1

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {}, Landroidx/lifecycle/ab$d;->a()Landroidx/lifecycle/ab$d;

    move-result-object p1

    .line 99
    :goto_0
    invoke-direct {p0, v0, p1}, Landroidx/lifecycle/ab;-><init>(Landroidx/lifecycle/ac;Landroidx/lifecycle/ab$b;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/ad;Landroidx/lifecycle/ab$b;)V
    .locals 0

    .line 114
    invoke-interface {p1}, Landroidx/lifecycle/ad;->getViewModelStore()Landroidx/lifecycle/ac;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroidx/lifecycle/ab;-><init>(Landroidx/lifecycle/ac;Landroidx/lifecycle/ab$b;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/aa;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/aa;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Landroidx/lifecycle/ab;->b:Landroidx/lifecycle/ac;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/ac;->a(Ljava/lang/String;)Landroidx/lifecycle/aa;

    move-result-object v0

    .line 173
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    iget-object p1, p0, Landroidx/lifecycle/ab;->a:Landroidx/lifecycle/ab$b;

    instance-of p2, p1, Landroidx/lifecycle/ab$e;

    if-eqz p2, :cond_0

    .line 175
    check-cast p1, Landroidx/lifecycle/ab$e;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ab$e;->a(Landroidx/lifecycle/aa;)V

    :cond_0
    return-object v0

    .line 184
    :cond_1
    iget-object v0, p0, Landroidx/lifecycle/ab;->a:Landroidx/lifecycle/ab$b;

    instance-of v1, v0, Landroidx/lifecycle/ab$c;

    if-eqz v1, :cond_2

    .line 185
    check-cast v0, Landroidx/lifecycle/ab$c;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/ab$c;->a(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/aa;

    move-result-object p2

    goto :goto_0

    .line 187
    :cond_2
    invoke-interface {v0, p2}, Landroidx/lifecycle/ab$b;->a(Ljava/lang/Class;)Landroidx/lifecycle/aa;

    move-result-object p2

    .line 189
    :goto_0
    iget-object v0, p0, Landroidx/lifecycle/ab;->b:Landroidx/lifecycle/ac;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/ac;->a(Ljava/lang/String;Landroidx/lifecycle/aa;)V

    return-object p2
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroidx/lifecycle/aa;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/aa;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 146
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroidx/lifecycle/ab;->a(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/aa;

    move-result-object p1

    return-object p1

    .line 148
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

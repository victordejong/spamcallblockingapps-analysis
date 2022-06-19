.class final Landroidx/fragment/app/b$a;
.super Landroidx/fragment/app/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private c:Z

.field private d:Z

.field private e:Landroidx/fragment/app/d$a;


# direct methods
.method constructor <init>(Landroidx/fragment/app/z$b;Landroidx/core/os/a;Z)V
    .locals 0

    .line 793
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/b$b;-><init>(Landroidx/fragment/app/z$b;Landroidx/core/os/a;)V

    const/4 p1, 0x0

    .line 787
    iput-boolean p1, p0, Landroidx/fragment/app/b$a;->d:Z

    .line 794
    iput-boolean p3, p0, Landroidx/fragment/app/b$a;->c:Z

    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;)Landroidx/fragment/app/d$a;
    .locals 4

    .line 799
    iget-boolean v0, p0, Landroidx/fragment/app/b$a;->d:Z

    if-eqz v0, :cond_0

    .line 800
    iget-object p1, p0, Landroidx/fragment/app/b$a;->e:Landroidx/fragment/app/d$a;

    return-object p1

    .line 1763
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/b$b;->a:Landroidx/fragment/app/z$b;

    .line 2558
    iget-object v0, v0, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 2763
    iget-object v1, p0, Landroidx/fragment/app/b$b;->a:Landroidx/fragment/app/z$b;

    .line 3539
    iget-object v1, v1, Landroidx/fragment/app/z$b;->a:Landroidx/fragment/app/z$b$b;

    .line 804
    sget-object v2, Landroidx/fragment/app/z$b$b;->VISIBLE:Landroidx/fragment/app/z$b$b;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Landroidx/fragment/app/b$a;->c:Z

    .line 802
    invoke-static {p1, v0, v1, v2}, Landroidx/fragment/app/d;->a(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/d$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/b$a;->e:Landroidx/fragment/app/d$a;

    .line 806
    iput-boolean v3, p0, Landroidx/fragment/app/b$a;->d:Z

    return-object p1
.end method

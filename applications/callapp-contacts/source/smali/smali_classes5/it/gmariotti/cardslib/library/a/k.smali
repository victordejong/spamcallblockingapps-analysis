.class public final Lit/gmariotti/cardslib/library/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/gmariotti/cardslib/library/a/k$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Z

.field protected c:Lit/gmariotti/cardslib/library/a/k$a;

.field protected d:Z

.field protected e:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/a/k;->b:Z

    .line 56
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/a/k;->d:Z

    .line 61
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/a/k;->e:Z

    return-void
.end method

.method public static a()Lit/gmariotti/cardslib/library/a/k;
    .locals 1

    .line 75
    new-instance v0, Lit/gmariotti/cardslib/library/a/k;

    invoke-direct {v0}, Lit/gmariotti/cardslib/library/a/k;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)Lit/gmariotti/cardslib/library/a/k;
    .locals 0

    .line 108
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/k;->a:Landroid/view/View;

    return-object p0
.end method

.method public final b()Lit/gmariotti/cardslib/library/a/k;
    .locals 1

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lit/gmariotti/cardslib/library/a/k;->b:Z

    return-object p0
.end method

.method public final c()Landroid/view/View;
    .locals 1

    .line 158
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/k;->a:Landroid/view/View;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/a/k;->b:Z

    return v0
.end method

.method public final e()Lit/gmariotti/cardslib/library/a/k$a;
    .locals 1

    .line 174
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/k;->c:Lit/gmariotti/cardslib/library/a/k$a;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/a/k;->e:Z

    return v0
.end method

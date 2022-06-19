.class public final Lit/gmariotti/cardslib/library/a/j;
.super Lit/gmariotti/cardslib/library/a/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/gmariotti/cardslib/library/a/j$a;
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:Ljava/lang/String;

.field protected c:Z

.field protected d:I

.field protected e:Lit/gmariotti/cardslib/library/a/j$a;

.field protected f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lit/gmariotti/cardslib/library/a/a/a;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 90
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/j;->c:Z

    .line 100
    iput p1, p0, Lit/gmariotti/cardslib/library/a/j;->d:I

    const/4 p1, 0x0

    .line 117
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/j;->e:Lit/gmariotti/cardslib/library/a/j$a;

    const/4 p1, 0x1

    .line 122
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/j;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lit/gmariotti/cardslib/library/a/a/a;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 90
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/j;->c:Z

    .line 100
    iput p1, p0, Lit/gmariotti/cardslib/library/a/j;->d:I

    const/4 p1, 0x0

    .line 117
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/j;->e:Lit/gmariotti/cardslib/library/a/j$a;

    const/4 p1, 0x1

    .line 122
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/j;->f:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 180
    iget v0, p0, Lit/gmariotti/cardslib/library/a/j;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lit/gmariotti/cardslib/library/a/j$a;
    .locals 1

    .line 215
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/j;->e:Lit/gmariotti/cardslib/library/a/j$a;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/a/j;->c:Z

    return v0
.end method

.method public final e()I
    .locals 1

    .line 246
    iget v0, p0, Lit/gmariotti/cardslib/library/a/j;->d:I

    return v0
.end method

.method public final f()Z
    .locals 1

    .line 264
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/a/j;->f:Z

    return v0
.end method

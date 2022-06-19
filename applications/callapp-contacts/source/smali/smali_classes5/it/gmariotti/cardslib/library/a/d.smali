.class public abstract Lit/gmariotti/cardslib/library/a/d;
.super Lit/gmariotti/cardslib/library/a/a/c;
.source "SourceFile"


# static fields
.field protected static a:Ljava/lang/String; = "CardCursorAdapter"


# instance fields
.field protected b:Lit/gmariotti/cardslib/library/view/CardListView;

.field protected final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, v0, v1}, Lit/gmariotti/cardslib/library/a/a/c;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 69
    iput-boolean v1, p0, Lit/gmariotti/cardslib/library/a/d;->d:Z

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/d;->c:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lit/gmariotti/cardslib/library/a/a/c;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/d;->d:Z

    .line 86
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/d;->c:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lit/gmariotti/cardslib/library/a/a/c;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/d;->d:Z

    .line 81
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/d;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lit/gmariotti/cardslib/library/view/CardListView;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/d;->b:Lit/gmariotti/cardslib/library/view/CardListView;

    return-void
.end method

.method public final a(Lit/gmariotti/cardslib/library/view/a/a;)Z
    .locals 1

    .line 243
    invoke-interface {p1}, Lit/gmariotti/cardslib/library/view/a/a;->getCard()Lit/gmariotti/cardslib/library/a/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 245
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getId()Ljava/lang/String;

    move-result-object p1

    .line 246
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lit/gmariotti/cardslib/library/view/a/a;)Z
    .locals 1

    .line 260
    invoke-interface {p1}, Lit/gmariotti/cardslib/library/view/a/a;->getCard()Lit/gmariotti/cardslib/library/a/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 262
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getId()Ljava/lang/String;

    move-result-object p1

    .line 263
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Lit/gmariotti/cardslib/library/view/a/a;)V
    .locals 1

    .line 276
    invoke-interface {p1}, Lit/gmariotti/cardslib/library/view/a/a;->getCard()Lit/gmariotti/cardslib/library/a/b;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p1, :cond_0

    .line 1188
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getId()Ljava/lang/String;

    move-result-object p1

    .line 1195
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/d;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1196
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1199
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final d(Lit/gmariotti/cardslib/library/view/a/a;)V
    .locals 1

    .line 288
    invoke-interface {p1}, Lit/gmariotti/cardslib/library/view/a/a;->getCard()Lit/gmariotti/cardslib/library/a/b;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p1, :cond_0

    .line 1209
    invoke-virtual {p1}, Lit/gmariotti/cardslib/library/a/b;->getId()Ljava/lang/String;

    move-result-object p1

    .line 1216
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/d;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1217
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    iget-object v0, p0, Lit/gmariotti/cardslib/library/a/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

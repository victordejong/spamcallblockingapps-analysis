.class public final Lit/gmariotti/cardslib/library/a/a;
.super Lit/gmariotti/cardslib/library/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lit/gmariotti/cardslib/library/a/b;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Lit/gmariotti/cardslib/library/a/b;-><init>(Landroid/content/Context;I)V

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/a;->a:Ljava/util/List;

    .line 44
    iput-object p3, p0, Lit/gmariotti/cardslib/library/a/a;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lit/gmariotti/cardslib/library/a/b;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/a;->a:Ljava/util/List;

    .line 39
    iput-object p2, p0, Lit/gmariotti/cardslib/library/a/a;->a:Ljava/util/List;

    return-void
.end method

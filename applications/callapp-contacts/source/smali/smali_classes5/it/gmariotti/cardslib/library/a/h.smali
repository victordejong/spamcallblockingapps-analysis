.class public abstract Lit/gmariotti/cardslib/library/a/h;
.super Lit/gmariotti/cardslib/library/a/a/c;
.source "SourceFile"


# static fields
.field protected static a:Ljava/lang/String; = "CardGridCursorAdapter"


# instance fields
.field protected b:Lit/gmariotti/cardslib/library/view/CardGridView;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, v0, v1}, Lit/gmariotti/cardslib/library/a/a/c;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 61
    iput-boolean v1, p0, Lit/gmariotti/cardslib/library/a/h;->c:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lit/gmariotti/cardslib/library/a/a/c;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/h;->c:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lit/gmariotti/cardslib/library/a/a/c;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lit/gmariotti/cardslib/library/a/h;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lit/gmariotti/cardslib/library/view/CardGridView;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/h;->b:Lit/gmariotti/cardslib/library/view/CardGridView;

    return-void
.end method

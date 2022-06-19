.class public abstract Lit/gmariotti/cardslib/library/a/a/c;
.super Landroid/widget/CursorAdapter;
.source "SourceFile"


# instance fields
.field protected e:Landroid/content/Context;

.field protected f:I

.field protected g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 45
    sget p2, Lit/gmariotti/cardslib/library/a$e;->list_card_layout:I

    iput p2, p0, Lit/gmariotti/cardslib/library/a/a/c;->f:I

    const/4 p2, 0x1

    .line 50
    iput p2, p0, Lit/gmariotti/cardslib/library/a/a/c;->g:I

    .line 70
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/a/c;->e:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 45
    sget p2, Lit/gmariotti/cardslib/library/a$e;->list_card_layout:I

    iput p2, p0, Lit/gmariotti/cardslib/library/a/a/c;->f:I

    const/4 p2, 0x1

    .line 50
    iput p2, p0, Lit/gmariotti/cardslib/library/a/a/c;->g:I

    .line 64
    iput-object p1, p0, Lit/gmariotti/cardslib/library/a/a/c;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 142
    iput p1, p0, Lit/gmariotti/cardslib/library/a/a/c;->f:I

    return-void
.end method

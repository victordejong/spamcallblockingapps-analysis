.class final Lit/gmariotti/cardslib/library/view/listener/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/listener/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lit/gmariotti/cardslib/library/view/listener/a$b;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Landroid/view/View;

.field final synthetic c:Lit/gmariotti/cardslib/library/view/listener/a;


# direct methods
.method public constructor <init>(Lit/gmariotti/cardslib/library/view/listener/a;ILandroid/view/View;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/a$b;->c:Lit/gmariotti/cardslib/library/view/listener/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput p2, p0, Lit/gmariotti/cardslib/library/view/listener/a$b;->a:I

    .line 388
    iput-object p3, p0, Lit/gmariotti/cardslib/library/view/listener/a$b;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 382
    check-cast p1, Lit/gmariotti/cardslib/library/view/listener/a$b;

    .line 1394
    iget p1, p1, Lit/gmariotti/cardslib/library/view/listener/a$b;->a:I

    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/a$b;->a:I

    sub-int/2addr p1, v0

    return p1
.end method

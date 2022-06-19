.class Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;->setCardSections([Lit/gmariotti/cardslib/library/prototypes/CardSection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lit/gmariotti/cardslib/library/prototypes/CardSection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter$2;->this$0:Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lit/gmariotti/cardslib/library/prototypes/CardSection;Lit/gmariotti/cardslib/library/prototypes/CardSection;)I
    .locals 2

    .line 121
    iget v0, p1, Lit/gmariotti/cardslib/library/prototypes/CardSection;->firstPosition:I

    iget v1, p2, Lit/gmariotti/cardslib/library/prototypes/CardSection;->firstPosition:I

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget p1, p1, Lit/gmariotti/cardslib/library/prototypes/CardSection;->firstPosition:I

    iget p2, p2, Lit/gmariotti/cardslib/library/prototypes/CardSection;->firstPosition:I

    if-ge p1, p2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 118
    check-cast p1, Lit/gmariotti/cardslib/library/prototypes/CardSection;

    check-cast p2, Lit/gmariotti/cardslib/library/prototypes/CardSection;

    invoke-virtual {p0, p1, p2}, Lit/gmariotti/cardslib/library/prototypes/SectionedCardAdapter$2;->compare(Lit/gmariotti/cardslib/library/prototypes/CardSection;Lit/gmariotti/cardslib/library/prototypes/CardSection;)I

    move-result p1

    return p1
.end method

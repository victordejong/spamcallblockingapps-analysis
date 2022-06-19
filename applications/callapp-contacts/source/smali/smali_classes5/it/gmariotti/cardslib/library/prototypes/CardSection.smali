.class public Lit/gmariotti/cardslib/library/prototypes/CardSection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field firstPosition:I

.field sectionedPosition:I

.field title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lit/gmariotti/cardslib/library/prototypes/CardSection;->firstPosition:I

    .line 37
    iput-object p2, p0, Lit/gmariotti/cardslib/library/prototypes/CardSection;->title:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 45
    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/CardSection;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

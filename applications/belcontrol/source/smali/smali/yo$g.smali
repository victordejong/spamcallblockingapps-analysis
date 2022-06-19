.class public final Lyo$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lyo$g;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lhp;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lap;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lyo$c;

.field public f:I

.field public g:I

.field public h:I

.field public j:Z

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>(Lhp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyo$g;->a:Lhp;

    invoke-interface {p1}, Lhp;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lyo$c;->v(Ljava/lang/Object;)Lyo$c;

    move-result-object p1

    iput-object p1, p0, Lyo$g;->d:Lyo$c;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyo$g;->c:Ljava/util/List;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyo$g;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lyo$g;)I
    .locals 1

    iget v0, p0, Lyo$g;->h:I

    iget p1, p1, Lyo$g;->h:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public b(III)V
    .locals 0

    iput p1, p0, Lyo$g;->f:I

    iput p2, p0, Lyo$g;->g:I

    iput p3, p0, Lyo$g;->h:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lyo$g;->j:Z

    iput-boolean p1, p0, Lyo$g;->k:Z

    iput-boolean p1, p0, Lyo$g;->l:Z

    iget-object p1, p0, Lyo$g;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lyo$g;

    invoke-virtual {p0, p1}, Lyo$g;->a(Lyo$g;)I

    move-result p1

    return p1
.end method

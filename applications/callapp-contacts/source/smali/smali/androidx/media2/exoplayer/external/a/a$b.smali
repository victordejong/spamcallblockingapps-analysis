.class public final Landroidx/media2/exoplayer/external/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/exoplayer/external/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/media2/exoplayer/external/source/t$a;",
            "Landroidx/media2/exoplayer/external/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroidx/media2/exoplayer/external/a/a$a;

.field d:Landroidx/media2/exoplayer/external/a/a$a;

.field e:Landroidx/media2/exoplayer/external/a/a$a;

.field f:Landroidx/media2/exoplayer/external/al;

.field public g:Z

.field private final h:Landroidx/media2/exoplayer/external/al$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/a/a$b;->a:Ljava/util/ArrayList;

    .line 677
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/a/a$b;->b:Ljava/util/HashMap;

    .line 678
    new-instance v0, Landroidx/media2/exoplayer/external/al$a;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/al$a;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/a/a$b;->h:Landroidx/media2/exoplayer/external/al$a;

    .line 679
    sget-object v0, Landroidx/media2/exoplayer/external/al;->a:Landroidx/media2/exoplayer/external/al;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/a/a$b;->f:Landroidx/media2/exoplayer/external/al;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media2/exoplayer/external/a/a$a;
    .locals 2

    .line 691
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a$b;->f:Landroidx/media2/exoplayer/external/al;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/al;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/a/a$b;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 693
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a$b;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/a/a$a;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(I)Landroidx/media2/exoplayer/external/a/a$a;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v1

    const/4 v2, 0x0

    .line 747
    :goto_0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/a/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 748
    iget-object v4, p0, Landroidx/media2/exoplayer/external/a/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/a/a$a;

    .line 749
    iget-object v5, p0, Landroidx/media2/exoplayer/external/a/a$b;->f:Landroidx/media2/exoplayer/external/al;

    iget-object v6, v4, Landroidx/media2/exoplayer/external/a/a$a;->a:Landroidx/media2/exoplayer/external/source/t$a;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 750
    iget-object v6, p0, Landroidx/media2/exoplayer/external/a/a$b;->f:Landroidx/media2/exoplayer/external/al;

    iget-object v7, p0, Landroidx/media2/exoplayer/external/a/a$b;->h:Landroidx/media2/exoplayer/external/al$a;

    .line 1795
    invoke-virtual {v6, v5, v7, v0}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$a;Z)Landroidx/media2/exoplayer/external/al$a;

    move-result-object v5

    .line 751
    iget v5, v5, Landroidx/media2/exoplayer/external/al$a;->c:I

    if-ne v5, p1, :cond_1

    if-eqz v3, :cond_0

    return-object v1

    :cond_0
    move-object v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method final a(Landroidx/media2/exoplayer/external/a/a$a;Landroidx/media2/exoplayer/external/al;)Landroidx/media2/exoplayer/external/a/a$a;
    .locals 3

    .line 833
    iget-object v0, p1, Landroidx/media2/exoplayer/external/a/a$a;->a:Landroidx/media2/exoplayer/external/source/t$a;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Landroidx/media2/exoplayer/external/al;->a(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p1

    .line 838
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/a/a$b;->h:Landroidx/media2/exoplayer/external/al$a;

    const/4 v2, 0x0

    .line 2795
    invoke-virtual {p2, v0, v1, v2}, Landroidx/media2/exoplayer/external/al;->a(ILandroidx/media2/exoplayer/external/al$a;Z)Landroidx/media2/exoplayer/external/al$a;

    move-result-object v0

    .line 838
    iget v0, v0, Landroidx/media2/exoplayer/external/al$a;->c:I

    .line 839
    new-instance v1, Landroidx/media2/exoplayer/external/a/a$a;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/a/a$a;->a:Landroidx/media2/exoplayer/external/source/t$a;

    invoke-direct {v1, p1, p2, v0}, Landroidx/media2/exoplayer/external/a/a$a;-><init>(Landroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/al;I)V

    return-object v1
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/a/a$a;
    .locals 1

    .line 732
    iget-object v0, p0, Landroidx/media2/exoplayer/external/a/a$b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/a/a$a;

    return-object p1
.end method

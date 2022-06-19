.class public final Lio/objectbox/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/objectbox/e$a;,
        Lio/objectbox/e$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/flatbuffers/d;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field c:J

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Long;

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/google/flatbuffers/d;

    invoke-direct {v0}, Lcom/google/flatbuffers/d;-><init>()V

    iput-object v0, p0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/objectbox/e;->b:Ljava/util/List;

    const-wide/16 v0, 0x1

    .line 42
    iput-wide v0, p0, Lio/objectbox/e;->c:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 258
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 259
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 260
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :cond_0
    iget-object p1, p0, Lio/objectbox/e;->a:Lcom/google/flatbuffers/d;

    invoke-virtual {p1, v0}, Lcom/google/flatbuffers/d;->a([I)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/String;)Lio/objectbox/e$a;
    .locals 1

    .line 271
    new-instance v0, Lio/objectbox/e$a;

    invoke-direct {v0, p0, p1}, Lio/objectbox/e$a;-><init>(Lio/objectbox/e;Ljava/lang/String;)V

    return-object v0
.end method

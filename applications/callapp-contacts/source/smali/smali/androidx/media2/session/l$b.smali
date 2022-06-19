.class final Landroidx/media2/session/l$b;
.super Landroidx/media2/session/l$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/session/l$d;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Landroidx/media2/session/l;

.field private final d:Landroidx/media/b$b;


# direct methods
.method constructor <init>(Landroidx/media2/session/l;Landroidx/media/b$b;)V
    .locals 0

    .line 530
    iput-object p1, p0, Landroidx/media2/session/l$b;->c:Landroidx/media2/session/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/media2/session/l$a;-><init>(Landroidx/media2/session/l$1;)V

    .line 524
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/session/l$b;->a:Ljava/lang/Object;

    .line 527
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media2/session/l$b;->b:Ljava/util/List;

    .line 531
    iput-object p2, p0, Landroidx/media2/session/l$b;->d:Landroidx/media/b$b;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 629
    :cond_0
    instance-of v0, p1, Landroidx/media2/session/l$b;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 632
    :cond_1
    check-cast p1, Landroidx/media2/session/l$b;

    .line 633
    iget-object v0, p0, Landroidx/media2/session/l$b;->d:Landroidx/media/b$b;

    iget-object p1, p1, Landroidx/media2/session/l$b;->d:Landroidx/media/b$b;

    invoke-static {v0, p1}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 621
    iget-object v1, p0, Landroidx/media2/session/l$b;->d:Landroidx/media/b$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/e/a;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

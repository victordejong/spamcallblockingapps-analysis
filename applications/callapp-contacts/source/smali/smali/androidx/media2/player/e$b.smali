.class final Landroidx/media2/player/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/e$b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/FileDescriptor;",
            "Landroidx/media2/player/e$b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 824
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/e$b;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/FileDescriptor;)Ljava/lang/Object;
    .locals 2

    .line 828
    iget-object v0, p0, Landroidx/media2/player/e$b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 829
    iget-object v0, p0, Landroidx/media2/player/e$b;->a:Ljava/util/Map;

    new-instance v1, Landroidx/media2/player/e$b$a;

    invoke-direct {v1}, Landroidx/media2/player/e$b$a;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    :cond_0
    iget-object v0, p0, Landroidx/media2/player/e$b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/player/e$b$a;

    invoke-static {p1}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/player/e$b$a;

    .line 832
    iget v0, p1, Landroidx/media2/player/e$b$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroidx/media2/player/e$b$a;->b:I

    .line 833
    iget-object p1, p1, Landroidx/media2/player/e$b$a;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public final b(Ljava/io/FileDescriptor;)V
    .locals 2

    .line 837
    iget-object v0, p0, Landroidx/media2/player/e$b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/player/e$b$a;

    invoke-static {v0}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/player/e$b$a;

    .line 838
    iget v1, v0, Landroidx/media2/player/e$b$a;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroidx/media2/player/e$b$a;->b:I

    if-nez v1, :cond_0

    .line 839
    iget-object v0, p0, Landroidx/media2/player/e$b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

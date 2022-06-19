.class public Ld9/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld9/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld9/e$a;,
        Ld9/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ld9/c;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field public final b:Ld9/e$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld9/e$b<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld9/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld9/e$a<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Ld9/e$a;->b:Ljava/util/List;

    iput-object v0, p0, Ld9/e;->a:Ljava/util/List;

    .line 3
    iget-object p1, p1, Ld9/e$a;->a:Ld9/e$b;

    .line 4
    iput-object p1, p0, Ld9/e;->b:Ld9/e$b;

    return-void
.end method


# virtual methods
.method public c(Lc9/f;)V
    .locals 4

    .line 1
    iget-object p1, p0, Ld9/e;->a:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    .line 3
    iget-object v1, p0, Ld9/e;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 4
    iget-object v2, p0, Ld9/e;->b:Ld9/e$b;

    check-cast v2, Lu8/b$a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    instance-of v2, v1, Lb9/c;

    if-eqz v2, :cond_0

    .line 6
    check-cast v1, Lb9/c;

    invoke-interface {v1}, Lb9/c;->a()Z

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 8
    invoke-static {v2}, Lcom/raizlabs/android/dbflow/config/FlowManager;->g(Ljava/lang/Class;)Lb9/d;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v3, v1}, Lb9/d;->r(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string p1, "ModelAdapter"

    .line 10
    invoke-static {p1, v2}, Lcom/raizlabs/android/dbflow/config/FlowManager;->l(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

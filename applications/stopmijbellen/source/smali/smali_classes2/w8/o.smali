.class public Lw8/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv8/a;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx8/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lx8/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw8/o;->a:Ljava/util/List;

    .line 3
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lx8/b;->c:Lx8/b;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lv8/b;

    const-string v1, "SELECT "

    invoke-direct {v0, v1}, Lv8/b;-><init>(Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lw8/o;->a:Ljava/util/List;

    const-string v2, ","

    invoke-static {v2, v1}, Lv8/b;->e(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, v0, Lv8/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Lv8/b;->c()Lv8/b;

    .line 5
    invoke-virtual {v0}, Lv8/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lw8/o;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public abstract Lw8/b;
.super Lw8/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lw8/d<",
        "TTModel;>;"
    }
.end annotation


# instance fields
.field public b:Lb9/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb9/b<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lw8/d;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final k()Lb9/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb9/b<",
            "TTModel;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw8/b;->b:Lb9/b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lw8/d;->a:Ljava/lang/Class;

    .line 3
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/config/FlowManager;->f(Ljava/lang/Class;)Lb9/b;

    move-result-object v0

    iput-object v0, p0, Lw8/b;->b:Lb9/b;

    .line 4
    :cond_0
    iget-object v0, p0, Lw8/b;->b:Lb9/b;

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lv8/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/raizlabs/android/dbflow/config/f$b;->a:Lcom/raizlabs/android/dbflow/config/f$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    invoke-static {v1, v2, v3}, Lcom/raizlabs/android/dbflow/config/f;->a(Lcom/raizlabs/android/dbflow/config/f$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p0}, Lw8/b;->k()Lb9/b;

    move-result-object v1

    .line 5
    iget-object v2, v1, Lb9/b;->b:Lz8/a;

    if-nez v2, :cond_0

    .line 6
    new-instance v2, Lz8/a;

    invoke-virtual {v1}, Lb9/b;->b()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v3}, Lz8/a;-><init>(Ljava/lang/Class;)V

    .line 7
    iput-object v2, v1, Lb9/b;->b:Lz8/a;

    .line 8
    :cond_0
    iget-object v1, v1, Lb9/b;->b:Lz8/a;

    .line 9
    invoke-virtual {v1, v0}, Ll/b;->j(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

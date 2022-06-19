.class public Lw8/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv8/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lv8/a;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw8/q;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public varargs a([Lw8/n;)Lw8/p;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lw8/n;",
            ")",
            "Lw8/p<",
            "TTModel;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lw8/p;

    iget-object v1, p0, Lw8/q;->a:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lw8/p;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 2
    iget-object v1, v0, Lw8/p;->c:Lw8/l;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    const-string v5, "AND"

    .line 4
    invoke-virtual {v1, v5, v4}, Lw8/l;->k(Ljava/lang/String;Lw8/n;)Lw8/l;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lv8/b;

    const-string v1, "UPDATE "

    invoke-direct {v0, v1}, Lv8/b;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 2
    invoke-static {v1, v1}, Lt/g;->b(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, v0, Lv8/b;->a:Ljava/lang/StringBuilder;

    const-string v2, "OR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Lv8/b;->c()Lv8/b;

    .line 5
    iget-object v1, v0, Lv8/b;->a:Ljava/lang/StringBuilder;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Lv8/b;->c()Lv8/b;

    .line 7
    :cond_0
    iget-object v1, p0, Lw8/q;->a:Ljava/lang/Class;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->i(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v2, v0, Lv8/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Lv8/b;->c()Lv8/b;

    .line 10
    invoke-virtual {v0}, Lv8/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

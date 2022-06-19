.class public Lw8/p;
.super Lw8/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lw8/e<",
        "TTModel;>;"
    }
.end annotation


# instance fields
.field public c:Lw8/l;

.field public d:Lv8/a;


# direct methods
.method public constructor <init>(Lv8/a;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv8/a;",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lw8/e;-><init>(Ljava/lang/Class;)V

    .line 2
    iput-object p1, p0, Lw8/p;->d:Lv8/a;

    .line 3
    invoke-static {}, Lw8/l;->j()Lw8/l;

    move-result-object p1

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p1, Lw8/l;->i:Z

    .line 5
    iput-boolean p2, p1, Lw8/l;->h:Z

    .line 6
    iput-object p1, p0, Lw8/p;->c:Lw8/l;

    return-void
.end method


# virtual methods
.method public a()Lb9/a$a;
    .locals 1

    .line 1
    sget-object v0, Lb9/a$a;->c:Lb9/a$a;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lv8/b;

    iget-object v1, p0, Lw8/p;->d:Lv8/a;

    .line 2
    invoke-interface {v1}, Lv8/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lv8/b;-><init>(Ljava/lang/Object;)V

    .line 3
    iget-object v1, v0, Lv8/b;->a:Ljava/lang/StringBuilder;

    const-string v2, "SET "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lw8/p;->c:Lw8/l;

    .line 5
    invoke-virtual {v1}, Lw8/l;->b()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, v0, Lv8/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Lv8/b;->c()Lv8/b;

    .line 8
    invoke-virtual {v0}, Lv8/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Lv8/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lw8/p;->d:Lv8/a;

    return-object v0
.end method

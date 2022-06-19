.class public Lw8/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv8/a;


# instance fields
.field public a:Lw8/j;

.field public b:Z


# direct methods
.method public constructor <init>(Lw8/j;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw8/m;->a:Lw8/j;

    .line 3
    iput-boolean p2, p0, Lw8/m;->b:Z

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lw8/m;->a:Lw8/j;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-boolean v1, p0, Lw8/m;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "ASC"

    goto :goto_0

    :cond_0
    const-string v1, "DESC"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lw8/m;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

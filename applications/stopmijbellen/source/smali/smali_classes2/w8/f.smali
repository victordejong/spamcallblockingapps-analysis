.class public Lw8/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv8/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lv8/b;

    invoke-direct {v0}, Lv8/b;-><init>()V

    .line 2
    iget-object v1, v0, Lv8/b;->a:Ljava/lang/StringBuilder;

    const-string v2, "DELETE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0}, Lv8/b;->c()Lv8/b;

    invoke-virtual {v0}, Lv8/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

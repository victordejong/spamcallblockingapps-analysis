.class Lcom/facebook/a/c$a;
.super Ljava/lang/Object;
.source "AppEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Z


# direct methods
.method private readResolve()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 256
    new-instance v0, Lcom/facebook/a/c;

    iget-object v1, p0, Lcom/facebook/a/c$a;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/facebook/a/c$a;->b:Z

    iget-boolean v3, p0, Lcom/facebook/a/c$a;->c:Z

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/a/c;-><init>(Ljava/lang/String;ZZLjava/lang/String;Lcom/facebook/a/c$1;)V

    return-object v0
.end method

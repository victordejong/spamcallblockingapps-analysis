.class public final Lcom/criteo/publisher/f/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/q$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/criteo/publisher/q$a<",
        "Lcom/criteo/publisher/f/p<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/criteo/publisher/f/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/criteo/publisher/f/ae<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/criteo/publisher/f/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/criteo/publisher/f/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/f/ae;Lcom/criteo/publisher/f/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/criteo/publisher/f/ae<",
            "TT;>;",
            "Lcom/criteo/publisher/f/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/criteo/publisher/f/d;->a:Lcom/criteo/publisher/f/ae;

    .line 35
    iput-object p2, p0, Lcom/criteo/publisher/f/d;->b:Lcom/criteo/publisher/f/b;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/criteo/publisher/f/d;->b()Lcom/criteo/publisher/f/p;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/criteo/publisher/f/p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/criteo/publisher/f/p<",
            "TT;>;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/criteo/publisher/f/j;

    iget-object v1, p0, Lcom/criteo/publisher/f/d;->a:Lcom/criteo/publisher/f/ae;

    iget-object v2, p0, Lcom/criteo/publisher/f/d;->b:Lcom/criteo/publisher/f/b;

    invoke-direct {v0, v1, v2}, Lcom/criteo/publisher/f/j;-><init>(Lcom/criteo/publisher/f/ae;Lcom/criteo/publisher/f/b;)V

    .line 42
    new-instance v1, Lcom/criteo/publisher/f/o;

    iget-object v2, p0, Lcom/criteo/publisher/f/d;->b:Lcom/criteo/publisher/f/b;

    invoke-direct {v1, v0, v2}, Lcom/criteo/publisher/f/o;-><init>(Lcom/criteo/publisher/f/p;Lcom/criteo/publisher/f/b;)V

    return-object v1
.end method

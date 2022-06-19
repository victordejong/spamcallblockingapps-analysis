.class public Lw7/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm7/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lm7/d<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lw7/n;


# direct methods
.method public constructor <init>(Lw7/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw7/m;->a:Lw7/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw7/m;->a:Lw7/n;

    iget-object v1, v0, Lw7/n;->p:Lw7/p;

    iget-object v0, v0, Lw7/n;->n:Lw7/p$a;

    invoke-static {v1, v0, p1, p2}, Lw7/p;->g(Lw7/p;Lw7/p$a;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.class public abstract Ld8/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls7/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ls6/i;",
        ">",
        "Ljava/lang/Object;",
        "Ls7/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ls6/i;",
            ">;"
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
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld8/b;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Lk7/m;)Lm7/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk7/m;",
            ")",
            "Lm7/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lk7/m;->f()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ls7/b;

    invoke-direct {v1}, Ls7/b;-><init>()V

    invoke-virtual {v1, p1}, Ls7/b;->a(Lk7/m;)Lm7/c;

    move-result-object p1

    new-instance v1, Ly2/m;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v0, v2}, Ly2/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 3
    check-cast p1, Lm7/g;

    invoke-virtual {p1, v1}, Lm7/g;->t(Lm7/h;)Lm7/c;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Ld8/b;->a:Ljava/lang/Class;

    return-object v0
.end method

.class public Ls7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls7/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls7/a<",
        "Lk7/l;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Lk7/l;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lk7/l;

    invoke-direct {v0}, Lk7/l;-><init>()V

    .line 2
    new-instance v1, Ls7/b$a;

    invoke-direct {v1, p0, p1}, Ls7/b$a;-><init>(Ls7/b;Lk7/m;)V

    .line 3
    new-instance v2, Ls7/b$b;

    invoke-direct {v2, p0, v0}, Ls7/b$b;-><init>(Ls7/b;Lk7/l;)V

    invoke-interface {p1, v2}, Lk7/m;->b(Ll7/c;)V

    .line 4
    new-instance v2, Ls7/b$c;

    invoke-direct {v2, p0, v1, v0}, Ls7/b$c;-><init>(Ls7/b;Lm7/g;Lk7/l;)V

    invoke-interface {p1, v2}, Lk7/m;->h(Ll7/a;)V

    return-object v1
.end method

.class public Lf6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lt4/c;

.field public final b:Lx5/e;

.field public final c:Lw5/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw5/b<",
            "Lq6/g;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lw5/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw5/b<",
            "Lr2/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lt4/c;Lx5/e;Lw5/b;Lw5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt4/c;",
            "Lx5/e;",
            "Lw5/b<",
            "Lq6/g;",
            ">;",
            "Lw5/b<",
            "Lr2/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf6/a;->a:Lt4/c;

    .line 3
    iput-object p2, p0, Lf6/a;->b:Lx5/e;

    .line 4
    iput-object p3, p0, Lf6/a;->c:Lw5/b;

    .line 5
    iput-object p4, p0, Lf6/a;->d:Lw5/b;

    return-void
.end method

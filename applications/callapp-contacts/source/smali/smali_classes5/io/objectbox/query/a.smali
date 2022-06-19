.class final Lio/objectbox/query/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lio/objectbox/relation/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/relation/b<",
            "TS;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILio/objectbox/relation/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/objectbox/relation/b<",
            "TS;TT;>;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lio/objectbox/query/a;->a:I

    .line 27
    iput-object p2, p0, Lio/objectbox/query/a;->b:Lio/objectbox/relation/b;

    return-void
.end method

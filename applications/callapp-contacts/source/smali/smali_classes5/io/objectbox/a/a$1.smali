.class final Lio/objectbox/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/objectbox/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/c/a<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/objectbox/a/a;


# direct methods
.method constructor <init>(Lio/objectbox/a/a;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lio/objectbox/a/a$1;->a:Lio/objectbox/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onData(Ljava/lang/Object;)V
    .locals 1

    .line 32
    check-cast p1, Ljava/util/List;

    .line 1035
    iget-object v0, p0, Lio/objectbox/a/a$1;->a:Lio/objectbox/a/a;

    invoke-static {v0, p1}, Lio/objectbox/a/a;->a(Lio/objectbox/a/a;Ljava/lang/Object;)V

    return-void
.end method

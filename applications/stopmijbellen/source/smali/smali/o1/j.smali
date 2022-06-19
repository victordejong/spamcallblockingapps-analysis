.class public final Lo1/j;
.super Lo1/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo1/j$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lo1/j$a;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lo1/o$a;->a:Ljava/util/UUID;

    iget-object v1, p1, Lo1/o$a;->b:Lx1/p;

    iget-object p1, p1, Lo1/o$a;->c:Ljava/util/Set;

    invoke-direct {p0, v0, v1, p1}, Lo1/o;-><init>(Ljava/util/UUID;Lx1/p;Ljava/util/Set;)V

    return-void
.end method

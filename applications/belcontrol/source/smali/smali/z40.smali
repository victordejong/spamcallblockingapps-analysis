.class public final Lz40;
.super Lf50;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz40$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lz40$a;)V
    .locals 2

    iget-object v0, p1, Lf50$a;->b:Ljava/util/UUID;

    iget-object v1, p1, Lf50$a;->c:Lc70;

    iget-object p1, p1, Lf50$a;->d:Ljava/util/Set;

    invoke-direct {p0, v0, v1, p1}, Lf50;-><init>(Ljava/util/UUID;Lc70;Ljava/util/Set;)V

    return-void
.end method

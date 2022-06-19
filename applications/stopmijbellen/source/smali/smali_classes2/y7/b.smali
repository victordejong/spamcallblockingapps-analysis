.class public Ly7/b;
.super Lu7/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu7/f<",
        "Ljava/lang/String;",
        "Ly7/a;",
        ">;"
    }
.end annotation


# instance fields
.field public h:Ly7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly7/c<",
            "Ljava/lang/String;",
            "Ly7/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    int-to-long v0, p1

    .line 1
    invoke-direct {p0, v0, v1}, Lu7/f;-><init>(J)V

    .line 2
    new-instance p1, Ly7/c;

    invoke-direct {p1}, Ly7/c;-><init>()V

    iput-object p1, p0, Ly7/b;->h:Ly7/c;

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    check-cast p3, Ly7/a;

    check-cast p4, Ly7/a;

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Ly7/b;->h:Ly7/c;

    .line 3
    iget-object p1, p1, Ly7/c;->a:Ljava/util/Hashtable;

    .line 4
    new-instance p4, Ljava/lang/ref/SoftReference;

    invoke-direct {p4, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1, p2, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/Reference;

    if-nez p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ly7/a;

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    int-to-long p1, p1

    return-wide p1
.end method

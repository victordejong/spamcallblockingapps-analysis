.class public final Lio/a/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/a/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/a/c$d<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lio/a/c$c;->a:Ljava/lang/Object;

    .line 79
    iput-object p2, p0, Lio/a/c$c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;II)Lio/a/c$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;II)",
            "Lio/a/c$d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lio/a/c$c;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 101
    new-instance v1, Lio/a/c$c;

    invoke-direct {v1, p1, p2}, Lio/a/c$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, p3, p0, v0, p4}, Lio/a/c$b;->a(Lio/a/c$d;ILio/a/c$d;II)Lio/a/c$d;

    move-result-object p1

    return-object p1

    .line 103
    :cond_0
    iget-object p3, p0, Lio/a/c$c;->a:Ljava/lang/Object;

    if-ne p3, p1, :cond_1

    .line 105
    new-instance p3, Lio/a/c$c;

    invoke-direct {p3, p1, p2}, Lio/a/c$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3

    .line 108
    :cond_1
    new-instance p4, Lio/a/c$a;

    iget-object v0, p0, Lio/a/c$c;->b:Ljava/lang/Object;

    invoke-direct {p4, p3, v0, p1, p2}, Lio/a/c$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p4
.end method

.method public final a(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)TV;"
        }
    .end annotation

    .line 89
    iget-object p2, p0, Lio/a/c$c;->a:Ljava/lang/Object;

    if-ne p2, p1, :cond_0

    .line 90
    iget-object p1, p0, Lio/a/c$c;->b:Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 114
    iget-object v1, p0, Lio/a/c$c;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/a/c$c;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Leaf(key=%s value=%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

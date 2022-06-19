.class public Ld2/o1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld2/o1$d;,
        Ld2/o1$c;,
        Ld2/o1$b;,
        Ld2/o1$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld2/o1$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld2/f4;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld2/o1;->b:Ljava/util/List;

    const-string v0, "version"

    .line 3
    invoke-virtual {p1, v0}, Ld2/f4;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ld2/o1;->a:I

    const-string v0, "streams"

    .line 4
    invoke-virtual {p1, v0}, Ld2/f4;->h(Ljava/lang/String;)Ld2/d4;

    move-result-object p1

    invoke-static {p1}, Ld2/e4;->o(Ld2/d4;)[Ld2/f4;

    move-result-object p1

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 6
    iget-object v3, p0, Ld2/o1;->b:Ljava/util/List;

    new-instance v4, Ld2/o1$a;

    invoke-direct {v4, v2}, Ld2/o1$a;-><init>(Ld2/f4;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

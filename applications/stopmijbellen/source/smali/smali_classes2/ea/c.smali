.class public Lea/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Ljava/util/Random;


# instance fields
.field public a:I

.field public b:Lea/b;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lea/c;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lea/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lea/b;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lea/c;->b:Lea/b;

    .line 5
    sget-object p1, Lea/c;->c:Ljava/util/Random;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    sput-object p1, Lea/c;->c:Ljava/util/Random;

    .line 7
    :cond_0
    sget-object p1, Lea/c;->c:Ljava/util/Random;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lea/c;->a:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lea/c;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lea/c;

    iget p1, p1, Lea/c;->a:I

    iget v1, p0, Lea/c;->a:I

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lea/c;->a:I

    return v0
.end method

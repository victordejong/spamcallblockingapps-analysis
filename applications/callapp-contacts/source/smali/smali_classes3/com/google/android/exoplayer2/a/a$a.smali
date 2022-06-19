.class public final Lcom/google/android/exoplayer2/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/al$a;

.field public b:Lcom/google/common/collect/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/v<",
            "Lcom/google/android/exoplayer2/source/r$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/google/android/exoplayer2/source/r$a;

.field public d:Lcom/google/android/exoplayer2/source/r$a;

.field public e:Lcom/google/android/exoplayer2/source/r$a;

.field private f:Lcom/google/common/collect/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/x<",
            "Lcom/google/android/exoplayer2/source/r$a;",
            "Lcom/google/android/exoplayer2/al;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/al$a;)V
    .locals 0

    .line 909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 910
    iput-object p1, p0, Lcom/google/android/exoplayer2/a/a$a;->a:Lcom/google/android/exoplayer2/al$a;

    .line 911
    invoke-static {}, Lcom/google/common/collect/v;->g()Lcom/google/common/collect/v;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/a/a$a;->b:Lcom/google/common/collect/v;

    .line 912
    invoke-static {}, Lcom/google/common/collect/x;->a()Lcom/google/common/collect/x;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/a/a$a;->f:Lcom/google/common/collect/x;

    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/ac;Lcom/google/common/collect/v;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/al$a;)Lcom/google/android/exoplayer2/source/r$a;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/ac;",
            "Lcom/google/common/collect/v<",
            "Lcom/google/android/exoplayer2/source/r$a;",
            ">;",
            "Lcom/google/android/exoplayer2/source/r$a;",
            "Lcom/google/android/exoplayer2/al$a;",
            ")",
            "Lcom/google/android/exoplayer2/source/r$a;"
        }
    .end annotation

    .line 1042
    invoke-interface {p0}, Lcom/google/android/exoplayer2/ac;->K()Lcom/google/android/exoplayer2/al;

    move-result-object v0

    .line 1043
    invoke-interface {p0}, Lcom/google/android/exoplayer2/ac;->x()I

    move-result v1

    .line 1046
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/al;->a(I)Ljava/lang/Object;

    move-result-object v2

    .line 1048
    :goto_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/ac;->C()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/al;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 1955
    :cond_1
    invoke-virtual {v0, v1, p3, v5}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    move-result-object v0

    .line 1053
    invoke-interface {p0}, Lcom/google/android/exoplayer2/ac;->A()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide v6

    .line 2532
    iget-wide v8, p3, Lcom/google/android/exoplayer2/al$a;->e:J

    sub-long/2addr v6, v8

    .line 1052
    invoke-virtual {v0, v6, v7}, Lcom/google/android/exoplayer2/al$a;->b(J)I

    move-result p3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p3, -0x1

    :goto_2
    const/4 v0, 0x0

    .line 1054
    :goto_3
    invoke-virtual {p1}, Lcom/google/common/collect/v;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1055
    invoke-virtual {p1, v0}, Lcom/google/common/collect/v;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/r$a;

    .line 1059
    invoke-interface {p0}, Lcom/google/android/exoplayer2/ac;->C()Z

    move-result v6

    .line 1060
    invoke-interface {p0}, Lcom/google/android/exoplayer2/ac;->D()I

    move-result v7

    .line 1061
    invoke-interface {p0}, Lcom/google/android/exoplayer2/ac;->E()I

    move-result v8

    move-object v4, v1

    move-object v5, v2

    move v9, p3

    .line 1056
    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/a/a$a;->a(Lcom/google/android/exoplayer2/source/r$a;Ljava/lang/Object;ZIII)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1066
    :cond_4
    invoke-virtual {p1}, Lcom/google/common/collect/v;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 1070
    invoke-interface {p0}, Lcom/google/android/exoplayer2/ac;->C()Z

    move-result v6

    .line 1071
    invoke-interface {p0}, Lcom/google/android/exoplayer2/ac;->D()I

    move-result v7

    .line 1072
    invoke-interface {p0}, Lcom/google/android/exoplayer2/ac;->E()I

    move-result v8

    move-object v4, p2

    move-object v5, v2

    move v9, p3

    .line 1067
    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/a/a$a;->a(Lcom/google/android/exoplayer2/source/r$a;Ljava/lang/Object;ZIII)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object p2

    :cond_5
    return-object v3
.end method

.method private a(Lcom/google/common/collect/x$a;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/al;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/x$a<",
            "Lcom/google/android/exoplayer2/source/r$a;",
            "Lcom/google/android/exoplayer2/al;",
            ">;",
            "Lcom/google/android/exoplayer2/source/r$a;",
            "Lcom/google/android/exoplayer2/al;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1026
    :cond_0
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/al;->c(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1027
    invoke-virtual {p1, p2, p3}, Lcom/google/common/collect/x$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x$a;

    return-void

    .line 1029
    :cond_1
    iget-object p3, p0, Lcom/google/android/exoplayer2/a/a$a;->f:Lcom/google/common/collect/x;

    invoke-virtual {p3, p2}, Lcom/google/common/collect/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/al;

    if-eqz p3, :cond_2

    .line 1031
    invoke-virtual {p1, p2, p3}, Lcom/google/common/collect/x$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x$a;

    :cond_2
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/source/r$a;Ljava/lang/Object;ZIII)Z
    .locals 1

    .line 1087
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/r$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 1091
    iget p1, p0, Lcom/google/android/exoplayer2/source/r$a;->b:I

    if-ne p1, p3, :cond_1

    iget p1, p0, Lcom/google/android/exoplayer2/source/r$a;->c:I

    if-eq p1, p4, :cond_2

    :cond_1
    if-nez p2, :cond_3

    iget p1, p0, Lcom/google/android/exoplayer2/source/r$a;->b:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    iget p0, p0, Lcom/google/android/exoplayer2/source/r$a;->e:I

    if-ne p0, p5, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/al;
    .locals 1

    .line 965
    iget-object v0, p0, Lcom/google/android/exoplayer2/a/a$a;->f:Lcom/google/common/collect/x;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/al;

    return-object p1
.end method

.method public final a(Lcom/google/android/exoplayer2/al;)V
    .locals 3

    .line 998
    invoke-static {}, Lcom/google/common/collect/x;->b()Lcom/google/common/collect/x$a;

    move-result-object v0

    .line 999
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a$a;->b:Lcom/google/common/collect/v;

    invoke-virtual {v1}, Lcom/google/common/collect/v;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1000
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a$a;->d:Lcom/google/android/exoplayer2/source/r$a;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/a/a$a;->a(Lcom/google/common/collect/x$a;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/al;)V

    .line 1001
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a$a;->e:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/a/a$a;->d:Lcom/google/android/exoplayer2/source/r$a;

    invoke-static {v1, v2}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1002
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a$a;->e:Lcom/google/android/exoplayer2/source/r$a;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/a/a$a;->a(Lcom/google/common/collect/x$a;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/al;)V

    .line 1004
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a$a;->c:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/a/a$a;->d:Lcom/google/android/exoplayer2/source/r$a;

    invoke-static {v1, v2}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a$a;->c:Lcom/google/android/exoplayer2/source/r$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/a/a$a;->e:Lcom/google/android/exoplayer2/source/r$a;

    .line 1005
    invoke-static {v1, v2}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1006
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a$a;->c:Lcom/google/android/exoplayer2/source/r$a;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/a/a$a;->a(Lcom/google/common/collect/x$a;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/al;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1009
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/a/a$a;->b:Lcom/google/common/collect/v;

    invoke-virtual {v2}, Lcom/google/common/collect/v;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1010
    iget-object v2, p0, Lcom/google/android/exoplayer2/a/a$a;->b:Lcom/google/common/collect/v;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/v;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/r$a;

    invoke-direct {p0, v0, v2, p1}, Lcom/google/android/exoplayer2/a/a$a;->a(Lcom/google/common/collect/x$a;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/al;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1012
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a$a;->b:Lcom/google/common/collect/v;

    iget-object v2, p0, Lcom/google/android/exoplayer2/a/a$a;->c:Lcom/google/android/exoplayer2/source/r$a;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/v;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1013
    iget-object v1, p0, Lcom/google/android/exoplayer2/a/a$a;->c:Lcom/google/android/exoplayer2/source/r$a;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/a/a$a;->a(Lcom/google/common/collect/x$a;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/al;)V

    .line 1016
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/google/common/collect/x$a;->a()Lcom/google/common/collect/x;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/a/a$a;->f:Lcom/google/common/collect/x;

    return-void
.end method

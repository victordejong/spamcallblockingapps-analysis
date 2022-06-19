.class public Lp71;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static e:Lp71;


# instance fields
.field public a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lq71$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lq71$b;

.field public c:Ln71;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lr71$a;->N:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->e()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_0

    shl-int v4, v5, v2

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto :goto_0

    :cond_0
    shr-int/lit8 v2, v0, 0x5

    and-int/2addr v2, v3

    invoke-static {}, Lq71$b;->values()[Lq71$b;

    move-result-object v3

    array-length v4, v3

    if-lt v2, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BlockerType requested is not compatible with application. Requested #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", while BlockerType only has "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " values."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lq71$b;->a:Lq71$b;

    goto :goto_1

    :cond_1
    aget-object v2, v3, v2

    :goto_1
    iput-object v2, p0, Lp71;->b:Lq71$b;

    iget-object v2, p0, Lp71;->b:Lq71$b;

    invoke-static {v2}, Lp71;->d(Lq71$b;)Ln71;

    move-result-object v2

    invoke-interface {v2}, Ln71;->d()Ljava/util/EnumSet;

    move-result-object v2

    invoke-static {}, Lq71$a;->values()[Lq71$a;

    move-result-object v3

    sget-object v4, Lq71$a;->c:Lq71$a;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    iput-object v4, p0, Lp71;->a:Ljava/util/EnumSet;

    array-length v4, v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_3

    aget-object v7, v3, v6

    invoke-virtual {v7}, Lq71$a;->g()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    shl-int v8, v5, v8

    and-int v9, v0, v8

    if-ne v9, v8, :cond_2

    invoke-virtual {v2, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lp71;->a:Ljava/util/EnumSet;

    invoke-virtual {v8, v7}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lp71;->a:Ljava/util/EnumSet;

    invoke-virtual {v2}, Ljava/util/EnumSet;->size()I

    move-result v2

    if-eq v2, v5, :cond_5

    shr-int/lit8 v0, v0, 0x9

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lp71;->d:Z

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Application capabilities restrict BlockMode to DEFAULT only which is not possible."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lq71$a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lp71;->b()Lp71;

    move-result-object v0

    iget-object v0, v0, Lp71;->a:Ljava/util/EnumSet;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    invoke-static {}, Lfa1;->t()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lr71$a;->Y:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lfa1;->t()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lfa1;->c()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    sget-object v1, Lq71$a;->d:Lq71$a;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public static b()Lp71;
    .locals 1

    sget-object v0, Lp71;->e:Lp71;

    if-nez v0, :cond_0

    new-instance v0, Lp71;

    invoke-direct {v0}, Lp71;-><init>()V

    sput-object v0, Lp71;->e:Lp71;

    :cond_0
    sget-object v0, Lp71;->e:Lp71;

    return-object v0
.end method

.method public static c()Ln71;
    .locals 2

    invoke-static {}, Lp71;->b()Lp71;

    move-result-object v0

    iget-object v0, v0, Lp71;->c:Ln71;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lp71;->e()Lq71$b;

    move-result-object v0

    invoke-static {v0}, Lp71;->d(Lq71$b;)Ln71;

    move-result-object v0

    invoke-static {}, Lp71;->b()Lp71;

    move-result-object v1

    iput-object v0, v1, Lp71;->c:Ln71;

    return-object v0
.end method

.method public static d(Lq71$b;)Ln71;
    .locals 2

    invoke-static {}, Lc91;->c()Lc91;

    move-result-object v0

    invoke-virtual {v0}, Lc91;->e()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/EnumSet;->toArray()[Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Lq71$b;

    :cond_0
    sget-object v0, Lp71$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    new-instance p0, Lm71;

    invoke-direct {p0}, Lm71;-><init>()V

    :goto_0
    if-nez p0, :cond_2

    new-instance p0, Ll71;

    invoke-direct {p0}, Ll71;-><init>()V

    :cond_2
    return-object p0
.end method

.method public static e()Lq71$b;
    .locals 1

    invoke-static {}, Lp71;->b()Lp71;

    move-result-object v0

    iget-object v0, v0, Lp71;->b:Lq71$b;

    return-object v0
.end method

.method public static f(Lq71$a;)Z
    .locals 1

    invoke-static {}, Lp71;->a()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static g()Z
    .locals 1

    invoke-static {}, Lp71;->b()Lp71;

    move-result-object v0

    iget-boolean v0, v0, Lp71;->d:Z

    return v0
.end method

.class public abstract Lc91;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lc91;

.field public static final b:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lf91;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ld91;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Le91;

    aput-object v2, v0, v1

    sput-object v0, Lc91;->b:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lc91;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    sget-object v0, Lr71$a;->L:Lr71$a;

    invoke-virtual {v0, p0}, Lr71$a;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    sput-object p0, Lc91;->a:Lc91;

    return-void
.end method

.method public static c()Lc91;
    .locals 5

    sget-object v0, Lc91;->a:Lc91;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lr71$a;->L:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc91;

    sput-object v0, Lc91;->a:Lc91;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_1
    :goto_0
    sget-object v0, Lc91;->a:Lc91;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lc91;->b:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc91;

    invoke-virtual {v3}, Lc91;->f()Z

    move-result v4

    if-eqz v4, :cond_3

    sput-object v3, Lc91;->a:Lc91;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v3

    :catchall_1
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Lc91$a;

    invoke-direct {v0}, Lc91$a;-><init>()V

    sput-object v0, Lc91;->a:Lc91;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 0

    return p1
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public e()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lq71$b;",
            ">;"
        }
    .end annotation

    const-class v0, Lq71$b;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract f()Z
.end method

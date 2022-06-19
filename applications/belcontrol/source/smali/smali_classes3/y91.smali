.class public Ly91;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lx91;


# static fields
.field public static a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lw91$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-object v0, Lw91$a;->a:Lw91$a;

    const/4 v1, 0x6

    new-array v1, v1, [Lw91$a;

    sget-object v2, Lw91$a;->b:Lw91$a;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lw91$a;->c:Lw91$a;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lw91$a;->h:Lw91$a;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lw91$a;->d:Lw91$a;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lw91$a;->f:Lw91$a;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lw91$a;->g:Lw91$a;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Ly91;->a:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lw91$a;Ln91$a;Landroid/os/Bundle;)V
    .locals 0

    sget-object p1, Ly91;->a:Ljava/util/EnumSet;

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lz81;

    invoke-direct {p1}, Lz81;-><init>()V

    invoke-virtual {p1, p2, p3}, Lz81;->G(Lw91$a;Ln91$a;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method

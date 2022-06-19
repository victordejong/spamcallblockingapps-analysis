.class public Lhf1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lof1$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhf1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lof1$d<",
        "Lgf1;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lvf1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvf1<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lvf1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvf1<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lvf1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvf1<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lvf1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvf1<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lvf1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvf1<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const-string v0, "b"

    invoke-static {}, Lvf1;->a()Lvf1;

    move-result-object v1

    invoke-static {}, Lvf1;->a()Lvf1;

    move-result-object v2

    invoke-static {}, Lvf1;->a()Lvf1;

    move-result-object v3

    invoke-static {}, Lvf1;->a()Lvf1;

    move-result-object v4

    invoke-static {}, Lvf1;->a()Lvf1;

    move-result-object v5

    :try_start_0
    const-class v6, Lgf1;

    const-string v7, "c"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const-string v9, "d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Class;

    const-class v12, Ljava/util/Map;

    aput-object v12, v10, v11

    const-class v12, Landroid/media/MediaPlayer;

    aput-object v12, v10, v8

    const/4 v12, 0x2

    const-class v13, Landroid/view/View;

    aput-object v13, v10, v12

    invoke-virtual {v6, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const-string v10, "a"

    new-array v12, v8, [Ljava/lang/Class;

    const-class v13, Landroid/view/View;

    aput-object v13, v12, v11

    invoke-virtual {v6, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    new-array v12, v8, [Ljava/lang/Class;

    const-class v13, Ljava/util/Map;

    aput-object v13, v12, v11

    invoke-virtual {v6, v0, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    new-array v8, v8, [Ljava/lang/Class;

    const-class v13, Ljava/util/Map;

    aput-object v13, v8, v11

    invoke-virtual {v6, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v7}, Lvf1;->d(Ljava/lang/Object;)Lvf1;

    move-result-object v1

    invoke-static {v9}, Lvf1;->d(Ljava/lang/Object;)Lvf1;

    move-result-object v2

    invoke-static {v10}, Lvf1;->d(Ljava/lang/Object;)Lvf1;

    move-result-object v3

    invoke-static {v12}, Lvf1;->d(Ljava/lang/Object;)Lvf1;

    move-result-object v5

    invoke-static {v0}, Lvf1;->d(Ljava/lang/Object;)Lvf1;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Luf1;->a(Ljava/lang/Exception;)V

    :goto_0
    sput-object v1, Lhf1$a;->a:Lvf1;

    sput-object v2, Lhf1$a;->b:Lvf1;

    sput-object v3, Lhf1$a;->c:Lvf1;

    sput-object v5, Lhf1$a;->d:Lvf1;

    sput-object v4, Lhf1$a;->e:Lvf1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Method;)Z
    .locals 1

    invoke-static {p1}, Lvf1;->d(Ljava/lang/Object;)Lvf1;

    move-result-object p1

    sget-object v0, Lhf1$a;->a:Lvf1;

    invoke-virtual {v0, p1}, Lvf1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lhf1$a;->b:Lvf1;

    invoke-virtual {v0, p1}, Lvf1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lhf1$a;->c:Lvf1;

    invoke-virtual {v0, p1}, Lvf1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lhf1$a;->d:Lvf1;

    invoke-virtual {v0, p1}, Lvf1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lhf1$a;->e:Lvf1;

    invoke-virtual {v0, p1}, Lvf1;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lgf1;",
            ">;"
        }
    .end annotation

    const-class v0, Lgf1;

    return-object v0
.end method

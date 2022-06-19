.class public Lsf1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lof1$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsf1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lof1$d<",
        "Lrf1;",
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


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lvf1;->a()Lvf1;

    move-result-object v0

    :try_start_0
    const-class v1, Lrf1;

    const-string v2, "a"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1}, Lvf1;->d(Ljava/lang/Object;)Lvf1;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Luf1;->a(Ljava/lang/Exception;)V

    :goto_0
    sput-object v0, Lsf1$a;->a:Lvf1;

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

    sget-object v0, Lsf1$a;->a:Lvf1;

    invoke-static {p1}, Lvf1;->d(Ljava/lang/Object;)Lvf1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lvf1;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lrf1;",
            ">;"
        }
    .end annotation

    const-class v0, Lrf1;

    return-object v0
.end method

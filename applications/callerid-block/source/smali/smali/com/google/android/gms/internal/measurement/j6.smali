.class final Lcom/google/android/gms/internal/measurement/j6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/measurement/d7;


# static fields
.field private static final b:Lcom/google/android/gms/internal/measurement/o6;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/o6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/h6;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/h6;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/j6;->b:Lcom/google/android/gms/internal/measurement/o6;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/measurement/i6;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/o6;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/m5;->c()Lcom/google/android/gms/internal/measurement/m5;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    :try_start_0
    const-string v2, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getInstance"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/o6;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v2, Lcom/google/android/gms/internal/measurement/j6;->b:Lcom/google/android/gms/internal/measurement/o6;

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/i6;-><init>([Lcom/google/android/gms/internal/measurement/o6;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "messageInfoFactory"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/x5;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/j6;->a:Lcom/google/android/gms/internal/measurement/o6;

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/measurement/n6;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n6;->c()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final d(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/c7;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/measurement/c7<",
            "TT;>;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/measurement/q5;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/e7;->A(Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/j6;->a:Lcom/google/android/gms/internal/measurement/o6;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/measurement/o6;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/n6;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/n6;->zza()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/e7;->c()Lcom/google/android/gms/internal/measurement/p7;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/h5;->a()Lcom/google/android/gms/internal/measurement/f5;

    move-result-object v0

    :goto_0
    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/n6;->b()Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/v6;->i(Lcom/google/android/gms/internal/measurement/p7;Lcom/google/android/gms/internal/measurement/f5;Lcom/google/android/gms/internal/measurement/q6;)Lcom/google/android/gms/internal/measurement/v6;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/e7;->a()Lcom/google/android/gms/internal/measurement/p7;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/h5;->b()Lcom/google/android/gms/internal/measurement/f5;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/j6;->a(Lcom/google/android/gms/internal/measurement/n6;)Z

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/x6;->b()Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/f6;->d()Lcom/google/android/gms/internal/measurement/f6;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/measurement/e7;->c()Lcom/google/android/gms/internal/measurement/p7;

    move-result-object v6

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/h5;->a()Lcom/google/android/gms/internal/measurement/f5;

    move-result-object v7

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/m6;->b()Lcom/google/android/gms/internal/measurement/l6;

    move-result-object v8

    goto :goto_3

    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/j6;->a(Lcom/google/android/gms/internal/measurement/n6;)Z

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/x6;->a()Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/f6;->c()Lcom/google/android/gms/internal/measurement/f6;

    move-result-object v5

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/e7;->a()Lcom/google/android/gms/internal/measurement/p7;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/measurement/h5;->b()Lcom/google/android/gms/internal/measurement/f5;

    move-result-object v7

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/e7;->b()Lcom/google/android/gms/internal/measurement/p7;

    move-result-object v6

    const/4 v7, 0x0

    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/m6;->a()Lcom/google/android/gms/internal/measurement/l6;

    move-result-object v8

    :goto_3
    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/measurement/t6;->E(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/n6;Lcom/google/android/gms/internal/measurement/w6;Lcom/google/android/gms/internal/measurement/f6;Lcom/google/android/gms/internal/measurement/p7;Lcom/google/android/gms/internal/measurement/f5;Lcom/google/android/gms/internal/measurement/l6;)Lcom/google/android/gms/internal/measurement/t6;

    move-result-object p1

    return-object p1
.end method

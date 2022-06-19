.class final Lcom/google/android/gms/internal/measurement/fa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/gg;


# static fields
.field private static final b:Lcom/google/android/gms/internal/measurement/fk;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/fk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/google/android/gms/internal/measurement/fd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/fd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/fa;->b:Lcom/google/android/gms/internal/measurement/fk;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 1
    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/fc;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/fk;

    const/4 v2, 0x0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ee;->a()Lcom/google/android/gms/internal/measurement/ee;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/fa;->a()Lcom/google/android/gms/internal/measurement/fk;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/fc;-><init>([Lcom/google/android/gms/internal/measurement/fk;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/fa;-><init>(Lcom/google/android/gms/internal/measurement/fk;)V

    .line 5
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/fk;)V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string/jumbo v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/ef;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/fk;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->a:Lcom/google/android/gms/internal/measurement/fk;

    .line 8
    return-void
.end method

.method private static a()Lcom/google/android/gms/internal/measurement/fk;
    .locals 3

    .prologue
    .line 54
    :try_start_0
    const-string/jumbo v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 55
    const-string/jumbo v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/fk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/gms/internal/measurement/fa;->b:Lcom/google/android/gms/internal/measurement/fk;

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/internal/measurement/fl;)Z
    .locals 2

    .prologue
    .line 53
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/fl;->a()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/measurement/ed$e;->h:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/gd;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/measurement/gd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/gf;->a(Ljava/lang/Class;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->a:Lcom/google/android/gms/internal/measurement/fk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/fk;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/fl;

    move-result-object v1

    .line 11
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/fl;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    const-class v0, Lcom/google/android/gms/internal/measurement/ed;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/gf;->c()Lcom/google/android/gms/internal/measurement/gv;

    move-result-object v0

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ds;->a()Lcom/google/android/gms/internal/measurement/dr;

    move-result-object v2

    .line 15
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/fl;->c()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v1

    .line 16
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/ft;->a(Lcom/google/android/gms/internal/measurement/gv;Lcom/google/android/gms/internal/measurement/dr;Lcom/google/android/gms/internal/measurement/fn;)Lcom/google/android/gms/internal/measurement/ft;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    .line 17
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/gf;->a()Lcom/google/android/gms/internal/measurement/gv;

    move-result-object v0

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ds;->b()Lcom/google/android/gms/internal/measurement/dr;

    move-result-object v2

    .line 19
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/fl;->c()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v1

    .line 20
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/ft;->a(Lcom/google/android/gms/internal/measurement/gv;Lcom/google/android/gms/internal/measurement/dr;Lcom/google/android/gms/internal/measurement/fn;)Lcom/google/android/gms/internal/measurement/ft;

    move-result-object v0

    goto :goto_0

    .line 22
    :cond_1
    const-class v0, Lcom/google/android/gms/internal/measurement/ed;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/fa;->a(Lcom/google/android/gms/internal/measurement/fl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fy;->b()Lcom/google/android/gms/internal/measurement/fw;

    move-result-object v2

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ex;->b()Lcom/google/android/gms/internal/measurement/ex;

    move-result-object v3

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/measurement/gf;->c()Lcom/google/android/gms/internal/measurement/gv;

    move-result-object v4

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ds;->a()Lcom/google/android/gms/internal/measurement/dr;

    move-result-object v5

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fi;->b()Lcom/google/android/gms/internal/measurement/fg;

    move-result-object v6

    move-object v0, p1

    .line 30
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/fl;Lcom/google/android/gms/internal/measurement/fw;Lcom/google/android/gms/internal/measurement/ex;Lcom/google/android/gms/internal/measurement/gv;Lcom/google/android/gms/internal/measurement/dr;Lcom/google/android/gms/internal/measurement/fg;)Lcom/google/android/gms/internal/measurement/fr;

    move-result-object v0

    goto :goto_0

    .line 32
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fy;->b()Lcom/google/android/gms/internal/measurement/fw;

    move-result-object v2

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ex;->b()Lcom/google/android/gms/internal/measurement/ex;

    move-result-object v3

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/measurement/gf;->c()Lcom/google/android/gms/internal/measurement/gv;

    move-result-object v4

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fi;->b()Lcom/google/android/gms/internal/measurement/fg;

    move-result-object v6

    move-object v0, p1

    .line 36
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/fl;Lcom/google/android/gms/internal/measurement/fw;Lcom/google/android/gms/internal/measurement/ex;Lcom/google/android/gms/internal/measurement/gv;Lcom/google/android/gms/internal/measurement/dr;Lcom/google/android/gms/internal/measurement/fg;)Lcom/google/android/gms/internal/measurement/fr;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_3
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/fa;->a(Lcom/google/android/gms/internal/measurement/fl;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fy;->a()Lcom/google/android/gms/internal/measurement/fw;

    move-result-object v2

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ex;->a()Lcom/google/android/gms/internal/measurement/ex;

    move-result-object v3

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/measurement/gf;->a()Lcom/google/android/gms/internal/measurement/gv;

    move-result-object v4

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ds;->b()Lcom/google/android/gms/internal/measurement/dr;

    move-result-object v5

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fi;->a()Lcom/google/android/gms/internal/measurement/fg;

    move-result-object v6

    move-object v0, p1

    .line 45
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/fl;Lcom/google/android/gms/internal/measurement/fw;Lcom/google/android/gms/internal/measurement/ex;Lcom/google/android/gms/internal/measurement/gv;Lcom/google/android/gms/internal/measurement/dr;Lcom/google/android/gms/internal/measurement/fg;)Lcom/google/android/gms/internal/measurement/fr;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fy;->a()Lcom/google/android/gms/internal/measurement/fw;

    move-result-object v2

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ex;->a()Lcom/google/android/gms/internal/measurement/ex;

    move-result-object v3

    .line 49
    invoke-static {}, Lcom/google/android/gms/internal/measurement/gf;->b()Lcom/google/android/gms/internal/measurement/gv;

    move-result-object v4

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fi;->a()Lcom/google/android/gms/internal/measurement/fg;

    move-result-object v6

    move-object v0, p1

    .line 51
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/fl;Lcom/google/android/gms/internal/measurement/fw;Lcom/google/android/gms/internal/measurement/ex;Lcom/google/android/gms/internal/measurement/gv;Lcom/google/android/gms/internal/measurement/dr;Lcom/google/android/gms/internal/measurement/fg;)Lcom/google/android/gms/internal/measurement/fr;

    move-result-object v0

    goto/16 :goto_0
.end method

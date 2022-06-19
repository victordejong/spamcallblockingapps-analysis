.class final Lcom/google/android/gms/internal/measurement/hh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ib;


# static fields
.field private static final b:Lcom/google/android/gms/internal/measurement/hm;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/hm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/hf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/hf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/hh;->b:Lcom/google/android/gms/internal/measurement/hm;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/measurement/hg;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/hm;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/gh;->a()Lcom/google/android/gms/internal/measurement/gh;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    :try_start_0
    const-string v2, "com.google.protobuf.DescriptorMessageInfoFactory"

    .line 1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getInstance"

    new-array v5, v3, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/hm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    sget-object v2, Lcom/google/android/gms/internal/measurement/hh;->b:Lcom/google/android/gms/internal/measurement/hm;

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/hg;-><init>([Lcom/google/android/gms/internal/measurement/hm;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "messageInfoFactory"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/gt;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/hh;->a:Lcom/google/android/gms/internal/measurement/hm;

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/measurement/hl;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/hl;->c()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ia;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/measurement/ia<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/ic;->a(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hh;->a:Lcom/google/android/gms/internal/measurement/hm;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/hm;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/hl;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/hl;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/measurement/gl;

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ic;->c()Lcom/google/android/gms/internal/measurement/im;

    move-result-object p1

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/measurement/gb;->a()Lcom/google/android/gms/internal/measurement/fz;

    move-result-object v0

    .line 27
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/hl;->b()Lcom/google/android/gms/internal/measurement/ho;

    move-result-object v1

    .line 28
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ht;->a(Lcom/google/android/gms/internal/measurement/im;Lcom/google/android/gms/internal/measurement/fz;Lcom/google/android/gms/internal/measurement/ho;)Lcom/google/android/gms/internal/measurement/ht;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ic;->a()Lcom/google/android/gms/internal/measurement/im;

    move-result-object p1

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/measurement/gb;->b()Lcom/google/android/gms/internal/measurement/fz;

    move-result-object v0

    .line 30
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/hl;->b()Lcom/google/android/gms/internal/measurement/ho;

    move-result-object v1

    .line 31
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ht;->a(Lcom/google/android/gms/internal/measurement/im;Lcom/google/android/gms/internal/measurement/fz;Lcom/google/android/gms/internal/measurement/ho;)Lcom/google/android/gms/internal/measurement/ht;

    move-result-object p1

    return-object p1

    :cond_1
    const-class v0, Lcom/google/android/gms/internal/measurement/gl;

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/hh;->a(Lcom/google/android/gms/internal/measurement/hl;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hv;->b()Lcom/google/android/gms/internal/measurement/hu;

    move-result-object v2

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hd;->b()Lcom/google/android/gms/internal/measurement/hd;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ic;->c()Lcom/google/android/gms/internal/measurement/im;

    move-result-object v4

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/gb;->a()Lcom/google/android/gms/internal/measurement/fz;

    move-result-object v5

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hk;->b()Lcom/google/android/gms/internal/measurement/hj;

    move-result-object v6

    .line 10
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Lcom/google/android/gms/internal/measurement/hl;Lcom/google/android/gms/internal/measurement/hu;Lcom/google/android/gms/internal/measurement/hd;Lcom/google/android/gms/internal/measurement/im;Lcom/google/android/gms/internal/measurement/fz;Lcom/google/android/gms/internal/measurement/hj;)Lcom/google/android/gms/internal/measurement/hr;

    move-result-object p1

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hv;->b()Lcom/google/android/gms/internal/measurement/hu;

    move-result-object v2

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hd;->b()Lcom/google/android/gms/internal/measurement/hd;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ic;->c()Lcom/google/android/gms/internal/measurement/im;

    move-result-object v4

    const/4 v5, 0x0

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hk;->b()Lcom/google/android/gms/internal/measurement/hj;

    move-result-object v6

    .line 14
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Lcom/google/android/gms/internal/measurement/hl;Lcom/google/android/gms/internal/measurement/hu;Lcom/google/android/gms/internal/measurement/hd;Lcom/google/android/gms/internal/measurement/im;Lcom/google/android/gms/internal/measurement/fz;Lcom/google/android/gms/internal/measurement/hj;)Lcom/google/android/gms/internal/measurement/hr;

    move-result-object p1

    goto :goto_0

    .line 15
    :cond_3
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/hh;->a(Lcom/google/android/gms/internal/measurement/hl;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hv;->a()Lcom/google/android/gms/internal/measurement/hu;

    move-result-object v2

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hd;->a()Lcom/google/android/gms/internal/measurement/hd;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ic;->a()Lcom/google/android/gms/internal/measurement/im;

    move-result-object v4

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/measurement/gb;->b()Lcom/google/android/gms/internal/measurement/fz;

    move-result-object v5

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hk;->a()Lcom/google/android/gms/internal/measurement/hj;

    move-result-object v6

    .line 20
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Lcom/google/android/gms/internal/measurement/hl;Lcom/google/android/gms/internal/measurement/hu;Lcom/google/android/gms/internal/measurement/hd;Lcom/google/android/gms/internal/measurement/im;Lcom/google/android/gms/internal/measurement/fz;Lcom/google/android/gms/internal/measurement/hj;)Lcom/google/android/gms/internal/measurement/hr;

    move-result-object p1

    goto :goto_0

    .line 21
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hv;->a()Lcom/google/android/gms/internal/measurement/hu;

    move-result-object v2

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hd;->a()Lcom/google/android/gms/internal/measurement/hd;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ic;->b()Lcom/google/android/gms/internal/measurement/im;

    move-result-object v4

    const/4 v5, 0x0

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hk;->a()Lcom/google/android/gms/internal/measurement/hj;

    move-result-object v6

    .line 24
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Lcom/google/android/gms/internal/measurement/hl;Lcom/google/android/gms/internal/measurement/hu;Lcom/google/android/gms/internal/measurement/hd;Lcom/google/android/gms/internal/measurement/im;Lcom/google/android/gms/internal/measurement/fz;Lcom/google/android/gms/internal/measurement/hj;)Lcom/google/android/gms/internal/measurement/hr;

    move-result-object p1

    :goto_0
    return-object p1
.end method

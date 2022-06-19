.class final Lcom/google/android/gms/internal/ads/ddt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dfc;


# static fields
.field private static final b:Lcom/google/android/gms/internal/ads/ded;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ded;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/google/android/gms/internal/ads/ddw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ddw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ddt;->b:Lcom/google/android/gms/internal/ads/ded;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 1
    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/ddv;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/ded;

    const/4 v2, 0x0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/dcu;->a()Lcom/google/android/gms/internal/ads/dcu;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/android/gms/internal/ads/ddt;->a()Lcom/google/android/gms/internal/ads/ded;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ddv;-><init>([Lcom/google/android/gms/internal/ads/ded;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ddt;-><init>(Lcom/google/android/gms/internal/ads/ded;)V

    .line 5
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/ded;)V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string/jumbo v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/dcz;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ded;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ddt;->a:Lcom/google/android/gms/internal/ads/ded;

    .line 8
    return-void
.end method

.method private static a()Lcom/google/android/gms/internal/ads/ded;
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

    check-cast v0, Lcom/google/android/gms/internal/ads/ded;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/gms/internal/ads/ddt;->b:Lcom/google/android/gms/internal/ads/ded;

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/dee;)Z
    .locals 2

    .prologue
    .line 53
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/dee;->a()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/ads/dcw$f;->h:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/dfd;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/ads/dfd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dff;->a(Ljava/lang/Class;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ddt;->a:Lcom/google/android/gms/internal/ads/ded;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ded;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/dee;

    move-result-object v1

    .line 11
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dee;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    const-class v0, Lcom/google/android/gms/internal/ads/dcw;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/dff;->c()Lcom/google/android/gms/internal/ads/dfv;

    move-result-object v0

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/dcm;->a()Lcom/google/android/gms/internal/ads/dck;

    move-result-object v2

    .line 15
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dee;->c()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v1

    .line 16
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/dem;->a(Lcom/google/android/gms/internal/ads/dfv;Lcom/google/android/gms/internal/ads/dck;Lcom/google/android/gms/internal/ads/deg;)Lcom/google/android/gms/internal/ads/dem;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    .line 17
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/dff;->a()Lcom/google/android/gms/internal/ads/dfv;

    move-result-object v0

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/dcm;->b()Lcom/google/android/gms/internal/ads/dck;

    move-result-object v2

    .line 19
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dee;->c()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v1

    .line 20
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/dem;->a(Lcom/google/android/gms/internal/ads/dfv;Lcom/google/android/gms/internal/ads/dck;Lcom/google/android/gms/internal/ads/deg;)Lcom/google/android/gms/internal/ads/dem;

    move-result-object v0

    goto :goto_0

    .line 22
    :cond_1
    const-class v0, Lcom/google/android/gms/internal/ads/dcw;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ddt;->a(Lcom/google/android/gms/internal/ads/dee;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/deq;->b()Lcom/google/android/gms/internal/ads/deo;

    move-result-object v2

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/ddp;->b()Lcom/google/android/gms/internal/ads/ddp;

    move-result-object v3

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/dff;->c()Lcom/google/android/gms/internal/ads/dfv;

    move-result-object v4

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/dcm;->a()Lcom/google/android/gms/internal/ads/dck;

    move-result-object v5

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/deb;->b()Lcom/google/android/gms/internal/ads/ddz;

    move-result-object v6

    move-object v0, p1

    .line 30
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dee;Lcom/google/android/gms/internal/ads/deo;Lcom/google/android/gms/internal/ads/ddp;Lcom/google/android/gms/internal/ads/dfv;Lcom/google/android/gms/internal/ads/dck;Lcom/google/android/gms/internal/ads/ddz;)Lcom/google/android/gms/internal/ads/dek;

    move-result-object v0

    goto :goto_0

    .line 32
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/deq;->b()Lcom/google/android/gms/internal/ads/deo;

    move-result-object v2

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/ddp;->b()Lcom/google/android/gms/internal/ads/ddp;

    move-result-object v3

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/dff;->c()Lcom/google/android/gms/internal/ads/dfv;

    move-result-object v4

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/deb;->b()Lcom/google/android/gms/internal/ads/ddz;

    move-result-object v6

    move-object v0, p1

    .line 36
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dee;Lcom/google/android/gms/internal/ads/deo;Lcom/google/android/gms/internal/ads/ddp;Lcom/google/android/gms/internal/ads/dfv;Lcom/google/android/gms/internal/ads/dck;Lcom/google/android/gms/internal/ads/ddz;)Lcom/google/android/gms/internal/ads/dek;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ddt;->a(Lcom/google/android/gms/internal/ads/dee;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/ads/deq;->a()Lcom/google/android/gms/internal/ads/deo;

    move-result-object v2

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/ddp;->a()Lcom/google/android/gms/internal/ads/ddp;

    move-result-object v3

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/ads/dff;->a()Lcom/google/android/gms/internal/ads/dfv;

    move-result-object v4

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/ads/dcm;->b()Lcom/google/android/gms/internal/ads/dck;

    move-result-object v5

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/ads/deb;->a()Lcom/google/android/gms/internal/ads/ddz;

    move-result-object v6

    move-object v0, p1

    .line 45
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dee;Lcom/google/android/gms/internal/ads/deo;Lcom/google/android/gms/internal/ads/ddp;Lcom/google/android/gms/internal/ads/dfv;Lcom/google/android/gms/internal/ads/dck;Lcom/google/android/gms/internal/ads/ddz;)Lcom/google/android/gms/internal/ads/dek;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/deq;->a()Lcom/google/android/gms/internal/ads/deo;

    move-result-object v2

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/ads/ddp;->a()Lcom/google/android/gms/internal/ads/ddp;

    move-result-object v3

    .line 49
    invoke-static {}, Lcom/google/android/gms/internal/ads/dff;->b()Lcom/google/android/gms/internal/ads/dfv;

    move-result-object v4

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/ads/deb;->a()Lcom/google/android/gms/internal/ads/ddz;

    move-result-object v6

    move-object v0, p1

    .line 51
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/dek;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/dee;Lcom/google/android/gms/internal/ads/deo;Lcom/google/android/gms/internal/ads/ddp;Lcom/google/android/gms/internal/ads/dfv;Lcom/google/android/gms/internal/ads/dck;Lcom/google/android/gms/internal/ads/ddz;)Lcom/google/android/gms/internal/ads/dek;

    move-result-object v0

    goto/16 :goto_0
.end method

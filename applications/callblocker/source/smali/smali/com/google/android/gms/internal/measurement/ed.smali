.class public abstract Lcom/google/android/gms/internal/measurement/ed;
.super Lcom/google/android/gms/internal/measurement/ck;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/ed$a;,
        Lcom/google/android/gms/internal/measurement/ed$f;,
        Lcom/google/android/gms/internal/measurement/ed$c;,
        Lcom/google/android/gms/internal/measurement/ed$d;,
        Lcom/google/android/gms/internal/measurement/ed$b;,
        Lcom/google/android/gms/internal/measurement/ed$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/ed",
        "<TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/ed$b",
        "<TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/measurement/ck",
        "<TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/measurement/ed",
            "<**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzb:Lcom/google/android/gms/internal/measurement/gx;

.field private zzc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/ed;->zzd:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ck;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/gx;->a()Lcom/google/android/gms/internal/measurement/gx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/ed;->zzb:Lcom/google/android/gms/internal/measurement/gx;

    .line 3
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ed;->zzc:I

    return-void
.end method

.method static a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ed;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/measurement/ed",
            "<**>;>(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/measurement/ed;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    .line 36
    if-nez v0, :cond_0

    .line 37
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    sget-object v0, Lcom/google/android/gms/internal/measurement/ed;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    .line 42
    :cond_0
    if-nez v0, :cond_2

    .line 43
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    .line 44
    sget v1, Lcom/google/android/gms/internal/measurement/ed$e;->f:I

    .line 45
    invoke-virtual {v0, v1, v3, v3}, Lcom/google/android/gms/internal/measurement/ed;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    .line 48
    if-nez v0, :cond_1

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Class initialization cannot fail."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 50
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/measurement/ed;->zzd:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_2
    return-object v0
.end method

.method protected static a(Lcom/google/android/gms/internal/measurement/el;)Lcom/google/android/gms/internal/measurement/el;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/el",
            "<TE;>;)",
            "Lcom/google/android/gms/internal/measurement/el",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/el;->size()I

    move-result v0

    .line 88
    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 89
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/measurement/el;->a(I)Lcom/google/android/gms/internal/measurement/el;

    move-result-object v0

    return-object v0

    .line 88
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected static a(Lcom/google/android/gms/internal/measurement/em;)Lcom/google/android/gms/internal/measurement/em;
    .locals 1

    .prologue
    .line 81
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/em;->size()I

    move-result v0

    .line 83
    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 84
    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/measurement/em;->c(I)Lcom/google/android/gms/internal/measurement/em;

    move-result-object v0

    return-object v0

    .line 83
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected static a(Lcom/google/android/gms/internal/measurement/fn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/google/android/gms/internal/measurement/gb;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/gb;-><init>(Lcom/google/android/gms/internal/measurement/fn;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 55
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 58
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 59
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 60
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 61
    :cond_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 62
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 63
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static a(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/ed;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/measurement/ed",
            "<**>;>(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lcom/google/android/gms/internal/measurement/ed;->zzd:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method protected static final a(Lcom/google/android/gms/internal/measurement/ed;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/measurement/ed",
            "<TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    sget v0, Lcom/google/android/gms/internal/measurement/ed$e;->a:I

    .line 66
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/ed;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 68
    if-ne v0, v2, :cond_0

    move v0, v2

    .line 78
    :goto_0
    return v0

    .line 70
    :cond_0
    if-nez v0, :cond_1

    .line 71
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fz;->a()Lcom/google/android/gms/internal/measurement/fz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/fz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/gd;->d(Ljava/lang/Object;)Z

    move-result v2

    .line 73
    if-eqz p1, :cond_2

    .line 74
    sget v3, Lcom/google/android/gms/internal/measurement/ed$e;->b:I

    .line 75
    if-eqz v2, :cond_3

    move-object v0, p0

    .line 77
    :goto_1
    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/gms/internal/measurement/ed;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move v0, v2

    .line 78
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 75
    goto :goto_1
.end method

.method protected static ao()Lcom/google/android/gms/internal/measurement/ej;
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/google/android/gms/internal/measurement/eg;->d()Lcom/google/android/gms/internal/measurement/eg;

    move-result-object v0

    return-object v0
.end method

.method protected static ap()Lcom/google/android/gms/internal/measurement/em;
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fb;->d()Lcom/google/android/gms/internal/measurement/fb;

    move-result-object v0

    return-object v0
.end method

.method protected static aq()Lcom/google/android/gms/internal/measurement/el;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/measurement/el",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Lcom/google/android/gms/internal/measurement/gc;->d()Lcom/google/android/gms/internal/measurement/gc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/zzes;)V
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fz;->a()Lcom/google/android/gms/internal/measurement/fz;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/fz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v0

    .line 30
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/do;->a(Lcom/google/android/gms/internal/measurement/zzes;)Lcom/google/android/gms/internal/measurement/do;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/gd;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/hr;)V

    .line 31
    return-void
.end method

.method final aj()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ed;->zzc:I

    return v0
.end method

.method protected final ak()Lcom/google/android/gms/internal/measurement/ed$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/gms/internal/measurement/ed",
            "<TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/gms/internal/measurement/ed$b",
            "<TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 16
    sget v0, Lcom/google/android/gms/internal/measurement/ed$e;->e:I

    .line 17
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/ed;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Lcom/google/android/gms/internal/measurement/ed$b;

    return-object v0
.end method

.method public final al()Z
    .locals 1

    .prologue
    .line 19
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/ed;->a(Lcom/google/android/gms/internal/measurement/ed;Z)Z

    move-result v0

    return v0
.end method

.method public final am()Lcom/google/android/gms/internal/measurement/ed$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 20
    sget v0, Lcom/google/android/gms/internal/measurement/ed$e;->e:I

    .line 21
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/ed;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/android/gms/internal/measurement/ed$b;

    .line 23
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/ed$b;->a(Lcom/google/android/gms/internal/measurement/ed;)Lcom/google/android/gms/internal/measurement/ed$b;

    .line 24
    return-object v0
.end method

.method public final an()I
    .locals 2

    .prologue
    .line 32
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ed;->zzc:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fz;->a()Lcom/google/android/gms/internal/measurement/fz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/fz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/gd;->b(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ed;->zzc:I

    .line 34
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ed;->zzc:I

    return v0
.end method

.method public final synthetic ar()Lcom/google/android/gms/internal/measurement/fm;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    .line 91
    sget v0, Lcom/google/android/gms/internal/measurement/ed$e;->e:I

    .line 92
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/ed;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    check-cast v0, Lcom/google/android/gms/internal/measurement/ed$b;

    .line 94
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/ed$b;->a(Lcom/google/android/gms/internal/measurement/ed;)Lcom/google/android/gms/internal/measurement/ed$b;

    .line 96
    return-object v0
.end method

.method public final synthetic as()Lcom/google/android/gms/internal/measurement/fm;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    .line 98
    sget v0, Lcom/google/android/gms/internal/measurement/ed$e;->e:I

    .line 99
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/ed;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    check-cast v0, Lcom/google/android/gms/internal/measurement/ed$b;

    .line 101
    return-object v0
.end method

.method public final synthetic at()Lcom/google/android/gms/internal/measurement/fn;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    .line 103
    sget v0, Lcom/google/android/gms/internal/measurement/ed$e;->f:I

    .line 104
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/ed;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    .line 106
    return-object v0
.end method

.method final c(I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/google/android/gms/internal/measurement/ed;->zzc:I

    .line 27
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 9
    if-ne p0, p1, :cond_1

    .line 10
    const/4 v0, 0x1

    .line 15
    :cond_0
    :goto_0
    return v0

    .line 11
    :cond_1
    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fz;->a()Lcom/google/android/gms/internal/measurement/fz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/fz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/measurement/ed;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/gd;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ed;->zza:I

    if-eqz v0, :cond_0

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ed;->zza:I

    .line 8
    :goto_0
    return v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fz;->a()Lcom/google/android/gms/internal/measurement/fz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/measurement/fz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/gd;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/measurement/gd;->a(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ed;->zza:I

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ed;->zza:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/fo;->a(Lcom/google/android/gms/internal/measurement/fn;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/google/android/gms/internal/measurement/gi;
.super Lcom/google/android/gms/internal/measurement/ex;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/gl<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/gi<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/measurement/ex<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected a:Lcom/google/android/gms/internal/measurement/gl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected b:Z

.field private final c:Lcom/google/android/gms/internal/measurement/gl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/measurement/gl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ex;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/gi;->c:Lcom/google/android/gms/internal/measurement/gl;

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/gl;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/gl;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/gi;->a:Lcom/google/android/gms/internal/measurement/gl;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    return-void
.end method

.method private a()Lcom/google/android/gms/internal/measurement/gl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gi;->a:Lcom/google/android/gms/internal/measurement/gl;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gi;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hx;->a()Lcom/google/android/gms/internal/measurement/hx;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/hx;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/measurement/ia;->c(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gi;->a:Lcom/google/android/gms/internal/measurement/gl;

    return-object v0
.end method

.method private static final a(Lcom/google/android/gms/internal/measurement/gl;Lcom/google/android/gms/internal/measurement/gl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hx;->a()Lcom/google/android/gms/internal/measurement/hx;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/hx;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/ia;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private b([BILcom/google/android/gms/internal/measurement/fy;)Lcom/google/android/gms/internal/measurement/gi;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/android/gms/internal/measurement/fy;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzib;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/gi;->y()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hx;->a()Lcom/google/android/gms/internal/measurement/hx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/gi;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/hx;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/gi;->a:Lcom/google/android/gms/internal/measurement/gl;

    new-instance v7, Lcom/google/android/gms/internal/measurement/fa;

    invoke-direct {v7, p3}, Lcom/google/android/gms/internal/measurement/fa;-><init>(Lcom/google/android/gms/internal/measurement/fy;)V

    const/4 v5, 0x0

    move-object v4, p1

    move v6, p2

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/ia;->a(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/fa;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzib; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    .line 4
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 5
    :catch_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->a()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    .line 6
    throw p1
.end method


# virtual methods
.method public final A()Lcom/google/android/gms/internal/measurement/gl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/gi;->a()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/gl;->a(I)Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hx;->a()Lcom/google/android/gms/internal/measurement/hx;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/hx;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/measurement/ia;->d(Ljava/lang/Object;)Z

    move-result v2

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/gl;->a(I)Ljava/lang/Object;

    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    return-object v0

    .line 4
    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzju;

    .line 6
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/zzju;-><init>(Lcom/google/android/gms/internal/measurement/ho;)V

    .line 7
    throw v1
.end method

.method public final synthetic B()Lcom/google/android/gms/internal/measurement/ho;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/gi;->a()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic C()Lcom/google/android/gms/internal/measurement/ho;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gi;->c:Lcom/google/android/gms/internal/measurement/gl;

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/google/android/gms/internal/measurement/ey;)Lcom/google/android/gms/internal/measurement/ex;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/gl;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/gi;->a(Lcom/google/android/gms/internal/measurement/gl;)Lcom/google/android/gms/internal/measurement/gi;

    return-object p0
.end method

.method public final synthetic a([BI)Lcom/google/android/gms/internal/measurement/ex;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzib;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fy;->a()Lcom/google/android/gms/internal/measurement/fy;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/gi;->b([BILcom/google/android/gms/internal/measurement/fy;)Lcom/google/android/gms/internal/measurement/gi;

    return-object p0
.end method

.method public final synthetic a([BILcom/google/android/gms/internal/measurement/fy;)Lcom/google/android/gms/internal/measurement/ex;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzib;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/gi;->b([BILcom/google/android/gms/internal/measurement/fy;)Lcom/google/android/gms/internal/measurement/gi;

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/gl;)Lcom/google/android/gms/internal/measurement/gi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/gi;->y()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gi;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/gi;->a(Lcom/google/android/gms/internal/measurement/gl;Lcom/google/android/gms/internal/measurement/gl;)V

    return-object p0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/gi;->z()Lcom/google/android/gms/internal/measurement/gi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic x()Lcom/google/android/gms/internal/measurement/ex;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/gi;->z()Lcom/google/android/gms/internal/measurement/gi;

    move-result-object v0

    return-object v0
.end method

.method protected final y()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gi;->a:Lcom/google/android/gms/internal/measurement/gl;

    const/4 v1, 0x4

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/gl;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/gl;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/gi;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/gi;->a(Lcom/google/android/gms/internal/measurement/gl;Lcom/google/android/gms/internal/measurement/gl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/gi;->a:Lcom/google/android/gms/internal/measurement/gl;

    return-void
.end method

.method public final z()Lcom/google/android/gms/internal/measurement/gi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gi;->c:Lcom/google/android/gms/internal/measurement/gl;

    const/4 v1, 0x5

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/gl;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/gi;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/gi;->a()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/gi;->a(Lcom/google/android/gms/internal/measurement/gl;)Lcom/google/android/gms/internal/measurement/gi;

    return-object v0
.end method

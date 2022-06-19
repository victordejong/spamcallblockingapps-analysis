.class final Lcom/google/android/gms/internal/measurement/ht;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ia;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/ia<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/ho;

.field private final b:Lcom/google/android/gms/internal/measurement/im;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/im<",
            "**>;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Lcom/google/android/gms/internal/measurement/fz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/fz<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/im;Lcom/google/android/gms/internal/measurement/fz;Lcom/google/android/gms/internal/measurement/ho;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/im<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/fz<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/ho;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ht;->b:Lcom/google/android/gms/internal/measurement/im;

    .line 1
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/fz;->a(Lcom/google/android/gms/internal/measurement/ho;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/ht;->c:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ht;->d:Lcom/google/android/gms/internal/measurement/fz;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/ht;->a:Lcom/google/android/gms/internal/measurement/ho;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/measurement/im;Lcom/google/android/gms/internal/measurement/fz;Lcom/google/android/gms/internal/measurement/ho;)Lcom/google/android/gms/internal/measurement/ht;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/im<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/fz<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/ho;",
            ")",
            "Lcom/google/android/gms/internal/measurement/ht<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/ht;

    .line 1
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ht;-><init>(Lcom/google/android/gms/internal/measurement/im;Lcom/google/android/gms/internal/measurement/fz;Lcom/google/android/gms/internal/measurement/ho;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ht;->b:Lcom/google/android/gms/internal/measurement/im;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/im;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ht;->c:Z

    if-nez v0, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ht;->a:Lcom/google/android/gms/internal/measurement/ho;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/ho;->p()Lcom/google/android/gms/internal/measurement/hn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/hn;->B()Lcom/google/android/gms/internal/measurement/ho;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/ft;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/ft;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final a(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/fa;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/measurement/fa;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/gl;

    iget-object p2, p1, Lcom/google/android/gms/internal/measurement/gl;->zzc:Lcom/google/android/gms/internal/measurement/in;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/in;->a()Lcom/google/android/gms/internal/measurement/in;

    move-result-object p3

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/in;->b()Lcom/google/android/gms/internal/measurement/in;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/gl;->zzc:Lcom/google/android/gms/internal/measurement/in;

    :goto_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ht;->b:Lcom/google/android/gms/internal/measurement/im;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/im;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ht;->b:Lcom/google/android/gms/internal/measurement/im;

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/im;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/ht;->c:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ht;->b:Lcom/google/android/gms/internal/measurement/im;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/im;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/im;->c(Ljava/lang/Object;)I

    move-result p1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ht;->c:Z

    if-nez v0, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ht;->b:Lcom/google/android/gms/internal/measurement/im;

    .line 1
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ic;->a(Lcom/google/android/gms/internal/measurement/im;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/ht;->c:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ic;->d()V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ht;->b:Lcom/google/android/gms/internal/measurement/im;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/im;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

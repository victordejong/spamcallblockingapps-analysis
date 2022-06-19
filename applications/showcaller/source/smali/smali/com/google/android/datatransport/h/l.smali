.class abstract Lcom/google/android/datatransport/h/l;
.super Ljava/lang/Object;
.source "SendRequest.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/h/l$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/datatransport/h/l$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/datatransport/h/b$b;

    invoke-direct {v0}, Lcom/google/android/datatransport/h/b$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Lcom/google/android/datatransport/b;
.end method

.method abstract c()Lcom/google/android/datatransport/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/datatransport/c<",
            "*>;"
        }
    .end annotation
.end method

.method public d()[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/datatransport/h/l;->e()Lcom/google/android/datatransport/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/datatransport/h/l;->c()Lcom/google/android/datatransport/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/datatransport/c;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/datatransport/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method abstract e()Lcom/google/android/datatransport/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/datatransport/d<",
            "*[B>;"
        }
    .end annotation
.end method

.method public abstract f()Lcom/google/android/datatransport/h/m;
.end method

.method public abstract g()Ljava/lang/String;
.end method

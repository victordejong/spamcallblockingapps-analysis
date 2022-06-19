.class final Lcom/google/firebase/analytics/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/hf;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/d;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/d;->a(Landroid/os/Bundle;)V

    .line 29
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/d;->a(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/d;->a(Z)V

    .line 11
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/d;->b(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/d;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 31
    return-void
.end method

.method public final c(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/d;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/firebase/analytics/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->d()J

    move-result-wide v0

    return-wide v0
.end method

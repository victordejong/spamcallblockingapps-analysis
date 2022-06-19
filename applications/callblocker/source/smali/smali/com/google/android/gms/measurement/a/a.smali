.class public Lcom/google/android/gms/measurement/a/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-sdk-api@@17.4.2"


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/d;)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/d;

    .line 7
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/measurement/a/a;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/d;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->a()Lcom/google/android/gms/measurement/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/a/a;
    .locals 1

    .prologue
    .line 2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/d;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->a()Lcom/google/android/gms/measurement/a/a;

    move-result-object v0

    .line 4
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
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
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
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
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/d;->a(Landroid/os/Bundle;)V

    .line 18
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/d;->a(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 11
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public b(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/d;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/d;->a(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/d;->b(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/d;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 20
    return-void
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/d;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/d;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/d;->a(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 39
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/measurement/a/a;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/d;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

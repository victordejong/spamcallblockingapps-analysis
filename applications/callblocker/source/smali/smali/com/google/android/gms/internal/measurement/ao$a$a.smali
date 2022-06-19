.class public final Lcom/google/android/gms/internal/measurement/ao$a$a;
.super Lcom/google/android/gms/internal/measurement/ed$b;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/fp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/ao$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/ed$b",
        "<",
        "Lcom/google/android/gms/internal/measurement/ao$a;",
        "Lcom/google/android/gms/internal/measurement/ao$a$a;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/fp;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$a;->i()Lcom/google/android/gms/internal/measurement/ao$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/ed$b;-><init>(Lcom/google/android/gms/internal/measurement/ed;)V

    .line 2
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/ap;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ao$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/measurement/ao$a$a;
    .locals 1

    .prologue
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$a$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$a;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$a;->a(Lcom/google/android/gms/internal/measurement/ao$a;I)V

    .line 8
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/ao$i$a;)Lcom/google/android/gms/internal/measurement/ao$a$a;
    .locals 2

    .prologue
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$a$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$a;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ao$i;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ao$a;->a(Lcom/google/android/gms/internal/measurement/ao$a;Lcom/google/android/gms/internal/measurement/ao$i;)V

    .line 14
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/ao$i;)Lcom/google/android/gms/internal/measurement/ao$a$a;
    .locals 1

    .prologue
    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$a$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$a;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$a;->b(Lcom/google/android/gms/internal/measurement/ao$a;Lcom/google/android/gms/internal/measurement/ao$i;)V

    .line 20
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/internal/measurement/ao$a$a;
    .locals 1

    .prologue
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ed$b;->q()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/ed$b;->b:Z

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ao$a$a;->a:Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$a;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/ao$a;->a(Lcom/google/android/gms/internal/measurement/ao$a;Z)V

    .line 26
    return-object p0
.end method
